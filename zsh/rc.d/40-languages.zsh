# android start [op]
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
# android end

# ruby start [op]
export RUBY_BUILD_MIRROR_URL=https://cache.ruby-china.com
command -v rbenv >/dev/null \
  && eval "$(rbenv init - zsh)"
# ruby end
