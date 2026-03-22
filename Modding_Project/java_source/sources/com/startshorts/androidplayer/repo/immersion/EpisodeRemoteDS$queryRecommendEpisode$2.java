package com.startshorts.androidplayer.repo.immersion;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.notification.RecommendShortsNotification;
import com.startshorts.androidplayer.manager.api.base.k;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EpisodeRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryRecommendEpisode$2", f = "EpisodeRemoteDS.kt", l = {39, 41}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class EpisodeRemoteDS$queryRecommendEpisode$2 extends SuspendLambda implements Function1<c<? super ServerResult<RecommendShortsNotification>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44049h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EpisodeRemoteDS$queryRecommendEpisode$2(c<? super EpisodeRemoteDS$queryRecommendEpisode$2> cVar) {
        super(1, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new EpisodeRemoteDS$queryRecommendEpisode$2(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44049h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return (ServerResult) obj;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
            return (ServerResult) obj;
        }
        f.b(obj);
        if (ABTestFactory.f42224a.i1().isEnable().invoke().booleanValue()) {
            k.a j10 = k.f41787a.j();
            this.f44049h = 1;
            obj = j10.b2(this);
            if (obj == f10) {
                return f10;
            }
            return (ServerResult) obj;
        }
        k.a j11 = k.f41787a.j();
        this.f44049h = 2;
        obj = j11.f(this);
        if (obj == f10) {
            return f10;
        }
        return (ServerResult) obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<RecommendShortsNotification>> cVar) {
        return ((EpisodeRemoteDS$queryRecommendEpisode$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
