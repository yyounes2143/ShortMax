package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public class Ra extends lf {

    /* renamed from: n  reason: collision with root package name */
    public final AdConfig.ViewabilityConfig f24069n;

    /* renamed from: o  reason: collision with root package name */
    public final int f24070o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ra(ff visibilityChecker, AdConfig.ViewabilityConfig viewabilityConfig, byte b10, InterfaceC3269z5 interfaceC3269z5) {
        super(visibilityChecker, b10, interfaceC3269z5);
        Intrinsics.checkNotNullParameter(visibilityChecker, "visibilityChecker");
        this.f24069n = viewabilityConfig;
        this.f24070o = 100;
    }

    @Override // com.inmobi.media.lf
    public int c() {
        AdConfig.ViewabilityConfig viewabilityConfig = this.f24069n;
        if (viewabilityConfig != null) {
            return viewabilityConfig.getVisibilityThrottleMillis();
        }
        return this.f24070o;
    }

    @Override // com.inmobi.media.lf
    public final void d() {
        g();
    }
}
