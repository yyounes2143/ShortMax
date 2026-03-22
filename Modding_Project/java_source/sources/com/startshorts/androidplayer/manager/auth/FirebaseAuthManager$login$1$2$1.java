package com.startshorts.androidplayer.manager.auth;

import android.os.Bundle;
import com.hades.aar.auth.base.AuthType;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.auth.LoginResult;
import com.startshorts.androidplayer.bean.configure.ServerConfig;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.config.ConfigRepo;
import fk.u;
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
@d(c = "com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$login$1$2$1", f = "FirebaseAuthManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class FirebaseAuthManager$login$1$2$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42141h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ LoginResult f42142i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ FirebaseAuthManager f42143j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ AuthType f42144k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseAuthManager$login$1$2$1(LoginResult loginResult, FirebaseAuthManager firebaseAuthManager, AuthType authType, c<? super FirebaseAuthManager$login$1$2$1> cVar) {
        super(2, cVar);
        this.f42142i = loginResult;
        this.f42143j = firebaseAuthManager;
        this.f42144k = authType;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new FirebaseAuthManager$login$1$2$1(this.f42142i, this.f42143j, this.f42144k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((FirebaseAuthManager$login$1$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String token;
        int i10;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f42141h == 0) {
            f.b(obj);
            LoginResult loginResult = this.f42142i;
            if (loginResult != null && (token = loginResult.getToken()) != null && token.length() != 0 && this.f42142i.getUserResponse() != null) {
                this.f42143j.D(this.f42144k, this.f42142i.getToken(), this.f42142i.getUserResponse());
                String notification = this.f42142i.getNotification();
                if (notification != null && notification.length() != 0) {
                    u.k(u.f51776a, this.f42142i.getNotification(), 0, 2, null);
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    bundle.putString("type", "newbie_task");
                    bundle.putString("task_name", "facebook_login");
                    ServerConfig t10 = ConfigRepo.f43771a.t();
                    if (t10 != null) {
                        i10 = t10.getMetaLoginBonus();
                    } else {
                        i10 = 100;
                    }
                    bundle.putInt("tickets", i10);
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "task_finish", bundle, 0L, 4, null);
                }
            } else {
                Logger logger = Logger.f41511a;
                logger.e("FirebaseAuthManager", "login failed -> invalid LoginResult(" + this.f42142i + ')');
                this.f42143j.C(this.f42144k, 2, u.f51776a.d(R$string.common_unknown_exception), "token or userResponse is null");
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
