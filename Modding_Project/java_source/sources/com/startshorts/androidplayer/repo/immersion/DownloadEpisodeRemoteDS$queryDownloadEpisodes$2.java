package com.startshorts.androidplayer.repo.immersion;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.shorts.QueryDownloadEpisodesResult;
import com.startshorts.androidplayer.manager.api.base.k;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
import uh.i0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadEpisodeRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.DownloadEpisodeRemoteDS$queryDownloadEpisodes$2", f = "DownloadEpisodeRemoteDS.kt", l = {22, 25, 27}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DownloadEpisodeRemoteDS$queryDownloadEpisodes$2 extends SuspendLambda implements Function1<c<? super ServerResult<QueryDownloadEpisodesResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44025h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44026i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadEpisodeRemoteDS$queryDownloadEpisodes$2(int i10, c<? super DownloadEpisodeRemoteDS$queryDownloadEpisodes$2> cVar) {
        super(1, cVar);
        this.f44026i = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new DownloadEpisodeRemoteDS$queryDownloadEpisodes$2(this.f44026i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44025h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        f.b(obj);
                        return (ServerResult) obj;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                f.b(obj);
                return (ServerResult) obj;
            }
            f.b(obj);
            return (ServerResult) obj;
        }
        f.b(obj);
        if (i0.f68447a.c()) {
            k.a j10 = k.f41787a.j();
            int i11 = this.f44026i;
            this.f44025h = 1;
            obj = j10.C(i11, this);
            if (obj == f10) {
                return f10;
            }
            return (ServerResult) obj;
        } else if (ABTestFactory.f42224a.i1().isEnable().invoke().booleanValue()) {
            k.a j11 = k.f41787a.j();
            int i12 = this.f44026i;
            this.f44025h = 2;
            obj = j11.U1(i12, this);
            if (obj == f10) {
                return f10;
            }
            return (ServerResult) obj;
        } else {
            k.a j12 = k.f41787a.j();
            int i13 = this.f44026i;
            this.f44025h = 3;
            obj = j12.C(i13, this);
            if (obj == f10) {
                return f10;
            }
            return (ServerResult) obj;
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<QueryDownloadEpisodesResult>> cVar) {
        return ((DownloadEpisodeRemoteDS$queryDownloadEpisodes$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
