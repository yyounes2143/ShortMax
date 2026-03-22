package com.startshorts.androidplayer.viewmodel.immersion;

import android.content.Context;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryEpisodesByCurEpisodeId$1", f = "ImmersionViewModel.kt", l = {403}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionViewModel$queryEpisodesByCurEpisodeId$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48580h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionViewModel f48581i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f48582j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f48583k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ ImmersionActivity.ResetReason f48584l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ Context f48585m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ int f48586n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ boolean f48587o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$queryEpisodesByCurEpisodeId$1(ImmersionViewModel immersionViewModel, int i10, int i11, ImmersionActivity.ResetReason resetReason, Context context, int i12, boolean z10, rs.c<? super ImmersionViewModel$queryEpisodesByCurEpisodeId$1> cVar) {
        super(2, cVar);
        this.f48581i = immersionViewModel;
        this.f48582j = i10;
        this.f48583k = i11;
        this.f48584l = resetReason;
        this.f48585m = context;
        this.f48586n = i12;
        this.f48587o = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionViewModel$queryEpisodesByCurEpisodeId$1(this.f48581i, this.f48582j, this.f48583k, this.f48584l, this.f48585m, this.f48586n, this.f48587o, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionViewModel$queryEpisodesByCurEpisodeId$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48580h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            ImmersionViewModel immersionViewModel = this.f48581i;
            immersionViewModel.v("queryEpisodesByCurEpisodeId -> shortsId(" + this.f48582j + ") episodeId(" + this.f48583k + ") resetReason(" + this.f48584l + ')');
            ImmersionViewModel immersionViewModel2 = this.f48581i;
            Context context = this.f48585m;
            int i11 = this.f48582j;
            int i12 = this.f48583k;
            int i13 = this.f48586n;
            boolean z10 = this.f48587o;
            ImmersionActivity.ResetReason resetReason = this.f48584l;
            this.f48580h = 1;
            if (ImmersionViewModel.m0(immersionViewModel2, context, false, i11, i12, 0, 12, i13, z10, resetReason, false, false, false, this, 3584, null) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
