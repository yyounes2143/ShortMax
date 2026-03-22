package gatewayprotocol.v1;

import gatewayprotocol.v1.AdDataRefreshResponseOuterClass;
import gatewayprotocol.v1.AdPlayerConfigResponseOuterClass;
import gatewayprotocol.v1.AdResponseOuterClass;
import gatewayprotocol.v1.ErrorOuterClass;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.MutableDataOuterClass;
import gatewayprotocol.v1.PrivacyUpdateResponseOuterClass;
import gatewayprotocol.v1.UniversalResponseKt;
import gatewayprotocol.v1.UniversalResponseOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UniversalResponseKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUniversalResponseKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalResponseKt.kt\ngatewayprotocol/v1/UniversalResponseKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,390:1\n1#2:391\n*E\n"})
/* loaded from: classes7.dex */
public final class UniversalResponseKtKt {
    @NotNull
    /* renamed from: -initializeuniversalResponse  reason: not valid java name */
    public static final UniversalResponseOuterClass.UniversalResponse m4912initializeuniversalResponse(@NotNull Function1<? super UniversalResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        UniversalResponseKt.Dsl.Companion companion = UniversalResponseKt.Dsl.Companion;
        UniversalResponseOuterClass.UniversalResponse.Builder newBuilder = UniversalResponseOuterClass.UniversalResponse.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        UniversalResponseKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final UniversalResponseOuterClass.UniversalResponse copy(@NotNull UniversalResponseOuterClass.UniversalResponse universalResponse, @NotNull Function1<? super UniversalResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(universalResponse, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        UniversalResponseKt.Dsl.Companion companion = UniversalResponseKt.Dsl.Companion;
        UniversalResponseOuterClass.UniversalResponse.Builder builder = universalResponse.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        UniversalResponseKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final AdDataRefreshResponseOuterClass.AdDataRefreshResponse getAdDataRefreshResponseOrNull(@NotNull UniversalResponseOuterClass.UniversalResponse.PayloadOrBuilder payloadOrBuilder) {
        Intrinsics.checkNotNullParameter(payloadOrBuilder, "<this>");
        if (payloadOrBuilder.hasAdDataRefreshResponse()) {
            return payloadOrBuilder.getAdDataRefreshResponse();
        }
        return null;
    }

    @Nullable
    public static final AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse getAdPlayerConfigResponseOrNull(@NotNull UniversalResponseOuterClass.UniversalResponse.PayloadOrBuilder payloadOrBuilder) {
        Intrinsics.checkNotNullParameter(payloadOrBuilder, "<this>");
        if (payloadOrBuilder.hasAdPlayerConfigResponse()) {
            return payloadOrBuilder.getAdPlayerConfigResponse();
        }
        return null;
    }

    @Nullable
    public static final AdResponseOuterClass.AdResponse getAdResponseOrNull(@NotNull UniversalResponseOuterClass.UniversalResponse.PayloadOrBuilder payloadOrBuilder) {
        Intrinsics.checkNotNullParameter(payloadOrBuilder, "<this>");
        if (payloadOrBuilder.hasAdResponse()) {
            return payloadOrBuilder.getAdResponse();
        }
        return null;
    }

    @Nullable
    public static final ErrorOuterClass.Error getErrorOrNull(@NotNull UniversalResponseOuterClass.UniversalResponseOrBuilder universalResponseOrBuilder) {
        Intrinsics.checkNotNullParameter(universalResponseOrBuilder, "<this>");
        if (universalResponseOrBuilder.hasError()) {
            return universalResponseOrBuilder.getError();
        }
        return null;
    }

    @Nullable
    public static final InitializationResponseOuterClass.InitializationResponse getInitializationResponseOrNull(@NotNull UniversalResponseOuterClass.UniversalResponse.PayloadOrBuilder payloadOrBuilder) {
        Intrinsics.checkNotNullParameter(payloadOrBuilder, "<this>");
        if (payloadOrBuilder.hasInitializationResponse()) {
            return payloadOrBuilder.getInitializationResponse();
        }
        return null;
    }

    @Nullable
    public static final MutableDataOuterClass.MutableData getMutableDataOrNull(@NotNull UniversalResponseOuterClass.UniversalResponseOrBuilder universalResponseOrBuilder) {
        Intrinsics.checkNotNullParameter(universalResponseOrBuilder, "<this>");
        if (universalResponseOrBuilder.hasMutableData()) {
            return universalResponseOrBuilder.getMutableData();
        }
        return null;
    }

    @Nullable
    public static final UniversalResponseOuterClass.UniversalResponse.Payload getPayloadOrNull(@NotNull UniversalResponseOuterClass.UniversalResponseOrBuilder universalResponseOrBuilder) {
        Intrinsics.checkNotNullParameter(universalResponseOrBuilder, "<this>");
        if (universalResponseOrBuilder.hasPayload()) {
            return universalResponseOrBuilder.getPayload();
        }
        return null;
    }

    @Nullable
    public static final PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse getPrivacyUpdateResponseOrNull(@NotNull UniversalResponseOuterClass.UniversalResponse.PayloadOrBuilder payloadOrBuilder) {
        Intrinsics.checkNotNullParameter(payloadOrBuilder, "<this>");
        if (payloadOrBuilder.hasPrivacyUpdateResponse()) {
            return payloadOrBuilder.getPrivacyUpdateResponse();
        }
        return null;
    }

    @NotNull
    public static final UniversalResponseOuterClass.UniversalResponse.Payload copy(@NotNull UniversalResponseOuterClass.UniversalResponse.Payload payload, @NotNull Function1<? super UniversalResponseKt.PayloadKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(payload, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        UniversalResponseKt.PayloadKt.Dsl.Companion companion = UniversalResponseKt.PayloadKt.Dsl.Companion;
        UniversalResponseOuterClass.UniversalResponse.Payload.Builder builder = payload.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        UniversalResponseKt.PayloadKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
