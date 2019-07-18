(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * @author Christophe Gensoul
 *
 *)

let create_user body =
    let headers = Request.default_headers in
    let uri = Request.build_uri "/user" in
    let body = Request.build_body User.to_yojson body in
    Cohttp_lwt_unix.Client.post uri ~headers ~body

let create_users_with_array_input body =
    let headers = Request.default_headers in
    let uri = Request.build_uri "/user/createWithArray" in
    let body = Request.build_body .to_yojson body in
    Cohttp_lwt_unix.Client.post uri ~headers ~body

let create_users_with_list_input body =
    let headers = Request.default_headers in
    let uri = Request.build_uri "/user/createWithList" in
    let body = Request.build_body .to_yojson body in
    Cohttp_lwt_unix.Client.post uri ~headers ~body

let delete_user username =
    let headers = Request.default_headers in
    let uri = Request.build_uri "/user/{username}" in
    let uri = Request.replace_path_param uri "username" (username) in
    Cohttp_lwt_unix.Client.delete uri ~headers

let get_user_by_name username =
    let headers = Request.default_headers in
    let uri = Request.build_uri "/user/{username}" in
    let uri = Request.replace_path_param uri "username" (username) in
    Cohttp_lwt_unix.Client.get uri ~headers

let login_user username password =
    let headers = Request.default_headers in
    let uri = Request.build_uri "/user/login" in
    let uri = Uri.add_query_param' uri ("username", username) in
    let uri = Uri.add_query_param' uri ("password", password) in
    Cohttp_lwt_unix.Client.get uri ~headers

let logout_user  =
    let headers = Request.default_headers in
    let uri = Request.build_uri "/user/logout" in
    Cohttp_lwt_unix.Client.get uri ~headers

let update_user username body =
    let headers = Request.default_headers in
    let uri = Request.build_uri "/user/{username}" in
    let uri = Request.replace_path_param uri "username" (username) in
    let body = Request.build_body User.to_yojson body in
    Cohttp_lwt_unix.Client.put uri ~headers ~body


impl UserApi for UserApiClient {
    fn create_user(&self, body: ::models::User.t) -> Result<(), Error> {
        let configuration: &configuration::Configuration = self.configuration.borrow();
        let client = &configuration.client;

        let uri_str = "http://petstore.swagger.io/v2/user"  in
        let mut req_builder = Client.post(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }
        req_builder = req_builder.json(&body);

        // send request
        let req = req_builder.build()?;

        client.execute(req)?.error_for_status()?;
        Ok(())
    }

    fn create_users_with_array_input(&self, body: User.t list) -> Result<(), Error> {
        let configuration: &configuration::Configuration = self.configuration.borrow();
        let client = &configuration.client;

        let uri_str = "http://petstore.swagger.io/v2/user/createWithArray"  in
        let mut req_builder = Client.post(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }
        req_builder = req_builder.json(&body);

        // send request
        let req = req_builder.build()?;

        client.execute(req)?.error_for_status()?;
        Ok(())
    }

    fn create_users_with_list_input(&self, body: User.t list) -> Result<(), Error> {
        let configuration: &configuration::Configuration = self.configuration.borrow();
        let client = &configuration.client;

        let uri_str = "http://petstore.swagger.io/v2/user/createWithList"  in
        let mut req_builder = Client.post(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }
        req_builder = req_builder.json(&body);

        // send request
        let req = req_builder.build()?;

        client.execute(req)?.error_for_status()?;
        Ok(())
    }

    fn delete_user(&self, username: &str) -> Result<(), Error> {
        let configuration: &configuration::Configuration = self.configuration.borrow();
        let client = &configuration.client;

        let uri_str = "http://petstore.swagger.io/v2/user/{username}" username in
        let mut req_builder = Client.delete(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }

        // send request
        let req = req_builder.build()?;

        client.execute(req)?.error_for_status()?;
        Ok(())
    }

    fn get_user_by_name(&self, username: &str) -> Result<User.t, Error> {
        let configuration: &configuration::Configuration = self.configuration.borrow();
        let client = &configuration.client;

        let uri_str = "http://petstore.swagger.io/v2/user/{username}" username in
        let mut req_builder = Client.get(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }

        // send request
        let req = req_builder.build()?;

        Ok(client.execute(req)?.error_for_status()?.json()?)
    }

    fn login_user(&self, username: &str, password: &str) -> Result<string, Error> {
        let configuration: &configuration::Configuration = self.configuration.borrow();
        let client = &configuration.client;

        let uri_str = "http://petstore.swagger.io/v2/user/login"  in
        let mut req_builder = Client.get(uri_str.as_str());

        req_builder = req_builder.query(&[("username", &username.to_string())]);
        req_builder = req_builder.query(&[("password", &password.to_string())]);
        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }

        // send request
        let req = req_builder.build()?;

        Ok(client.execute(req)?.error_for_status()?.json()?)
    }

    fn logout_user(&self, ) -> Result<(), Error> {
        let configuration: &configuration::Configuration = self.configuration.borrow();
        let client = &configuration.client;

        let uri_str = "http://petstore.swagger.io/v2/user/logout"  in
        let mut req_builder = Client.get(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }

        // send request
        let req = req_builder.build()?;

        client.execute(req)?.error_for_status()?;
        Ok(())
    }

    fn update_user(&self, username: &str, body: ::models::User.t) -> Result<(), Error> {
        let configuration: &configuration::Configuration = self.configuration.borrow();
        let client = &configuration.client;

        let uri_str = "http://petstore.swagger.io/v2/user/{username}" username in
        let mut req_builder = Client.put(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }
        req_builder = req_builder.json(&body);

        // send request
        let req = req_builder.build()?;

        client.execute(req)?.error_for_status()?;
        Ok(())
    }

}
