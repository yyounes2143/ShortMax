package com.startshorts.androidplayer.viewmodel.auth;

import com.startshorts.androidplayer.manager.auth.FirebaseAuthManager;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import ms.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PhoneAuthViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.auth.PhoneAuthViewModel$verifyOTP$1", f = "PhoneAuthViewModel.kt", l = {198, 212, 226}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PhoneAuthViewModel$verifyOTP$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48250h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PhoneAuthViewModel f48251i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f48252j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f48253k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f48254l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhoneAuthViewModel.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.auth.PhoneAuthViewModel$verifyOTP$1$1", f = "PhoneAuthViewModel.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.viewmodel.auth.PhoneAuthViewModel$verifyOTP$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f48255h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ PhoneAuthViewModel f48256i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ String f48257j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(PhoneAuthViewModel phoneAuthViewModel, String str, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f48256i = phoneAuthViewModel;
            this.f48257j = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f48256i, this.f48257j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            i iVar;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f48255h == 0) {
                kotlin.f.b(obj);
                iVar = this.f48256i.f48228f;
                ((FirebaseAuthManager) iVar.getValue()).d(this.f48257j, this.f48256i.K());
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhoneAuthViewModel$verifyOTP$1(PhoneAuthViewModel phoneAuthViewModel, String str, String str2, String str3, rs.c<? super PhoneAuthViewModel$verifyOTP$1> cVar) {
        super(2, cVar);
        this.f48251i = phoneAuthViewModel;
        this.f48252j = str;
        this.f48253k = str2;
        this.f48254l = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new PhoneAuthViewModel$verifyOTP$1(this.f48251i, this.f48252j, this.f48253k, this.f48254l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((PhoneAuthViewModel$verifyOTP$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01d9  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.auth.PhoneAuthViewModel$verifyOTP$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
