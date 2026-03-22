package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class H4 extends AbstractC3166se {

    /* renamed from: d  reason: collision with root package name */
    public final long f23696d;

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC3269z5 f23697e;

    /* renamed from: f  reason: collision with root package name */
    public final WeakReference f23698f;

    /* renamed from: g  reason: collision with root package name */
    public K f23699g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public H4(S0 adUnit, long j10, InterfaceC3269z5 interfaceC3269z5) {
        super(adUnit, (byte) 2);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.f23696d = j10;
        this.f23697e = interfaceC3269z5;
        this.f23698f = new WeakReference(adUnit);
    }

    @Override // com.inmobi.media.AbstractC3166se
    public final void a(Object obj) {
        byte[] bArr = (byte[]) obj;
        S0 s02 = (S0) this.f23698f.get();
        if (s02 == null) {
            return;
        }
        if (this.f23699g != null) {
            InterfaceC3269z5 interfaceC3269z5 = this.f23697e;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).d("GetSignalsWorker", "AdUnit " + s02 + " state - FAILED");
            }
            s02.d((byte) 3);
        }
        F0 r10 = s02.r();
        if (r10 == null) {
            return;
        }
        K k10 = this.f23699g;
        if (k10 != null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f23697e;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).a("GetSignalsWorker", "get signals failed", k10);
            }
            s02.a(k10.f23766b, this.f23696d);
            r10.b(new InMobiAdRequestStatus(k10.f23765a.getStatusCode()));
        } else if (bArr == null) {
            s02.d((byte) 3);
            InterfaceC3269z5 interfaceC3269z53 = this.f23697e;
            if (interfaceC3269z53 != null) {
                ((A5) interfaceC3269z53).d("GetSignalsWorker", "AdUnit " + this + " state - FAILED");
            }
            InterfaceC3269z5 interfaceC3269z54 = this.f23697e;
            if (interfaceC3269z54 != null) {
                ((A5) interfaceC3269z54).b("GetSignalsWorker", "no request created - fail");
            }
            s02.a(13, this.f23696d);
            r10.b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
        } else {
            s02.b(this.f23696d);
            r10.a(bArr);
            InterfaceC3269z5 interfaceC3269z55 = this.f23697e;
            if (interfaceC3269z55 != null) {
                ((A5) interfaceC3269z55).a("GetSignalsWorker", "callback - onRequestCreated");
            }
        }
    }

    @Override // com.inmobi.media.G1
    public final void c() {
        super.c();
        S0 s02 = (S0) this.f23698f.get();
        if (s02 == null) {
            return;
        }
        F0 r10 = s02.r();
        InterfaceC3269z5 interfaceC3269z5 = this.f23697e;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("GetSignalsWorker", "onOOM");
        }
        if (r10 != null) {
            r10.b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY));
        }
    }

    @Override // com.inmobi.media.G1
    public final void a() {
        S0 s02 = (S0) this.f23698f.get();
        if ((s02 != null ? s02.H() : null) == null) {
            InterfaceC3269z5 interfaceC3269z5 = this.f23697e;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("GetSignalsWorker", "OAManager is null");
            }
            b(null);
        } else if (s02.r() == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f23697e;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).b("GetSignalsWorker", "listener is null");
            }
            b(null);
        } else {
            try {
                C2905ca H = s02.H();
                b(H != null ? new C2922da(H.f24554a).a() : null);
            } catch (K e10) {
                this.f23699g = e10;
                b(null);
            }
        }
    }
}
