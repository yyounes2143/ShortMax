package com.startshorts.androidplayer.utils;

import at.n;
import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kt.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CoroutineUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$countDown$4", f = "CoroutineUtil.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CoroutineUtil$countDown$4 extends SuspendLambda implements n<c<? super Integer>, Throwable, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48091h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f48092i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CoroutineUtil$countDown$4(rs.c<? super CoroutineUtil$countDown$4> cVar) {
        super(3, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f48091h == 0) {
            f.b(obj);
            Logger logger = Logger.f41511a;
            logger.e("CoroutineUtil", "countDown failed -> " + ((Throwable) this.f48092i));
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // at.n
    public final Object invoke(c<? super Integer> cVar, Throwable th2, rs.c<? super Unit> cVar2) {
        CoroutineUtil$countDown$4 coroutineUtil$countDown$4 = new CoroutineUtil$countDown$4(cVar2);
        coroutineUtil$countDown$4.f48092i = th2;
        return coroutineUtil$countDown$4.invokeSuspend(Unit.f60915a);
    }
}
