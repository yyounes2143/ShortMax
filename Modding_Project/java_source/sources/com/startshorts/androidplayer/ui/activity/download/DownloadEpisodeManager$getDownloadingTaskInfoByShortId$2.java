package com.startshorts.androidplayer.ui.activity.download;

import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import com.startshorts.androidplayer.bean.download.DownloadingDramaInfo;
import gt.g0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadEpisodeManager.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2", f = "DownloadEpisodeManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2 extends SuspendLambda implements Function2<g0, rs.c<? super List<DownloadingDramaInfo>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45087h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f45088i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2(int i10, rs.c<? super DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2> cVar) {
        super(2, cVar);
        this.f45088i = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2(this.f45088i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super List<DownloadingDramaInfo>> cVar) {
        return ((DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        HashMap hashMap;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45087h == 0) {
            kotlin.f.b(obj);
            ArrayList arrayList = new ArrayList();
            hashMap = DownloadEpisodeManager.f45067b;
            HashMap hashMap2 = (HashMap) hashMap.get(kotlin.coroutines.jvm.internal.a.d(this.f45088i));
            if (hashMap2 == null) {
                return arrayList;
            }
            for (String str : hashMap2.keySet()) {
                DownloadTaskInfo downloadTaskInfo = (DownloadTaskInfo) hashMap2.get(str);
                if (downloadTaskInfo != null && downloadTaskInfo.getDownloadState() != 4 && downloadTaskInfo.getDownloadState() != 6) {
                    DownloadingDramaInfo downloadingDramaInfo = new DownloadingDramaInfo(downloadTaskInfo);
                    downloadingDramaInfo.setShortPlayId(this.f45088i);
                    arrayList.add(downloadingDramaInfo);
                }
            }
            return arrayList;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
