package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Q0 extends G1 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ S0 f24025d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ String f24026e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ String f24027f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q0(S0 s02, String str, String str2) {
        super(s02);
        this.f24025d = s02;
        this.f24026e = str;
        this.f24027f = str2;
    }

    @Override // com.inmobi.media.G1
    public final void a() {
        S0 s02 = (S0) this.f23669b.get();
        if (s02 != null) {
            C2976h m10 = s02.m();
            if (m10 != null && Intrinsics.areEqual(m10.s(), this.f24026e)) {
                S0.a(s02, m10, this.f24027f);
                InterfaceC3269z5 interfaceC3269z5 = this.f24025d.f24083j;
                if (interfaceC3269z5 != null) {
                    String e10 = S0.e();
                    StringBuilder a10 = H6.a(e10, "<get-TAG>(...)", "Updated blob ");
                    a10.append(this.f24027f);
                    ((A5) interfaceC3269z5).c(e10, a10.toString());
                    return;
                }
                return;
            }
            InterfaceC3269z5 interfaceC3269z52 = this.f24025d.f24083j;
            if (interfaceC3269z52 != null) {
                String e11 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e11, "<get-TAG>(...)");
                ((A5) interfaceC3269z52).b(e11, "Impression ID is null for saveBlob");
            }
        }
    }
}
