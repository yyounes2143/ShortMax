package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class L1 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ M1 f23794a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L1(M1 m12) {
        super(1);
        this.f23794a = m12;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str;
        EnumC3093o4 it = (EnumC3093o4) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        M1 m12 = this.f23794a;
        InterfaceC3269z5 interfaceC3269z5 = m12.f24083j;
        if (interfaceC3269z5 != null) {
            str = m12.N;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).b(str, "loadWithRetry error - " + it);
        }
        this.f23794a.a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE), true, AbstractC2875ae.a(it));
        return Unit.f60915a;
    }
}
