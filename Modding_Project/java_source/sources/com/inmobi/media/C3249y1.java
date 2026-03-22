package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.y1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3249y1 extends AbstractC3166se {

    /* renamed from: d  reason: collision with root package name */
    public final JSONObject f25443d;

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC3269z5 f25444e;

    /* renamed from: f  reason: collision with root package name */
    public final WeakReference f25445f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3249y1(S0 adUnit, JSONObject response, InterfaceC3269z5 interfaceC3269z5) {
        super(adUnit, (byte) 4);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(response, "response");
        this.f25443d = response;
        this.f25444e = interfaceC3269z5;
        this.f25445f = new WeakReference(adUnit);
    }

    @Override // com.inmobi.media.AbstractC3166se
    public final void a(Object obj) {
        F0 r10;
        InMobiAdRequestStatus inMobiAdRequestStatus = (InMobiAdRequestStatus) obj;
        S0 s02 = (S0) this.f25445f.get();
        if (s02 == null || (r10 = s02.r()) == null) {
            return;
        }
        if (inMobiAdRequestStatus == null) {
            s02.d((byte) 2);
            InterfaceC3269z5 interfaceC3269z5 = this.f25444e;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).d("AuctionCloseWorker", "AdUnit " + s02 + " state - AVAILABLE");
            }
            s02.e(r10);
            return;
        }
        s02.b(inMobiAdRequestStatus, true, (short) 2182);
    }

    @Override // com.inmobi.media.G1
    public final void c() {
        super.c();
        S0 s02 = (S0) this.f25445f.get();
        if (s02 == null) {
            return;
        }
        s02.b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY), true, (short) 2181);
    }

    @Override // com.inmobi.media.G1
    public final void a() {
        C3248y0 y10;
        S0 s02 = (S0) this.f25445f.get();
        InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
        if ((s02 != null ? s02.y() : null) == null) {
            b(inMobiAdRequestStatus);
            return;
        }
        try {
            AdConfig j10 = s02.j();
            if (j10 != null && (y10 = s02.y()) != null) {
                y10.a(this.f25443d, j10, this.f25444e);
            }
            b(null);
        } catch (Exception unused) {
            S0.e();
            b(inMobiAdRequestStatus);
        }
    }
}
