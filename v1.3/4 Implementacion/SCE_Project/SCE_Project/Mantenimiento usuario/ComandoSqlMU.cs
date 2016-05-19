using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;

namespace SCE_Project.Mantenimiento_usuario
{
    public class ComandoSqlMU
    {
        Conexion conexion;
        public void conectar()
        {
            conexion = new Conexion();
        }
        public void executeQuery(string query,Usuario us)
        {
            conexion.abrir();
            MySqlConnection con = conexion.getConexion();
            MySqlCommand comando = new MySqlCommand(query, con);
            comando.CommandType = CommandType.StoredProcedure;

            comando.Parameters.AddWithValue("@id", us.id);
            comando.Parameters.AddWithValue("@nom", us.nombre);
            comando.Parameters.AddWithValue("@tu", us.tipo);
            comando.Parameters.AddWithValue("@co", us.pass);

            comando.ExecuteNonQuery();
            conexion.cerrar();
        }
        public List<Usuario> ConsultaGeneral()
        {
            conexion.abrir();
            MySqlCommand query = conexion.getConexion().CreateCommand();
            query.CommandText = "SELECT * FROM usuario";
            MySqlDataReader red = query.ExecuteReader();
            Usuario us;
            List<Usuario> lista = new List<Usuario>();
            while (red.Read())
            {
                us = new Usuario();
                us.id = (red["IDUsuario"].ToString());
                us.nombre = (red["Nombre"].ToString());
                us.pass = (red["pass"].ToString());
                us.tipo = (red["Tipo"].ToString());
                lista.Add(us);
            }
            conexion.cerrar();
            return lista;
        }
        public List<Usuario> ConsultaEspecifica(string id)
        {
            conexion.abrir();
            MySqlCommand query = conexion.getConexion().CreateCommand();
            query.CommandText = "SELECT * FROM usuario where IDUsuario=" + id + "";
            MySqlDataReader red = query.ExecuteReader();
            Usuario us;
            List<Usuario> lista = new List<Usuario>();
            while (red.Read())
            {
                us = new Usuario();
                us.id = (red["IDUsuario"].ToString());
                us.nombre = (red["Nombre"].ToString());
                us.pass = (red["pass"].ToString());
                us.tipo = (red["Tipo"].ToString());
                lista.Add(us);
            }
            conexion.cerrar();
            return lista;
        }
        public Usuario ConsultaUsuario(string id)
        {       
            conexion.abrir();
            MySqlCommand query = conexion.getConexion().CreateCommand();
            query.CommandText = "SELECT * FROM usuario where IDUsuario=" + id + "";
            MySqlDataReader red = query.ExecuteReader();
            Usuario us = null;
            while (red.Read())
            {
                us = new Usuario();
                us.id = (red["IDUsuario"].ToString());
                us.nombre = (red["Nombre"].ToString());
                us.pass = (red["pass"].ToString());
                us.tipo = (red["Tipo"].ToString());
            }
            conexion.cerrar();
            return us;
        }
    }
}