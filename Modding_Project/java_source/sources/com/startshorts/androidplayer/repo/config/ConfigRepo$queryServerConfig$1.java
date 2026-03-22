package com.startshorts.androidplayer.repo.config;

import com.startshorts.androidplayer.bean.configure.ServerConfig;
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
@d(c = "com.startshorts.androidplayer.repo.config.ConfigRepo$queryServerConfig$1", f = "ConfigRepo.kt", l = {153}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ConfigRepo$queryServerConfig$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43778h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConfigRepo$queryServerConfig$1(c<? super ConfigRepo$queryServerConfig$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ConfigRepo$queryServerConfig$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ConfigRepo$queryServerConfig$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ConfigRemoteDS s10;
        Object c10;
        mg.a r10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43778h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                c10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            s10 = ConfigRepo.f43771a.s();
            this.f43778h = 1;
            c10 = s10.c(this);
            if (c10 == f10) {
                return f10;
            }
        }
        if (Result.i(c10)) {
            c10 = null;
        }
        ServerConfig serverConfig = (ServerConfig) c10;
        if (serverConfig != null) {
            r10 = ConfigRepo.f43771a.r();
            r10.h(serverConfig);
        }
        ConfigRepo.f43774d = false;
        return Unit.f60915a;
    }
}
