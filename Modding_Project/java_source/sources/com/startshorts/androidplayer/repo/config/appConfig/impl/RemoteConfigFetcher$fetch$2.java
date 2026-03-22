package com.startshorts.androidplayer.repo.config.appConfig.impl;

import com.startshorts.androidplayer.repo.config.appConfig.AppConfigRemoteDS;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import qg.a;
import rs.c;
/* compiled from: RemoteConfigFetcher.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.appConfig.impl.RemoteConfigFetcher$fetch$2", f = "RemoteConfigFetcher.kt", l = {14}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class RemoteConfigFetcher$fetch$2 extends SuspendLambda implements Function2<g0, c<? super String>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43862h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RemoteConfigFetcher f43863i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteConfigFetcher$fetch$2(RemoteConfigFetcher remoteConfigFetcher, c<? super RemoteConfigFetcher$fetch$2> cVar) {
        super(2, cVar);
        this.f43863i = remoteConfigFetcher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new RemoteConfigFetcher$fetch$2(this.f43863i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super String> cVar) {
        return ((RemoteConfigFetcher$fetch$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object a10;
        a aVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43862h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                a10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            AppConfigRemoteDS appConfigRemoteDS = AppConfigRemoteDS.f43815a;
            this.f43862h = 1;
            a10 = appConfigRemoteDS.a(this);
            if (a10 == f10) {
                return f10;
            }
        }
        String str = null;
        if (Result.j(a10)) {
            if (Result.i(a10)) {
                a10 = null;
            }
            if (a10 != null) {
                aVar = this.f43863i.f43861a;
                str = aVar.a().toJson(a10);
            }
        }
        ng.a.a("data: " + str);
        return str;
    }
}
