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
@d(c = "com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$login$1$3$1", f = "FirebaseAuthManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class FirebaseAuthManager$login$1$3$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42145h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ FirebaseAuthManager f42146i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AuthType f42147j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ResponseException f42148k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseAuthManager$login$1$3$1(FirebaseAuthManager firebaseAuthManager, AuthType authType, ResponseException responseException, c<? super FirebaseAuthManager$login$1$3$1> cVar) {
        super(2, cVar);
        this.f42146i = firebaseAuthManager;
        this.f42147j = authType;
        this.f42148k = responseException;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new FirebaseAuthManager$login$1$3$1(this.f42146i, this.f42147j, this.f42148k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((FirebaseAuthManager$login$1$3$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i10;
        String message;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f42145h == 0) {
            f.b(obj);
            FirebaseAuthManager firebaseAuthManager = this.f42146i;
            AuthType authType = this.f42147j;
            if (this.f42148k.isNetworkError()) {
                i10 = 1;
            } else {
                i10 = 2;
            }
            String message2 = this.f42148k.getMessage();
            ApiErrorExtra errorExtra = this.f42148k.getErrorExtra();
            if (errorExtra == null || (message = errorExtra.getRealMessage()) == null) {
                message = this.f42148k.getMessage();
            }
            firebaseAuthManager.C(authType, i10, message2, message);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
