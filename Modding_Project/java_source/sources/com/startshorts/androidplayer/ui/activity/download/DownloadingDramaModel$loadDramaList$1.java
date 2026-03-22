package com.startshorts.androidplayer.ui.activity.download;

import com.startshorts.androidplayer.bean.download.DownloadingDramaInfo;
import com.startshorts.androidplayer.ui.activity.download.h;
import gt.g0;
import java.util.Comparator;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: DownloadingDramaModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadingDramaModel$loadDramaList$1", f = "DownloadingDramaModel.kt", l = {56}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDownloadingDramaModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadingDramaModel.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel$loadDramaList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n1010#2,2:67\n*S KotlinDebug\n*F\n+ 1 DownloadingDramaModel.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel$loadDramaList$1\n*L\n57#1:67,2\n*E\n"})
/* loaded from: classes7.dex */
final class DownloadingDramaModel$loadDramaList$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45175h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f45176i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DownloadingDramaModel f45177j;

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 DownloadingDramaModel.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel$loadDramaList$1\n*L\n1#1,102:1\n57#2:103\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((DownloadingDramaInfo) t10).getDownloadInfo().getDramaNum()), Integer.valueOf(((DownloadingDramaInfo) t11).getDownloadInfo().getDramaNum()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadingDramaModel$loadDramaList$1(int i10, DownloadingDramaModel downloadingDramaModel, rs.c<? super DownloadingDramaModel$loadDramaList$1> cVar) {
        super(2, cVar);
        this.f45176i = i10;
        this.f45177j = downloadingDramaModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadingDramaModel$loadDramaList$1(this.f45176i, this.f45177j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadingDramaModel$loadDramaList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f45175h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            DownloadEpisodeManager downloadEpisodeManager = DownloadEpisodeManager.f45066a;
            int i11 = this.f45176i;
            this.f45175h = 1;
            obj = downloadEpisodeManager.K(i11, this);
            if (obj == f10) {
                return f10;
            }
        }
        List list = (List) obj;
        if (list.size() > 1) {
            CollectionsKt.D(list, new a());
        }
        o.b(this.f45177j.D(), new h.b(list));
        this.f45177j.B();
        return Unit.f60915a;
    }
}
