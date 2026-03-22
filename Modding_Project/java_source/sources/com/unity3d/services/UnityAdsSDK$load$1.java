package com.unity3d.services;

import android.content.Context;
import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.core.domain.LegacyLoadUseCase;
import com.unity3d.services.banners.UnityBannerSize;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnityAdsSDK.kt */
@Metadata
@d(c = "com.unity3d.services.UnityAdsSDK$load$1", f = "UnityAdsSDK.kt", l = {110}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nUnityAdsSDK.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnityAdsSDK.kt\ncom/unity3d/services/UnityAdsSDK$load$1\n+ 2 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt\n*L\n1#1,215:1\n16#2,4:216\n*S KotlinDebug\n*F\n+ 1 UnityAdsSDK.kt\ncom/unity3d/services/UnityAdsSDK$load$1\n*L\n109#1:216,4\n*E\n"})
/* loaded from: classes7.dex */
public final class UnityAdsSDK$load$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ UnityBannerSize $bannerSize;
    final /* synthetic */ i<Context> $context$delegate;
    final /* synthetic */ IUnityAdsLoadListener $listener;
    final /* synthetic */ UnityAdsLoadOptions $loadOptions;
    final /* synthetic */ g0 $loadScope;
    final /* synthetic */ String $placementId;
    int label;
    final /* synthetic */ UnityAdsSDK this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UnityAdsSDK$load$1(UnityAdsSDK unityAdsSDK, String str, UnityAdsLoadOptions unityAdsLoadOptions, IUnityAdsLoadListener iUnityAdsLoadListener, UnityBannerSize unityBannerSize, g0 g0Var, i<? extends Context> iVar, c<? super UnityAdsSDK$load$1> cVar) {
        super(2, cVar);
        this.this$0 = unityAdsSDK;
        this.$placementId = str;
        this.$loadOptions = unityAdsLoadOptions;
        this.$listener = iUnityAdsLoadListener;
        this.$bannerSize = unityBannerSize;
        this.$loadScope = g0Var;
        this.$context$delegate = iVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new UnityAdsSDK$load$1(this.this$0, this.$placementId, this.$loadOptions, this.$listener, this.$bannerSize, this.$loadScope, this.$context$delegate, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((UnityAdsSDK$load$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Context load$lambda$5;
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
            LegacyLoadUseCase legacyLoadUseCase = (LegacyLoadUseCase) this.this$0.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(LegacyLoadUseCase.class));
            load$lambda$5 = UnityAdsSDK.load$lambda$5(this.$context$delegate);
            String str = this.$placementId;
            UnityAdsLoadOptions unityAdsLoadOptions = this.$loadOptions;
            IUnityAdsLoadListener iUnityAdsLoadListener = this.$listener;
            UnityBannerSize unityBannerSize = this.$bannerSize;
            this.label = 1;
            if (legacyLoadUseCase.invoke(load$lambda$5, str, unityAdsLoadOptions, iUnityAdsLoadListener, unityBannerSize, this) == f10) {
                return f10;
            }
        }
        kotlinx.coroutines.i.e(this.$loadScope, null, 1, null);
        return Unit.f60915a;
    }
}
