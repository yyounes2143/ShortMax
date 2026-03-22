package com.startshorts.androidplayer.ui.activity.download;

import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import com.startshorts.androidplayer.bean.download.DownloadingDramaInfo;
import com.startshorts.androidplayer.ui.activity.download.b;
import com.startshorts.androidplayer.ui.activity.download.data.DownloadDB;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import uh.s;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadEpisodeManager.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$removeDownloadingTaskInfoList$1", f = "DownloadEpisodeManager.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDownloadEpisodeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,923:1\n1863#2,2:924\n*S KotlinDebug\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1\n*L\n660#1:924,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DownloadEpisodeManager$removeDownloadingTaskInfoList$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45111h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ List<DownloadingDramaInfo> f45112i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f45113j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadEpisodeManager$removeDownloadingTaskInfoList$1(List<DownloadingDramaInfo> list, Function0<Unit> function0, rs.c<? super DownloadEpisodeManager$removeDownloadingTaskInfoList$1> cVar) {
        super(2, cVar);
        this.f45112i = list;
        this.f45113j = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadEpisodeManager$removeDownloadingTaskInfoList$1(this.f45112i, this.f45113j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadEpisodeManager$removeDownloadingTaskInfoList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DownloadTaskInfo V;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45111h == 0) {
            kotlin.f.b(obj);
            ArrayList arrayList = new ArrayList();
            for (DownloadingDramaInfo downloadingDramaInfo : this.f45112i) {
                V = DownloadEpisodeManager.f45066a.V(downloadingDramaInfo.getDownloadInfo());
                arrayList.add(V);
            }
            DownloadDB.f45210a.f(arrayList);
            au.c.d().l(new b.e(arrayList));
            Function0<Unit> function0 = this.f45113j;
            if (function0 != null) {
                function0.invoke();
            }
            s.b("删除数据库" + arrayList);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
