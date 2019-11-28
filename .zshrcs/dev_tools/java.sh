# Android SDK
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=${JAVA_HOME}/bin:$PATH

export ANT_HOME=/usr/local/opt/ant
export PATH=$ANT_HOME/bin:$PATH

export MAVEN_HOME=/usr/local/opt/maven
export PATH=$MAVEN_HOME/bin:$PATH

export GRADLE_HOME=/usr/local/opt/gradle
export PATH=$GRADLE_HOME/bin:$PATH

# Android stuff
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/build-tools/$(ls $ANDROID_HOME/build-tools | sort | tail -1):$PATH

# Expose fastlane
export PATH=$HOME/.fastlane/bin:$PATH
