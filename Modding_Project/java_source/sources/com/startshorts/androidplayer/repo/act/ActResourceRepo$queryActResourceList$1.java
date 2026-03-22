package com.startshorts.androidplayer.repo.act;

import com.startshorts.androidplayer.bean.act.ActResourceList;
import com.startshorts.androidplayer.log.Logger;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActResourceRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.act.ActResourceRepo$queryActResourceList$1", f = "ActResourceRepo.kt", l = {23, 29}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ActResourceRepo$queryActResourceList$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f43106h;

    /* renamed from: i  reason: collision with root package name */
    int f43107i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ boolean f43108j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function2<Result<ActResourceList>, c<? super Unit>, Object> f43109k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ActResourceRepo$queryActResourceList$1(boolean z10, Function2<? super Result<ActResourceList>, ? super c<? super Unit>, ? extends Object> function2, c<? super ActResourceRepo$queryActResourceList$1> cVar) {
        super(2, cVar);
        this.f43108j = z10;
        this.f43109k = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ActResourceRepo$queryActResourceList$1(this.f43108j, this.f43109k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ActResourceRepo$queryActResourceList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ActResourceRemoteDS f10;
        Object a10;
        Object f11 = a.f();
        int i10 = this.f43107i;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    Result result = (Result) this.f43106h;
                    f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
            a10 = ((Result) obj).n();
        } else {
            f.b(obj);
            f10 = ActResourceRepo.f43103a.f();
            boolean z10 = this.f43108j;
            this.f43107i = 1;
            a10 = f10.a(z10, this);
            if (a10 == f11) {
                return f11;
            }
        }
        if (Result.j(a10)) {
            ActResourceRepo.f43103a.j((ActResourceList) a10);
            Logger.f41511a.h("ActResourceRepo", "queryActResourceList succeed");
        }
        Throwable g10 = Result.g(a10);
        if (g10 != null) {
            Logger logger = Logger.f41511a;
            logger.e("ActResourceRepo", "queryActResourceList failed -> " + g10.getMessage());
        }
        Result b10 = Result.b(a10);
        Function2<Result<ActResourceList>, c<? super Unit>, Object> function2 = this.f43109k;
        Result<ActResourceList> b11 = Result.b(b10.n());
        this.f43106h = b10;
        this.f43107i = 2;
        if (function2.invoke(b11, this) == f11) {
            return f11;
        }
        return Unit.f60915a;
    }
}
