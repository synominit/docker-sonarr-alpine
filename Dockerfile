# Base Image
FROM synominit/docker-mono-base
# Labels
MAINTAINER synominit

# Environment Variables (these can be changed at container run time)
ENV USER=sonarr
ENV GROUP=media
ENV UID=76627
ENV GID=63342

# Build Commands
RUN adduser \
    --disabled-password \
    --shell /bin/false \
    --no-create-home \
    --uid "$UID" \
    "$USER" \
&& mkdir -p /opt/sonarr \
&& mkdir -p /build \
&& curl -o /build/sonarr.tar.gz -L "http://update.sonarr.tv/v2/master/mono/NzbDrone.master.tar.gz" \
&& tar xzf /build/sonarr.tar.gz -C /opt/sonarr --strip-components=1 \
&& rm -rf /build \
&& chown -R "$USER" /opt/sonarr \
&& apk del curl



# Ports and Volumes to Expose for host binding
VOLUME /config /downloads /tv
EXPOSE 8989

# Security best practices set user
USER sonarr

# Command to run when container starts
CMD cd /opt/sonarr \
&& mono --debug NzbDrone.exe -data=/config
