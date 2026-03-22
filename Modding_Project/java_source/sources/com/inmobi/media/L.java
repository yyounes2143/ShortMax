package com.inmobi.media;

import android.os.SystemClock;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.commons.core.configs.RootConfig;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class L extends AbstractC3166se {

    /* renamed from: d  reason: collision with root package name */
    public final InterfaceC3269z5 f23790d;

    /* renamed from: e  reason: collision with root package name */
    public final WeakReference f23791e;

    /* renamed from: f  reason: collision with root package name */
    public K f23792f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L(S0 adUnit, InterfaceC3269z5 interfaceC3269z5) {
        super(adUnit, (byte) 0);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.f23790d = interfaceC3269z5;
        this.f23791e = new WeakReference(adUnit);
    }

    @Override // com.inmobi.media.AbstractC3166se
    public final void a(Object obj) {
        C3248y0 c3248y0 = (C3248y0) obj;
        S0 s02 = (S0) this.f23791e.get();
        if (s02 == null) {
            return;
        }
        s02.b((byte) 0);
        if (this.f23792f == null) {
            if (c3248y0 == null) {
                s02.a(s02.I(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), (short) 0);
                return;
            } else if (c3248y0.m()) {
                s02.c(c3248y0);
                return;
            } else {
                s02.d(c3248y0);
                return;
            }
        }
        Z I = s02.I();
        K k10 = this.f23792f;
        Intrinsics.checkNotNull(k10);
        InMobiAdRequestStatus inMobiAdRequestStatus = k10.f23765a;
        K k11 = this.f23792f;
        Intrinsics.checkNotNull(k11);
        s02.a(I, inMobiAdRequestStatus, k11.f23766b);
    }

    @Override // com.inmobi.media.G1
    public final void c() {
        super.c();
        S0 s02 = (S0) this.f23791e.get();
        if (s02 == null) {
            return;
        }
        s02.b((byte) 0);
        s02.a(s02.I(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY), (short) 2117);
    }

    @Override // com.inmobi.media.G1
    public final void a() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23790d;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("AdFetcherTask", "executeTask " + this);
        }
        S0 s02 = (S0) this.f23791e.get();
        if (s02 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f23790d;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).b("AdFetcherTask", "adUnit is null. fail");
            }
            this.f23792f = new K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), (short) 2111);
            b(null);
            return;
        }
        LinkedHashMap linkedHashMap = O2.f23923a;
        if (!((RootConfig) AbstractC3110p5.a("root", "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig", null)).isMonetizationDisabled()) {
            U0 s10 = s02.s();
            s10.getClass();
            s10.f24233f = SystemClock.elapsedRealtime();
            try {
                InterfaceC3269z5 interfaceC3269z53 = this.f23790d;
                if (interfaceC3269z53 != null) {
                    ((A5) interfaceC3269z53).a("AdFetcherTask", "getting ad from store");
                }
                b(s02.p().a(s02.h0(), s02.F()));
                return;
            } catch (K e10) {
                Intrinsics.checkNotNullExpressionValue(S0.e(), "<get-TAG>(...)");
                this.f23792f = e10;
                b(null);
                return;
            }
        }
        InterfaceC3269z5 interfaceC3269z54 = this.f23790d;
        if (interfaceC3269z54 != null) {
            ((A5) interfaceC3269z54).b("AdFetcherTask", "SDK will not perform this load operation as monetization has been disabled. Please contact InMobi for further info.");
        }
        this.f23792f = new K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MONETIZATION_DISABLED), (short) 2012);
        b(null);
    }
}
