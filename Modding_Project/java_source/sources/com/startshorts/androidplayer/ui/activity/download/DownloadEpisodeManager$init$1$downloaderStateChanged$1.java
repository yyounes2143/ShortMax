package com.startshorts.androidplayer.ui.activity.download;

import com.ss.ttvideoengine.download.DownloadTask;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import com.startshorts.androidplayer.ui.activity.download.b;
import com.startshorts.androidplayer.ui.activity.download.data.DownloadDB;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import uh.s;
/* compiled from: DownloadEpisodeManager.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$init$1$downloaderStateChanged$1", f = "DownloadEpisodeManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class DownloadEpisodeManager$init$1$downloaderStateChanged$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45095h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DownloadTask f45096i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f45097j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadEpisodeManager$init$1$downloaderStateChanged$1(DownloadTask downloadTask, int i10, rs.c<? super DownloadEpisodeManager$init$1$downloaderStateChanged$1> cVar) {
        super(2, cVar);
        this.f45096i = downloadTask;
        this.f45097j = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadEpisodeManager$init$1$downloaderStateChanged$1(this.f45096i, this.f45097j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadEpisodeManager$init$1$downloaderStateChanged$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DownloadTaskInfo D;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45095h == 0) {
            kotlin.f.b(obj);
            DownloadEpisodeManager downloadEpisodeManager = DownloadEpisodeManager.f45066a;
            D = downloadEpisodeManager.D(this.f45096i);
            if (D == null) {
                return Unit.f60915a;
            }
            D.setDownloadState(s.c(kotlin.coroutines.jvm.internal.a.d(this.f45097j), D.getDownloadState()));
            au.c.d().l(new b.f(D));
            if (this.f45097j == 3) {
                DownloadEpisodeManager.f45072g = false;
                downloadEpisodeManager.v();
            }
            DownloadDB.f45210a.e(D);
            s.b("通知下载状态变化：info" + D);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
