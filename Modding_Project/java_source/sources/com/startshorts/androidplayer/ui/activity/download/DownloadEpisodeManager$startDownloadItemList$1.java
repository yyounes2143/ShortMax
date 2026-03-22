package com.startshorts.androidplayer.ui.activity.download;

import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import com.startshorts.androidplayer.bean.download.ShortTaskInfo;
import com.startshorts.androidplayer.bean.shorts.DownloadActivityListItem;
import com.startshorts.androidplayer.ui.activity.download.b;
import com.startshorts.androidplayer.ui.activity.download.data.DownloadDB;
import com.startshorts.androidplayer.ui.activity.download.data.ShortDB;
import gt.g0;
import java.util.ArrayList;
import java.util.HashMap;
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
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$startDownloadItemList$1", f = "DownloadEpisodeManager.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDownloadEpisodeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,923:1\n1863#2,2:924\n*S KotlinDebug\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1\n*L\n891#1:924,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DownloadEpisodeManager$startDownloadItemList$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45117h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ShortTaskInfo f45118i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ List<DownloadActivityListItem> f45119j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f45120k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f45121l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadEpisodeManager$startDownloadItemList$1(ShortTaskInfo shortTaskInfo, List<DownloadActivityListItem> list, Function0<Unit> function0, int i10, rs.c<? super DownloadEpisodeManager$startDownloadItemList$1> cVar) {
        super(2, cVar);
        this.f45118i = shortTaskInfo;
        this.f45119j = list;
        this.f45120k = function0;
        this.f45121l = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadEpisodeManager$startDownloadItemList$1(this.f45118i, this.f45119j, this.f45120k, this.f45121l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadEpisodeManager$startDownloadItemList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        HashMap hashMap;
        HashMap hashMap2;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45117h == 0) {
            kotlin.f.b(obj);
            ArrayList arrayList = new ArrayList();
            hashMap = DownloadEpisodeManager.f45068c;
            ShortTaskInfo shortTaskInfo = (ShortTaskInfo) hashMap.get(kotlin.coroutines.jvm.internal.a.d(this.f45118i.getShortPlayId()));
            if (shortTaskInfo == null) {
                shortTaskInfo = this.f45118i;
                hashMap2 = DownloadEpisodeManager.f45068c;
                hashMap2.put(kotlin.coroutines.jvm.internal.a.d(this.f45118i.getShortPlayId()), shortTaskInfo);
            }
            int i10 = this.f45121l;
            for (DownloadActivityListItem downloadActivityListItem : this.f45119j) {
                if (downloadActivityListItem.isSelectAble()) {
                    try {
                        DownloadTaskInfo generalTaskInfo = downloadActivityListItem.generalTaskInfo(i10);
                        DownloadEpisodeManager downloadEpisodeManager = DownloadEpisodeManager.f45066a;
                        downloadEpisodeManager.s(generalTaskInfo);
                        downloadActivityListItem.setDownloadInfo(generalTaskInfo);
                        downloadActivityListItem.setSelect(false);
                        s.b("新建下载任务:" + generalTaskInfo);
                        DownloadEpisodeManager.F(downloadEpisodeManager, generalTaskInfo, false, 2, null);
                        arrayList.add(generalTaskInfo);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return Unit.f60915a;
            }
            if (shortTaskInfo.getAddTaskTime() == 0) {
                shortTaskInfo.setAddTaskTime(System.currentTimeMillis());
            }
            shortTaskInfo.setHasUnfinishedJob(true);
            ShortDB.f45222a.c(shortTaskInfo);
            DownloadDB.f45210a.f(arrayList);
            au.c.d().l(new b.a(arrayList));
            s.b("插入数据库" + arrayList);
            Function0<Unit> function0 = this.f45120k;
            if (function0 != null) {
                function0.invoke();
            }
            DownloadEpisodeManager.b0(DownloadEpisodeManager.f45066a, false, 1, null);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
