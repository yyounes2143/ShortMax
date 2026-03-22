package com.startshorts.androidplayer.viewmodel.shorts;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: ShortsViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.shorts.ShortsViewModel$loadEpisodes$2$1$1", f = "ShortsViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class ShortsViewModel$loadEpisodes$2$1$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49389h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ShortsViewModel f49390i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Object f49391j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ boolean f49392k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f49393l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f49394m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsViewModel$loadEpisodes$2$1$1(ShortsViewModel shortsViewModel, Object obj, boolean z10, int i10, int i11, c<? super ShortsViewModel$loadEpisodes$2$1$1> cVar) {
        super(2, cVar);
        this.f49390i = shortsViewModel;
        this.f49391j = obj;
        this.f49392k = z10;
        this.f49393l = i10;
        this.f49394m = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ShortsViewModel$loadEpisodes$2$1$1(this.f49390i, this.f49391j, this.f49392k, this.f49393l, this.f49394m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ShortsViewModel$loadEpisodes$2$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f49389h == 0) {
            f.b(obj);
            this.f49390i.P(this.f49391j, this.f49392k, this.f49393l, this.f49394m);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
