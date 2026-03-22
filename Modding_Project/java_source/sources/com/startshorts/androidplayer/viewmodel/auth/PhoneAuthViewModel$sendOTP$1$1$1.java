package com.startshorts.androidplayer.viewmodel.auth;

import com.startshorts.androidplayer.manager.auth.FirebaseAuthManager;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import ms.i;
/* compiled from: PhoneAuthViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.auth.PhoneAuthViewModel$sendOTP$1$1$1", f = "PhoneAuthViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class PhoneAuthViewModel$sendOTP$1$1$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48246h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PhoneAuthViewModel f48247i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f48248j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f48249k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhoneAuthViewModel$sendOTP$1$1$1(PhoneAuthViewModel phoneAuthViewModel, String str, String str2, rs.c<? super PhoneAuthViewModel$sendOTP$1$1$1> cVar) {
        super(2, cVar);
        this.f48247i = phoneAuthViewModel;
        this.f48248j = str;
        this.f48249k = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new PhoneAuthViewModel$sendOTP$1$1$1(this.f48247i, this.f48248j, this.f48249k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((PhoneAuthViewModel$sendOTP$1$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        i iVar;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f48246h == 0) {
            kotlin.f.b(obj);
            iVar = this.f48247i.f48228f;
            ((FirebaseAuthManager) iVar.getValue()).o(this.f48248j, this.f48249k, this.f48247i.K());
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
