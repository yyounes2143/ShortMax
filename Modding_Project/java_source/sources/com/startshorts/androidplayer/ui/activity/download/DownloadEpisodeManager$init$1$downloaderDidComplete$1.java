package com.startshorts.androidplayer.ui.activity.download;

import com.ss.ttvideoengine.download.DownloadTask;
import com.ss.ttvideoengine.utils.Error;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import com.startshorts.androidplayer.bean.download.ShortTaskInfo;
import com.startshorts.androidplayer.ui.activity.download.b;
import com.startshorts.androidplayer.ui.activity.download.data.DownloadDB;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import uh.s;
/* compiled from: DownloadEpisodeManager.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$init$1$downloaderDidComplete$1", f = "DownloadEpisodeManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class DownloadEpisodeManager$init$1$downloaderDidComplete$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45089h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DownloadTask f45090i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Error f45091j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadEpisodeManager$init$1$downloaderDidComplete$1(DownloadTask downloadTask, Error error, rs.c<? super DownloadEpisodeManager$init$1$downloaderDidComplete$1> cVar) {
        super(2, cVar);
        this.f45090i = downloadTask;
        this.f45091j = error;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadEpisodeManager$init$1$downloaderDidComplete$1(this.f45090i, this.f45091j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadEpisodeManager$init$1$downloaderDidComplete$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DownloadTaskInfo D;
        int i10;
        ShortTaskInfo shortTaskInfo;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45089h == 0) {
            kotlin.f.b(obj);
            DownloadEpisodeManager.f45072g = false;
            DownloadEpisodeManager downloadEpisodeManager = DownloadEpisodeManager.f45066a;
            D = downloadEpisodeManager.D(this.f45090i);
            if (D == null) {
                downloadEpisodeManager.v();
                return Unit.f60915a;
            }
            D.resetDownloadSpeed();
            Error error = this.f45091j;
            if (error == null) {
                i10 = 4;
            } else if (error.code == -9995) {
                i10 = 6;
            } else {
                i10 = 5;
            }
            D.setDownloadState(i10);
            downloadEpisodeManager.r(D);
            shortTaskInfo = DownloadEpisodeManager.f45073h;
            if (shortTaskInfo != null && !shortTaskInfo.getHasUnfinishedJob()) {
                DownloadEpisodeManager.f45073h = null;
            }
            if (D.getDownloadState() == 6) {
                DownloadDB.f45210a.b(D);
                au.c.d().l(new b.e(CollectionsKt.t(D)));
                s.b("删除下载任务：info" + D);
            } else {
                DownloadDB.f45210a.e(D);
                au.c.d().l(new b.f(D));
                s.b("通知下载状态变化：info" + D);
            }
            downloadEpisodeManager.f0();
            downloadEpisodeManager.v();
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
