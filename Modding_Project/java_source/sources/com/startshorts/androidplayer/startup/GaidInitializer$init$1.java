package com.startshorts.androidplayer.startup;

import android.content.Context;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GaidInitializer.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.startup.GaidInitializer$init$1", f = "GaidInitializer.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class GaidInitializer$init$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44859h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ GaidInitializer f44860i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Context f44861j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GaidInitializer$init$1(GaidInitializer gaidInitializer, Context context, c<? super GaidInitializer$init$1> cVar) {
        super(2, cVar);
        this.f44860i = gaidInitializer;
        this.f44861j = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new GaidInitializer$init$1(this.f44860i, this.f44861j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((GaidInitializer$init$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z10;
        a.f();
        if (this.f44859h == 0) {
            f.b(obj);
            this.f44860i.o(this.f44861j);
            z10 = this.f44860i.f44852b;
            if (!z10) {
                this.f44860i.m();
                this.f44860i.n();
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
