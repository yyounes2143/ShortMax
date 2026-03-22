package com.shorttv.aar.billing.util;

import at.n;
import bd.b;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kt.c;
/* compiled from: CoroutineUtil.kt */
@Metadata
@d(c = "com.shorttv.aar.billing.util.CoroutineUtil$delay$3", f = "CoroutineUtil.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
final class CoroutineUtil$delay$3 extends SuspendLambda implements n<c<? super Integer>, Throwable, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f37037h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f37038i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CoroutineUtil$delay$3(rs.c<? super CoroutineUtil$delay$3> cVar) {
        super(3, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f37037h == 0) {
            f.b(obj);
            b bVar = b.f2605a;
            bVar.a("CoroutineUtil", "delay failed -> " + ((Throwable) this.f37038i));
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // at.n
    public final Object invoke(c<? super Integer> cVar, Throwable th2, rs.c<? super Unit> cVar2) {
        CoroutineUtil$delay$3 coroutineUtil$delay$3 = new CoroutineUtil$delay$3(cVar2);
        coroutineUtil$delay$3.f37038i = th2;
        return coroutineUtil$delay$3.invokeSuspend(Unit.f60915a);
    }
}
