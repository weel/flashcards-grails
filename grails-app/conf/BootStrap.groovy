import com.kgrodzicki.flashcards.Role
import com.kgrodzicki.flashcards.User
import com.kgrodzicki.flashcards.UserRole
import com.kgrodzicki.flashcards.grails.Card
import com.kgrodzicki.flashcards.grails.Lesson

class BootStrap {

    def init = { servletContext ->
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
  
		def testUser = new User(username: 'admin', enabled: true, password: 'admin')
		testUser.save(flush: true)
  
		UserRole.create testUser, adminRole, true
  
		assert User.count() == 1
		assert Role.count() == 2
		assert UserRole.count() == 1
  
    }
    def destroy = {
    }
}
