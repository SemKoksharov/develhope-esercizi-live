package com.develhope.Ospedale.services;

import com.develhope.Ospedale.converter.DottoreConverter;
import com.develhope.Ospedale.dtos.DottoreDto;
import com.develhope.Ospedale.entities.Dottore;
import com.develhope.Ospedale.repositories.DottoreRepo;
import jakarta.persistence.Entity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.Mapping;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service

public class DottoreService {
    @Autowired
    private DottoreRepo dottoreRepo;

    public DottoreDto createDottore(DottoreDto dottoreDto){

        Dottore dottore = DottoreConverter.dtoToEntity(dottoreDto);

        Date date = new Date();
        dottore.setInsertDate(date);
        dottore.setLastUpdate(date);
        dottore.setDeleted(false);

        Dottore dottoreSaved = dottoreRepo.save(dottore);
        return DottoreConverter.entityToDto(dottoreSaved);
    }

    public List<DottoreDto> getAllDottore(){
        List<Dottore> dottoreList =dottoreRepo.findAllByDeleted(false);
        List<DottoreDto> dottoreDtoList = new ArrayList<>();
        for ( Dottore dottore : dottoreList){
            dottoreDtoList.add(DottoreConverter.entityToDto(dottore));
        }
        return dottoreDtoList;
    }
}
