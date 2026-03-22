package com.unity3d.ads.core.domain;

import com.unity3d.ads.UnityAds;
import com.unity3d.services.core.properties.SdkProperties;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: TriggerInitializeListener.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.TriggerInitializeListener$error$1", f = "TriggerInitializeListener.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class TriggerInitializeListener$error$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ String $errorMsg;
    final /* synthetic */ UnityAds.UnityAdsInitializationError $unityAdsInitializationError;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerInitializeListener$error$1(UnityAds.UnityAdsInitializationError unityAdsInitializationError, String str, c<? super TriggerInitializeListener$error$1> cVar) {
        super(2, cVar);
        this.$unityAdsInitializationError = unityAdsInitializationError;
        this.$errorMsg = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new TriggerInitializeListener$error$1(this.$unityAdsInitializationError, this.$errorMsg, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((TriggerInitializeListener$error$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            SdkProperties.notifyInitializationFailed(this.$unityAdsInitializationError, this.$errorMsg);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
