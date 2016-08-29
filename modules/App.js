import React from 'react'
import { IndexLink } from 'react-router'
import NavLink from './NavLink'
import Home from './Home'

export default React.createClass({
  render() {
    return (
      <div>
        <ul>
          <li><IndexLink to="/" activeClassName="active">Home</IndexLink></li>
          <li><NavLink to="/about">About</NavLink></li>
        </ul>
        {this.props.children || <Home/>}
      </div>
    )
  }
})
