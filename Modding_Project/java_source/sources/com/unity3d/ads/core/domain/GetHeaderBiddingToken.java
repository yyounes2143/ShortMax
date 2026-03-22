package com.unity3d.ads.core.domain;

import com.unity3d.ads.TokenConfiguration;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: GetHeaderBiddingToken.kt */
@Metadata
/* loaded from: classes7.dex */
public interface GetHeaderBiddingToken {

    /* compiled from: GetHeaderBiddingToken.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object invoke$default(GetHeaderBiddingToken getHeaderBiddingToken, int i10, TokenConfiguration tokenConfiguration, c cVar, int i11, Object obj) {
            if (obj == null) {
                if ((i11 & 2) != 0) {
                    tokenConfiguration = null;
                }
                return getHeaderBiddingToken.invoke(i10, tokenConfiguration, cVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
        }
    }

    @Nullable
    Object invoke(int i10, @Nullable TokenConfiguration tokenConfiguration, @NotNull c<? super String> cVar);
}
