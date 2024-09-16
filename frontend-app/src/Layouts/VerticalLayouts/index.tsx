
import { useNavigate } from 'react-router-dom';
import withRouter from '../../components/common/withRouter';
import { Button, Collapse, Label } from 'reactstrap';
import { useEffect, useState } from 'react';


const VerticalLayout = (props: any) => {

    const authUser = sessionStorage.getItem('authUser') ? JSON.parse(sessionStorage.getItem('authUser') || '') : null;

    const [navData, setNavData] = useState<any>([
        { menuTitle: 'Menú 1', link: '/books', status: authUser?.rol === 'Admin' || authUser?.rol === 'Operativo' },
        { menuTitle: 'Menú 2', link: '/chart', status: authUser?.rol === 'Admin' },
    ]);

    useEffect(() => {
        setNavData([
            { menuTitle: 'Menú 1', link: '/books', status: authUser?.rol === 'Admin' || authUser?.rol === 'Operativo' },
            { menuTitle: 'Menú 2', link: '/chart', status: authUser?.rol === 'Admin' },
        ]);
    }, []);
    const navigate = useNavigate();
    const gotoLink = (link: string) => {
        navigate(link);
    }
    return (
        <div className='text-white p-3' style={{ height: '100vh', background: '#172533' }}>
            <Collapse isOpen={true}>
                <div className="vertical-menu">
                    <div data-simplebar className="h-100">
                        <div id="sidebar-menu">
                            <Label>Menú</Label>
                            <ul className="metismenu list-unstyled" id="side-menu">
                                {
                                    navData.map((item: any, key: number) =>
                                        item?.status && <Button block key={key} outline className="text-info my-1"
                                            onClick={() => gotoLink(item.link)}
                                        >

                                            {item.menuTitle}</Button>
                                    )
                                }

                            </ul>
                        </div>
                    </div>
                </div>
            </Collapse>
        </div>
    );
};

export default withRouter((VerticalLayout));
