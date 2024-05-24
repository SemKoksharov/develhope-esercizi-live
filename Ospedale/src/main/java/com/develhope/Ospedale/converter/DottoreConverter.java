package com.develhope.Ospedale.converter;

import com.develhope.Ospedale.dtos.DottoreDto;
import com.develhope.Ospedale.entities.Dottore;

public class DottoreConverter {
    public static Dottore dtoToEntity(DottoreDto dottoreDto){

        Dottore dottore = new Dottore();
        dottore.setId(dottoreDto.getId());
        dottore.setName(dottoreDto.getName());
        dottore.setSurname(dottoreDto.getSurname());
        dottore.setBirthDate(dottoreDto.getBirthDate());
        dottore.setFiscalCode(dottoreDto.getFiscalCode());
        dottore.setSpecialization(dottoreDto.getSpecialization());
        return dottore;

    }
    public static DottoreDto entityToDto(Dottore dottore){

        DottoreDto dottoreDto = new DottoreDto();
        dottoreDto.setId(dottore.getId());
        dottoreDto.setName((dottore.getName()));
        dottoreDto.setSurname(dottore.getSurname());
        dottoreDto.setBirthDate(dottore.getBirthDate());
        dottoreDto.setFiscalCode(dottore.getFiscalCode());
        dottoreDto.setSpecialization(dottore.getSpecialization());
        dottoreDto.setLastUpdate(dottore.getLastUpdate());
        return dottoreDto;
    }
}
