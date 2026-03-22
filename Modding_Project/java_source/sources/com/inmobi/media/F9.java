package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class F9 extends C2920d8 {

    /* renamed from: x  reason: collision with root package name */
    public final boolean f23651x;

    /* renamed from: y  reason: collision with root package name */
    public String f23652y;

    /* renamed from: z  reason: collision with root package name */
    public boolean f23653z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F9(String assetId, String assetName, C2937e8 assetStyle, String textValue, boolean z10) {
        super(assetId, assetName, "WEBVIEW", assetStyle, 16);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(textValue, "textValue");
        this.f23651x = z10;
        this.f24582e = textValue;
    }

    public final void b() {
        this.f23653z = true;
    }

    public final void e(String str) {
        this.f23652y = str;
    }
}
