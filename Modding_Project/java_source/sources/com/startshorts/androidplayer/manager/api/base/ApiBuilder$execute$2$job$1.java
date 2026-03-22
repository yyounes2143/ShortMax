package com.startshorts.androidplayer.manager.api.base;

import com.startshorts.androidplayer.bean.api.ServerResult;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: ApiBuilder.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.api.base.ApiBuilder$execute$2$job$1", f = "ApiBuilder.kt", l = {59, 63, 66}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nApiBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,137:1\n1#2:138\n*E\n"})
/* loaded from: classes6.dex */
final class ApiBuilder$execute$2$job$1<T> extends SuspendLambda implements Function2<g0, rs.c<? super Result<? extends T>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41769h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ApiBuilder f41770i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function1<rs.c<? super ServerResult<T>>, Object> f41771j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ApiBuilder$execute$2$job$1(ApiBuilder apiBuilder, Function1<? super rs.c<? super ServerResult<T>>, ? extends Object> function1, rs.c<? super ApiBuilder$execute$2$job$1> cVar) {
        super(2, cVar);
        this.f41770i = apiBuilder;
        this.f41771j = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ApiBuilder$execute$2$job$1(this.f41770i, this.f41771j, cVar);
    }

    public final Object invoke(g0 g0Var, rs.c<? super Result<? extends T>> cVar) {
        return ((ApiBuilder$execute$2$job$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0054  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r5.f41769h
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L2d
            if (r1 == r4) goto L23
            if (r1 == r3) goto L11
            if (r1 != r2) goto L1b
        L11:
            kotlin.f.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.n()
            goto L6e
        L1b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L23:
            kotlin.f.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.n()
            goto L43
        L2d:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = r5.f41770i
            boolean r6 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.i(r6)
            if (r6 == 0) goto L61
            com.startshorts.androidplayer.manager.account.AccountManager r6 = com.startshorts.androidplayer.manager.account.AccountManager.f41533a
            r5.f41769h = r4
            java.lang.Object r6 = r6.n(r5)
            if (r6 != r0) goto L43
            return r0
        L43:
            boolean r1 = kotlin.Result.i(r6)
            if (r1 == 0) goto L54
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = r5.f41770i
            java.lang.Throwable r6 = kotlin.Result.g(r6)
            java.lang.Object r6 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.j(r0, r6)
            goto L6e
        L54:
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = r5.f41770i
            kotlin.jvm.functions.Function1<rs.c<? super com.startshorts.androidplayer.bean.api.ServerResult<T>>, java.lang.Object> r1 = r5.f41771j
            r5.f41769h = r3
            java.lang.Object r6 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.g(r6, r1, r5)
            if (r6 != r0) goto L6e
            return r0
        L61:
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = r5.f41770i
            kotlin.jvm.functions.Function1<rs.c<? super com.startshorts.androidplayer.bean.api.ServerResult<T>>, java.lang.Object> r1 = r5.f41771j
            r5.f41769h = r2
            java.lang.Object r6 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.g(r6, r1, r5)
            if (r6 != r0) goto L6e
            return r0
        L6e:
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = r5.f41770i
            com.startshorts.androidplayer.manager.api.base.ApiBuilder.l(r0, r6)
            boolean r0 = kotlin.Result.j(r6)
            if (r0 == 0) goto L7f
            com.startshorts.androidplayer.bean.api.ServerResult r6 = (com.startshorts.androidplayer.bean.api.ServerResult) r6
            java.lang.Object r6 = r6.getData()
        L7f:
            java.lang.Object r6 = kotlin.Result.d(r6)
            kotlin.Result r6 = kotlin.Result.b(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.api.base.ApiBuilder$execute$2$job$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (rs.c) ((rs.c) obj));
    }
}
