package mx.edu.utezappweb.pokemonapp.service.pokemon;

import mx.edu.utezappweb.pokemonapp.model.pokemon.BeanPokemon;
import mx.edu.utezappweb.pokemonapp.model.pokemon.DaoPokemon;

import java.util.List;

public class ServicePokemon {
    DaoPokemon daoPokemon = new DaoPokemon();

    public List<BeanPokemon> getAll(){
        return daoPokemon.findAll();
    }




}
