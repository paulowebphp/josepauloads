<?php


namespace Core\Model;

use \Core\Rule;
use \Core\Model;
use \Core\DB\Sql;


class LeakRate extends Model
{




    public function update()
	{


		$sql = new Sql();


		$results = $sql->select("
		
			CALL sp_leakrates_update(
				
				:idleakrate,
				:idanalytic,
				:nrorigin,
				:nrpresell,
				:vlleakrate
			
			)", 
			
			array(

				":idleakrate"=>$this->getidleakrate(),
				":idanalytic"=>$this->getidanalytic(),
				":nrorigin"=>$this->getnrorigin(),
				":nrpresell"=>$this->getnrpresell(),
				":vlleakrate"=>$this->getvlleakrate()

			)//end array
		
		);//end select

		
        
		
	
		if(count($results) > 0)
		{

			$this->setData($results[0]);


		}//end if
		



	}//END update







    public function get( $idleakrate )
	{
		$sql = new Sql();

		$results = $sql->select("
		
			SELECT * FROM tb_leakrates
            WHERE idleakrate = :idleakrate
			ORDER BY dtregister DESC
			LIMIT 1
			
			", 
		
			array(

				":idleakrate"=>$idleakrate

			)//end array

		);//end select


        
        
				


		if ( count($results) > 0 )
		{
			

			$this->setData($results[0]);


		}//end if

	}//END get









	public function delete()
	{
		$sql = new Sql();

		$sql->query("
		
			DELETE FROM tb_leakrates
			WHERE idleakrate = :idleakrate
		
			", 
		
			array(

				":idleakrate"=>$this->getidleakrate()
			
			)//end array
		
		);//end query

	}//END delete


















    
    public static function getByAnalytic( $idanalytic )
    {

        $sql = new Sql();

        $query = "
        
            SELECT * FROM tb_leakrates
            WHERE idanalytic = :idanalytic
            ORDER BY dtregister DESC
        
        ";
        
        $results = $sql->select( $query, [

            ':idanalytic'=>$idanalytic

        ]);

        

        return $results;


    }//end method








	public static function getLastByAnalytic()
	{

		$sql = new Sql();

		$query = "
		
			SELECT * FROM tb_leakrates a 
			INNER JOIN tb_analytics b ON a.idanalytic = b.idanalytic
			WHERE a.idleakrate IN (
			
				SELECT MAX(a.idleakrate) FROM tb_leakrates a
				INNER JOIN tb_analytics b ON a.idanalytic = b.idanalytic
				WHERE b.indeleted = 0
				GROUP BY b.idanalytic
			
			) ORDER BY b.inposition;
		
		";

		$results = $sql->select( $query );

        
        return $results;


	}//end if



	


}//end Class









?>