# Android SDK (via Homebrew)
export JAVA_HOME=$(/usr/libexec/java_home)
export ANT_HOME=/usr/local/opt/ant
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle
export ANDROID_HOME=/Users/lucassus/Library/Android/sdk

export PATH=${JAVA_HOME}/bin:$PATH
export PATH=$ANT_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/build-tools/28.0.3:$PATH
export PATH=$HOME/.fastlane/bin:$PATH
