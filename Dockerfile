FROM node:24-bookworm

# Install dependencies
RUN apt-get update && apt-get install -y \
    openjdk-17-jdk \
    git \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Install EAS CLI
RUN npm install -g eas-cli

# Set environment variables
ENV ANDROID_SDK_ROOT=/opt/android-sdk
ENV PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools

# Install Android SDK
RUN mkdir -p $ANDROID_SDK_ROOT/cmdline-tools && \
    cd $ANDROID_SDK_ROOT/cmdline-tools && \
    wget https://dl.google.com/android/repository/commandlinetools-linux-10406996_latest.zip -O commandlinetools.zip && \
    unzip commandlinetools.zip && rm commandlinetools.zip && \
    mv cmdline-tools latest && \
    yes | $ANDROID_SDK_ROOT/cmdline-tools/latest/bin/sdkmanager --licenses && \
    $ANDROID_SDK_ROOT/cmdline-tools/latest/bin/sdkmanager --install "platform-tools" "platforms;android-35" "build-tools;35.0.0"

# Set working directory
WORKDIR /app

# Install project dependencies
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

# Copy all app files
COPY . .

CMD ["bash"]
