package com.unity3d.ads.core.domain.scar;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ByteStringsKt;
import com.unity3d.services.ads.gmascar.models.BiddingSignals;
import gatewayprotocol.v1.GetTokenEventRequestKt;
import gatewayprotocol.v1.GetTokenEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: GetAndroidTokenEventRequest.kt */
@Metadata
@SourceDebugExtension({"SMAP\nGetAndroidTokenEventRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetAndroidTokenEventRequest.kt\ncom/unity3d/ads/core/domain/scar/GetAndroidTokenEventRequest\n+ 2 GetTokenEventRequestKt.kt\ngatewayprotocol/v1/GetTokenEventRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,27:1\n10#2:28\n1#3:29\n*S KotlinDebug\n*F\n+ 1 GetAndroidTokenEventRequest.kt\ncom/unity3d/ads/core/domain/scar/GetAndroidTokenEventRequest\n*L\n14#1:28\n14#1:29\n*E\n"})
/* loaded from: classes7.dex */
public final class GetAndroidTokenEventRequest implements GetHbTokenEventRequest {
    @Override // com.unity3d.ads.core.domain.scar.GetHbTokenEventRequest
    @Nullable
    public Object invoke(@NotNull ByteString byteString, @NotNull BiddingSignals biddingSignals, @NotNull c<? super GetTokenEventRequestOuterClass.GetTokenEventRequest> cVar) {
        GetTokenEventRequestKt.Dsl.Companion companion = GetTokenEventRequestKt.Dsl.Companion;
        GetTokenEventRequestOuterClass.GetTokenEventRequest.Builder newBuilder = GetTokenEventRequestOuterClass.GetTokenEventRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        GetTokenEventRequestKt.Dsl _create = companion._create(newBuilder);
        _create.setTokenId(byteString);
        String it = biddingSignals.getRvSignal();
        if (it != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            _create.setRewarded(ByteStringsKt.toByteStringUtf8(it));
        }
        String it2 = biddingSignals.getInterstitialSignal();
        if (it2 != null) {
            Intrinsics.checkNotNullExpressionValue(it2, "it");
            _create.setInterstitial(ByteStringsKt.toByteStringUtf8(it2));
        }
        String it3 = biddingSignals.getBannerSignal();
        if (it3 != null) {
            Intrinsics.checkNotNullExpressionValue(it3, "it");
            _create.setBanner(ByteStringsKt.toByteStringUtf8(it3));
        }
        return _create._build();
    }
}
