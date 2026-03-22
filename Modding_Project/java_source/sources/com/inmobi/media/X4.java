package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
/* loaded from: classes5.dex */
public class X4 extends Ra {

    /* renamed from: p  reason: collision with root package name */
    public final int f24360p;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public X4(com.inmobi.commons.core.configs.AdConfig.ViewabilityConfig r3, byte r4, com.inmobi.media.InterfaceC3269z5 r5) {
        /*
            r2 = this;
            com.inmobi.media.P4 r0 = com.inmobi.media.S4.f24121k
            java.lang.String r1 = "visibilityChecker"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            r2.<init>(r0, r3, r4, r5)
            r3 = 1000(0x3e8, float:1.401E-42)
            r2.f24360p = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.X4.<init>(com.inmobi.commons.core.configs.AdConfig$ViewabilityConfig, byte, com.inmobi.media.z5):void");
    }

    @Override // com.inmobi.media.Ra, com.inmobi.media.lf
    public int c() {
        AdConfig.ViewabilityConfig viewabilityConfig = this.f24069n;
        if (viewabilityConfig != null) {
            return viewabilityConfig.getWebVisibilityThrottleMillis();
        }
        return this.f24360p;
    }
}
