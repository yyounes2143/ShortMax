package com.unity3d.services;

import android.app.Activity;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.core.data.model.Listeners;
import com.unity3d.ads.core.domain.LegacyShowUseCase;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnityAdsSDK.kt */
@Metadata
@d(c = "com.unity3d.services.UnityAdsSDK$show$1", f = "UnityAdsSDK.kt", l = {120}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnityAdsSDK$show$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Activity $activity;
    final /* synthetic */ Listeners $listener;
    final /* synthetic */ String $placementId;
    final /* synthetic */ LegacyShowUseCase $showBoldSDK;
    final /* synthetic */ UnityAdsShowOptions $showOptions;
    final /* synthetic */ g0 $showScope;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnityAdsSDK$show$1(LegacyShowUseCase legacyShowUseCase, Activity activity, String str, UnityAdsShowOptions unityAdsShowOptions, Listeners listeners, g0 g0Var, c<? super UnityAdsSDK$show$1> cVar) {
        super(2, cVar);
        this.$showBoldSDK = legacyShowUseCase;
        this.$activity = activity;
        this.$placementId = str;
        this.$showOptions = unityAdsShowOptions;
        this.$listener = listeners;
        this.$showScope = g0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new UnityAdsSDK$show$1(this.$showBoldSDK, this.$activity, this.$placementId, this.$showOptions, this.$listener, this.$showScope, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((UnityAdsSDK$show$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            LegacyShowUseCase legacyShowUseCase = this.$showBoldSDK;
            Activity activity = this.$activity;
            String str = this.$placementId;
            UnityAdsShowOptions unityAdsShowOptions = this.$showOptions;
            Listeners listeners = this.$listener;
            this.label = 1;
            if (legacyShowUseCase.invoke(activity, str, unityAdsShowOptions, listeners, this) == f10) {
                return f10;
            }
        }
        i.e(this.$showScope, null, 1, null);
        return Unit.f60915a;
    }
}
