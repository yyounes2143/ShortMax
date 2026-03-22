package com.startshorts.androidplayer.repo.config;

import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.configure.ClientLogConfig;
import com.startshorts.androidplayer.log.Logger;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import rs.c;
import yd.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConfigRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.ConfigRepo$queryAppClientLogConfig$1", f = "ConfigRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ConfigRepo$queryAppClientLogConfig$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43775h;

    /* compiled from: ConfigRepo.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ClientLogConfig f43776a;

        a(ClientLogConfig clientLogConfig) {
            this.f43776a = clientLogConfig;
        }

        @Override // yd.f
        public void a(String str) {
            super.a(str);
            ud.b.f68412a.h4(this.f43776a.getId(), this.f43776a.getUserId(), false);
        }

        @Override // yd.f
        public void b(Object result) {
            Intrinsics.checkNotNullParameter(result, "result");
            super.b(result);
            ud.b.f68412a.h4(this.f43776a.getId(), this.f43776a.getUserId(), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConfigRepo$queryAppClientLogConfig$1(c<? super ConfigRepo$queryAppClientLogConfig$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ConfigRepo$queryAppClientLogConfig$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ConfigRepo$queryAppClientLogConfig$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ConfigRemoteDS s10;
        Object a10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43775h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                a10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            s10 = ConfigRepo.f43771a.s();
            this.f43775h = 1;
            a10 = s10.a(this);
            if (a10 == f10) {
                return f10;
            }
        }
        if (Result.i(a10)) {
            a10 = null;
        }
        ClientLogConfig clientLogConfig = (ClientLogConfig) a10;
        if (clientLogConfig != null) {
            if (!clientLogConfig.allowReport()) {
                return Unit.f60915a;
            }
            if (!ud.b.f68412a.h2(clientLogConfig.getId(), clientLogConfig.getUserId())) {
                Logger.f41511a.l(new a(clientLogConfig));
            }
        }
        return Unit.f60915a;
    }
}
