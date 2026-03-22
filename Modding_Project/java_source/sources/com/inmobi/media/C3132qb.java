package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.qb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3132qb extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3195ub f25204a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3132qb(C3195ub c3195ub) {
        super(1);
        this.f25204a = c3195ub;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AbstractC3084nb result = (AbstractC3084nb) obj;
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof C3052lb) {
            this.f25204a.a(new C2956fb(String.valueOf(((C3052lb) result).f24992a)), (C2940eb) null);
        } else {
            C3195ub c3195ub = this.f25204a;
            c3195ub.a(new C3116pb(c3195ub));
        }
        return Unit.f60915a;
    }
}
