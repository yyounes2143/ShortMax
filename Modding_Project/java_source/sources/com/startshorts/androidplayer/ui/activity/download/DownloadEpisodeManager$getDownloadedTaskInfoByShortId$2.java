package com.startshorts.androidplayer.ui.activity.download;

import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import com.startshorts.androidplayer.bean.download.DownloadedDramaInfo;
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
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$getDownloadedTaskInfoByShortId$2", f = "DownloadEpisodeManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DownloadEpisodeManager$getDownloadedTaskInfoByShortId$2 extends SuspendLambda implements Function2<g0, rs.c<? super List<DownloadedDramaInfo>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45080h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f45081i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadEpisodeManager$getDownloadedTaskInfoByShortId$2(int i10, rs.c<? super DownloadEpisodeManager$getDownloadedTaskInfoByShortId$2> cVar) {
        super(2, cVar);
        this.f45081i = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadEpisodeManager$getDownloadedTaskInfoByShortId$2(this.f45081i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super List<DownloadedDramaInfo>> cVar) {
        return ((DownloadEpisodeManager$getDownloadedTaskInfoByShortId$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        HashMap hashMap;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45080h == 0) {
            kotlin.f.b(obj);
            ArrayList arrayList = new ArrayList();
            hashMap = DownloadEpisodeManager.f45067b;
            HashMap hashMap2 = (HashMap) hashMap.get(kotlin.coroutines.jvm.internal.a.d(this.f45081i));
            if (hashMap2 == null) {
                return arrayList;
            }
            for (String str : hashMap2.keySet()) {
                DownloadTaskInfo downloadTaskInfo = (DownloadTaskInfo) hashMap2.get(str);
                if (downloadTaskInfo != null && downloadTaskInfo.getDownloadState() == 4) {
                    arrayList.add(new DownloadedDramaInfo(downloadTaskInfo));
                }
            }
            return arrayList;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
