package com.startshorts.androidplayer.manager.api.base;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.log.Logger;
import gt.g0;
import gt.k0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.r;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: ApiBuilder.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.api.base.ApiBuilder$execute$2", f = "ApiBuilder.kt", l = {77}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class ApiBuilder$execute$2<T> extends SuspendLambda implements Function2<g0, rs.c<? super Result<? extends T>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41765h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f41766i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ApiBuilder f41767j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function1<rs.c<? super ServerResult<T>>, Object> f41768k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ApiBuilder$execute$2(ApiBuilder apiBuilder, Function1<? super rs.c<? super ServerResult<T>>, ? extends Object> function1, rs.c<? super ApiBuilder$execute$2> cVar) {
        super(2, cVar);
        this.f41767j = apiBuilder;
        this.f41768k = function1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(k0 k0Var) {
        Logger.f41511a.h("ApiBuilder", "cancelApiJob");
        r.a.b(k0Var, null, 1, null);
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        ApiBuilder$execute$2 apiBuilder$execute$2 = new ApiBuilder$execute$2(this.f41767j, this.f41768k, cVar);
        apiBuilder$execute$2.f41766i = obj;
        return apiBuilder$execute$2;
    }

    public final Object invoke(g0 g0Var, rs.c<? super Result<? extends T>> cVar) {
        return ((ApiBuilder$execute$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        final k0 b10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f41765h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            b10 = gt.g.b((g0) this.f41766i, null, null, new ApiBuilder$execute$2$job$1(this.f41767j, this.f41768k, null), 3, null);
            this.f41767j.f41760e = new Function0() { // from class: com.startshorts.androidplayer.manager.api.base.g
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit j10;
                    j10 = ApiBuilder$execute$2.j(k0.this);
                    return j10;
                }
            };
            this.f41765h = 1;
            obj = b10.await(this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (rs.c) ((rs.c) obj));
    }
}
