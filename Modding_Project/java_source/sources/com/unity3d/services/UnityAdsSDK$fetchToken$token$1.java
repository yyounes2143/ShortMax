package com.unity3d.services;

import com.unity3d.ads.core.domain.GetHeaderBiddingToken;
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
@d(c = "com.unity3d.services.UnityAdsSDK$fetchToken$token$1", f = "UnityAdsSDK.kt", l = {171}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnityAdsSDK$fetchToken$token$1 extends SuspendLambda implements Function2<g0, c<? super String>, Object> {
    final /* synthetic */ i<GetHeaderBiddingToken> $getHeaderBiddingToken$delegate;
    final /* synthetic */ i<TokenNumberProvider> $tokenNumberProvider$delegate;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UnityAdsSDK$fetchToken$token$1(i<? extends GetHeaderBiddingToken> iVar, i<? extends TokenNumberProvider> iVar2, c<? super UnityAdsSDK$fetchToken$token$1> cVar) {
        super(2, cVar);
        this.$getHeaderBiddingToken$delegate = iVar;
        this.$tokenNumberProvider$delegate = iVar2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new UnityAdsSDK$fetchToken$token$1(this.$getHeaderBiddingToken$delegate, this.$tokenNumberProvider$delegate, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super String> cVar) {
        return ((UnityAdsSDK$fetchToken$token$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        GetHeaderBiddingToken fetchToken$lambda$10;
        TokenNumberProvider fetchToken$lambda$9;
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
            fetchToken$lambda$10 = UnityAdsSDK.fetchToken$lambda$10(this.$getHeaderBiddingToken$delegate);
            fetchToken$lambda$9 = UnityAdsSDK.fetchToken$lambda$9(this.$tokenNumberProvider$delegate);
            int invoke = fetchToken$lambda$9.invoke();
            this.label = 1;
            obj = GetHeaderBiddingToken.DefaultImpls.invoke$default(fetchToken$lambda$10, invoke, null, this, 2, null);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
