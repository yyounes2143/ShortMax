package com.startshorts.androidplayer.manager.auth;

import com.hades.aar.auth.base.AuthType;
import com.startshorts.androidplayer.bean.api.ApiErrorExtra;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FirebaseAuthManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$bind$1$3$1", f = "FirebaseAuthManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class FirebaseAuthManager$bind$1$3$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42123h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ FirebaseAuthManager f42124i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AuthType f42125j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ResponseException f42126k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseAuthManager$bind$1$3$1(FirebaseAuthManager firebaseAuthManager, AuthType authType, ResponseException responseException, c<? super FirebaseAuthManager$bind$1$3$1> cVar) {
        super(2, cVar);
        this.f42124i = firebaseAuthManager;
        this.f42125j = authType;
        this.f42126k = responseException;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new FirebaseAuthManager$bind$1$3$1(this.f42124i, this.f42125j, this.f42126k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((FirebaseAuthManager$bind$1$3$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i10;
        String message;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f42123h == 0) {
            f.b(obj);
            FirebaseAuthManager firebaseAuthManager = this.f42124i;
            AuthType authType = this.f42125j;
            if (this.f42126k.isNetworkError()) {
                i10 = 1;
            } else {
                i10 = 3;
            }
            String message2 = this.f42126k.getMessage();
            ApiErrorExtra errorExtra = this.f42126k.getErrorExtra();
            if (errorExtra == null || (message = errorExtra.getRealMessage()) == null) {
                message = this.f42126k.getMessage();
            }
            firebaseAuthManager.A(authType, i10, message2, message);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
