package com.startshorts.androidplayer.manager.configure;

import android.content.Context;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.repo.config.RemoteConfigRepo;
import gt.g0;
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
/* compiled from: AppConfigureManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.configure.AppConfigureManager$initConfigure$1", f = "AppConfigureManager.kt", l = {154, 156}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AppConfigureManager$initConfigure$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42206h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Context f42207i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppConfigureManager$initConfigure$1(Context context, c<? super AppConfigureManager$initConfigure$1> cVar) {
        super(2, cVar);
        this.f42207i = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new AppConfigureManager$initConfigure$1(this.f42207i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((AppConfigureManager$initConfigure$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f42206h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    b.f68412a.J3(false);
                    AdManager.f41600a.c0();
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
        } else {
            f.b(obj);
            AppConfigureManager appConfigureManager = AppConfigureManager.f42186a;
            Context context = this.f42207i;
            this.f42206h = 1;
            if (appConfigureManager.a(context, true, this) == f10) {
                return f10;
            }
        }
        RemoteConfigRepo remoteConfigRepo = RemoteConfigRepo.f43788a;
        if (!remoteConfigRepo.s()) {
            this.f42206h = 2;
            if (remoteConfigRepo.m("AppConfigureManager:initConfigure", this) == f10) {
                return f10;
            }
        }
        b.f68412a.J3(false);
        AdManager.f41600a.c0();
        return Unit.f60915a;
    }
}
