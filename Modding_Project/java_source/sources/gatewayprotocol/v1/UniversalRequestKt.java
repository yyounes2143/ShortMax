package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.Timestamp;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.AdDataRefreshRequestOuterClass;
import gatewayprotocol.v1.AdPlayerConfigRequestOuterClass;
import gatewayprotocol.v1.AdRequestOuterClass;
import gatewayprotocol.v1.DeveloperConsentOuterClass;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.GetTokenEventRequestOuterClass;
import gatewayprotocol.v1.InitializationCompletedEventRequestOuterClass;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import gatewayprotocol.v1.PiiOuterClass;
import gatewayprotocol.v1.PrivacyUpdateRequestOuterClass;
import gatewayprotocol.v1.TestDataOuterClass;
import gatewayprotocol.v1.TimestampsOuterClass;
import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UniversalRequestKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUniversalRequestKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,939:1\n1#2:940\n*E\n"})
/* loaded from: classes7.dex */
public final class UniversalRequestKt {
    @NotNull
    public static final UniversalRequestKt INSTANCE = new UniversalRequestKt();

    /* compiled from: UniversalRequestKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final UniversalRequestOuterClass.UniversalRequest.Builder _builder;

        /* compiled from: UniversalRequestKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(UniversalRequestOuterClass.UniversalRequest.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(UniversalRequestOuterClass.UniversalRequest.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ UniversalRequestOuterClass.UniversalRequest _build() {
            UniversalRequestOuterClass.UniversalRequest build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearPayload() {
            this._builder.clearPayload();
        }

        public final void clearSharedData() {
            this._builder.clearSharedData();
        }

        @NotNull
        public final UniversalRequestOuterClass.UniversalRequest.Payload getPayload() {
            UniversalRequestOuterClass.UniversalRequest.Payload payload = this._builder.getPayload();
            Intrinsics.checkNotNullExpressionValue(payload, "_builder.getPayload()");
            return payload;
        }

        @NotNull
        public final UniversalRequestOuterClass.UniversalRequest.SharedData getSharedData() {
            UniversalRequestOuterClass.UniversalRequest.SharedData sharedData = this._builder.getSharedData();
            Intrinsics.checkNotNullExpressionValue(sharedData, "_builder.getSharedData()");
            return sharedData;
        }

        public final boolean hasPayload() {
            return this._builder.hasPayload();
        }

        public final boolean hasSharedData() {
            return this._builder.hasSharedData();
        }

        public final void setPayload(@NotNull UniversalRequestOuterClass.UniversalRequest.Payload value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPayload(value);
        }

        public final void setSharedData(@NotNull UniversalRequestOuterClass.UniversalRequest.SharedData value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSharedData(value);
        }

        private Dsl(UniversalRequestOuterClass.UniversalRequest.Builder builder) {
            this._builder = builder;
        }
    }

    /* compiled from: UniversalRequestKt.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class PayloadKt {
        @NotNull
        public static final PayloadKt INSTANCE = new PayloadKt();

        /* compiled from: UniversalRequestKt.kt */
        @Metadata
        @ProtoDslMarker
        /* loaded from: classes7.dex */
        public static final class Dsl {
            @NotNull
            public static final Companion Companion = new Companion(null);
            @NotNull
            private final UniversalRequestOuterClass.UniversalRequest.Payload.Builder _builder;

            /* compiled from: UniversalRequestKt.kt */
            @Metadata
            /* loaded from: classes7.dex */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final /* synthetic */ Dsl _create(UniversalRequestOuterClass.UniversalRequest.Payload.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }

                private Companion() {
                }
            }

            public /* synthetic */ Dsl(UniversalRequestOuterClass.UniversalRequest.Payload.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            public final /* synthetic */ UniversalRequestOuterClass.UniversalRequest.Payload _build() {
                UniversalRequestOuterClass.UniversalRequest.Payload build = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
                return build;
            }

            public final void clearAdDataRefreshRequest() {
                this._builder.clearAdDataRefreshRequest();
            }

            public final void clearAdPlayerConfigRequest() {
                this._builder.clearAdPlayerConfigRequest();
            }

            public final void clearAdRequest() {
                this._builder.clearAdRequest();
            }

            public final void clearDiagnosticEventRequest() {
                this._builder.clearDiagnosticEventRequest();
            }

            public final void clearGetTokenEventRequest() {
                this._builder.clearGetTokenEventRequest();
            }

            public final void clearInitializationCompletedEventRequest() {
                this._builder.clearInitializationCompletedEventRequest();
            }

            public final void clearInitializationRequest() {
                this._builder.clearInitializationRequest();
            }

            public final void clearOperativeEvent() {
                this._builder.clearOperativeEvent();
            }

            public final void clearPrivacyUpdateRequest() {
                this._builder.clearPrivacyUpdateRequest();
            }

            public final void clearTransactionEventRequest() {
                this._builder.clearTransactionEventRequest();
            }

            public final void clearValue() {
                this._builder.clearValue();
            }

            @NotNull
            public final AdDataRefreshRequestOuterClass.AdDataRefreshRequest getAdDataRefreshRequest() {
                AdDataRefreshRequestOuterClass.AdDataRefreshRequest adDataRefreshRequest = this._builder.getAdDataRefreshRequest();
                Intrinsics.checkNotNullExpressionValue(adDataRefreshRequest, "_builder.getAdDataRefreshRequest()");
                return adDataRefreshRequest;
            }

            @NotNull
            public final AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest getAdPlayerConfigRequest() {
                AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest adPlayerConfigRequest = this._builder.getAdPlayerConfigRequest();
                Intrinsics.checkNotNullExpressionValue(adPlayerConfigRequest, "_builder.getAdPlayerConfigRequest()");
                return adPlayerConfigRequest;
            }

            @NotNull
            public final AdRequestOuterClass.AdRequest getAdRequest() {
                AdRequestOuterClass.AdRequest adRequest = this._builder.getAdRequest();
                Intrinsics.checkNotNullExpressionValue(adRequest, "_builder.getAdRequest()");
                return adRequest;
            }

            @NotNull
            public final DiagnosticEventRequestOuterClass.DiagnosticEventRequest getDiagnosticEventRequest() {
                DiagnosticEventRequestOuterClass.DiagnosticEventRequest diagnosticEventRequest = this._builder.getDiagnosticEventRequest();
                Intrinsics.checkNotNullExpressionValue(diagnosticEventRequest, "_builder.getDiagnosticEventRequest()");
                return diagnosticEventRequest;
            }

            @NotNull
            public final GetTokenEventRequestOuterClass.GetTokenEventRequest getGetTokenEventRequest() {
                GetTokenEventRequestOuterClass.GetTokenEventRequest getTokenEventRequest = this._builder.getGetTokenEventRequest();
                Intrinsics.checkNotNullExpressionValue(getTokenEventRequest, "_builder.getGetTokenEventRequest()");
                return getTokenEventRequest;
            }

            @NotNull
            public final InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest getInitializationCompletedEventRequest() {
                InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest initializationCompletedEventRequest = this._builder.getInitializationCompletedEventRequest();
                Intrinsics.checkNotNullExpressionValue(initializationCompletedEventRequest, "_builder.getInitializationCompletedEventRequest()");
                return initializationCompletedEventRequest;
            }

            @NotNull
            public final InitializationRequestOuterClass.InitializationRequest getInitializationRequest() {
                InitializationRequestOuterClass.InitializationRequest initializationRequest = this._builder.getInitializationRequest();
                Intrinsics.checkNotNullExpressionValue(initializationRequest, "_builder.getInitializationRequest()");
                return initializationRequest;
            }

            @NotNull
            public final OperativeEventRequestOuterClass.OperativeEventRequest getOperativeEvent() {
                OperativeEventRequestOuterClass.OperativeEventRequest operativeEvent = this._builder.getOperativeEvent();
                Intrinsics.checkNotNullExpressionValue(operativeEvent, "_builder.getOperativeEvent()");
                return operativeEvent;
            }

            @NotNull
            public final PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest getPrivacyUpdateRequest() {
                PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest privacyUpdateRequest = this._builder.getPrivacyUpdateRequest();
                Intrinsics.checkNotNullExpressionValue(privacyUpdateRequest, "_builder.getPrivacyUpdateRequest()");
                return privacyUpdateRequest;
            }

            @NotNull
            public final TransactionEventRequestOuterClass.TransactionEventRequest getTransactionEventRequest() {
                TransactionEventRequestOuterClass.TransactionEventRequest transactionEventRequest = this._builder.getTransactionEventRequest();
                Intrinsics.checkNotNullExpressionValue(transactionEventRequest, "_builder.getTransactionEventRequest()");
                return transactionEventRequest;
            }

            @NotNull
            public final UniversalRequestOuterClass.UniversalRequest.Payload.ValueCase getValueCase() {
                UniversalRequestOuterClass.UniversalRequest.Payload.ValueCase valueCase = this._builder.getValueCase();
                Intrinsics.checkNotNullExpressionValue(valueCase, "_builder.getValueCase()");
                return valueCase;
            }

            public final boolean hasAdDataRefreshRequest() {
                return this._builder.hasAdDataRefreshRequest();
            }

            public final boolean hasAdPlayerConfigRequest() {
                return this._builder.hasAdPlayerConfigRequest();
            }

            public final boolean hasAdRequest() {
                return this._builder.hasAdRequest();
            }

            public final boolean hasDiagnosticEventRequest() {
                return this._builder.hasDiagnosticEventRequest();
            }

            public final boolean hasGetTokenEventRequest() {
                return this._builder.hasGetTokenEventRequest();
            }

            public final boolean hasInitializationCompletedEventRequest() {
                return this._builder.hasInitializationCompletedEventRequest();
            }

            public final boolean hasInitializationRequest() {
                return this._builder.hasInitializationRequest();
            }

            public final boolean hasOperativeEvent() {
                return this._builder.hasOperativeEvent();
            }

            public final boolean hasPrivacyUpdateRequest() {
                return this._builder.hasPrivacyUpdateRequest();
            }

            public final boolean hasTransactionEventRequest() {
                return this._builder.hasTransactionEventRequest();
            }

            public final void setAdDataRefreshRequest(@NotNull AdDataRefreshRequestOuterClass.AdDataRefreshRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdDataRefreshRequest(value);
            }

            public final void setAdPlayerConfigRequest(@NotNull AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdPlayerConfigRequest(value);
            }

            public final void setAdRequest(@NotNull AdRequestOuterClass.AdRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdRequest(value);
            }

            public final void setDiagnosticEventRequest(@NotNull DiagnosticEventRequestOuterClass.DiagnosticEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setDiagnosticEventRequest(value);
            }

            public final void setGetTokenEventRequest(@NotNull GetTokenEventRequestOuterClass.GetTokenEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setGetTokenEventRequest(value);
            }

            public final void setInitializationCompletedEventRequest(@NotNull InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setInitializationCompletedEventRequest(value);
            }

            public final void setInitializationRequest(@NotNull InitializationRequestOuterClass.InitializationRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setInitializationRequest(value);
            }

            public final void setOperativeEvent(@NotNull OperativeEventRequestOuterClass.OperativeEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setOperativeEvent(value);
            }

            public final void setPrivacyUpdateRequest(@NotNull PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setPrivacyUpdateRequest(value);
            }

            public final void setTransactionEventRequest(@NotNull TransactionEventRequestOuterClass.TransactionEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setTransactionEventRequest(value);
            }

            private Dsl(UniversalRequestOuterClass.UniversalRequest.Payload.Builder builder) {
                this._builder = builder;
            }
        }

        private PayloadKt() {
        }
    }

    /* compiled from: UniversalRequestKt.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class SharedDataKt {
        @NotNull
        public static final SharedDataKt INSTANCE = new SharedDataKt();

        /* compiled from: UniversalRequestKt.kt */
        @Metadata
        @ProtoDslMarker
        /* loaded from: classes7.dex */
        public static final class Dsl {
            @NotNull
            public static final Companion Companion = new Companion(null);
            @NotNull
            private final UniversalRequestOuterClass.UniversalRequest.SharedData.Builder _builder;

            /* compiled from: UniversalRequestKt.kt */
            @Metadata
            /* loaded from: classes7.dex */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final /* synthetic */ Dsl _create(UniversalRequestOuterClass.UniversalRequest.SharedData.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }

                private Companion() {
                }
            }

            public /* synthetic */ Dsl(UniversalRequestOuterClass.UniversalRequest.SharedData.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            public final /* synthetic */ UniversalRequestOuterClass.UniversalRequest.SharedData _build() {
                UniversalRequestOuterClass.UniversalRequest.SharedData build = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
                return build;
            }

            public final void clearAppStartTime() {
                this._builder.clearAppStartTime();
            }

            public final void clearCurrentState() {
                this._builder.clearCurrentState();
            }

            public final void clearDeveloperConsent() {
                this._builder.clearDeveloperConsent();
            }

            public final void clearLimitedSessionToken() {
                this._builder.clearLimitedSessionToken();
            }

            public final void clearPii() {
                this._builder.clearPii();
            }

            public final void clearSdkStartTime() {
                this._builder.clearSdkStartTime();
            }

            public final void clearSessionToken() {
                this._builder.clearSessionToken();
            }

            public final void clearTestData() {
                this._builder.clearTestData();
            }

            public final void clearTimestamps() {
                this._builder.clearTimestamps();
            }

            public final void clearWebviewVersion() {
                this._builder.clearWebviewVersion();
            }

            @NotNull
            public final Timestamp getAppStartTime() {
                Timestamp appStartTime = this._builder.getAppStartTime();
                Intrinsics.checkNotNullExpressionValue(appStartTime, "_builder.getAppStartTime()");
                return appStartTime;
            }

            @NotNull
            public final ByteString getCurrentState() {
                ByteString currentState = this._builder.getCurrentState();
                Intrinsics.checkNotNullExpressionValue(currentState, "_builder.getCurrentState()");
                return currentState;
            }

            @NotNull
            public final DeveloperConsentOuterClass.DeveloperConsent getDeveloperConsent() {
                DeveloperConsentOuterClass.DeveloperConsent developerConsent = this._builder.getDeveloperConsent();
                Intrinsics.checkNotNullExpressionValue(developerConsent, "_builder.getDeveloperConsent()");
                return developerConsent;
            }

            @Nullable
            public final DeveloperConsentOuterClass.DeveloperConsent getDeveloperConsentOrNull(@NotNull Dsl dsl) {
                Intrinsics.checkNotNullParameter(dsl, "<this>");
                return UniversalRequestKtKt.getDeveloperConsentOrNull(dsl._builder);
            }

            @NotNull
            public final UniversalRequestOuterClass.LimitedSessionToken getLimitedSessionToken() {
                UniversalRequestOuterClass.LimitedSessionToken limitedSessionToken = this._builder.getLimitedSessionToken();
                Intrinsics.checkNotNullExpressionValue(limitedSessionToken, "_builder.getLimitedSessionToken()");
                return limitedSessionToken;
            }

            @Nullable
            public final UniversalRequestOuterClass.LimitedSessionToken getLimitedSessionTokenOrNull(@NotNull Dsl dsl) {
                Intrinsics.checkNotNullParameter(dsl, "<this>");
                return UniversalRequestKtKt.getLimitedSessionTokenOrNull(dsl._builder);
            }

            @NotNull
            public final PiiOuterClass.Pii getPii() {
                PiiOuterClass.Pii pii = this._builder.getPii();
                Intrinsics.checkNotNullExpressionValue(pii, "_builder.getPii()");
                return pii;
            }

            @Nullable
            public final PiiOuterClass.Pii getPiiOrNull(@NotNull Dsl dsl) {
                Intrinsics.checkNotNullParameter(dsl, "<this>");
                return UniversalRequestKtKt.getPiiOrNull(dsl._builder);
            }

            @NotNull
            public final Timestamp getSdkStartTime() {
                Timestamp sdkStartTime = this._builder.getSdkStartTime();
                Intrinsics.checkNotNullExpressionValue(sdkStartTime, "_builder.getSdkStartTime()");
                return sdkStartTime;
            }

            @NotNull
            public final ByteString getSessionToken() {
                ByteString sessionToken = this._builder.getSessionToken();
                Intrinsics.checkNotNullExpressionValue(sessionToken, "_builder.getSessionToken()");
                return sessionToken;
            }

            @NotNull
            public final TestDataOuterClass.TestData getTestData() {
                TestDataOuterClass.TestData testData = this._builder.getTestData();
                Intrinsics.checkNotNullExpressionValue(testData, "_builder.getTestData()");
                return testData;
            }

            @Nullable
            public final TestDataOuterClass.TestData getTestDataOrNull(@NotNull Dsl dsl) {
                Intrinsics.checkNotNullParameter(dsl, "<this>");
                return UniversalRequestKtKt.getTestDataOrNull(dsl._builder);
            }

            @NotNull
            public final TimestampsOuterClass.Timestamps getTimestamps() {
                TimestampsOuterClass.Timestamps timestamps = this._builder.getTimestamps();
                Intrinsics.checkNotNullExpressionValue(timestamps, "_builder.getTimestamps()");
                return timestamps;
            }

            public final int getWebviewVersion() {
                return this._builder.getWebviewVersion();
            }

            public final boolean hasAppStartTime() {
                return this._builder.hasAppStartTime();
            }

            public final boolean hasCurrentState() {
                return this._builder.hasCurrentState();
            }

            public final boolean hasDeveloperConsent() {
                return this._builder.hasDeveloperConsent();
            }

            public final boolean hasLimitedSessionToken() {
                return this._builder.hasLimitedSessionToken();
            }

            public final boolean hasPii() {
                return this._builder.hasPii();
            }

            public final boolean hasSdkStartTime() {
                return this._builder.hasSdkStartTime();
            }

            public final boolean hasSessionToken() {
                return this._builder.hasSessionToken();
            }

            public final boolean hasTestData() {
                return this._builder.hasTestData();
            }

            public final boolean hasTimestamps() {
                return this._builder.hasTimestamps();
            }

            public final boolean hasWebviewVersion() {
                return this._builder.hasWebviewVersion();
            }

            public final void setAppStartTime(@NotNull Timestamp value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAppStartTime(value);
            }

            public final void setCurrentState(@NotNull ByteString value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setCurrentState(value);
            }

            public final void setDeveloperConsent(@NotNull DeveloperConsentOuterClass.DeveloperConsent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setDeveloperConsent(value);
            }

            public final void setLimitedSessionToken(@NotNull UniversalRequestOuterClass.LimitedSessionToken value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setLimitedSessionToken(value);
            }

            public final void setPii(@NotNull PiiOuterClass.Pii value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setPii(value);
            }

            public final void setSdkStartTime(@NotNull Timestamp value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setSdkStartTime(value);
            }

            public final void setSessionToken(@NotNull ByteString value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setSessionToken(value);
            }

            public final void setTestData(@NotNull TestDataOuterClass.TestData value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setTestData(value);
            }

            public final void setTimestamps(@NotNull TimestampsOuterClass.Timestamps value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setTimestamps(value);
            }

            public final void setWebviewVersion(int i10) {
                this._builder.setWebviewVersion(i10);
            }

            private Dsl(UniversalRequestOuterClass.UniversalRequest.SharedData.Builder builder) {
                this._builder = builder;
            }
        }

        private SharedDataKt() {
        }
    }

    private UniversalRequestKt() {
    }

    @NotNull
    /* renamed from: -initializepayload  reason: not valid java name */
    public final UniversalRequestOuterClass.UniversalRequest.Payload m4908initializepayload(@NotNull Function1<? super PayloadKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        PayloadKt.Dsl.Companion companion = PayloadKt.Dsl.Companion;
        UniversalRequestOuterClass.UniversalRequest.Payload.Builder newBuilder = UniversalRequestOuterClass.UniversalRequest.Payload.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        PayloadKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    /* renamed from: -initializesharedData  reason: not valid java name */
    public final UniversalRequestOuterClass.UniversalRequest.SharedData m4909initializesharedData(@NotNull Function1<? super SharedDataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        SharedDataKt.Dsl.Companion companion = SharedDataKt.Dsl.Companion;
        UniversalRequestOuterClass.UniversalRequest.SharedData.Builder newBuilder = UniversalRequestOuterClass.UniversalRequest.SharedData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        SharedDataKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }
}
