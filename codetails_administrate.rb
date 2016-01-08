# encoding: utf-8
center <<-EOS

  ┌─────────────────────────────┐
  │   Administrate \e[1mOur TckWeb\e[0m   │
  └─────────────────────────────┘

  nando @colgado_es
  © The Cocktail Codetails 2015
EOS

block <<-EOS
  Índice:

   1.- Indroducción___________g+3
   2.- The Generators ♫_______g+28
   3.- generate install_______g+31
   4.- generate dashboard_____g+40
   5.- generate field_________g+47
   6.- Tocar params y mi PR___g+59
   7.- Minitesting____________g+70
   8.- Conclusiones___________g+77
EOS

section "Introducción" do
  center <<-EOS
  arranco nuestra TckWeb usando...

  SDD: \e[1m¡Slack Driven Development!\e[0m
  EOS

  center <<-EOS
    ...y Twitter
    ...y Google+
    ...y whatever!!!

    \e[1mES NUESTRA WEB\e[0m
  EOS

  center <<-EOS
  Primera pregunta:

  \e[1mconfiguración\e[0m => Figaro
  EOS

  center <<-EOS
  Segunda pregunta:

  \e[1mRails Admin Interface\e[0m (RAI)
  EOS

  center <<-EOS
  intención inicial:

  Rails Edge \e[1mo superior...\e[0m :)
  EOS

  center <<-EOS
  rails_admin, active_admin...

  NoCMS, Wilson...
  EOS

  center <<-EOS
  inicialmente \e[1marranco con rails_admin\e[0m

  pero entonces \e[1mSergio+Freddy en Twitter\e[0m:
  EOS

  center <<-EOS
  \e[1m¡¡¡administrate-0.1.0 is out!!!\e[0m
  EOS

  center <<-EOS
  todavía no aparecía
  entre las RAIs de
  \e[1mThe Ruby Toolbox\e[0m
  (lógicamente)
  EOS

  center <<-EOS
  pero detrás está \e[1mThoughtbot\e[0m

  y lo que veo \e[1mme gusta MUCHO\e[0m:
  EOS

  center <<-EOS
    código limpio
  EOS
  center <<-EOS
  nada de DSLs

  simple y puro

  \e[1mRUBY\e[0m & \e[1mRAILS\e[0m
  EOS

  center <<-EOS
  aprovecha
  \e[1mel conocimiento\e[0m
  que ya tenemos
  (o \e[1mque deberíamos tener\e[0m)
  EOS

  center <<-EOS
  genera \e[1mcódigo *muy* comentado\e[0m

  complementando su documentación
  EOS

  center <<-EOS
  \e[1mmuy bueno\e[0m

  para nosotrxs, pero también

  \e[1mpara quienes vengan detrás\e[0m
  EOS

  center <<-EOS
  además se trata de

  "\e[1mdocumentación\e[0m"

  \e[1mde la versión concreta\e[0m

  que utiliza la aplicación
  EOS

  center <<-EOS
  tiene un GRAN build

  \e[1m¡¡¡ pasa los tests !!!\e[0m
  EOS

  block <<-EOS
  * \e[1mRSpec\e[0m: cool ;)
  * \e[1mHoundCI\e[0m: =~ RuboCob... OK
  * \e[1mbundler:audit\e[0m: vulnerabilities!
  EOS

  block <<-EOS
$ \e[1mrake bundler:audit\e[0m
Updating ruby-advisory-db ...
De https://github.com/rubysec/ruby-advisory-db
 * branch            master     -> \e[1mFETCH_HEAD\e[0m
Already up-to-date.
ruby-advisory-db: 234 advisories
\e[1mNo vulnerabilities found\e[0m
  EOS

  center <<-EOS
  el 11 del 11
  quito rails_admin,
  meto Administrate y
  poco después...
  \e[1m
  ¡OH MY GODmin!
  \e[0m
  github.com/varvet/godmin
  EOS

  center <<-EOS
    molaría echarle un ojo
    para ir completando el
    \e[1m"estado del arte"\e[0m
    en lo relativo a \e[1mRAIs\e[0m
    (alguien se anima??)
  EOS

  center <<-EOS
  http://github.com/thoughtbot/administrate

  http://administrate-docs.herokuapp.com
  EOS

  center <<-EOS
  \e[1mResumen\e[0m

  generadores, generadores, generadores...

  con la fuerza y \e[1m❦el cariño de Thor❦\e[0m...
  EOS

  block <<-EOS
  Overwrite *your_mum*?
  (\e[1menter "h" for help\e[0m) [Ynaqdh]

  
  ...y \e[1mapp/dashboards & app/fields\e[0m.
  EOS
end

section "♫ \e[1mThe Generators\e[0m ♫" do

  block <<-EOS
    Generan:
      * configuración en \e[1mapp/dashboards\e[0m
      * controladores en \e[1mapp/controllers/admin\e[0m
      * vistas en \e[1mapp/views/admin\e[0m
      * vistas en \e[1mapp/views/fields\e[0m
      * \e[1mnuevos tipos\e[0m de campo en \e[1mapp/fields\e[0m
  EOS

  block <<-EOS
    \e[1mrails generate\e[0m
    ├─administrate:\e[1minstall\e[0m
    │ └─administrate:\e[1mdashboard NuestroNuevoModelo\e[0m
    ├─administrate:\e[1mviews [Modelo]\e[0m
    │ ├─administrate:\e[1mviews:index [Modelo]\e[0m
    │ ├─administrate:\e[1mviews:show [Modelo]\e[0m
    │ ├─administrate:\e[1mviews:new [Modelo]\e[0m
    │ └─administrate:\e[1mviews:edit [Modelo]\e[0m
    │   └─administrate:\e[1mviews:form [Modelo]\e[0m
    ├ administrate:\e[1mviews:field field_class\e[0m
    └ administrate:\e[1mfield custom_field\e[0m
  EOS
 
  block <<-EOS
    $ administrate:views:field \e[1mfield_class\e[0m:

      * Field::\e[1mNumber\e[0m
      * Field::\e[1mString\e[0m
      * Field::\e[1mBoolean\e[0m
      * Field::\e[1mDateTime\e[0m
      * Field::\e[1mEmail\e[0m
      * Field::\e[1mImage\e[0m
      * Field::\e[1mBelongsTo\e[0m
      * Field::\e[1mHasMany\e[0m
      * Field::\e[1mHasOne\e[0m
      * Field::\e[1mPolymorphic\e[0m
  EOS
end


section "generate \e[1minstall\e[0m" do
  block <<-EOS
    ¿qué nos mete?
  EOS

  block <<-EOS
    \e[1m¿RAUR?\e[0m :)
  EOS
  block <<-EOS
  1º.- Namespace \e[1m:admin en config/routes.rb\e[0m

  2º.- Dos ficheros garantizados:
  ├─dashboards/\e[1mdashboard_manifest.rb\e[0m
  └─controllers/\e[1madmin/application_controller.rb\e[0m

  3º.- Otro par de ellos para cada modelo:
  ├─dashboards/\e[1mfoo_dashboard.rb\e[0m
  └─controllers/\e[1madmin/foos_controller.rb\e[0m
  EOS

  block <<-EOS
  class \e[1mDashboardManifest\e[0m
    DASHBOARDS = [
      :job_offers,
      :job_applications,
      :candidates,
      :users
    ]
    \e[1mROOT_DASHBOARD\e[0m = DASHBOARDS.first
  end
  EOS

  center <<-EOS
  \e[1madmin/application_controller.rb\e[0m
  ───────────────────────────────
  
  simplemente hereda de

  \e[1mAdministrate::ApplicationController\e[0m
  EOS

  block <<-EOS
    Le añadimos autenticación:

    \e[1mbefore_filter :authenticate_admin\e[0m
    def authenticate_admin
      [...]
    end
  EOS



  center <<-EOS
  ya pero...

  \e[1m¿¡y los modelos que no tengamos todavía!?\e[0m
  
  que no panda el cúnico... :)
  EOS
end


section "generate \e[1mdashboard NuevoModelo\e[0m" do
  block <<-EOS
    * dashboards/\e[1mfoo_dashboard.rb\e[0m
    * controllers/\e[1madmin/foos_controller.rb\e[0m
  EOS

  block <<-EOS
  \e[1mFooDashboard\e[0m < Administrate::BaseDashboard
  ───────────────────────────────────────────
  \e[1mATTRIBUTE_TYPES\e[0m = {
    id: Field::Number, [...]
  }
  \e[1mCOLLECTION_ATTRIBUTES\e[0m = [
    :id, [...]
  ]
  \e[1mSHOW_PAGE_ATTRIBUTES\e[0m = ATTRIBUTE_TYPES.keys
  \e[1mFORM_ATTRIBUTES\e[0m = [ [...] ]
  def \e[1mdisplay_resource\e[0m(resource)
    resource.awesome_name
  end
  EOS

  center <<-EOS
  \e[1madmin/foos_controller.rb\e[0m
  ─────────────────────────────

    hereda de nuestro

    \e[1mAdmin::ApplicationController\e[0m

    y \e[1mredifinimos\e[0m

    la acción que queramos
  EOS

  block <<-EOS
    por ahora \e[1mpocas redefiniciones\e[0m
    
    pero venga va, \e[1mun ejemplo real\e[0m:
  EOS

  block <<-EOS
    \e[1madmin/job_applications_controller.rb\e[0m

    def index
      params[:search] ||= 'opened:'
      super
    end

    pero por poner un ejemplo,
      porque \e[1mesto es simple...
  EOS

  block <<-EOS
    R u b y      +      R A I L S\e[0m
  EOS
end

section "generate \e[1mfield custom_type\e[0m" do
  center <<-EOS
    Con un ejemplo:

    TckWeb's custom \e[1mOfficeField\e[0m
  EOS

  block <<-EOS
  \e[1mdb/schema.rb:\e[0m
      => JobOffer#office: string
  EOS
  
  block <<-EOS
  \e[1mconfig/locales/es.yml:\e[0m
  
  es:
    offices:
      madrid: Madrid
      oviedo: Oviedo
      mexicodf: México D.F.
      bogota: Bogotá
      santiago: Santiago de Chile
  EOS
  
  block <<-EOS
    rails \e[1mg\e[0m administrate:field Office
          ^
  EOS
  block <<-EOS
    nos genera:
  
  \e[1m
    app/fields/office_field.rb
    app/views/fields/
      office_field/_show.html.erb
      office_field/_index.html.erb
      office_field/_form.html.erb
  \e[0m
  EOS
  block <<-EOS
    tocamos sólo dos de los archivos:
  \e[1m
      * office_field.rb
  
      * _form.html.erb
  \e[0m
  EOS
  
  block <<-EOS
  \e[1m
  ./app/fields/office_field.rb:
  \e[0m
  
  require "administrate/fields/base"
  class OfficeField < Administrate::Field::Base
    \e[1mdef to_s
      I18n.t "offices.\#{data}"
    end\e[0m
  end
  EOS
  
  block <<-EOS
  nos resuelve tanto:
  \e[1m
    _index.html.erb
  \e[0m
  como:
  \e[1m
    _show.html.erb
  \e[0m
  EOS
  
  block <<-EOS
  ./app/views/fields/office_field/
  \e[1m
    _form.html.erb
  \e[0m
  EOS
  
  block <<-EOS
  El \e[1merb\e[0m generado:
  \e[1m
  <%= f.label field.attribute %>
  <%= f.text_field field.attribute %>
  \e[0m
  EOS
  block <<-EOS
  El customizado:
  
  <%= f.label field.attribute %>
  <%= \e[1mf.select field.attribute,
               I18n.t('offices').invert\e[0m %>
  EOS
end

section "Tocar \e[1mparams\e[0m y mi PR" do
  center <<-EOS
   OBJETIVO:

   ocultar JobApplications
   "\e[1mcerradas\e[0m" 
  EOS

  block <<-EOS
    \e[1mOpción 1\e[0m: Prescindir de Administrate

    def index
      \e[1m@resources = JobApplication.opened\e[0m
    end

    Y escribir \e[1mindex.html.erb\e[0m.
  EOS

  block <<-EOS
    \e[1mOpción 2\e[0m: Clonar acción de Administrate

    Código en la \e[1mrama not-dry-index-method\e[0m
    en el repo \e[1mthe-cocktail/thecocktail2016\e[0m
  EOS

  center <<-EOS
    Es el application_controller.rb

    de Administrate con \e[1mun retoque\e[0m
  EOS
  block <<-EOS
    def index
      search_term = params[:search].to_s.strip
      \e[1mif search_term.empty?
        resources = JobApplication.opened
      else\e[0m
        resources = Administrate::Search....
        resources = order.apply(resources)
        resources = resources.page(params...
      \e[1mend\e[0m
      page = Administrate::Page::Collection...
      render locals: {
        resources: resources.page(params[:page...
        search_term: search_term,
        page: page
      }
    end
  EOS
  block <<-EOS
    \e[1m
    not very DRY...
    \e[0m
  EOS
  block <<-EOS
    \e[1mOpción 3\e[0m: usando "search_scopes" PR

    Lo hemos visto antes:
    \e[1m
    def index
      params[:search] ||= 'opened:'
      super
    end
    \e[0m
  EOS

  block <<-EOS
    rama \e[1msearch_scopes\e[0m de \e[1mnando/administrate\e[0m
    ────────────────────────────────────────
    class Administrate::Search
      def run
        if @term.blank?
          resource_class.all
        \e[1melsif (@scope = search_scope)
          resource_class.send @scope\e[0m
        else
          resource_class.where(...)
        end
      end
      [...]
    end
  EOS
  block <<-EOS
    def \e[1msearch_scope\e[0m
      if (\e[1m@term[-1, 1] == ":"\e[0m)
        scope = @term[0..-2]
        scope if \e[1mresource_class.respond_to?(scope)\e[0m
      end
    end
  EOS

  block <<-EOS
    \e[1m
    ¿¿¿pragmatismo temerario???
    \e[0m
    No lo sé, mi código es así...
  EOS
end

section "\e[1mminitest\e[0ming" do
  block <<-EOS
  ┌───────────────────────────────┐
  │\e[1m Autenticación de las Features \e[0m│
  └───────────────────────────────┘
  EOS

  block <<-EOS
    feature '\e[1mAdmin::JobOffers page\e[0m' do
      let(:basic_auth) {
        \e[1mActionController::HttpAuthentication::Basic\e[0m
      }
      before {
        \e[1mpage.driver.header 'Authorization'\e[0m,
          basic_auth.\e[1mencode_credentials\e[0m 'metadmin',
                                        'secret'
      }
      [...]
    end
  EOS

  center <<-EOS
  ┌────────────────────────────────────┐
  │\e[1m Subida\e[0m de Ficheros \e[1mcon CarrierWave\e[0m \e[0m│
  └────────────────────────────────────┘
  EOS

  block <<-EOS
    Tocamos dos ficheros:

      * \e[1mconfig/initializers/carrier_wave.rb\e[0m
      * \e[1mapp/uploaders/cv_uploader.rb\e[0m

    (créditos en el initializer ;)
  EOS

  block <<-EOS
    \e[1mconfig/initializers/carrier_wave.rb\e[0m
    ──────────────────────────────────────────────────
    class \e[1mNullStorage\e[0m
      attr_reader \e[1m:uploader\e[0m
      def \e[1minitialize\e[0m(uploader) [...]
      def \e[1midentifier\e[0m [...]
      def \e[1mstore!\e[0m(_file) [...]
      def \e[1mretrieve!\e[0m(_identifier) [...]
    end
    CarrierWave.configure do |config|
      \e[1mRails.env.test? && config.storage(NullStorage)\e[0m
    end
  EOS

  block <<-EOS
    \e[1mapp/uploaders/cv_uploader.rb\e[0m
    ──────────────────────────────────────────────
    class CvUploader < CarrierWave::Uploader::Base
      \e[1munless Rails.env.test?
        storage :file
      end\e[0m
      [...]
    end
  EOS
end

section "\e[1mConclusiones\e[0m" do
  block <<-EOS
    \e[1mMotiva\e[0m ver proyectos como Administrate
  EOS
  center <<-EOS
    \e[1mGraysonWright\e[0m me recuerda a DHH...

    Llega un chavalín y nos plantea:

    \e[1m"Oye...
  EOS
  center <<-EOS
    ¿y no podría ser
    así de sencillo
    con lo que ya sabemos?\e[0m
  EOS
  block <<-EOS
    Espero haberos contagiado algo de esta motivación
  EOS
  center <<-EOS
    \e[1m
    ¡Gracias!
    \e[0m
    ¿PREGUNTAS?

    Codetails dedicado a Isa,
    sin cuyo apoyo todo habría
    sido mucho más complicado.
    \e[1m
    ¡Gracias Isa!
    \e[0m
  EOS
end
