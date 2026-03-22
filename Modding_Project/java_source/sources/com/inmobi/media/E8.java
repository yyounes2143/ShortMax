package com.inmobi.media;

import android.os.SystemClock;
import com.inmobi.ads.InMobiAdRequestStatus;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class E8 extends AbstractC3166se {

    /* renamed from: d  reason: collision with root package name */
    public final WeakReference f23622d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E8(C2903c8 adUnit) {
        super(adUnit, (byte) 6);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.f23622d = new WeakReference(adUnit);
    }

    @Override // com.inmobi.media.AbstractC3166se
    public final void a(Object obj) {
        short shortValue = ((Number) obj).shortValue();
        S0 s02 = (C2903c8) this.f23622d.get();
        if (s02 == null) {
            return;
        }
        if (shortValue == 0) {
            if (2 == s02.Q()) {
                s02.d((byte) 4);
                InterfaceC3231x k10 = s02.k();
                GestureDetector$OnGestureListenerC2941ec x10 = s02.x();
                F0 r10 = s02.r();
                if (!(k10 instanceof T7)) {
                    if (r10 != null) {
                        Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                        r10.a(s02, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                        return;
                    }
                    return;
                }
                T7 t72 = (T7) k10;
                t72.H = x10;
                t72.K = s02.T();
                U0 s10 = s02.s();
                s10.getClass();
                s10.f24236i = SystemClock.elapsedRealtime();
                s02.u0();
                s02.z0();
                if (r10 != null) {
                    Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                    s02.f(r10);
                    return;
                }
                return;
            }
            return;
        }
        s02.a(new WeakReference<>(s02.r()), shortValue, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
    }

    @Override // com.inmobi.media.G1
    public final void c() {
        F0 r10;
        super.c();
        S0 s02 = (C2903c8) this.f23622d.get();
        if (s02 != null && (r10 = s02.r()) != null) {
            r10.a(s02, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY));
        }
    }

    @Override // com.inmobi.media.G1
    public final void a() {
        C2903c8 c2903c8 = (C2903c8) this.f23622d.get();
        if (c2903c8 == null) {
            b((short) 13);
            return;
        }
        F0 r10 = c2903c8.r();
        if (r10 != null) {
            b(Short.valueOf(c2903c8.c(r10)));
        }
    }
}
