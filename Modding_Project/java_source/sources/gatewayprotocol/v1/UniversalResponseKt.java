package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.AdDataRefreshResponseOuterClass;
import gatewayprotocol.v1.AdPlayerConfigResponseOuterClass;
import gatewayprotocol.v1.AdResponseOuterClass;
import gatewayprotocol.v1.ErrorOuterClass;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.MutableDataOuterClass;
import gatewayprotocol.v1.PrivacyUpdateResponseOuterClass;
import gatewayprotocol.v1.UniversalResponseOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UniversalResponseKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUniversalResponseKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalResponseKt.kt\ngatewayprotocol/v1/UniversalResponseKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,390:1\n1#2:391\n*E\n"})
/* loaded from: classes7.dex */
public final class UniversalResponseKt {
    @NotNull
    public static final UniversalResponseKt INSTANCE = new UniversalResponseKt();

    /* compiled from: UniversalResponseKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final UniversalResponseOuterClass.UniversalResponse.Builder _builder;

        /* compiled from: UniversalResponseKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(UniversalResponseOuterClass.UniversalResponse.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(UniversalResponseOuterClass.UniversalResponse.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ UniversalResponseOuterClass.UniversalResponse _build() {
            UniversalResponseOuterClass.UniversalResponse build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearError() {
            this._builder.clearError();
        }

        public final void clearMutableData() {
            this._builder.clearMutableData();
        }

        public final void clearPayload() {
            this._builder.clearPayload();
        }

        @NotNull
        public final ErrorOuterClass.Error getError() {
            ErrorOuterClass.Error error = this._builder.getError();
            Intrinsics.checkNotNullExpressionValue(error, "_builder.getError()");
            return error;
        }

        @Nullable
        public final ErrorOuterClass.Error getErrorOrNull(@NotNull Dsl dsl) {
            Intrinsics.checkNotNullParameter(dsl, "<this>");
            return UniversalResponseKtKt.getErrorOrNull(dsl._builder);
        }

        @NotNull
        public final MutableDataOuterClass.MutableData getMutableData() {
            MutableDataOuterClass.MutableData mutableData = this._builder.getMutableData();
            Intrinsics.checkNotNullExpressionValue(mutableData, "_builder.getMutableData()");
            return mutableData;
        }

        @Nullable
        public final MutableDataOuterClass.MutableData getMutableDataOrNull(@NotNull Dsl dsl) {
            Intrinsics.checkNotNullParameter(dsl, "<this>");
            return UniversalResponseKtKt.getMutableDataOrNull(dsl._builder);
        }

        @NotNull
        public final UniversalResponseOuterClass.UniversalResponse.Payload getPayload() {
            UniversalResponseOuterClass.UniversalResponse.Payload payload = this._builder.getPayload();
            Intrinsics.checkNotNullExpressionValue(payload, "_builder.getPayload()");
            return payload;
        }

        public final boolean hasError() {
            return this._builder.hasError();
        }

        public final boolean hasMutableData() {
            return this._builder.hasMutableData();
        }

        public final boolean hasPayload() {
            return this._builder.hasPayload();
        }

        public final void setError(@NotNull ErrorOuterClass.Error value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setError(value);
        }

        public final void setMutableData(@NotNull MutableDataOuterClass.MutableData value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setMutableData(value);
        }

        public final void setPayload(@NotNull UniversalResponseOuterClass.UniversalResponse.Payload value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPayload(value);
        }

        private Dsl(UniversalResponseOuterClass.UniversalResponse.Builder builder) {
            this._builder = builder;
        }
    }

    /* compiled from: UniversalResponseKt.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class PayloadKt {
        @NotNull
        public static final PayloadKt INSTANCE = new PayloadKt();

        /* compiled from: UniversalResponseKt.kt */
        @Metadata
        @ProtoDslMarker
        /* loaded from: classes7.dex */
        public static final class Dsl {
            @NotNull
            public static final Companion Companion = new Companion(null);
            @NotNull
            private final UniversalResponseOuterClass.UniversalResponse.Payload.Builder _builder;

            /* compiled from: UniversalResponseKt.kt */
            @Metadata
            /* loaded from: classes7.dex */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final /* synthetic */ Dsl _create(UniversalResponseOuterClass.UniversalResponse.Payload.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }

                private Companion() {
                }
            }

            public /* synthetic */ Dsl(UniversalResponseOuterClass.UniversalResponse.Payload.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            public final /* synthetic */ UniversalResponseOuterClass.UniversalResponse.Payload _build() {
                UniversalResponseOuterClass.UniversalResponse.Payload build = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
                return build;
            }

            public final void clearAdDataRefreshResponse() {
                this._builder.clearAdDataRefreshResponse();
            }

            public final void clearAdPlayerConfigResponse() {
                this._builder.clearAdPlayerConfigResponse();
            }

            public final void clearAdResponse() {
                this._builder.clearAdResponse();
            }

            public final void clearInitializationResponse() {
                this._builder.clearInitializationResponse();
            }

            public final void clearPrivacyUpdateResponse() {
                this._builder.clearPrivacyUpdateResponse();
            }

            public final void clearValue() {
                this._builder.clearValue();
            }

            @NotNull
            public final AdDataRefreshResponseOuterClass.AdDataRefreshResponse getAdDataRefreshResponse() {
                AdDataRefreshResponseOuterClass.AdDataRefreshResponse adDataRefreshResponse = this._builder.getAdDataRefreshResponse();
                Intrinsics.checkNotNullExpressionValue(adDataRefreshResponse, "_builder.getAdDataRefreshResponse()");
                return adDataRefreshResponse;
            }

            @NotNull
            public final AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse getAdPlayerConfigResponse() {
                AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse adPlayerConfigResponse = this._builder.getAdPlayerConfigResponse();
                Intrinsics.checkNotNullExpressionValue(adPlayerConfigResponse, "_builder.getAdPlayerConfigResponse()");
                return adPlayerConfigResponse;
            }

            @NotNull
            public final AdResponseOuterClass.AdResponse getAdResponse() {
                AdResponseOuterClass.AdResponse adResponse = this._builder.getAdResponse();
                Intrinsics.checkNotNullExpressionValue(adResponse, "_builder.getAdResponse()");
                return adResponse;
            }

            @NotNull
            public final InitializationResponseOuterClass.InitializationResponse getInitializationResponse() {
                InitializationResponseOuterClass.InitializationResponse initializationResponse = this._builder.getInitializationResponse();
                Intrinsics.checkNotNullExpressionValue(initializationResponse, "_builder.getInitializationResponse()");
                return initializationResponse;
            }

            @NotNull
            public final PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse getPrivacyUpdateResponse() {
                PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse privacyUpdateResponse = this._builder.getPrivacyUpdateResponse();
                Intrinsics.checkNotNullExpressionValue(privacyUpdateResponse, "_builder.getPrivacyUpdateResponse()");
                return privacyUpdateResponse;
            }

            @NotNull
            public final UniversalResponseOuterClass.UniversalResponse.Payload.ValueCase getValueCase() {
                UniversalResponseOuterClass.UniversalResponse.Payload.ValueCase valueCase = this._builder.getValueCase();
                Intrinsics.checkNotNullExpressionValue(valueCase, "_builder.getValueCase()");
                return valueCase;
            }

            public final boolean hasAdDataRefreshResponse() {
                return this._builder.hasAdDataRefreshResponse();
            }

            public final boolean hasAdPlayerConfigResponse() {
                return this._builder.hasAdPlayerConfigResponse();
            }

            public final boolean hasAdResponse() {
                return this._builder.hasAdResponse();
            }

            public final boolean hasInitializationResponse() {
                return this._builder.hasInitializationResponse();
            }

            public final boolean hasPrivacyUpdateResponse() {
                return this._builder.hasPrivacyUpdateResponse();
            }

            public final void setAdDataRefreshResponse(@NotNull AdDataRefreshResponseOuterClass.AdDataRefreshResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdDataRefreshResponse(value);
            }

            public final void setAdPlayerConfigResponse(@NotNull AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdPlayerConfigResponse(value);
            }

            public final void setAdResponse(@NotNull AdResponseOuterClass.AdResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdResponse(value);
            }

            public final void setInitializationResponse(@NotNull InitializationResponseOuterClass.InitializationResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setInitializationResponse(value);
            }

            public final void setPrivacyUpdateResponse(@NotNull PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setPrivacyUpdateResponse(value);
            }

            private Dsl(UniversalResponseOuterClass.UniversalResponse.Payload.Builder builder) {
                this._builder = builder;
            }
        }

        private PayloadKt() {
        }
    }

    private UniversalResponseKt() {
    }

    @NotNull
    /* renamed from: -initializepayload  reason: not valid java name */
    public final UniversalResponseOuterClass.UniversalResponse.Payload m4911initializepayload(@NotNull Function1<? super PayloadKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        PayloadKt.Dsl.Companion companion = PayloadKt.Dsl.Companion;
        UniversalResponseOuterClass.UniversalResponse.Payload.Builder newBuilder = UniversalResponseOuterClass.UniversalResponse.Payload.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        PayloadKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }
}
