package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class K extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    public final InMobiAdRequestStatus f23765a;

    /* renamed from: b  reason: collision with root package name */
    public final short f23766b;

    public K(InMobiAdRequestStatus status, short s10) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.f23765a = status;
        this.f23766b = s10;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f23765a.getMessage();
    }
}
