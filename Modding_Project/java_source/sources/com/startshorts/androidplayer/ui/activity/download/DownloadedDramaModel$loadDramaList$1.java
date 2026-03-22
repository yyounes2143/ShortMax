package com.startshorts.androidplayer.ui.activity.download;

import com.startshorts.androidplayer.bean.download.DownloadedDramaInfo;
import com.startshorts.androidplayer.ui.activity.download.f;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadedDramaModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadedDramaModel$loadDramaList$1", f = "DownloadedDramaModel.kt", l = {84}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDownloadedDramaModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadedDramaModel.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1010#2,2:94\n*S KotlinDebug\n*F\n+ 1 DownloadedDramaModel.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1\n*L\n85#1:94,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DownloadedDramaModel$loadDramaList$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45156h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f45157i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DownloadedDramaModel f45158j;

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 DownloadedDramaModel.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1\n*L\n1#1,102:1\n85#2:103\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((DownloadedDramaInfo) t10).getDownloadInfo().getDramaNum()), Integer.valueOf(((DownloadedDramaInfo) t11).getDownloadInfo().getDramaNum()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadedDramaModel$loadDramaList$1(int i10, DownloadedDramaModel downloadedDramaModel, rs.c<? super DownloadedDramaModel$loadDramaList$1> cVar) {
        super(2, cVar);
        this.f45157i = i10;
        this.f45158j = downloadedDramaModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadedDramaModel$loadDramaList$1(this.f45157i, this.f45158j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadedDramaModel$loadDramaList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f45156h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            DownloadEpisodeManager downloadEpisodeManager = DownloadEpisodeManager.f45066a;
            int i11 = this.f45157i;
            this.f45156h = 1;
            obj = downloadEpisodeManager.H(i11, this);
            if (obj == f10) {
                return f10;
            }
        }
        List list = (List) obj;
        if (list.size() > 1) {
            CollectionsKt.D(list, new a());
        }
        o.b(this.f45158j.E(), new f.b(list));
        return Unit.f60915a;
    }
}
