class PridajData < ActiveRecord::Migration
  def self.up
  Product.delete_all
Product.create(:nazov => 'Worker Falcon' ,
:popis =>
%{<p>
Kolieska znacky HYPER s priemerom 90 mm, loziska ABEC 7 Chrome pre vysoku rychlost zarucia dlhsiu zivotnost a kvalitu. Monoliticky aluminiovy ram a topanka z revolucneho materialu Coolmax (vynikajuca schopnost odvadzat vlhkost) s Dynaflexovym klbom stavia tieto korcule do cela nasej ponuky. Tieto sportove fitness korcule su urcene pre narocnych sportovcov a skusenych rekreacnych in-line korculiarov. Pre jazdenie na rovnom a hladkom povrchu.</p>},
:obrazok_url => '/images/worker_falcon.jpg' ,
:cena => 81.50)

    Product.create(:nazov => 'Worker Arena',
    :popis => 
    %{<p>
       Moderny dizajn, kvalita a patentovane nastavenie velkosti topanky su urcene vsetkym modernym dievcatam s vyssimi narokmi.</p>},
    :obrazok_url =>   '/images/worker_arena.jpg',    
    :cena => 47.80)
    
       Product.create(:nazov => 'Worker Dark',
    :popis => 
    %{<p>
Komfortne semisoftove korcule s hlinikovym podvozkom a nastavitelnou velkostou skeletu. Teraz mozete vyuzit vsetky vyhody nastavitelnej korcule i vo vacsich velkostiach.
      </p>},
    :obrazok_url => '/images/worker_dark.jpg',
    :cena => 44.50)

       Product.create(:nazov => 'Worker Dublin',
    :popis => 
    %{<p>
Kolieskove korcule WORKER splnaju najvyssi standard prevedenia bezpecnosti, vlastne certifikaty podliehajuce najprisnejsim europskym normam  EN-71 nemeckej skusobni TUV-GS.
Vysoko odpruzene kolieska s priemerom 70 mm, loziska ABEC 5 Carbon zaistuju bezstarostnu jazdu. Tieto komfortne nastavitelne kolieskove korcule su urcene pre narocne deti a rekreacnych in-line korculiarov.</p>},
    :obrazok_url => '/images/worker_dublin.jpg',
    :cena => 52.50)
    
       Product.create(:nazov => 'Worker Fitness',
    :popis => 
    %{<p>
Maximum pre kvalitnu jazdu. Velke kolieska s priemerom 84 mm, aluminiovy podvozok, kvalitne ABEC 5 loziska. To vsetko je doplnene kvalitnou topankou so systemom Memory Fit a AVS pre kvalitnu jazdu. Oblubene kvalitne fitness korcule potesia svojou vybavou vsetkych in-line korculiarov vdaka pohodliu a dosahovanej rychlosti. Vhodne na sportove fitness jazdenie pre pokrocilych a rekreacnych in-line korculiarov na rovnom a hladkom povrchu.</p>},
    :obrazok_url => '/images/worker_fitness.jpg',
    :cena => 73.70)

	 Product.create(:nazov => 'Worker G-Force',
    :popis => 
    %{<p>
Tieto oblubene fitness korcule uspokoja svojim vybavenim a jazdnymi vlastnostami vsetkych rekreacnych in-line korculiarov, ktori maju radi rychlost a pohodlie. Vhodne na sportove fitness jazdenie pre pokrocilych a rekreacnych in-line korculiarov na rovnom a hladkom povrchu.</p>},
    :obrazok_url => '/images/worker_gforce.jpg',
    :cena => 64.40)

	 Product.create(:nazov => 'Worker Madrid',
    :popis => 
    %{<p>
Kolieskove korcule WORKER splnaju najvyssi standard prevedenia bezpecnosti, vlastne certifikaty podliehajuce najprisnejsim europskym normam  EN-71 nemeckej skusobni TUV-GS.
Vysoko odpruzene kolieska s priemerom 80 mm, loziska ABEC 9 CHROME pre vysoku rychlost, zaruci dlhsiu zivotnost a kvalitu. Monoliticky hlinikovy ram a topanka z revolucneho materialu Comfort nylon (vynikajuca schopnost odvadzat vlhkost) s Dynaflexovym klbom stavia tieto korcule  do cela nasej ponuky. Tieto sportove  fitness kolieskove korcule  su urcene pre sportovcov  a skusenych rekreacnych  in-line korculiarov.</p>},
    :obrazok_url => '/images/worker_madrid.jpg',
    :cena => 55.20)

	 Product.create(:nazov => 'Worker Tomy',
    :popis => 
    %{<p>
Pohodlne nastavitelne in-line korcule vdaka systemu Memory Fit a maximalna flexibilita vdaka nastavitelnemu skeletu. Vhodne pre rekreacne a kondicne jazdenie. Pre pohodlne jazdenie deti a zaciatocnikov.</p>},
    :obrazok_url => '/images/worker_tomy.jpg',
    :cena => 47.80)

	 Product.create(:nazov => 'Worker Twister',
    :popis => 
    %{<p>
Korcule AXT Twister su vybavene lahkym hlinikovym podvozkom, ktory je spolu so systemom AVS (Anti Vibration System) zarukou velmi kvalitnej jazdy. Vhodne na kondicne fitness jazdenie pre pokrocilych a rekreacnych in-line korculiarov na rovnom a hladkom povrchu.</p>},
    :obrazok_url => '/images/worker_twister.jpg',
    :cena => 66.30)

  end

  def self.down
    Product.delete_all
  end
end