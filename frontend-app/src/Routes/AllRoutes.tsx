
import Books from "../Page/Books/Books"
import Chart from "../Page/Chart/chart"
import Home from "../Page/Home/Home"
import Login from "../Page/Login/Login"
const publicRoutes = [

    {
        path: '/',
        component: Login
    }
]
const authProtectedRoutes = [
    { path: "/home", component: Home },
    { path: "/books", component: Books },
    { path: "/chart", component: Chart },
]
export { publicRoutes, authProtectedRoutes }