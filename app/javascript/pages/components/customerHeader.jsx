import React from 'react';
import logo from 'images/member.svg';

const CustomerHeader = () => {
    return(
        <div className="header-container">
            <div className="header-icon">
                <img src={logo} className="logo" />
            </div>
            <div className="header-title">
                CUSTOMERS
                <div className="header-subtitle">
                    Most recent activity from your entire audience
                </div>
            </div>
        </div>
    )
}

export default CustomerHeader;