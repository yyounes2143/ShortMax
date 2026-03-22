package io.bidmachine.media3.common;

import zm.a0;
/* loaded from: classes8.dex */
public final class IllegalSeekPositionException extends IllegalStateException {

    /* renamed from: a  reason: collision with root package name */
    public final a0 f55111a;

    /* renamed from: b  reason: collision with root package name */
    public final int f55112b;

    /* renamed from: c  reason: collision with root package name */
    public final long f55113c;

    public IllegalSeekPositionException(a0 a0Var, int i10, long j10) {
        this.f55111a = a0Var;
        this.f55112b = i10;
        this.f55113c = j10;
    }
}
