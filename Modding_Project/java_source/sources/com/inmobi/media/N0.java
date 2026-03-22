package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class N0 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ S0 f23871a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N0(S0 s02) {
        super(1);
        this.f23871a = s02;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        EnumC3093o4 it = (EnumC3093o4) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        InterfaceC3269z5 interfaceC3269z5 = this.f23871a.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
            ((A5) interfaceC3269z5).b(e10, "load with retry failed - max retry reached - No network");
        }
        this.f23871a.a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE), true, AbstractC2875ae.a(it));
        return Unit.f60915a;
    }
}
