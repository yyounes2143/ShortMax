package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import gatewayprotocol.v1.AdPlayerConfigRequestKt;
import gatewayprotocol.v1.AdPlayerConfigRequestOuterClass;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.UniversalRequestKt;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidGetAdPlayerConfigRequest.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidGetAdPlayerConfigRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetAdPlayerConfigRequest.kt\ncom/unity3d/ads/core/domain/AndroidGetAdPlayerConfigRequest\n+ 2 AdPlayerConfigRequestKt.kt\ngatewayprotocol/v1/AdPlayerConfigRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n*L\n1#1,30:1\n10#2:31\n1#3:32\n1#3:33\n1#3:35\n484#4:34\n*S KotlinDebug\n*F\n+ 1 AndroidGetAdPlayerConfigRequest.kt\ncom/unity3d/ads/core/domain/AndroidGetAdPlayerConfigRequest\n*L\n18#1:31\n18#1:32\n25#1:35\n25#1:34\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidGetAdPlayerConfigRequest implements GetAdPlayerConfigRequest {
    @NotNull
    private final GetUniversalRequestForPayLoad getUniversalRequestForPayLoad;

    public AndroidGetAdPlayerConfigRequest(@NotNull GetUniversalRequestForPayLoad getUniversalRequestForPayLoad) {
        Intrinsics.checkNotNullParameter(getUniversalRequestForPayLoad, "getUniversalRequestForPayLoad");
        this.getUniversalRequestForPayLoad = getUniversalRequestForPayLoad;
    }

    @Override // com.unity3d.ads.core.domain.GetAdPlayerConfigRequest
    @Nullable
    public Object invoke(@NotNull String str, @NotNull ByteString byteString, @NotNull ByteString byteString2, @Nullable InitializationResponseOuterClass.AdFormat adFormat, @NotNull c<? super UniversalRequestOuterClass.UniversalRequest> cVar) {
        AdPlayerConfigRequestKt.Dsl.Companion companion = AdPlayerConfigRequestKt.Dsl.Companion;
        AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest.Builder newBuilder = AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        AdPlayerConfigRequestKt.Dsl _create = companion._create(newBuilder);
        _create.setConfigurationToken(byteString2);
        _create.setPlacementId(str);
        _create.setImpressionOpportunityId(byteString);
        if (adFormat != null) {
            _create.setAdFormat(adFormat);
        }
        AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest _build = _create._build();
        UniversalRequestKt universalRequestKt = UniversalRequestKt.INSTANCE;
        UniversalRequestKt.PayloadKt.Dsl.Companion companion2 = UniversalRequestKt.PayloadKt.Dsl.Companion;
        UniversalRequestOuterClass.UniversalRequest.Payload.Builder newBuilder2 = UniversalRequestOuterClass.UniversalRequest.Payload.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder2, "newBuilder()");
        UniversalRequestKt.PayloadKt.Dsl _create2 = companion2._create(newBuilder2);
        _create2.setAdPlayerConfigRequest(_build);
        return this.getUniversalRequestForPayLoad.invoke(_create2._build(), cVar);
    }
}
