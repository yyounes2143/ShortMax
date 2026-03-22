package com.startshorts.androidplayer.manager.configure.ad;

import android.content.Context;
import fk.u;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdSwitchConfigure.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure$updateConfigure$1", f = "AdSwitchConfigure.kt", l = {101, 102}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AdSwitchConfigure$updateConfigure$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42278h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdSwitchConfigure$updateConfigure$1(rs.c<? super AdSwitchConfigure$updateConfigure$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AdSwitchConfigure$updateConfigure$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AdSwitchConfigure$updateConfigure$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f42278h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    kotlin.f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.f.b(obj);
        } else {
            kotlin.f.b(obj);
            AdSwitchConfigure adSwitchConfigure = AdSwitchConfigure.f42267a;
            adSwitchConfigure.c(false);
            Context b10 = u.f51776a.b();
            this.f42278h = 1;
            if (adSwitchConfigure.d(b10, this) == f10) {
                return f10;
            }
        }
        AdSwitchConfigure adSwitchConfigure2 = AdSwitchConfigure.f42267a;
        this.f42278h = 2;
        if (adSwitchConfigure2.b(this) == f10) {
            return f10;
        }
        return Unit.f60915a;
    }
}
