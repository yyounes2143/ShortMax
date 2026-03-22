package com.inmobi.media;

import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.ba  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2888ba extends N9 {

    /* renamed from: y  reason: collision with root package name */
    public final C2871aa f24520y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2888ba(C2871aa novatiqData, InterfaceC3269z5 interfaceC3269z5) {
        super(novatiqData.f24490c.getBeaconUrl(), interfaceC3269z5);
        Intrinsics.checkNotNullParameter(novatiqData, "novatiqData");
        this.f24520y = novatiqData;
        this.f23904t = false;
        this.f23905u = false;
        this.f23908x = false;
    }

    @Override // com.inmobi.media.N9
    public final void f() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23889e;
        if (interfaceC3269z5 != null) {
            this.f24520y.getClass();
            ((A5) interfaceC3269z5).a("Novatiq", "preparing Novatiq request with data - hyperId - " + this.f24520y.f24488a + " - sspHost - " + this.f24520y.f24489b + " - pubId - inmobi");
        }
        super.f();
        HashMap hashMap = this.f23894j;
        if (hashMap != null) {
            hashMap.put("sptoken", this.f24520y.f24488a);
        }
        HashMap hashMap2 = this.f23894j;
        if (hashMap2 != null) {
            this.f24520y.getClass();
            hashMap2.put("sspid", "i6i");
        }
        HashMap hashMap3 = this.f23894j;
        if (hashMap3 != null) {
            hashMap3.put("ssphost", this.f24520y.f24489b);
        }
        HashMap hashMap4 = this.f23894j;
        if (hashMap4 != null) {
            this.f24520y.getClass();
            hashMap4.put("pubid", "inmobi");
        }
    }
}
