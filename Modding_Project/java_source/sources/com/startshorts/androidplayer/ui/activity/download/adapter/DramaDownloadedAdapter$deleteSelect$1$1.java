package com.startshorts.androidplayer.ui.activity.download.adapter;

import com.startshorts.androidplayer.bean.download.DownloadedDramaInfo;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DramaDownloadedAdapter.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.download.adapter.DramaDownloadedAdapter$deleteSelect$1$1", f = "DramaDownloadedAdapter.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DramaDownloadedAdapter$deleteSelect$1$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45194h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DramaDownloadedAdapter f45195i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ List<DownloadedDramaInfo> f45196j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DramaDownloadedAdapter$deleteSelect$1$1(DramaDownloadedAdapter dramaDownloadedAdapter, List<DownloadedDramaInfo> list, c<? super DramaDownloadedAdapter$deleteSelect$1$1> cVar) {
        super(2, cVar);
        this.f45195i = dramaDownloadedAdapter;
        this.f45196j = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DramaDownloadedAdapter$deleteSelect$1$1(this.f45195i, this.f45196j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((DramaDownloadedAdapter$deleteSelect$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f45194h == 0) {
            f.b(obj);
            this.f45195i.d0().D().removeAll(this.f45196j);
            this.f45195i.l0();
            this.f45195i.notifyDataSetChanged();
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
