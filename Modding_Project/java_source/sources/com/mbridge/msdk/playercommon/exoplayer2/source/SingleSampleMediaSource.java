package com.mbridge.msdk.playercommon.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.Timeline;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.Allocator;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSpec;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.io.IOException;
/* loaded from: classes6.dex */
public final class SingleSampleMediaSource extends BaseMediaSource {
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT = 3;
    private final DataSource.Factory dataSourceFactory;
    private final DataSpec dataSpec;
    private final long durationUs;
    private final Format format;
    private final int minLoadableRetryCount;
    private final Timeline timeline;
    private final boolean treatLoadErrorsAsEndOfStream;

    @Deprecated
    /* loaded from: classes6.dex */
    public interface EventListener {
        void onLoadError(int i10, IOException iOException);
    }

    /* loaded from: classes6.dex */
    private static final class EventListenerWrapper extends DefaultMediaSourceEventListener {
        private final EventListener eventListener;
        private final int eventSourceId;

        public EventListenerWrapper(EventListener eventListener, int i10) {
            this.eventListener = (EventListener) Assertions.checkNotNull(eventListener);
            this.eventSourceId = i10;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.DefaultMediaSourceEventListener, com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener
        public void onLoadError(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData, IOException iOException, boolean z10) {
            this.eventListener.onLoadError(this.eventSourceId, iOException);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator) {
        boolean z10;
        if (mediaPeriodId.periodIndex == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        Assertions.checkArgument(z10);
        return new SingleSampleMediaPeriod(this.dataSpec, this.dataSourceFactory, this.format, this.durationUs, this.minLoadableRetryCount, createEventDispatcher(mediaPeriodId), this.treatLoadErrorsAsEndOfStream);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(ExoPlayer exoPlayer, boolean z10) {
        refreshSourceInfo(this.timeline, null);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((SingleSampleMediaPeriod) mediaPeriod).release();
    }

    /* loaded from: classes6.dex */
    public static final class Factory {
        private final DataSource.Factory dataSourceFactory;
        private boolean isCreateCalled;
        private int minLoadableRetryCount = 3;
        @Nullable
        private Object tag;
        private boolean treatLoadErrorsAsEndOfStream;

        public Factory(DataSource.Factory factory) {
            this.dataSourceFactory = (DataSource.Factory) Assertions.checkNotNull(factory);
        }

        public SingleSampleMediaSource createMediaSource(Uri uri, Format format, long j10) {
            this.isCreateCalled = true;
            return new SingleSampleMediaSource(uri, this.dataSourceFactory, format, j10, this.minLoadableRetryCount, this.treatLoadErrorsAsEndOfStream, this.tag);
        }

        public Factory setMinLoadableRetryCount(int i10) {
            Assertions.checkState(!this.isCreateCalled);
            this.minLoadableRetryCount = i10;
            return this;
        }

        public Factory setTag(Object obj) {
            Assertions.checkState(!this.isCreateCalled);
            this.tag = obj;
            return this;
        }

        public Factory setTreatLoadErrorsAsEndOfStream(boolean z10) {
            Assertions.checkState(!this.isCreateCalled);
            this.treatLoadErrorsAsEndOfStream = z10;
            return this;
        }

        @Deprecated
        public SingleSampleMediaSource createMediaSource(Uri uri, Format format, long j10, @Nullable Handler handler, @Nullable MediaSourceEventListener mediaSourceEventListener) {
            SingleSampleMediaSource createMediaSource = createMediaSource(uri, format, j10);
            if (handler != null && mediaSourceEventListener != null) {
                createMediaSource.addEventListener(handler, mediaSourceEventListener);
            }
            return createMediaSource;
        }
    }

    @Deprecated
    public SingleSampleMediaSource(Uri uri, DataSource.Factory factory, Format format, long j10) {
        this(uri, factory, format, j10, 3);
    }

    @Deprecated
    public SingleSampleMediaSource(Uri uri, DataSource.Factory factory, Format format, long j10, int i10) {
        this(uri, factory, format, j10, i10, false, null);
    }

    @Deprecated
    public SingleSampleMediaSource(Uri uri, DataSource.Factory factory, Format format, long j10, int i10, Handler handler, EventListener eventListener, int i11, boolean z10) {
        this(uri, factory, format, j10, i10, z10, null);
        if (handler == null || eventListener == null) {
            return;
        }
        addEventListener(handler, new EventListenerWrapper(eventListener, i11));
    }

    private SingleSampleMediaSource(Uri uri, DataSource.Factory factory, Format format, long j10, int i10, boolean z10, @Nullable Object obj) {
        this.dataSourceFactory = factory;
        this.format = format;
        this.durationUs = j10;
        this.minLoadableRetryCount = i10;
        this.treatLoadErrorsAsEndOfStream = z10;
        this.dataSpec = new DataSpec(uri);
        this.timeline = new SinglePeriodTimeline(j10, true, false, obj);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
    }
}
