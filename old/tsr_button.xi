[tsr] @

| import React from 'react';

| // CSS
| import './Button.css';

| interface ButtonProps extends React.HTMLProps<HTMLButtonElement> {
|   children: string;
| }

| export const Button: React.FC<ButtonProps> = ({children}) => {

|   return <button>{children}</button>
| }

