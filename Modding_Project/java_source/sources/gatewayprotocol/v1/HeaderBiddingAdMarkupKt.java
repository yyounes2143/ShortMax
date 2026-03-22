package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.HeaderBiddingAdMarkupOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HeaderBiddingAdMarkupKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class HeaderBiddingAdMarkupKt {
    @NotNull
    public static final HeaderBiddingAdMarkupKt INSTANCE = new HeaderBiddingAdMarkupKt();

    /* compiled from: HeaderBiddingAdMarkupKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup.Builder _builder;

        /* compiled from: HeaderBiddingAdMarkupKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup _build() {
            HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearAdData() {
            this._builder.clearAdData();
        }

        public final void clearAdDataVersion() {
            this._builder.clearAdDataVersion();
        }

        public final void clearConfigurationToken() {
            this._builder.clearConfigurationToken();
        }

        @NotNull
        public final ByteString getAdData() {
            ByteString adData = this._builder.getAdData();
            Intrinsics.checkNotNullExpressionValue(adData, "_builder.getAdData()");
            return adData;
        }

        public final int getAdDataVersion() {
            return this._builder.getAdDataVersion();
        }

        @NotNull
        public final ByteString getConfigurationToken() {
            ByteString configurationToken = this._builder.getConfigurationToken();
            Intrinsics.checkNotNullExpressionValue(configurationToken, "_builder.getConfigurationToken()");
            return configurationToken;
        }

        public final void setAdData(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdData(value);
        }

        public final void setAdDataVersion(int i10) {
            this._builder.setAdDataVersion(i10);
        }

        public final void setConfigurationToken(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setConfigurationToken(value);
        }

        private Dsl(HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup.Builder builder) {
            this._builder = builder;
        }
    }

    private HeaderBiddingAdMarkupKt() {
    }
}
