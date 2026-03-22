package com.vungle.ads;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: VungleError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class InvalidBannerSizeError extends VungleError {
    public InvalidBannerSizeError() {
        this(null, 1, null);
    }

    public /* synthetic */ InvalidBannerSizeError(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public InvalidBannerSizeError(@org.jetbrains.annotations.Nullable java.lang.String r4) {
        /*
            r3 = this;
            com.vungle.ads.internal.protos.Sdk$SDKError$Reason r0 = com.vungle.ads.internal.protos.Sdk.SDKError.Reason.BANNER_VIEW_INVALID_SIZE
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Invalidate size for banner ad: "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            r1 = 0
            r3.<init>(r0, r4, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.InvalidBannerSizeError.<init>(java.lang.String):void");
    }
}
