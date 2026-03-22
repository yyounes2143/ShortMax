package com.startshorts.androidplayer.repo.search;

import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
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
@d(c = "com.startshorts.androidplayer.repo.search.SearchLocalDS$fetchKeywords$2", f = "SearchLocalDS.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SearchLocalDS$fetchKeywords$2 extends SuspendLambda implements Function2<g0, c<? super List<? extends String>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44558h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SearchLocalDS$fetchKeywords$2(c<? super SearchLocalDS$fetchKeywords$2> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SearchLocalDS$fetchKeywords$2(cVar);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(g0 g0Var, c<? super List<String>> cVar) {
        return ((SearchLocalDS$fetchKeywords$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f44558h == 0) {
            f.b(obj);
            return b.f68412a.C1();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, c<? super List<? extends String>> cVar) {
        return invoke2(g0Var, (c<? super List<String>>) cVar);
    }
}
