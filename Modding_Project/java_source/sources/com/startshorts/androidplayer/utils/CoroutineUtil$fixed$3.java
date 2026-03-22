package com.startshorts.androidplayer.utils;

import at.n;
import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kt.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CoroutineUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$fixed$3", f = "CoroutineUtil.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CoroutineUtil$fixed$3 extends SuspendLambda implements n<c<? super Integer>, Throwable, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48133h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f48134i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function1<String, Unit> f48135j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CoroutineUtil$fixed$3(Function1<? super String, Unit> function1, rs.c<? super CoroutineUtil$fixed$3> cVar) {
        super(3, cVar);
        this.f48135j = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f48133h == 0) {
            f.b(obj);
            Throwable th2 = (Throwable) this.f48134i;
            Logger logger = Logger.f41511a;
            logger.e("CoroutineUtil", "fixed failed -> " + th2);
            Function1<String, Unit> function1 = this.f48135j;
            if (function1 != null) {
                function1.invoke(th2.getMessage());
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // at.n
    public final Object invoke(c<? super Integer> cVar, Throwable th2, rs.c<? super Unit> cVar2) {
        CoroutineUtil$fixed$3 coroutineUtil$fixed$3 = new CoroutineUtil$fixed$3(this.f48135j, cVar2);
        coroutineUtil$fixed$3.f48134i = th2;
        return coroutineUtil$fixed$3.invokeSuspend(Unit.f60915a);
    }
}
