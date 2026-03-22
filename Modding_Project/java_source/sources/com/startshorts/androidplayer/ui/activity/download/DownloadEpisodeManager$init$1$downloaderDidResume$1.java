package com.startshorts.androidplayer.ui.activity.download;

import com.ss.ttvideoengine.download.DownloadTask;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import uh.l1;
/* compiled from: DownloadEpisodeManager.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$init$1$downloaderDidResume$1", f = "DownloadEpisodeManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class DownloadEpisodeManager$init$1$downloaderDidResume$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45092h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DownloadTask f45093i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ float f45094j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadEpisodeManager$init$1$downloaderDidResume$1(DownloadTask downloadTask, float f10, rs.c<? super DownloadEpisodeManager$init$1$downloaderDidResume$1> cVar) {
        super(2, cVar);
        this.f45093i = downloadTask;
        this.f45094j = f10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadEpisodeManager$init$1$downloaderDidResume$1(this.f45093i, this.f45094j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadEpisodeManager$init$1$downloaderDidResume$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DownloadTaskInfo D;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45092h == 0) {
            kotlin.f.b(obj);
            D = DownloadEpisodeManager.f45066a.D(this.f45093i);
            if (D == null) {
                return Unit.f60915a;
            }
            D.startDownload(this.f45094j);
            l1.f68455a.d(D);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
