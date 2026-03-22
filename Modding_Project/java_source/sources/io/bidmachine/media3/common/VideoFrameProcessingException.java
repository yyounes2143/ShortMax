package io.bidmachine.media3.common;
/* loaded from: classes8.dex */
public final class VideoFrameProcessingException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public final long f55134a;

    public VideoFrameProcessingException(Throwable th2, long j10) {
        super(th2);
        this.f55134a = j10;
    }

    public static VideoFrameProcessingException b(Exception exc) {
        return d(exc, -9223372036854775807L);
    }

    public static VideoFrameProcessingException d(Exception exc, long j10) {
        if (exc instanceof VideoFrameProcessingException) {
            return (VideoFrameProcessingException) exc;
        }
        return new VideoFrameProcessingException(exc, j10);
    }
}
