SELECT artikel.id                                                  AS artikel_id, #used
       artikel.titel                                               AS artikel_titel, #used
       artikel.sigle                                               AS artikel_sigle, #used
       artikel.dietrichkollation                                   AS artikel_dietrichkollation,
       artikel.bibliographieseite                                  AS artikel_bibliographieseite, #used
       artikel.bibliographiespalte                                 AS artikel_bibliographiespalte, #used
       artikel.bibliographiezeile                                  AS artikel_bibliographiezeile, #used
       artikel.autor                                               AS artikel_autor, #used
       artikel.letztmoegliches_erscheinungsjahr                    AS artikel_letztmoegliches_erscheinungsjahr, #used for sort
       artikel.erstmoegliches_erscheinungsjahr                     AS artikel_erstmoegliches_erscheinungsjahr, #used for sort
       artikel.titel_mit_lemma                                     AS artikel_titel_mit_lemma, #used??Zeile33 artikelView
       artikel.physikalische_seite                                 AS physikalische_seite_11, #used
       artikel.titel_mit_lemma_formen                              AS titel_mit_lemma_formen_12,
       artikel.fk_lemma                                            AS fk_lemma_72,
       artikel.fk_band                                             AS fk_band_73,
       artikel.fk_dietrichliteraturreferenz                        AS fk_dietrichliteraturreferenz_74,

       artikel_url.id                                              AS id_24,
       artikel_url.url                                             AS url_25, #used
       artikel_url.domain_name                                     AS domain_name_26, #used for sort
       artikel_url.fk_artikel                                      AS fk_artikel_77,

       lemma.id                                                    AS id_13,
       lemma.bezeichnung                                           AS bezeichnung_14, #used
       lemma.original_bezeichnung                                  AS original_bezeichnung_15,
       lemma.erweiterung                                           AS erweiterung_16,
       lemma.original_homonym_zusatz                               AS original_homonym_zusatz_17,
       lemma.neuer_homonym_zusatz                                  AS neuer_homonym_zusatz_18,
       lemma.allgemeinebemerkung                                   AS allgemeinebemerkung_19,
       lemma.ist_gnd_verzeichnet                                   AS ist_gnd_verzeichnet_20,
       lemma.ist_geloescht                                         AS ist_geloescht_21,
       lemma.verweis                                               AS verweis_22,
       lemma.fk_lemmabearbeitungsstatus                            AS fk_lemmabearbeitungsstatus_23,
       lemma.fk_lemmabearbeitungsstatus                            AS fk_lemmabearbeitungsstatus_75,
       lemma.fk_master_lemma                                       AS fk_master_lemma_76,

       band.id                                                     AS id_27,
       band.bandkuerzel                                            AS bandkuerzel_28, #used
       band.bandbezeichnung                                        AS bandbezeichnung_29,
       band.erfassungszeitraum                                     AS erfassungszeitraum_30,
       band.jahr_von                                               AS jahr_von_31,
       band.jahr_bis                                               AS jahr_bis_32,
       band.scan_id                                                AS scan_id_33,

       litref.id                                                   AS id_34,
       litref.sigle                                                AS sigle_35,
       litref.sortable_sigle                                       AS sortable_sigle_36,
       litref.zeitungskuerzel                                      AS zeitungskuerzel_37,
       litref.dietrichkollation                                    AS dietrichkollation_38, #used
       litref.dietrichbezeichnung                                  AS dietrichbezeichnung_39,
       litref.allgemeinebemerkung                                  AS allgemeinebemerkung_40,
       litref.fk_literaturreferenzbearbeitungsstatus               AS fk_literaturreferenzbearbeitungsstatus_78,
       litref.fk_band                                              AS fk_band_79,
       litref.fk_dietrichliteraturreferenz                         AS fk_dietrichliteraturreferenz_80,

       lemma_gnd.id                                                AS id_41,
       lemma_gnd.fk_lemma                                          AS fk_lemma_81,
       lemma_gnd.fk_gnd                                            AS fk_gnd_82,

       gnd.id                                                      AS id_42,
       gnd.nummer                                                  AS nummer_43,
       gnd.schlagwort                                              AS schlagwort_44, #used array

       litref_map.id                                               AS id_45,
       litref_map.normkollation                                    AS normkollation_46, #used
       litref_map.band_url                                         AS band_url_47,
       litref_map.band_url_bemerkung                               AS band_url_bemerkung_48,
       litref_map.keine_band_url_gefunden                          AS keine_band_url_gefunden_49,
       litref_map.fk_dietrichliteraturreferenz                     AS fk_dietrichliteraturreferenz_83,
       litref_map.fk_normliteraturreferenz                         AS fk_normliteraturreferenz_84,

       normlitref.id                                               AS id_50,
       normlitref.zdb_idn                                          AS zdb_idn_51,
       normlitref.zdb_id                                           AS zdb_id_52,
       normlitref.zdb_bezeichnung                                  AS zdb_bezeichnung_53, #used
       normlitref.kvk_bezeichnung                                  AS kvk_bezeichnung_54, #used
       ###
#        public function getNormlitRefBezeichnungHtmlDecoded(): string
#     {
#         $result = '';
#
#         if (!empty($this->zdbId)) {
#             $result = html_entity_decode($this->zdbBezeichnung);
#         } else if (!empty($this->kvkBezeichnung)) {
#             $result = html_entity_decode($this->kvkBezeichnung);
#         }
#
#                 return $result;
#         }

       normlitref.zdb_material                                     AS zdb_material_55,
       normlitref.zdb_erscheinungsverlauf                          AS zdb_erscheinungsverlauf_56,
       normlitref.zdb_erschienen                                   AS zdb_erschienen_57,
       normlitref.keine_werk_url_gefunden                          AS keine_werk_url_gefunden_58,
       normlitref.bemerkung                                        AS bemerkung_59,
       normlitref.fk_literaturtyp                                  AS fk_literaturtyp_85,

       literaturtyp.id                                             AS id_60,
       literaturtyp.beschreibung                                   AS beschreibung_61,
       literaturtyp.bezeichnung                                    AS bezeichnung_62, #used

       werk_url.id                                                 AS id_63,
       werk_url.url                                                AS url_64, #used
       werk_url.domain_name                                        AS domain_name_65, #used
       werk_url.bemerkung                                          AS bemerkung_66, #used for sort
       werk_url.fk_normliteraturreferenz                           AS fk_normliteraturreferenz_86,

       band_url.id                                                 AS id_67,
       band_url.url                                                AS url_68, #used
       band_url.domain_name                                        AS domain_name_69, #used for sort
       band_url.bemerkung                                          AS bemerkung_70, #used for sort
       band_url.normkollation                                      AS normkollation_71, #used
       band_url.fk_dietrichliteraturreferenz_normliteraturreferenz AS fk_dietrichliteraturreferenz_normliteraturreferenz_87

FROM artikel

         LEFT JOIN lemma ON artikel.fk_lemma = lemma.id #no aggregate
         LEFT JOIN artikel_url ON artikel.id = artikel_url.fk_artikel #aggregate confirmed
         LEFT JOIN band ON artikel.fk_band = band.id #no aggregate

         LEFT JOIN dietrichliteraturreferenz litref ON artikel.fk_dietrichliteraturreferenz = litref.id #aggregate


         LEFT JOIN lemma_gnd ON lemma.id = lemma_gnd.fk_lemma #Aggregate confirmed
         LEFT JOIN gnd ON lemma_gnd.fk_gnd = gnd.id #Aggregate

         LEFT JOIN dietrichliteraturreferenz_normliteraturreferenz litref_map
                   ON litref.id = litref_map.fk_dietrichliteraturreferenz #no aggreate

         LEFT JOIN normliteraturreferenz normlitref ON litref_map.fk_normliteraturreferenz = normlitref.id #aggregate confirmed
         LEFT JOIN literaturtyp ON normlitref.fk_literaturtyp = literaturtyp.id #no aggreate confirmed
         LEFT JOIN werk_url ON normlitref.id = werk_url.fk_normliteraturreferenz #aggregate confirmed

         LEFT JOIN band_url ON litref_map.id = band_url.fk_dietrichliteraturreferenz_normliteraturreferenz #aggregate confirmed

ORDER BY artikel.erstmoegliches_erscheinungsjahr ASC, artikel.letztmoegliches_erscheinungsjahr ASC,
         artikel_url.domain_name ASC,
         werk_url.domain_name ASC, werk_url.bemerkung ASC, band_url.domain_name ASC, band_url.bemerkung ASC