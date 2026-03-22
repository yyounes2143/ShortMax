package com.startshorts.androidplayer.ui.activity.download;

import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import gt.g0;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadEpisodeManager.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2", f = "DownloadEpisodeManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2 extends SuspendLambda implements Function2<g0, rs.c<? super DownloadTaskInfo>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45082h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f45083i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f45084j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2(int i10, int i11, rs.c<? super DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2> cVar) {
        super(2, cVar);
        this.f45083i = i10;
        this.f45084j = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2(this.f45083i, this.f45084j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super DownloadTaskInfo> cVar) {
        return ((DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        HashMap hashMap;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45082h == 0) {
            kotlin.f.b(obj);
            hashMap = DownloadEpisodeManager.f45067b;
            HashMap hashMap2 = (HashMap) hashMap.get(kotlin.coroutines.jvm.internal.a.d(this.f45083i));
            if (hashMap2 == null) {
                return null;
            }
            for (String str : hashMap2.keySet()) {
                DownloadTaskInfo downloadTaskInfo = (DownloadTaskInfo) hashMap2.get(str);
                if (downloadTaskInfo != null && downloadTaskInfo.getDramaId() == this.f45084j) {
                    return downloadTaskInfo;
                }
            }
            return null;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
