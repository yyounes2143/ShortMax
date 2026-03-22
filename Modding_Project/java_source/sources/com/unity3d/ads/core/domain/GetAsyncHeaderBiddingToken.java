package com.unity3d.ads.core.domain;

import com.unity3d.ads.IUnityAdsTokenListener;
import com.unity3d.ads.TokenConfiguration;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: GetAsyncHeaderBiddingToken.kt */
@Metadata
/* loaded from: classes7.dex */
public interface GetAsyncHeaderBiddingToken {
    @Nullable
    Object invoke(int i10, @Nullable TokenConfiguration tokenConfiguration, @Nullable IUnityAdsTokenListener iUnityAdsTokenListener, @NotNull c<? super Unit> cVar);
}
