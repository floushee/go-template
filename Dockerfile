FROM scratch
ARG binary
COPY ${binary} /binary
CMD ["/binary"]
