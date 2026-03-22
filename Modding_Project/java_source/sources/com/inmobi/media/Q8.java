package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Q8 extends C2920d8 {

    /* renamed from: x  reason: collision with root package name */
    public final P8 f24041x;

    /* renamed from: y  reason: collision with root package name */
    public boolean f24042y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q8(String assetId, String assetName, C2937e8 assetStyle, P8 timer) {
        super(assetId, assetName, "TIMER", assetStyle, 16);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(timer, "timer");
        this.f24041x = timer;
    }

    public final void a(boolean z10) {
        this.f24042y = z10;
    }
}
