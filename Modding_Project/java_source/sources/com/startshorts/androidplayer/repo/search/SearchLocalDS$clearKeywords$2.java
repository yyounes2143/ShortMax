package com.startshorts.androidplayer.repo.search;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SearchLocalDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.search.SearchLocalDS$clearKeywords$2", f = "SearchLocalDS.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SearchLocalDS$clearKeywords$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44557h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SearchLocalDS$clearKeywords$2(c<? super SearchLocalDS$clearKeywords$2> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SearchLocalDS$clearKeywords$2(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SearchLocalDS$clearKeywords$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f44557h == 0) {
            f.b(obj);
            b.f68412a.P4(CollectionsKt.n());
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
