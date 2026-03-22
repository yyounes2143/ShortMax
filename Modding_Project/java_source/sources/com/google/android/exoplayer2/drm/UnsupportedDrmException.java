package com.google.android.exoplayer2.drm;
/* loaded from: classes4.dex */
public final class UnsupportedDrmException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public final int f17568a;

    public UnsupportedDrmException(int i10) {
        this.f17568a = i10;
    }

    public UnsupportedDrmException(int i10, Exception exc) {
        super(exc);
        this.f17568a = i10;
    }
}
