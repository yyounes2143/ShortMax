package com.startshorts.androidplayer.ui.activity.download;

import com.startshorts.androidplayer.bean.download.DownloadManagerItem;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import com.startshorts.androidplayer.bean.download.DownloadedManagerInfo;
import com.startshorts.androidplayer.bean.download.DownloadingManagerInfo;
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
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$removeDownloadedManagerList$1", f = "DownloadEpisodeManager.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDownloadEpisodeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadedManagerList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,923:1\n1863#2,2:924\n*S KotlinDebug\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadedManagerList$1\n*L\n695#1:924,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DownloadEpisodeManager$removeDownloadedManagerList$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45105h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ List<DownloadManagerItem> f45106i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f45107j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadEpisodeManager$removeDownloadedManagerList$1(List<DownloadManagerItem> list, Function0<Unit> function0, rs.c<? super DownloadEpisodeManager$removeDownloadedManagerList$1> cVar) {
        super(2, cVar);
        this.f45106i = list;
        this.f45107j = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadEpisodeManager$removeDownloadedManagerList$1(this.f45106i, this.f45107j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadEpisodeManager$removeDownloadedManagerList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DownloadTaskInfo V;
        DownloadTaskInfo V2;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45105h == 0) {
            kotlin.f.b(obj);
            ArrayList arrayList = new ArrayList();
            List<DownloadManagerItem> list = this.f45106i;
            if (list != null) {
                for (DownloadManagerItem downloadManagerItem : list) {
                    if (downloadManagerItem instanceof DownloadingManagerInfo) {
                        for (DownloadTaskInfo downloadTaskInfo : ((DownloadingManagerInfo) downloadManagerItem).getTaskInfoList()) {
                            V = DownloadEpisodeManager.f45066a.V(downloadTaskInfo);
                            arrayList.add(V);
                        }
                    } else if (downloadManagerItem instanceof DownloadedManagerInfo) {
                        for (DownloadTaskInfo downloadTaskInfo2 : ((DownloadedManagerInfo) downloadManagerItem).getTaskInfoList()) {
                            V2 = DownloadEpisodeManager.f45066a.V(downloadTaskInfo2);
                            arrayList.add(V2);
                        }
                    }
                }
            }
            DownloadDB.f45210a.f(arrayList);
            au.c.d().l(new b.e(arrayList));
            Function0<Unit> function0 = this.f45107j;
            if (function0 != null) {
                function0.invoke();
            }
            s.b("删除数据库" + arrayList);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
