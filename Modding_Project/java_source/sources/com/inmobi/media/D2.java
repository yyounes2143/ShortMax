package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class D2 extends X4 {

    /* renamed from: q  reason: collision with root package name */
    public final int f23560q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public D2(AdConfig.ViewabilityConfig viewabilityConfig, InterfaceC3269z5 interfaceC3269z5) {
        super(viewabilityConfig, (byte) 1, interfaceC3269z5);
        P4 visibilityChecker = S4.f24121k;
        Intrinsics.checkNotNullParameter(visibilityChecker, "visibilityChecker");
        this.f23560q = 500;
    }

    @Override // com.inmobi.media.X4, com.inmobi.media.Ra, com.inmobi.media.lf
    public final int c() {
        AdConfig.ViewabilityConfig viewabilityConfig = this.f24069n;
        if (viewabilityConfig != null) {
            return viewabilityConfig.getCompanionVisibilityThrottleMillis();
        }
        return this.f23560q;
    }
}
