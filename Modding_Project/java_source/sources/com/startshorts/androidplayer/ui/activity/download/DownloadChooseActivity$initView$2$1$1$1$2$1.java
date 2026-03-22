package com.startshorts.androidplayer.ui.activity.download;

import com.startshorts.androidplayer.ui.activity.download.adapter.DownloadChooseListAdapter;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: DownloadChooseActivity.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadChooseActivity$initView$2$1$1$1$2$1", f = "DownloadChooseActivity.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class DownloadChooseActivity$initView$2$1$1$1$2$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45053h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DownloadChooseListAdapter f45054i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f45055j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadChooseActivity$initView$2$1$1$1$2$1(DownloadChooseListAdapter downloadChooseListAdapter, int i10, rs.c<? super DownloadChooseActivity$initView$2$1$1$1$2$1> cVar) {
        super(2, cVar);
        this.f45054i = downloadChooseListAdapter;
        this.f45055j = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadChooseActivity$initView$2$1$1$1$2$1(this.f45054i, this.f45055j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadChooseActivity$initView$2$1$1$1$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45053h == 0) {
            kotlin.f.b(obj);
            this.f45054i.notifyItemChanged(this.f45055j);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
