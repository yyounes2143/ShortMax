package com.startshorts.androidplayer.viewmodel.immersion;

import android.content.Context;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.repo.unlock.UnlockRepo;
import com.startshorts.androidplayer.viewmodel.immersion.f;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel$singleUnlockEpisodeByCoins$1", f = "UnlockViewModel.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_PARAM_SEND_OUTLET_TIME}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnlockViewModel$singleUnlockEpisodeByCoins$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48682h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Context f48683i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ BaseEpisode f48684j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ boolean f48685k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ boolean f48686l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f48687m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ UnlockViewModel f48688n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockViewModel$singleUnlockEpisodeByCoins$1(Context context, BaseEpisode baseEpisode, boolean z10, boolean z11, String str, UnlockViewModel unlockViewModel, rs.c<? super UnlockViewModel$singleUnlockEpisodeByCoins$1> cVar) {
        super(2, cVar);
        this.f48683i = context;
        this.f48684j = baseEpisode;
        this.f48685k = z10;
        this.f48686l = z11;
        this.f48687m = str;
        this.f48688n = unlockViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new UnlockViewModel$singleUnlockEpisodeByCoins$1(this.f48683i, this.f48684j, this.f48685k, this.f48686l, this.f48687m, this.f48688n, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((UnlockViewModel$singleUnlockEpisodeByCoins$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object s10;
        boolean z10;
        boolean z11;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48682h;
        boolean z12 = true;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                s10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            UnlockRepo unlockRepo = UnlockRepo.f44686a;
            Context context = this.f48683i;
            BaseEpisode baseEpisode = this.f48684j;
            boolean z13 = this.f48685k;
            boolean z14 = this.f48686l;
            String str = this.f48687m;
            this.f48682h = 1;
            s10 = unlockRepo.s(context, baseEpisode, z13, z14, str, this);
            if (s10 == f10) {
                return f10;
            }
        }
        if (this.f48686l) {
            PurchaseRepo.f43366a.q();
        }
        this.f48688n.x0(false);
        UnlockViewModel unlockViewModel = this.f48688n;
        BaseEpisode baseEpisode2 = this.f48684j;
        Throwable g10 = Result.g(s10);
        if (g10 != null) {
            ResponseException s11 = unlockViewModel.s(g10);
            if (s11.getCode() == 20021) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (s11.getCode() == 20020) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (s11.getCode() != 20028) {
                z12 = false;
            }
            if (!z10 && !z11 && !z12) {
                o.b(unlockViewModel.a0(), new f.d(baseEpisode2.getId(), null));
            }
        }
        return Unit.f60915a;
    }
}
