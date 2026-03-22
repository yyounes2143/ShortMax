package com.unity3d.ads.core.domain;

import at.n;
import at.q;
import com.ss.ttm.player.MediaPlayer;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.core.data.model.ShowEvent;
import com.unity3d.ads.core.extensions.ExceptionExtensionsKt;
import com.unity3d.services.UnityAdsConstants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kt.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LegacyShowUseCase.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$3", f = "LegacyShowUseCase.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class LegacyShowUseCase$invoke$3 extends SuspendLambda implements n<c<? super ShowEvent>, Throwable, rs.c<? super Unit>, Object> {
    final /* synthetic */ boolean $isBanner;
    final /* synthetic */ q<String, UnityAds.UnityAdsShowError, String, Integer, String, rs.c<? super Unit>, Object> $reportShowError;
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LegacyShowUseCase$invoke$3(q<? super String, ? super UnityAds.UnityAdsShowError, ? super String, ? super Integer, ? super String, ? super rs.c<? super Unit>, ? extends Object> qVar, boolean z10, rs.c<? super LegacyShowUseCase$invoke$3> cVar) {
        super(3, cVar);
        this.$reportShowError = qVar;
        this.$isBanner = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            q<String, UnityAds.UnityAdsShowError, String, Integer, String, rs.c<? super Unit>, Object> qVar = this.$reportShowError;
            UnityAds.UnityAdsShowError unityAdsShowError = UnityAds.UnityAdsShowError.INTERNAL_ERROR;
            String shortenedStackTrace$default = ExceptionExtensionsKt.getShortenedStackTrace$default((Throwable) this.L$0, 0, 1, null);
            this.label = 1;
            if (qVar.invoke("uncaught_exception", unityAdsShowError, UnityAdsConstants.Messages.MSG_INTERNAL_ERROR, null, shortenedStackTrace$default, this) == f10) {
                return f10;
            }
        }
        if (!this.$isBanner) {
            LegacyShowUseCase.isFullscreenAdShowing = false;
        }
        return Unit.f60915a;
    }

    @Override // at.n
    @Nullable
    public final Object invoke(@NotNull c<? super ShowEvent> cVar, @NotNull Throwable th2, @Nullable rs.c<? super Unit> cVar2) {
        LegacyShowUseCase$invoke$3 legacyShowUseCase$invoke$3 = new LegacyShowUseCase$invoke$3(this.$reportShowError, this.$isBanner, cVar2);
        legacyShowUseCase$invoke$3.L$0 = th2;
        return legacyShowUseCase$invoke$3.invokeSuspend(Unit.f60915a);
    }
}
