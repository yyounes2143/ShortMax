package com.mbridge.msdk.playercommon.exoplayer2;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.decoder.DecoderInputBuffer;
import com.mbridge.msdk.playercommon.exoplayer2.drm.DrmInitData;
import com.mbridge.msdk.playercommon.exoplayer2.drm.DrmSessionManager;
import com.mbridge.msdk.playercommon.exoplayer2.source.SampleStream;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.MediaClock;
import java.io.IOException;
/* loaded from: classes6.dex */
public abstract class BaseRenderer implements Renderer, RendererCapabilities {
    private RendererConfiguration configuration;
    private int index;
    private boolean readEndOfStream = true;
    private int state;
    private SampleStream stream;
    private Format[] streamFormats;
    private boolean streamIsFinal;
    private long streamOffsetUs;
    private final int trackType;

    public BaseRenderer(int i10) {
        this.trackType = i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean supportsFormatDrm(@Nullable DrmSessionManager<?> drmSessionManager, @Nullable DrmInitData drmInitData) {
        if (drmInitData == null) {
            return true;
        }
        if (drmSessionManager == null) {
            return false;
        }
        return drmSessionManager.canAcquireSession(drmInitData);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Renderer
    public final void disable() {
        boolean z10 = true;
        if (this.state != 1) {
            z10 = false;
        }
        Assertions.checkState(z10);
        this.state = 0;
        this.stream = null;
        this.streamFormats = null;
        this.streamIsFinal = false;
        onDisabled();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Renderer
    public final void enable(RendererConfiguration rendererConfiguration, Format[] formatArr, SampleStream sampleStream, long j10, boolean z10, long j11) throws ExoPlaybackException {
        boolean z11;
        if (this.state == 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        Assertions.checkState(z11);
        this.configuration = rendererConfiguration;
        this.state = 1;
        onEnabled(z10);
        replaceStream(formatArr, sampleStream, j11);
        onPositionReset(j10, z10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final RendererConfiguration getConfiguration() {
        return this.configuration;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getIndex() {
        return this.index;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Renderer
    public MediaClock getMediaClock() {
        return null;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Renderer
    public final int getState() {
        return this.state;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Renderer
    public final SampleStream getStream() {
        return this.stream;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Format[] getStreamFormats() {
        return this.streamFormats;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Renderer, com.mbridge.msdk.playercommon.exoplayer2.RendererCapabilities
    public final int getTrackType() {
        return this.trackType;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Renderer
    public final boolean hasReadStreamToEnd() {
        return this.readEndOfStream;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Renderer
    public final boolean isCurrentStreamFinal() {
        return this.streamIsFinal;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isSourceReady() {
        if (this.readEndOfStream) {
            return this.streamIsFinal;
        }
        return this.stream.isReady();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Renderer
    public final void maybeThrowStreamError() throws IOException {
        this.stream.maybeThrowError();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int readSource(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z10) {
        int readData = this.stream.readData(formatHolder, decoderInputBuffer, z10);
        if (readData == -4) {
            if (decoderInputBuffer.isEndOfStream()) {
                this.readEndOfStream = true;
                if (this.streamIsFinal) {
                    return -4;
                }
                return -3;
            }
            decoderInputBuffer.timeUs += this.streamOffsetUs;
        } else if (readData == -5) {
            Format format = formatHolder.format;
            long j10 = format.subsampleOffsetUs;
            if (j10 != Long.MAX_VALUE) {
                formatHolder.format = format.copyWithSubsampleOffsetUs(j10 + this.streamOffsetUs);
            }
        }
        return readData;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Renderer
    public final void replaceStream(Format[] formatArr, SampleStream sampleStream, long j10) throws ExoPlaybackException {
        Assertions.checkState(!this.streamIsFinal);
        this.stream = sampleStream;
        this.readEndOfStream = false;
        this.streamFormats = formatArr;
        this.streamOffsetUs = j10;
        onStreamChanged(formatArr, j10);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Renderer
    public final void resetPosition(long j10) throws ExoPlaybackException {
        this.streamIsFinal = false;
        this.readEndOfStream = false;
        onPositionReset(j10, false);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Renderer
    public final void setCurrentStreamFinal() {
        this.streamIsFinal = true;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Renderer
    public final void setIndex(int i10) {
        this.index = i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int skipSource(long j10) {
        return this.stream.skipData(j10 - this.streamOffsetUs);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Renderer
    public final void start() throws ExoPlaybackException {
        boolean z10 = true;
        if (this.state != 1) {
            z10 = false;
        }
        Assertions.checkState(z10);
        this.state = 2;
        onStarted();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Renderer
    public final void stop() throws ExoPlaybackException {
        boolean z10;
        if (this.state == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        Assertions.checkState(z10);
        this.state = 1;
        onStopped();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.RendererCapabilities
    public int supportsMixedMimeTypeAdaptation() throws ExoPlaybackException {
        return 0;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Renderer
    public final RendererCapabilities getCapabilities() {
        return this;
    }

    protected void onDisabled() {
    }

    protected void onStarted() throws ExoPlaybackException {
    }

    protected void onStopped() throws ExoPlaybackException {
    }

    protected void onEnabled(boolean z10) throws ExoPlaybackException {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.PlayerMessage.Target
    public void handleMessage(int i10, Object obj) throws ExoPlaybackException {
    }

    protected void onPositionReset(long j10, boolean z10) throws ExoPlaybackException {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onStreamChanged(Format[] formatArr, long j10) throws ExoPlaybackException {
    }
}
