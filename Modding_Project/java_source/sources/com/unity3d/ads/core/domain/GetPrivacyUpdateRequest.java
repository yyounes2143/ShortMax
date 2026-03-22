package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import gatewayprotocol.v1.PrivacyUpdateRequestKt;
import gatewayprotocol.v1.PrivacyUpdateRequestOuterClass;
import gatewayprotocol.v1.UniversalRequestKt;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: GetPrivacyUpdateRequest.kt */
@Metadata
@SourceDebugExtension({"SMAP\nGetPrivacyUpdateRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetPrivacyUpdateRequest.kt\ncom/unity3d/ads/core/domain/GetPrivacyUpdateRequest\n+ 2 PrivacyUpdateRequestKt.kt\ngatewayprotocol/v1/PrivacyUpdateRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n*L\n1#1,28:1\n10#2:29\n1#3:30\n1#3:32\n484#4:31\n*S KotlinDebug\n*F\n+ 1 GetPrivacyUpdateRequest.kt\ncom/unity3d/ads/core/domain/GetPrivacyUpdateRequest\n*L\n17#1:29\n17#1:30\n22#1:32\n22#1:31\n*E\n"})
/* loaded from: classes7.dex */
public final class GetPrivacyUpdateRequest {
    @NotNull
    private final GetUniversalRequestForPayLoad getUniversalRequestForPayLoad;

    public GetPrivacyUpdateRequest(@NotNull GetUniversalRequestForPayLoad getUniversalRequestForPayLoad) {
        Intrinsics.checkNotNullParameter(getUniversalRequestForPayLoad, "getUniversalRequestForPayLoad");
        this.getUniversalRequestForPayLoad = getUniversalRequestForPayLoad;
    }

    @Nullable
    public final Object invoke(int i10, @NotNull ByteString byteString, @NotNull c<? super UniversalRequestOuterClass.UniversalRequest> cVar) {
        PrivacyUpdateRequestKt.Dsl.Companion companion = PrivacyUpdateRequestKt.Dsl.Companion;
        PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest.Builder newBuilder = PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        PrivacyUpdateRequestKt.Dsl _create = companion._create(newBuilder);
        _create.setVersion(i10);
        _create.setContent(byteString);
        PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest _build = _create._build();
        UniversalRequestKt universalRequestKt = UniversalRequestKt.INSTANCE;
        UniversalRequestKt.PayloadKt.Dsl.Companion companion2 = UniversalRequestKt.PayloadKt.Dsl.Companion;
        UniversalRequestOuterClass.UniversalRequest.Payload.Builder newBuilder2 = UniversalRequestOuterClass.UniversalRequest.Payload.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder2, "newBuilder()");
        UniversalRequestKt.PayloadKt.Dsl _create2 = companion2._create(newBuilder2);
        _create2.setPrivacyUpdateRequest(_build);
        return this.getUniversalRequestForPayLoad.invoke(_create2._build(), cVar);
    }
}
