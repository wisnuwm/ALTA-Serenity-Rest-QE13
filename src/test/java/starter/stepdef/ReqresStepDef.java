package starter.stepdef;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.reqres.ReqresAPI;
import starter.utils.Constants;

import java.io.File;

public class ReqresStepDef {

    @Steps
    ReqresAPI reqresAPI;

    //scenario 1
    @Given("Get list users with page {int}")
    public void getListUsersWithPage(int page) {
        reqresAPI.getListUsers(page);
    }

    @When("Send request get list users")
    public void sendRequestGetListUsers() {
        SerenityRest.when().get(ReqresAPI.GET_LIST_USERS);
    }

    @Then("Status code should be {int}")
    public void statusCodeShouldBe(int statusCode) {
        SerenityRest.then().statusCode(statusCode);
    }

    //scenario 2
    @Given("Post Create user with valid json {string}")
    public void postCreateUserWithValidJson(String json) {
        File jsonCreateUser = new File(Constants.REQ_BODY+ json);
        reqresAPI.postCreateUser(jsonCreateUser);
    }

    @When("Send request post create user")
    public void sendRequestPostCreateUser() {
        SerenityRest.when().post(ReqresAPI.POST_CREATE_USER);
    }

    //scenario 3
    @Given("Update user with valid id {int} and json {string}")
    public void updateUserWithValidIdIdAndJson(int id, String json) {
        File jsonUpdateUser = new File(Constants.REQ_BODY+json);
        reqresAPI.updateUser(id, jsonUpdateUser);
    }

    @When("Send request update user")
    public void sendRequestUpdateUser() {
        SerenityRest.when().put(ReqresAPI.UPDATE_USER);
    }

    //scenario 4
    @Given("Delete user with valid id {int}")
    public void deleteUserWithValidIdId(int id) {
        reqresAPI.deleteUser(id);
    }

    @When("Send request delete user")
    public void sendRequestDeleteUser() {
        SerenityRest.when().delete(ReqresAPI.DELETE_USER);
    }
}