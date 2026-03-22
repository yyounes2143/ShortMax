package com.startshorts.androidplayer.viewmodel.shorts;

import com.startshorts.androidplayer.bean.shorts.ShortsListResult;
import com.startshorts.androidplayer.manager.account.AccountManager;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShortsViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.shorts.ShortsViewModel$loadEpisodes$1$1", f = "ShortsViewModel.kt", l = {98}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nShortsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"})
/* loaded from: classes7.dex */
public final class ShortsViewModel$loadEpisodes$1$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49371h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ShortsViewModel f49372i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Result<ShortsListResult> f49373j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ boolean f49374k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f49375l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f49376m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsViewModel$loadEpisodes$1$1(ShortsViewModel shortsViewModel, Result<ShortsListResult> result, boolean z10, int i10, int i11, c<? super ShortsViewModel$loadEpisodes$1$1> cVar) {
        super(2, cVar);
        this.f49372i = shortsViewModel;
        this.f49373j = result;
        this.f49374k = z10;
        this.f49375l = i10;
        this.f49376m = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ShortsViewModel$loadEpisodes$1$1(this.f49372i, this.f49373j, this.f49374k, this.f49375l, this.f49376m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ShortsViewModel$loadEpisodes$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object n10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49371h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                n10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            AccountManager accountManager = AccountManager.f41533a;
            this.f49371h = 1;
            n10 = accountManager.n(this);
            if (n10 == f10) {
                return f10;
            }
        }
        ShortsViewModel shortsViewModel = this.f49372i;
        Result<ShortsListResult> result = this.f49373j;
        boolean z10 = this.f49374k;
        int i11 = this.f49375l;
        int i12 = this.f49376m;
        if (Result.j(n10)) {
            ((Boolean) n10).booleanValue();
            shortsViewModel.P(result.n(), z10, i11, i12);
        }
        ShortsViewModel shortsViewModel2 = this.f49372i;
        Throwable g10 = Result.g(n10);
        if (g10 != null) {
            shortsViewModel2.N(shortsViewModel2.s(g10));
        }
        return Unit.f60915a;
    }
}
