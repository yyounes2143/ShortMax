package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.AdDataRefreshResponseOuterClass;
import gatewayprotocol.v1.ErrorOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdDataRefreshResponseKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdDataRefreshResponseKt {
    @NotNull
    public static final AdDataRefreshResponseKt INSTANCE = new AdDataRefreshResponseKt();

    /* compiled from: AdDataRefreshResponseKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final AdDataRefreshResponseOuterClass.AdDataRefreshResponse.Builder _builder;

        /* compiled from: AdDataRefreshResponseKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(AdDataRefreshResponseOuterClass.AdDataRefreshResponse.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(AdDataRefreshResponseOuterClass.AdDataRefreshResponse.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ AdDataRefreshResponseOuterClass.AdDataRefreshResponse _build() {
            AdDataRefreshResponseOuterClass.AdDataRefreshResponse build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearAdData() {
            this._builder.clearAdData();
        }

        public final void clearAdDataRefreshToken() {
            this._builder.clearAdDataRefreshToken();
        }

        public final void clearAdDataVersion() {
            this._builder.clearAdDataVersion();
        }

        public final void clearError() {
            this._builder.clearError();
        }

        public final void clearTrackingToken() {
            this._builder.clearTrackingToken();
        }

        @NotNull
        public final ByteString getAdData() {
            ByteString adData = this._builder.getAdData();
            Intrinsics.checkNotNullExpressionValue(adData, "_builder.getAdData()");
            return adData;
        }

        @NotNull
        public final ByteString getAdDataRefreshToken() {
            ByteString adDataRefreshToken = this._builder.getAdDataRefreshToken();
            Intrinsics.checkNotNullExpressionValue(adDataRefreshToken, "_builder.getAdDataRefreshToken()");
            return adDataRefreshToken;
        }

        public final int getAdDataVersion() {
            return this._builder.getAdDataVersion();
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
            return AdDataRefreshResponseKtKt.getErrorOrNull(dsl._builder);
        }

        @NotNull
        public final ByteString getTrackingToken() {
            ByteString trackingToken = this._builder.getTrackingToken();
            Intrinsics.checkNotNullExpressionValue(trackingToken, "_builder.getTrackingToken()");
            return trackingToken;
        }

        public final boolean hasError() {
            return this._builder.hasError();
        }

        public final void setAdData(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdData(value);
        }

        public final void setAdDataRefreshToken(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdDataRefreshToken(value);
        }

        public final void setAdDataVersion(int i10) {
            this._builder.setAdDataVersion(i10);
        }

        public final void setError(@NotNull ErrorOuterClass.Error value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setError(value);
        }

        public final void setTrackingToken(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTrackingToken(value);
        }

        private Dsl(AdDataRefreshResponseOuterClass.AdDataRefreshResponse.Builder builder) {
            this._builder = builder;
        }
    }

    private AdDataRefreshResponseKt() {
    }
}
