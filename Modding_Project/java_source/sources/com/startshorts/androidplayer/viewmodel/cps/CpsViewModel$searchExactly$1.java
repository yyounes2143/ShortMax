package com.startshorts.androidplayer.viewmodel.cps;

import android.content.Context;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CpsViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.cps.CpsViewModel$searchExactly$1", f = "CpsViewModel.kt", l = {44, 72}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CpsViewModel$searchExactly$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f48438h;

    /* renamed from: i  reason: collision with root package name */
    Object f48439i;

    /* renamed from: j  reason: collision with root package name */
    int f48440j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f48441k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ CpsViewModel f48442l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ Context f48443m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CpsViewModel$searchExactly$1(String str, CpsViewModel cpsViewModel, Context context, c<? super CpsViewModel$searchExactly$1> cVar) {
        super(2, cVar);
        this.f48441k = str;
        this.f48442l = cpsViewModel;
        this.f48443m = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new CpsViewModel$searchExactly$1(this.f48441k, this.f48442l, this.f48443m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((CpsViewModel$searchExactly$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a3, code lost:
        if (r4 != 6) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00db A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00dc  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.cps.CpsViewModel$searchExactly$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
