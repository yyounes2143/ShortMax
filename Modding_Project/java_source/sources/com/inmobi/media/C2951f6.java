package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.f6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2951f6 extends AbstractC3166se {

    /* renamed from: d  reason: collision with root package name */
    public final WeakReference f24726d;

    /* renamed from: e  reason: collision with root package name */
    public final WeakReference f24727e;

    /* renamed from: f  reason: collision with root package name */
    public short f24728f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2951f6(C3063m6 adUnit, F0 eventListener) {
        super(adUnit, (byte) 5);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(eventListener, "eventListener");
        this.f24726d = new WeakReference(adUnit);
        this.f24727e = new WeakReference(eventListener);
    }

    @Override // com.inmobi.media.AbstractC3166se
    public final void a(Object obj) {
        F0 f02;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        C3063m6 c3063m6 = (C3063m6) this.f24726d.get();
        if (c3063m6 == null || (f02 = (F0) this.f24727e.get()) == null) {
            return;
        }
        if (booleanValue) {
            InterfaceC3231x k10 = c3063m6.k();
            GestureDetector$OnGestureListenerC2941ec x10 = c3063m6.x();
            if (x10 != null) {
                if (k10 instanceof T7) {
                    T7 t72 = (T7) k10;
                    t72.H = x10;
                    t72.K = c3063m6.T();
                } else {
                    c3063m6.b(f02, (short) 84);
                }
            }
            c3063m6.h(f02);
            return;
        }
        short s10 = this.f24728f;
        if (s10 != 0) {
            c3063m6.a(this.f24727e, s10, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
        } else {
            c3063m6.b(f02, (short) 85);
        }
    }

    @Override // com.inmobi.media.G1
    public final void c() {
        super.c();
        C3063m6 c3063m6 = (C3063m6) this.f24726d.get();
        if (c3063m6 != null && ((F0) this.f24727e.get()) != null) {
            c3063m6.a(this.f24727e, (short) 40, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY));
        }
    }

    @Override // com.inmobi.media.G1
    public final void a() {
        C3063m6 c3063m6 = (C3063m6) this.f24726d.get();
        F0 f02 = (F0) this.f24727e.get();
        if (c3063m6 != null && f02 != null) {
            if (c3063m6.E0()) {
                short c10 = c3063m6.c(f02);
                this.f24728f = c10;
                b(Boolean.valueOf(c10 == 0));
                return;
            }
            b(Boolean.FALSE);
            return;
        }
        b(Boolean.FALSE);
    }
}
