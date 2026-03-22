package com.unity3d.services;

import com.unity3d.ads.IUnityAdsTokenListener;
import com.unity3d.ads.TokenConfiguration;
import com.unity3d.ads.core.domain.GetAsyncHeaderBiddingToken;
import com.unity3d.ads.core.domain.TokenNumberProvider;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnityAdsSDK.kt */
@Metadata
@d(c = "com.unity3d.services.UnityAdsSDK$getToken$2", f = "UnityAdsSDK.kt", l = {147}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnityAdsSDK$getToken$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ i<GetAsyncHeaderBiddingToken> $getAsyncHeaderBiddingToken$delegate;
    final /* synthetic */ g0 $getTokenScope;
    final /* synthetic */ IUnityAdsTokenListener $listener;
    final /* synthetic */ TokenConfiguration $tokenConfiguration;
    final /* synthetic */ i<TokenNumberProvider> $tokenNumberProvider$delegate;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UnityAdsSDK$getToken$2(TokenConfiguration tokenConfiguration, IUnityAdsTokenListener iUnityAdsTokenListener, g0 g0Var, i<? extends GetAsyncHeaderBiddingToken> iVar, i<? extends TokenNumberProvider> iVar2, c<? super UnityAdsSDK$getToken$2> cVar) {
        super(2, cVar);
        this.$tokenConfiguration = tokenConfiguration;
        this.$listener = iUnityAdsTokenListener;
        this.$getTokenScope = g0Var;
        this.$getAsyncHeaderBiddingToken$delegate = iVar;
        this.$tokenNumberProvider$delegate = iVar2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new UnityAdsSDK$getToken$2(this.$tokenConfiguration, this.$listener, this.$getTokenScope, this.$getAsyncHeaderBiddingToken$delegate, this.$tokenNumberProvider$delegate, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((UnityAdsSDK$getToken$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        GetAsyncHeaderBiddingToken token$lambda$8;
        TokenNumberProvider token$lambda$7;
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
            token$lambda$8 = UnityAdsSDK.getToken$lambda$8(this.$getAsyncHeaderBiddingToken$delegate);
            token$lambda$7 = UnityAdsSDK.getToken$lambda$7(this.$tokenNumberProvider$delegate);
            int invoke = token$lambda$7.invoke();
            TokenConfiguration tokenConfiguration = this.$tokenConfiguration;
            IUnityAdsTokenListener iUnityAdsTokenListener = this.$listener;
            this.label = 1;
            if (token$lambda$8.invoke(invoke, tokenConfiguration, iUnityAdsTokenListener, this) == f10) {
                return f10;
            }
        }
        kotlinx.coroutines.i.e(this.$getTokenScope, null, 1, null);
        return Unit.f60915a;
    }
}
