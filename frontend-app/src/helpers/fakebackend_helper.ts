import { APIClient } from "./api_helper";

/* import * as url from "./url_helper"; */

const api = new APIClient();

// Gets the logged in user data from local session
export const getLoggedInUser = () => {
  const user = localStorage.getItem("user");
  if (user) return JSON.parse(user);
  return null;
};

// //is user is logged in
export const isUserAuthenticated = () => {
  return getLoggedInUser() !== null;
};



// Register Method
export const postJwtRegister = (url: any, data: any) => {
  return api.create(url, data)
    .catch((err) => {
      //message
      let message = "Something went wrong";
      if (err.response && err.response.status) {
        switch (err.response.status) {
          case 404:
            message = "Sorry! the page you are looking for could not be found";
            break;
          case 500:
            message = "Sorry! something went wrong, please contact our support team";
            break;
          case 401:
            message = "Invalid credentials";
            break;
          default:
            message = err[1];
            break;
        }
      }
      throw message;
    });
};
/* //AUTHORS
export const getAuthorsList = (params: any) => api.get(url.GET_AUTHOR_LIST, params)
export const addNewAuthors = (data: any) => api.create(url.ADD_NEW_AUTHOR, data);
export const updateAuthors = (data: any) => api.update(url.UPDATE_AUTHOR + '/' + data.id, data);
export const deleteAuthors = (data: any) => api.delete(url.DELETE_AUTHOR + '/' + data, null);

//books
export const getBooksList = (params: any) => api.get(url.GET_BOOK_LIST, params)
export const addNewBooks = (data: any) => api.create(url.ADD_NEW_BOOK, data);
export const updateBooks = (data: any) => api.update(url.UPDATE_BOOK + '/' + data.id, data);
export const deleteBooks = (data: any) => api.delete(url.DELETE_BOOK + '/' + data, null);
 */