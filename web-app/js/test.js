(function($) {

	Card = Backbone.Model.extend({
		question : null,
		answer : null
	});

	CardsCollection = Backbone.Collection.extend({
		model : Card
	});

	CardService = Backbone.Model.extend({
		idx : null,
		cards : [],
		text : '',
		question : true,

		initialize : function() {
			this.set({
				text : this.current().get('question'),
				question : true,
			});
		},

		current : function() {
			return this.get('cards')[this.get('idx')];
		},

		getText : function() {
			return this.get('text');
		},

		next : function() {
			var nextIndex = this.get('idx') + 1;

			if (nextIndex <= this.getSize() - 1) {
				this.set({
					idx : nextIndex
				});

				this.set({
					text : this.current().get('question')
				});
			}

			this.changeQuestion();
		},

		previous : function() {
			var previousIndex = this.get('idx') - 1;

			if (previousIndex >= 0) {
				this.set({
					idx : previousIndex
				});

				this.set({
					text : this.current().get('question')
				});
			}

			this.changeQuestion();
		},

		flip : function() {
			var currentText = this.get('text');
			var question = this.current().get('question');
			var answer = this.current().get('answer');

			if (currentText != question) {
				this.set({
					text : question
				});
			} else {
				this.set({
					text : answer
				});
			}

			this.changeQuestion();
		},

		changeQuestion : function() {
			if (this.getText() == this.current().get('question')) {
				this.set({
					question : true
				});
			} else {
				this.set({
					question : false
				});
			}
		},

		getStatusPosition : function() {
			var position = this.get('idx') + 1;
			return position + "/" + this.getSize();
		},

		getSize : function() {
			return this.get('cards').length;
		},
	});

	CardView = Backbone.View.extend({
		initialize : function() {
			this.model.bind('change:text', this.changeName);
			this.model.bind('change:question', this.changeQuestion);
			this.model.bind('change:idx', this.changePositionStatus);
			this.render();
		},

		render : function() {
			var variables = {
				text : this.model.getText(),
				counter : this.model.getStatusPosition()
			};
			var template = _.template($("#card_template").html(), variables);
			this.el.html(template);

			return this;
		},

		changeName : function(card) {
			$("#text").text(card.getText());
		},

		changeQuestion : function(card) {
			if (card.get('question') == true) {
				$("#cardsapp").removeClass();
				$("#cardsapp").addClass('front');
			} else {
				$("#cardsapp").removeClass();
				$("#cardsapp").addClass('back');
			}
		},

		changePositionStatus : function(card) {
			$("#status").text(card.getStatusPosition());
		},

		events : {
			"click .flip" : "flipCard",
			"click .next" : "nextCard",
			"click .previous" : "previusCard",
		},

		flipCard : function(event) {
			this.model.flip();
		},

		nextCard : function(event) {
			this.model.next();
		},

		previusCard : function(event) {
			this.model.previous();
		}
	});

	var url = $('#ws_path').val() + "/" + $("#lesson_id").val() + ".json";

	$.getJSON(url, function(json) {
		var c = new CardsCollection;

		$.each(json.lesson.cards, function(i, card) {
			card = new Card({
				question : card.question,
				answer : card.answer
			});
			c.add(card);
		});

		var cardView = new CardView({
			el : $("#card_container"),
			model : new CardService({
				cards : _.toArray(c),
				idx : 0
			})
		});

		Backbone.emulateHTTP = true;
		Backbone.emulateJSON = true;
		
		// back to list
		$('.back_button').click(function() {
			window.location.href = $('#back_path').val();
		});
	});

})(jQuery);
