package com.startshorts.androidplayer.viewmodel.auth;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PhoneAuthViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.auth.PhoneAuthViewModel$sendOTP$1", f = "PhoneAuthViewModel.kt", l = {152, 154, 164}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PhoneAuthViewModel$sendOTP$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f48237h;

    /* renamed from: i  reason: collision with root package name */
    Object f48238i;

    /* renamed from: j  reason: collision with root package name */
    Object f48239j;

    /* renamed from: k  reason: collision with root package name */
    Object f48240k;

    /* renamed from: l  reason: collision with root package name */
    Object f48241l;

    /* renamed from: m  reason: collision with root package name */
    int f48242m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ PhoneAuthViewModel f48243n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ String f48244o;

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ String f48245p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhoneAuthViewModel$sendOTP$1(PhoneAuthViewModel phoneAuthViewModel, String str, String str2, rs.c<? super PhoneAuthViewModel$sendOTP$1> cVar) {
        super(2, cVar);
        this.f48243n = phoneAuthViewModel;
        this.f48244o = str;
        this.f48245p = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new PhoneAuthViewModel$sendOTP$1(this.f48243n, this.f48244o, this.f48245p, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((PhoneAuthViewModel$sendOTP$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x019b  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instructions count: 503
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.auth.PhoneAuthViewModel$sendOTP$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
