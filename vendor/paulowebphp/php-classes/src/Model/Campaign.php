<?php


namespace Core\Model;

use \Core\Model;
use \Core\DB\Sql;


class Campaign extends Model
{




    public function update()
	{


		$sql = new Sql();


        

		$results = $sql->select("
		
            CALL sp_campaigns_update(
                
                :idcampaign,
                :iduser,
                :idmachine,
                :indeleted
            
            )", 
            
            array(

                ":idcampaign"=>$this->getidcampaign(),
                ":iduser"=>$this->getiduser(),
                ":idmachine"=>$this->getidmachine(),
                ":indeleted"=>$this->getindeleted()

            )//end array
        
        );//end select
			

		
        
		
	
		if(count($results) > 0)
		{

			$this->setData($results[0]);


		}//end if
		



	}//END update







    public function get( $idcampaign )
	{
		$sql = new Sql();

		$results = $sql->select("
		
                SELECT * FROM tb_campaigns a
                INNER JOIN tb_users b ON a.iduser = b.iduser
                INNER JOIN tb_persons c ON b.idperson = c.idperson
                INNER JOIN tb_machines d ON a.idmachine = d.idmachine
                WHERE a.idcampaign = :idcampaign
                ORDER BY a.dtregister DESC;

			", 
		
			array(

				":idcampaign"=>$idcampaign

			)//end array

		);//end select


        
				


		if ( count($results) > 0 )
		{
			

			$this->setData($results[0]);


		}//end if

	}//END get












    
    public static function listAll()
    {

        $sql = new Sql();
        
        $query = "
            
            SELECT * FROM tb_campaigns a
            INNER JOIN tb_users b ON a.iduser = b.iduser
            INNER JOIN tb_persons c ON b.idperson = c.idperson
            ORDER BY a.dtregister DESC

        ";
        
        $results = $sql->select( $query );


        return $results;


    }//end method




























    public function delete()
    {

        $sql = new Sql();



        $query = "
        
            UPDATE tb_campaigns
			SET indeleted = 1
			WHERE idcampaign = :idcampaign
        
        ";
        
        $results = $sql->select( $query, [

            ':idcampaign'=>$this->getidcampaign()

        ]);

        

        return $results;


    }//end method
























    




    public static function getByMachine( $idmachine, $indeleted = 0 )
    {

        $sql = new Sql();

        $query = "
        
            SELECT * FROM tb_campaigns a
            INNER JOIN tb_users b ON a.iduser = b.iduser
            INNER JOIN tb_persons c ON b.idperson = c.idperson
            INNER JOIN tb_machines d ON a.idmachine = d.idmachine
            WHERE a.idmachine = :idmachine
            AND a.indeleted = :indeleted
            ORDER BY a.dtregister DESC
        
        ";
        
        $results = $sql->select( $query, [

            ':idmachine'=>$idmachine,
            ':indeleted'=>$indeleted

        ]);

        

        return $results;


    }//end method












}//end Class









?>