package com.unity3d.ads.core.domain;

import com.unity3d.ads.TokenConfiguration;
import gatewayprotocol.v1.HeaderBiddingTokenOuterClass;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: BuildHeaderBiddingToken.kt */
@Metadata
/* loaded from: classes7.dex */
public interface BuildHeaderBiddingToken {

    /* compiled from: BuildHeaderBiddingToken.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object invoke$default(BuildHeaderBiddingToken buildHeaderBiddingToken, int i10, TokenConfiguration tokenConfiguration, boolean z10, c cVar, int i11, Object obj) {
            if (obj == null) {
                if ((i11 & 2) != 0) {
                    tokenConfiguration = null;
                }
                if ((i11 & 4) != 0) {
                    z10 = false;
                }
                return buildHeaderBiddingToken.invoke(i10, tokenConfiguration, z10, cVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
        }
    }

    @Nullable
    Object invoke(int i10, @Nullable TokenConfiguration tokenConfiguration, boolean z10, @NotNull c<? super HeaderBiddingTokenOuterClass.HeaderBiddingToken> cVar);
}
