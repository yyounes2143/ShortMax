package com.startshorts.androidplayer.ui.activity.download.data;

import fk.u;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
import wh.o;
/* compiled from: ShortDB.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.download.data.ShortDB$clearAll$2", f = "ShortDB.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class ShortDB$clearAll$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45223h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShortDB$clearAll$2(c<? super ShortDB$clearAll$2> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ShortDB$clearAll$2(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ShortDB$clearAll$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f45223h == 0) {
            f.b(obj);
            o.f69891a.a(u.f51776a.b()).e().a();
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
