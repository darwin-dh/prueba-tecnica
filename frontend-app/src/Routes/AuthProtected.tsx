import { useEffect } from "react";
import { Navigate, Route } from "react-router-dom";
import { setAuthorization } from "../helpers/api_helper";
import { useDispatch } from "react-redux";
import { useProfile } from "../Hooks/UserHooks";
import { ComponentType } from 'react';

interface AccessRouteProps {
    component: ComponentType<any>;
    [key: string]: any; // Para permitir otros props como `path`
}

const AuthProtected = (props: any) => {
    const dispatch = useDispatch();
    const { userProfile, loading, token } = useProfile();
    useEffect(() => {
        if (userProfile && !loading && token) {
            setAuthorization(token);
        } else if (!userProfile && loading && !token) {
            sessionStorage.removeItem("authUser");
        }
    }, [token, userProfile, loading, dispatch]);

    /*
      Navigate is un-auth access protected routes via url
      */

    if (!userProfile && loading && !token) {
        return (
            <Navigate to="/" state={{ from: location }} />
        );
    }

    return <>{props.children}</>;
};

const AccessRoute: React.FC<AccessRouteProps> = ({ component: Component, ...rest }) => {
    return (
        <Route
            {...rest}
            element={<Component />}
        />
    );
};

export { AuthProtected, AccessRoute };