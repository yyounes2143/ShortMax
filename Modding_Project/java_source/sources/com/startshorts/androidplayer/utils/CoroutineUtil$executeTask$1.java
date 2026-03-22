package com.startshorts.androidplayer.utils;

import com.startshorts.androidplayer.log.Logger;
import fk.p;
import gt.g0;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CoroutineUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.CoroutineUtil$executeTask$1", f = "CoroutineUtil.kt", l = {57}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CoroutineUtil$executeTask$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48119h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f48120i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function2<g0, c<? super Unit>, Object> f48121j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ boolean f48122k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ p f48123l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f48124m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ Function1<String, Unit> f48125n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CoroutineUtil$executeTask$1(Function2<? super g0, ? super c<? super Unit>, ? extends Object> function2, boolean z10, p pVar, String str, Function1<? super String, Unit> function1, c<? super CoroutineUtil$executeTask$1> cVar) {
        super(2, cVar);
        this.f48121j = function2;
        this.f48122k = z10;
        this.f48123l = pVar;
        this.f48124m = str;
        this.f48125n = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        CoroutineUtil$executeTask$1 coroutineUtil$executeTask$1 = new CoroutineUtil$executeTask$1(this.f48121j, this.f48122k, this.f48123l, this.f48124m, this.f48125n, cVar);
        coroutineUtil$executeTask$1.f48120i = obj;
        return coroutineUtil$executeTask$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((CoroutineUtil$executeTask$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48119h;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                g0 g0Var = (g0) this.f48120i;
                Function2<g0, c<? super Unit>, Object> function2 = this.f48121j;
                this.f48119h = 1;
                if (function2.invoke(g0Var, this) == f10) {
                    return f10;
                }
            }
            if (!this.f48122k && !this.f48123l.c()) {
                Logger logger = Logger.f41511a;
                logger.h("CoroutineUtil", "executeTask(" + this.f48124m + ") costTime(" + this.f48123l.b() + "ms)");
            }
        } catch (CancellationException e10) {
            throw e10;
        } catch (Throwable th2) {
            if (!this.f48123l.c()) {
                Logger logger2 = Logger.f41511a;
                logger2.e("CoroutineUtil", "executeTask(" + this.f48124m + ") failed cost(" + this.f48123l.b() + "ms) -> " + th2.getMessage());
            }
            Function1<String, Unit> function1 = this.f48125n;
            if (function1 != null) {
                function1.invoke(th2.getMessage());
            }
        }
        return Unit.f60915a;
    }
}
