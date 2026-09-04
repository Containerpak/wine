# Wine Base

The Containerpak Wine image is a reusable desktop base for applications that
run Wine or Proton. It provides their graphics, audio, input, Vulkan and
multimedia system libraries, but does not ship Wine, Proton, Winetricks, Gecko
or Mono.

The image is published for amd64 and arm64 at
`ghcr.io/containerpak/wine:main` by GitHub Actions. The amd64 variant includes
i386 system libraries. The arm64 variant provides the native libraries used by
ARM64 Wine and Proton runners with bundled x86 translation support.
