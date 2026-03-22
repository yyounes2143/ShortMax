package com.startshorts.androidplayer.ui.activity.download.adapter;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: DownloadChooseListAdapter.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.download.adapter.DownloadChooseListAdapter$downloadSelected$2$1", f = "DownloadChooseListAdapter.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class DownloadChooseListAdapter$downloadSelected$2$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45182h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DownloadChooseListAdapter f45183i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadChooseListAdapter$downloadSelected$2$1(DownloadChooseListAdapter downloadChooseListAdapter, c<? super DownloadChooseListAdapter$downloadSelected$2$1> cVar) {
        super(2, cVar);
        this.f45183i = downloadChooseListAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DownloadChooseListAdapter$downloadSelected$2$1(this.f45183i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((DownloadChooseListAdapter$downloadSelected$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f45182h == 0) {
            f.b(obj);
            this.f45183i.Q();
            this.f45183i.notifyDataSetChanged();
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
