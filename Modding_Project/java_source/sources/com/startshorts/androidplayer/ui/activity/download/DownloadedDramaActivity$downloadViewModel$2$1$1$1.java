package com.startshorts.androidplayer.ui.activity.download;

import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.ui.activity.download.f;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadedDramaActivity.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadedDramaActivity$downloadViewModel$2$1$1$1", f = "DownloadedDramaActivity.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DownloadedDramaActivity$downloadViewModel$2$1$1$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45146h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DownloadedDramaActivity f45147i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DownloadedDramaModel f45148j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ f f45149k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadedDramaActivity$downloadViewModel$2$1$1$1(DownloadedDramaActivity downloadedDramaActivity, DownloadedDramaModel downloadedDramaModel, f fVar, rs.c<? super DownloadedDramaActivity$downloadViewModel$2$1$1$1> cVar) {
        super(2, cVar);
        this.f45147i = downloadedDramaActivity;
        this.f45148j = downloadedDramaModel;
        this.f45149k = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadedDramaActivity$downloadViewModel$2$1$1$1(this.f45147i, this.f45148j, this.f45149k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadedDramaActivity$downloadViewModel$2$1$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45146h == 0) {
            kotlin.f.b(obj);
            this.f45147i.P();
            this.f45148j.D().clear();
            this.f45148j.D().addAll(((f.b) this.f45149k).a());
            RecyclerView recyclerView = DownloadedDramaActivity.i0(this.f45147i).f38226f;
            Intrinsics.checkNotNullExpressionValue(recyclerView, "recyclerView");
            o1.b.f(recyclerView, this.f45148j.D());
            this.f45147i.B0();
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
