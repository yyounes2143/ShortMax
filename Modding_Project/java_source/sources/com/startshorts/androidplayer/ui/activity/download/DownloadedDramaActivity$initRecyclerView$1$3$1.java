package com.startshorts.androidplayer.ui.activity.download;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadedDramaActivity.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadedDramaActivity$initRecyclerView$1$3$1", f = "DownloadedDramaActivity.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DownloadedDramaActivity$initRecyclerView$1$3$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45150h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DownloadedDramaActivity f45151i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadedDramaActivity$initRecyclerView$1$3$1(DownloadedDramaActivity downloadedDramaActivity, rs.c<? super DownloadedDramaActivity$initRecyclerView$1$3$1> cVar) {
        super(2, cVar);
        this.f45151i = downloadedDramaActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadedDramaActivity$initRecyclerView$1$3$1(this.f45151i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadedDramaActivity$initRecyclerView$1$3$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45150h == 0) {
            kotlin.f.b(obj);
            this.f45151i.B0();
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
