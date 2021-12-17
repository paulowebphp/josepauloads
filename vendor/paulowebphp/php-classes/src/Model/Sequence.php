<?php


namespace Core\Model;

use \Core\Rule;
use \Core\Model;
use \Core\DB\Sql;


class Sequence extends Model
{




    public function update()
	{


		$sql = new Sql();

		
	

		if ( $_SERVER['HTTP_HOST'] == Rule::CANONICAL_NAME  ) 
		{
			# code...

			$results = $sql->select("
		
				CALL sp_sequences_update(
					
					:idsequence,
					:idcampaign,
					:idusername,
					:insent,
					:dessubject,
					:destemplate,
					:dtsent
				
				)", 
				
				array(

					":idsequence"=>$this->getidsequence(),
                	":idcampaign"=>$this->getidcampaign(),
					":idusername"=>$this->getidusername(),
					":insent"=>$this->getinsent(),
					":dessubject"=>$this->getdessubject(),
					":destemplate"=>$this->getdestemplate(),
					":dtsent"=>$this->getdtsent()

				)//end array
			
			);//end select


			

			
			

		}//end if
		else
		{


			
			$results = $sql->select("
		
				CALL sp_sequences_update(
					
					:idsequence,
					:idcampaign,
					:idusername,
					:insent,
					:dessubject,
					:destemplate,
					:dtsent
				
				)", 
				
				array(

					":idsequence"=>$this->getidsequence(),
					":idcampaign"=>$this->getidcampaign(),
					":idusername"=>$this->getidusername(),
					":insent"=>$this->getinsent(),
					":dessubject"=>$this->getdessubject(),
					":destemplate"=>$this->getdestemplate(),
					":dtsent"=>$this->getdtsent()

				)//end array
			
			);//end select

	        


		}//end else











	
		if(count($results) > 0)
		{

			$this->setData($results[0]);


		}//end if
		



	}//END update







    public function get( $idsequence )
	{
		$sql = new Sql();

		$results = $sql->select("
		
				SELECT * FROM tb_sequences a
				INNER JOIN tb_campaigns b ON a.idcampaign = b.idcampaign
				INNER JOIN tb_users c ON b.iduser = c.iduser
				INNER JOIN tb_persons d ON c.idperson = d.idperson
				WHERE idsequence = :idsequence
				ORDER BY a.dtregister DESC
			
			", 
		
			array(

				":idsequence"=>$idsequence

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
            
            SELECT * FROM tb_sequences
            ORDER BY dtregister DESC

        ";
        
        $results = $sql->select( $query );


        return $results;


    }//end method





























	

	public function delete()
    {

        $sql = new Sql();



        $query = "
        
            DELETE FROM tb_sequences
			WHERE idsequence = :idsequence 
        
        ";
        
        $results = $sql->select( $query, [

            ':idsequence'=>$this->getidsequence()

        ]);

        

        return $results;


    }//end method
























    
    public static function getByCampaign( $idcampaign )
	{
		$sql = new Sql();

		$results = $sql->select("
		
				SELECT * FROM tb_sequences a
				INNER JOIN tb_campaigns b ON a.idcampaign = b.idcampaign
				INNER JOIN tb_users c ON b.iduser = c.iduser
				INNER JOIN tb_persons d ON c.idperson = d.idperson
				INNER JOIN tb_machines e ON b.idmachine = e.idmachine
				INNER JOIN tb_usernames f ON a.idusername = f.idusername
				WHERE a.idcampaign = :idcampaign
				ORDER BY a.dtregister DESC
			
			", 
		
			array(

				":idcampaign"=>$idcampaign

			)//end array

		);//end select


        
        return $results;



	}//END get









	public static function setDateSent( $idsequence )
	{

		$sql = new Sql();

		$query = "

			UPDATE tb_sequences
			SET insent = 1,
			dtsent = NOW()
			WHERE idsequence = :idsequence
		
		";

		$sql->query( $query, [

			':idsequence'=>$idsequence

		]);

		return true;



	}//end method








}//end Class









?>