package com.startshorts.androidplayer.ui.activity.download;

import androidx.recyclerview.widget.RecyclerView;
import com.drake.brv.BindingAdapter;
import com.startshorts.androidplayer.bean.download.DownloadPauseHeader;
import com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadingAdapter;
import com.startshorts.androidplayer.ui.activity.download.h;
import gt.g0;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadingDramaActivity.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadingDramaActivity$downloadViewModel$2$1$1$1", f = "DownloadingDramaActivity.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DownloadingDramaActivity$downloadViewModel$2$1$1$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45167h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DownloadingDramaActivity f45168i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DownloadingDramaModel f45169j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ h f45170k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadingDramaActivity$downloadViewModel$2$1$1$1(DownloadingDramaActivity downloadingDramaActivity, DownloadingDramaModel downloadingDramaModel, h hVar, rs.c<? super DownloadingDramaActivity$downloadViewModel$2$1$1$1> cVar) {
        super(2, cVar);
        this.f45168i = downloadingDramaActivity;
        this.f45169j = downloadingDramaModel;
        this.f45170k = hVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadingDramaActivity$downloadViewModel$2$1$1$1(this.f45168i, this.f45169j, this.f45170k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadingDramaActivity$downloadViewModel$2$1$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DramaDownloadingAdapter dramaDownloadingAdapter;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45167h == 0) {
            kotlin.f.b(obj);
            this.f45168i.P();
            this.f45169j.C().clear();
            this.f45169j.C().addAll(((h.b) this.f45170k).a());
            if (((h.b) this.f45170k).a().isEmpty()) {
                this.f45168i.T();
                b0.d(DownloadingDramaActivity.k0(this.f45168i).f38223c);
                RecyclerView recyclerView = DownloadingDramaActivity.k0(this.f45168i).f38226f;
                Intrinsics.checkNotNullExpressionValue(recyclerView, "recyclerView");
                o1.b.f(recyclerView, this.f45169j.C());
            } else {
                dramaDownloadingAdapter = this.f45168i.f45160r;
                if (dramaDownloadingAdapter != null) {
                    BindingAdapter.i(dramaDownloadingAdapter, new DownloadPauseHeader(), 0, true, 2, null);
                }
                RecyclerView recyclerView2 = DownloadingDramaActivity.k0(this.f45168i).f38226f;
                Intrinsics.checkNotNullExpressionValue(recyclerView2, "recyclerView");
                o1.b.f(recyclerView2, this.f45169j.C());
                this.f45168i.E0();
                DownloadEpisodeManager.f45066a.v();
            }
            this.f45169j.B();
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
