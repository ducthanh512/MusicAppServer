var _ = require('lodash');

function createQuery() {


    this.createInsertQuery = (tableName, data, condition) => {
        var insertStr = 'insert into ' + tableName + ' set  ';
        var keys = _.keys(data);
        var values = _.values(data)
        var numberOfKey = keys.length;
        keys.map((key, index) => {
            var insertedValue = values[index];
            if (values[index] === 'true' || values[index] === true) { insertedValue = '1' }
            else if (values[index] === 'false' || values[index] === false || values[index] === '') { insertedValue = '0' }

            index == numberOfKey - 1
                ? insertStr += key + ' = \'' + insertedValue + '\''
                : insertStr += key + ' = \'' + insertedValue + '\' , ';
        })
        return insertStr;
    }


    this.createUpdateQuery = (tableName, data, condition) => {
        var updateStr = 'update ' + tableName + ' set ';
        var keys = _.keys(data);
        var values = _.values(data)
        var numberOfKey = keys.length;
        keys.map((key, index) => {
            var updatedValue = values[index];
            if (values[index] === 'true' || values[index] === true) { updatedValue = '1' }
            else if (values[index] === 'false' || values[index] === false || values[index] === '') { updatedValue = '0' }

            index == numberOfKey - 1
                ? updateStr += key + ' = \'' + updatedValue + '\''
                : updateStr += key + ' = \'' + updatedValue + '\' , ';
        })
        updateStr += ' where id = ' + condition;
        return updateStr;
    }


    this.createDeleteQuery = (tableName, condition) => {
        var deleteStr = 'delete from ' + tableName + '  where id =  ' + condition;
        return deleteStr;
    }

    this.createGetByIdQuery = (tableName, condition) => {
        var getByIdStr = 'select * from ' + tableName + '  where id =  ' + condition;
        return getByIdStr;
    }

    this.createGetByForeignId = (tableName, foreignKey, condition) => {
        var getByIdStr = 'select * from ' + tableName + '  where ' + foreignKey + ' =  \'' + condition + '\'';
        return getByIdStr;
    }

    this.createGetAllQuery = (tableName) => {
        var getAllStr = 'select * from ' + tableName;
        return getAllStr;
    }


    this.createlastestQuery = (tableName) => {
        var getlastestStr = 'select * from ' + tableName + '  ORDER BY id DESC LIMIT 1';
        return getlastestStr;
    }
    
    /*particular queires*/

    this.createGetAdvert= () => {
        var query = 'select advert.id, advert.content, advert.idSong, advert.image, song.name, song.image as icon, song.singer from song inner join advert on advert.idSong = song.id';
        return query;
    }

    this.createGetPlayList= () => {
        var query = 'select * from playlist limit 3';
        return query;
    }

    this.createGetFavouriteSongs = () =>{
        var query = 'select * from song limit 5';
        return query;
    }


}
module.exports = new createQuery();