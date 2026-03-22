package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class K1 extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ M1 f23768a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K1(M1 m12) {
        super(0);
        this.f23768a = m12;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        String str;
        M1 m12 = this.f23768a;
        InterfaceC3269z5 interfaceC3269z5 = m12.f24083j;
        if (interfaceC3269z5 != null) {
            str = m12.N;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str, "loadWithRetry success");
        }
        this.f23768a.I0();
        return Unit.f60915a;
    }
}
