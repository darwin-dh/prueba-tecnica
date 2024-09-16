import { Routes, Route } from "react-router-dom";
import { publicRoutes, authProtectedRoutes } from "./AllRoutes";
import VerticalLayout from "../Layouts/index";
import { AuthProtected } from "./AuthProtected";


const AppRoutes = () => {
    return (
        <>
            <Routes>
                <Route>
                    {publicRoutes.map((route: any, index) => (
                        <Route
                            key={index}
                            path={route.path}
                            element={<route.component />}
                        />
                    ))}
                </Route>

                {authProtectedRoutes.map((route, idx) => (
                    <Route
                        key={idx}
                        path={route.path}
                        element={
                            <AuthProtected>
                                <VerticalLayout>
                                    <route.component />
                                </VerticalLayout>
                            </AuthProtected>
                        }
                    />
                ))}
            </Routes>
        </>
    );
}

export default AppRoutes