package com.startshorts.androidplayer.manager.act;

import com.startshorts.androidplayer.bean.act.ActResourceList;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActResourceManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.act.ActResourceManager$queryActResourceList$1", f = "ActResourceManager.kt", l = {32, 34}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class ActResourceManager$queryActResourceList$1 extends SuspendLambda implements Function2<Result<? extends ActResourceList>, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41596h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f41597i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActResourceManager$queryActResourceList$1(c<? super ActResourceManager$queryActResourceList$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        ActResourceManager$queryActResourceList$1 actResourceManager$queryActResourceList$1 = new ActResourceManager$queryActResourceList$1(cVar);
        actResourceManager$queryActResourceList$1.f41597i = obj;
        return actResourceManager$queryActResourceList$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Result<? extends ActResourceList> result, c<? super Unit> cVar) {
        return invoke(result.n(), cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0047 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r4.f41596h
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.f.b(r5)
            goto L48
        L12:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L1a:
            kotlin.f.b(r5)
            goto L3a
        L1e:
            kotlin.f.b(r5)
            java.lang.Object r5 = r4.f41597i
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.n()
            boolean r5 = kotlin.Result.j(r5)
            if (r5 == 0) goto L48
            com.startshorts.androidplayer.manager.act.ActResourceManager r5 = com.startshorts.androidplayer.manager.act.ActResourceManager.f41582a
            r4.f41596h = r3
            java.lang.Object r5 = r5.u(r4)
            if (r5 != r0) goto L3a
            return r0
        L3a:
            com.startshorts.androidplayer.manager.act.ActResourceManager r5 = com.startshorts.androidplayer.manager.act.ActResourceManager.f41582a
            com.startshorts.androidplayer.manager.act.ActResourceManager.c(r5)
            r4.f41596h = r2
            java.lang.Object r5 = com.startshorts.androidplayer.manager.act.ActResourceManager.d(r5, r4)
            if (r5 != r0) goto L48
            return r0
        L48:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.act.ActResourceManager$queryActResourceList$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    public final Object invoke(Object obj, c<? super Unit> cVar) {
        return ((ActResourceManager$queryActResourceList$1) create(Result.b(obj), cVar)).invokeSuspend(Unit.f60915a);
    }
}
