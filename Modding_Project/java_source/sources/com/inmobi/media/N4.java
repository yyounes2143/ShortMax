package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class N4 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ O4 f23873a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N4(O4 o42) {
        super(1);
        this.f23873a = o42;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Da result = (Da) obj;
        Intrinsics.checkNotNullParameter(result, "result");
        O4 o42 = this.f23873a;
        o42.getClass();
        Intrinsics.checkNotNullParameter(result, "result");
        o42.f23655b.a(result);
        return Unit.f60915a;
    }
}
