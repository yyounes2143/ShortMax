package com.startshorts.androidplayer.ui.activity.download;

import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import gt.g0;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.y0;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadEpisodeManager.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$getDownloadedTaskInfoIdsByShortId$2", f = "DownloadEpisodeManager.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDownloadEpisodeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoIdsByShortId$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,923:1\n216#2,2:924\n*S KotlinDebug\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoIdsByShortId$2\n*L\n384#1:924,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DownloadEpisodeManager$getDownloadedTaskInfoIdsByShortId$2 extends SuspendLambda implements Function2<g0, rs.c<? super Set<? extends Integer>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45085h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f45086i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadEpisodeManager$getDownloadedTaskInfoIdsByShortId$2(int i10, rs.c<? super DownloadEpisodeManager$getDownloadedTaskInfoIdsByShortId$2> cVar) {
        super(2, cVar);
        this.f45086i = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadEpisodeManager$getDownloadedTaskInfoIdsByShortId$2(this.f45086i, cVar);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(g0 g0Var, rs.c<? super Set<Integer>> cVar) {
        return ((DownloadEpisodeManager$getDownloadedTaskInfoIdsByShortId$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        HashMap hashMap;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45085h == 0) {
            kotlin.f.b(obj);
            hashMap = DownloadEpisodeManager.f45067b;
            HashMap hashMap2 = (HashMap) hashMap.get(kotlin.coroutines.jvm.internal.a.d(this.f45086i));
            if (hashMap2 == null) {
                return y0.f();
            }
            Set b10 = y0.b();
            for (Map.Entry entry : hashMap2.entrySet()) {
                DownloadTaskInfo downloadTaskInfo = (DownloadTaskInfo) entry.getValue();
                if (downloadTaskInfo.getDownloadState() == 4) {
                    b10.add(kotlin.coroutines.jvm.internal.a.d(downloadTaskInfo.getDramaId()));
                }
            }
            return y0.a(b10);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super Set<? extends Integer>> cVar) {
        return invoke2(g0Var, (rs.c<? super Set<Integer>>) cVar);
    }
}
