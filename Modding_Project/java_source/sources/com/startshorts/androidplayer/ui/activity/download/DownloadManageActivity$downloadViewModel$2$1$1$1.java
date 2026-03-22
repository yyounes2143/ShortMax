package com.startshorts.androidplayer.ui.activity.download;

import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.ui.activity.download.d;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadManageActivity.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadManageActivity$downloadViewModel$2$1$1$1", f = "DownloadManageActivity.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DownloadManageActivity$downloadViewModel$2$1$1$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45130h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ d f45131i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DownloadManageActivity f45132j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadManageActivity$downloadViewModel$2$1$1$1(d dVar, DownloadManageActivity downloadManageActivity, rs.c<? super DownloadManageActivity$downloadViewModel$2$1$1$1> cVar) {
        super(2, cVar);
        this.f45131i = dVar;
        this.f45132j = downloadManageActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadManageActivity$downloadViewModel$2$1$1$1(this.f45131i, this.f45132j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadManageActivity$downloadViewModel$2$1$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45130h == 0) {
            kotlin.f.b(obj);
            if (((d.b) this.f45131i).a().size() == 0) {
                this.f45132j.T();
            } else {
                this.f45132j.P();
                RecyclerView recyclerView = DownloadManageActivity.i0(this.f45132j).f38226f;
                Intrinsics.checkNotNullExpressionValue(recyclerView, "recyclerView");
                o1.b.f(recyclerView, ((d.b) this.f45131i).a());
            }
            this.f45132j.B0();
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
