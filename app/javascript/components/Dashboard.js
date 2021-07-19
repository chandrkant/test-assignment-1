import React, {useState,useEffect} from "react";
import DataTable, { createTheme } from "react-data-table-component";

createTheme("solarized", {
  text: {
    primary: "#268bd2",
    secondary: "#2aa198",
  },
  background: {
    default: "#d6d9d5",
  },
  context: {
    background: "#cb4b16",
    text: "#FFFFFF",
  },
  divider: {
    default: "#073642",
  },
  action: {
    button: "rgba(0,0,0,.54)",
    hover: "rgba(0,0,0,.08)",
    disabled: "rgba(0,0,0,.12)",
  },
});
export default function Dashboard() {
// const data = [{ id: 1, title: 'Conan the Barbarian', year: '1982' }];
const [data, setData] = useState([{}]);
const fatchApi = async () => {
    let response = await fetch(`/reports`);
    response = await response.json();
    if (response.success) {
      setData(response.data)
    }
}

useEffect(() => {
  fatchApi()
  return () => {
    
  }
}, [])
const columns =[
  {name: "id",selector: 'id',sortable: true}, 
  {name: "Question",selector: 'question',sortable: true }, 
  {name: "teaming_stages",selector: 'teaming_stages',sortable: true}, 
  {name: "appears_days" ,selector: 'appears_days',sortable: true}, 
  {name: "frequency",selector: 'frequency',sortable: true}, 
  {name: "type_name",selector: 'type_name',sortable: true}, 
  {name: "role",selector: 'role',sortable: true}, 
  {name: "is_required",selector: 'is_required',sortable: true}, 
  {name: "conditions",selector: 'conditions',sortable: true}, 
  {name: "mapping",selector: 'mapping',sortable: true}
];
  return (
    <div>
      <DataTable title="Rating Scales" columns={columns} data={data} theme="solarized" pagination={true}/>
    </div>
  );
}
