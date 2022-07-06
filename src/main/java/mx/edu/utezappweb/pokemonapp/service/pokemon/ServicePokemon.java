package mx.edu.utezappweb.pokemonapp.service.pokemon;

import mx.edu.utezappweb.pokemonapp.model.pokemon.BeanPokemon;
import mx.edu.utezappweb.pokemonapp.model.pokemon.DaoPokemon;
import mx.edu.utezappweb.pokemonapp.utils.ResultAction;

import java.util.List;

public class ServicePokemon {
    DaoPokemon daoPokemon = new DaoPokemon();

    public List<BeanPokemon> getAll(){
        return daoPokemon.findAll();
    }

    public ResultAction save(BeanPokemon pokemon){
        ResultAction result = new ResultAction();
        if (daoPokemon.save(pokemon)){
            result.setResult(true);
            result.setMessage("Pokemon registrado correctamente");
            result.setStatus(200);
        }else{
            result.setResult(false);
            result.setMessage("Ocurrió un error al registrar");
            result.setStatus(400);
        }
        return result;
    }


}
