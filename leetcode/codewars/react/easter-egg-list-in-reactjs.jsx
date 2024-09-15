// Easter egg list in ReactJS

import React from 'react';

export const EggList = (props) => {
  return <ul>
    {props.eggs.map((name, index) => {
        return <EasterEgg name={name} key={index} />;
      })
    }
  </ul>;
};

export const EasterEgg = (props) => {
  const {name} = props;

  return <li>{name}</li>;
};
