echo "Coverage Maven Build..."
echo "mvn com.qualityscroll.caas:jacov-maven-plugin:1.0.0-SNAPSHOT:setup $* -Dmaven.jacov.addDependencyJavaLib=true"
echo ${CAAS_API_KEY}
mvn com.qualityscroll.caas:jacov-maven-plugin:1.0.0-SNAPSHOT:setup $* -Dmaven.jacov.addDependencyJavaLib=true
echo "Build Finished"
