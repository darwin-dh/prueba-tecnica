import React, { useEffect, useState } from 'react';
import PropTypes from "prop-types";
import withRouter from '../Components/Common/withRouter';



import Header from './Header';
import './index.css'
import VerticalLayouts from './VerticalLayouts';
import Footer from './Footer';

const Layout = (props: any) => {

  return (
    <React.Fragment>

      <div className="parent">
        <div className="div1">
          <VerticalLayouts />
        </div>
        <div className="div2">

          <Header />
          <div className='my-1 p-3'>
            {props.children}
          </div>
        </div>
        <div className="div4 p-2 ">
          <Footer />

        </div>

      </div>


    </React.Fragment>

  );
};

Layout.propTypes = {
  children: PropTypes.object,
};

export default withRouter(Layout);