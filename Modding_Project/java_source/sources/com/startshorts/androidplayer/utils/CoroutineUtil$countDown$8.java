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
@d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$countDown$8", f = "CoroutineUtil.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CoroutineUtil$countDown$8 extends SuspendLambda implements n<c<? super Long>, Throwable, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48109h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f48110i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CoroutineUtil$countDown$8(rs.c<? super CoroutineUtil$countDown$8> cVar) {
        super(3, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f48109h == 0) {
            f.b(obj);
            Logger logger = Logger.f41511a;
            logger.e("CoroutineUtil", "countDown failed -> " + ((Throwable) this.f48110i));
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // at.n
    public final Object invoke(c<? super Long> cVar, Throwable th2, rs.c<? super Unit> cVar2) {
        CoroutineUtil$countDown$8 coroutineUtil$countDown$8 = new CoroutineUtil$countDown$8(cVar2);
        coroutineUtil$countDown$8.f48110i = th2;
        return coroutineUtil$countDown$8.invokeSuspend(Unit.f60915a);
    }
}
