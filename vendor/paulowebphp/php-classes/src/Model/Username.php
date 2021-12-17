<?php


namespace Core\Model;

use \Core\Rule;
use \Core\Model;
use \Core\DB\Sql;


class Username extends Model
{




    public function update()
	{


		$sql = new Sql();


		$results = $sql->select("
		
			CALL sp_usernames_update(
				
				:idusername,
				:idmachine,
				:indeleted,
				:nrport,
				:deshost,
				:desnamefrom, 
				:desusername, 
				:desunpassword
			
			)", 
			
			array(

				":idusername"=>$this->getidusername(),
				":idmachine"=>$this->getidmachine(),
				":indeleted"=>$this->getindeleted(),
				":nrport"=>$this->getnrport(),
				":deshost"=>$this->getdeshost(),
				":desnamefrom"=>$this->getdesnamefrom(),
				":desusername"=>$this->getdesusername(),
				":desunpassword"=>$this->getdesunpassword()

			)//end array
		
		);//end select

		
        
		
	
		if(count($results) > 0)
		{

			$this->setData($results[0]);


		}//end if
		



	}//END update







    public function get( $idusername )
	{
		$sql = new Sql();

		$results = $sql->select("
		
			SELECT * FROM tb_usernames
            WHERE idusername = :idusername
			
			", 
		
			array(

				":idusername"=>$idusername

			)//end array

		);//end select


        
        
				


		if ( count($results) > 0 )
		{
			

			$this->setData($results[0]);


		}//end if

	}//END get



























    
    public static function getByMachine( $idmachine, $indeleted = 0 )
    {

        $sql = new Sql();

        $query = "
        
            SELECT * FROM tb_usernames
            WHERE idmachine = :idmachine
			AND indeleted = :indeleted
            ORDER BY dtregister DESC
        
        ";
        
        $results = $sql->select( $query, [

            ':idmachine'=>$idmachine,
            ':indeleted'=>$indeleted

        ]);

        

        return $results;


    }//end method







}//end Class









?>