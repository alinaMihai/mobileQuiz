package jersey;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import services.CandidateService;

import com.sun.jersey.api.json.JSONWithPadding;

import entities.Candidate;

@Path("/service/candidate")
public class CandidateJService {

	@GET
	@Path("/login")
	@Produces(MediaType.APPLICATION_JSON)
	public Candidate loginCandidate(@QueryParam("username") String username,
			@QueryParam("password") String password) {
		Candidate candidate = CandidateService.getCandidate(username, password);
        
		if (candidate != null) {
			candidate.setPassword("");
		}

		return candidate;
	}
	
	@GET
	@Path("/login/jsonp")
	@Produces({"application/javascript"})
	public JSONWithPadding loginUser(@QueryParam("callback") String callback,@QueryParam("username") String username,
			@QueryParam("password") String password){
		Candidate candidate = CandidateService.getCandidate(username, password);
		if (candidate != null) {
			candidate.setPassword("");
		}else{
			return new JSONWithPadding(new Candidate(),"error");
		}
		
		return new JSONWithPadding(candidate,callback);
		
	}

}
