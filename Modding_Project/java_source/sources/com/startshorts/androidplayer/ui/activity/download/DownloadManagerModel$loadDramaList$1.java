package com.startshorts.androidplayer.ui.activity.download;

import com.startshorts.androidplayer.bean.download.DownloadManagerItem;
import com.startshorts.androidplayer.ui.activity.download.d;
import gt.g0;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: DownloadManagerModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadManagerModel$loadDramaList$1", f = "DownloadManagerModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class DownloadManagerModel$loadDramaList$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45136h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DownloadManagerModel f45137i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadManagerModel$loadDramaList$1(DownloadManagerModel downloadManagerModel, rs.c<? super DownloadManagerModel$loadDramaList$1> cVar) {
        super(2, cVar);
        this.f45137i = downloadManagerModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadManagerModel$loadDramaList$1(this.f45137i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadManagerModel$loadDramaList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45136h == 0) {
            kotlin.f.b(obj);
            List<DownloadManagerItem> B = DownloadEpisodeManager.f45066a.B();
            this.f45137i.C().clear();
            this.f45137i.C().addAll(B);
            o.b(this.f45137i.B(), new d.b(this.f45137i.C()));
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
