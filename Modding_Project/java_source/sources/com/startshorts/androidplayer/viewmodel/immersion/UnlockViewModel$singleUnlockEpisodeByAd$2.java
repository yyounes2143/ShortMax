package com.startshorts.androidplayer.viewmodel.immersion;

import android.content.Context;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.repo.unlock.UnlockRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel$singleUnlockEpisodeByAd$2", f = "UnlockViewModel.kt", l = {550}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnlockViewModel$singleUnlockEpisodeByAd$2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48677h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ UnlockViewModel f48678i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Context f48679j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ boolean f48680k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f48681l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockViewModel$singleUnlockEpisodeByAd$2(UnlockViewModel unlockViewModel, Context context, boolean z10, String str, rs.c<? super UnlockViewModel$singleUnlockEpisodeByAd$2> cVar) {
        super(2, cVar);
        this.f48678i = unlockViewModel;
        this.f48679j = context;
        this.f48680k = z10;
        this.f48681l = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new UnlockViewModel$singleUnlockEpisodeByAd$2(this.f48678i, this.f48679j, this.f48680k, this.f48681l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((UnlockViewModel$singleUnlockEpisodeByAd$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        BaseEpisode baseEpisode;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48677h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            baseEpisode = this.f48678i.f48655k;
            if (baseEpisode == null) {
                return Unit.f60915a;
            }
            UnlockRepo unlockRepo = UnlockRepo.f44686a;
            Context context = this.f48679j;
            boolean z10 = this.f48680k;
            String str = this.f48681l;
            this.f48677h = 1;
            if (unlockRepo.r(context, baseEpisode, z10, str, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
