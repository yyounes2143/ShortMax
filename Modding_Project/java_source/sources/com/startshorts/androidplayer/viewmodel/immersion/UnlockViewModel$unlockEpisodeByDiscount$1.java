package com.startshorts.androidplayer.viewmodel.immersion;

import android.content.Context;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortDiscountSku;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel$unlockEpisodeByDiscount$1", f = "UnlockViewModel.kt", l = {506, 511, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_STREAM_DURATION, 536}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnlockViewModel$unlockEpisodeByDiscount$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f48689h;

    /* renamed from: i  reason: collision with root package name */
    Object f48690i;

    /* renamed from: j  reason: collision with root package name */
    int f48691j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Context f48692k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ ShortDiscountSku f48693l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f48694m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ String f48695n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ UnlockViewModel f48696o;

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ BaseEpisode f48697p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockViewModel$unlockEpisodeByDiscount$1(Context context, ShortDiscountSku shortDiscountSku, String str, String str2, UnlockViewModel unlockViewModel, BaseEpisode baseEpisode, rs.c<? super UnlockViewModel$unlockEpisodeByDiscount$1> cVar) {
        super(2, cVar);
        this.f48692k = context;
        this.f48693l = shortDiscountSku;
        this.f48694m = str;
        this.f48695n = str2;
        this.f48696o = unlockViewModel;
        this.f48697p = baseEpisode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new UnlockViewModel$unlockEpisodeByDiscount$1(this.f48692k, this.f48693l, this.f48694m, this.f48695n, this.f48696o, this.f48697p, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((UnlockViewModel$unlockEpisodeByDiscount$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x011f A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel$unlockEpisodeByDiscount$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
