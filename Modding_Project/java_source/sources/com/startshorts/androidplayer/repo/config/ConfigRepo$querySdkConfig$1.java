package com.startshorts.androidplayer.repo.config;

import com.startshorts.androidplayer.bean.configure.SdkConfig;
import com.startshorts.androidplayer.bean.configure.SdkConfigList;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConfigRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.ConfigRepo$querySdkConfig$1", f = "ConfigRepo.kt", l = {51}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ConfigRepo$querySdkConfig$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43777h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConfigRepo$querySdkConfig$1(c<? super ConfigRepo$querySdkConfig$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ConfigRepo$querySdkConfig$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ConfigRepo$querySdkConfig$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean A;
        ConfigRemoteDS s10;
        Object b10;
        SdkConfig sdkConfig;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43777h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                b10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            ConfigRepo configRepo = ConfigRepo.f43771a;
            A = configRepo.A();
            if (!A) {
                configRepo.m(false, configRepo.w(), configRepo.x());
                return Unit.f60915a;
            }
            s10 = configRepo.s();
            this.f43777h = 1;
            b10 = s10.b(this);
            if (b10 == f10) {
                return f10;
            }
        }
        if (Result.j(b10)) {
            SdkConfigList sdkConfigList = (SdkConfigList) b10;
            SdkConfig sdkConfig2 = null;
            if (sdkConfigList != null) {
                sdkConfig = sdkConfigList.getAfConfig();
            } else {
                sdkConfig = null;
            }
            if (sdkConfigList != null) {
                sdkConfig2 = sdkConfigList.getAjConfig();
            }
            ConfigRepo.f43771a.v(sdkConfig, sdkConfig2);
        }
        Throwable g10 = Result.g(b10);
        if (g10 != null) {
            ConfigRepo.f43771a.u(new Throwable(g10.getMessage()));
        }
        Result.b(b10);
        return Unit.f60915a;
    }
}
