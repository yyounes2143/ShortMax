package io.bidmachine.media3.exoplayer.drm;
/* loaded from: classes8.dex */
public final class UnsupportedDrmException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public final int f55850a;

    public UnsupportedDrmException(int i10) {
        this.f55850a = i10;
    }

    public UnsupportedDrmException(int i10, Exception exc) {
        super(exc);
        this.f55850a = i10;
    }
}
