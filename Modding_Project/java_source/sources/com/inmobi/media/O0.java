package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class O0 extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ S0 f23920a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ byte[] f23921b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public O0(S0 s02, byte[] bArr) {
        super(0);
        this.f23920a = s02;
        this.f23921b = bArr;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        this.f23920a.d((byte) 1);
        InterfaceC3269z5 interfaceC3269z5 = this.f23920a.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            StringBuilder a10 = H6.a(e10, "<get-TAG>(...)", "AdUnit ");
            a10.append(this.f23920a);
            a10.append(" state - LOADING");
            ((A5) interfaceC3269z5).d(e10, a10.toString());
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f23920a.f24083j;
        if (interfaceC3269z52 != null) {
            String e11 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e11, "<get-TAG>(...)");
            ((A5) interfaceC3269z52).c(e11, "starting load with response worker");
        }
        A v10 = this.f23920a.v();
        int hashCode = this.f23920a.hashCode();
        S0 s02 = this.f23920a;
        C2905ca H = s02.H();
        Intrinsics.checkNotNull(H);
        V6 v62 = new V6(s02, H, this.f23921b, this.f23920a.f24083j);
        v10.getClass();
        A.a(hashCode, v62);
        return Unit.f60915a;
    }
}
