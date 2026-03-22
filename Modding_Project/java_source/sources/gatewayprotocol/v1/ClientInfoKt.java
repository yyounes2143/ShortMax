package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.ClientInfoOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ClientInfoKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ClientInfoKt {
    @NotNull
    public static final ClientInfoKt INSTANCE = new ClientInfoKt();

    /* compiled from: ClientInfoKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final ClientInfoOuterClass.ClientInfo.Builder _builder;

        /* compiled from: ClientInfoKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(ClientInfoOuterClass.ClientInfo.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(ClientInfoOuterClass.ClientInfo.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ ClientInfoOuterClass.ClientInfo _build() {
            ClientInfoOuterClass.ClientInfo build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearCustomMediationName() {
            this._builder.clearCustomMediationName();
        }

        public final void clearGameId() {
            this._builder.clearGameId();
        }

        public final void clearIsFidAvailable() {
            this._builder.clearIsFidAvailable();
        }

        public final void clearMediationProvider() {
            this._builder.clearMediationProvider();
        }

        public final void clearMediationVersion() {
            this._builder.clearMediationVersion();
        }

        public final void clearOfferwallVersion() {
            this._builder.clearOfferwallVersion();
        }

        public final void clearOmidPartnerVersion() {
            this._builder.clearOmidPartnerVersion();
        }

        public final void clearOmidVersion() {
            this._builder.clearOmidVersion();
        }

        public final void clearPlatform() {
            this._builder.clearPlatform();
        }

        public final void clearScarVersionName() {
            this._builder.clearScarVersionName();
        }

        public final void clearSdkDevelopmentPlatform() {
            this._builder.clearSdkDevelopmentPlatform();
        }

        public final void clearSdkVersion() {
            this._builder.clearSdkVersion();
        }

        public final void clearSdkVersionName() {
            this._builder.clearSdkVersionName();
        }

        public final void clearTest() {
            this._builder.clearTest();
        }

        @NotNull
        public final String getCustomMediationName() {
            String customMediationName = this._builder.getCustomMediationName();
            Intrinsics.checkNotNullExpressionValue(customMediationName, "_builder.getCustomMediationName()");
            return customMediationName;
        }

        @NotNull
        public final String getGameId() {
            String gameId = this._builder.getGameId();
            Intrinsics.checkNotNullExpressionValue(gameId, "_builder.getGameId()");
            return gameId;
        }

        public final boolean getIsFidAvailable() {
            return this._builder.getIsFidAvailable();
        }

        @NotNull
        public final ClientInfoOuterClass.MediationProvider getMediationProvider() {
            ClientInfoOuterClass.MediationProvider mediationProvider = this._builder.getMediationProvider();
            Intrinsics.checkNotNullExpressionValue(mediationProvider, "_builder.getMediationProvider()");
            return mediationProvider;
        }

        public final int getMediationProviderValue() {
            return this._builder.getMediationProviderValue();
        }

        @NotNull
        public final String getMediationVersion() {
            String mediationVersion = this._builder.getMediationVersion();
            Intrinsics.checkNotNullExpressionValue(mediationVersion, "_builder.getMediationVersion()");
            return mediationVersion;
        }

        @NotNull
        public final String getOfferwallVersion() {
            String offerwallVersion = this._builder.getOfferwallVersion();
            Intrinsics.checkNotNullExpressionValue(offerwallVersion, "_builder.getOfferwallVersion()");
            return offerwallVersion;
        }

        @NotNull
        public final String getOmidPartnerVersion() {
            String omidPartnerVersion = this._builder.getOmidPartnerVersion();
            Intrinsics.checkNotNullExpressionValue(omidPartnerVersion, "_builder.getOmidPartnerVersion()");
            return omidPartnerVersion;
        }

        @NotNull
        public final String getOmidVersion() {
            String omidVersion = this._builder.getOmidVersion();
            Intrinsics.checkNotNullExpressionValue(omidVersion, "_builder.getOmidVersion()");
            return omidVersion;
        }

        @NotNull
        public final ClientInfoOuterClass.Platform getPlatform() {
            ClientInfoOuterClass.Platform platform = this._builder.getPlatform();
            Intrinsics.checkNotNullExpressionValue(platform, "_builder.getPlatform()");
            return platform;
        }

        public final int getPlatformValue() {
            return this._builder.getPlatformValue();
        }

        @NotNull
        public final String getScarVersionName() {
            String scarVersionName = this._builder.getScarVersionName();
            Intrinsics.checkNotNullExpressionValue(scarVersionName, "_builder.getScarVersionName()");
            return scarVersionName;
        }

        @NotNull
        public final String getSdkDevelopmentPlatform() {
            String sdkDevelopmentPlatform = this._builder.getSdkDevelopmentPlatform();
            Intrinsics.checkNotNullExpressionValue(sdkDevelopmentPlatform, "_builder.getSdkDevelopmentPlatform()");
            return sdkDevelopmentPlatform;
        }

        public final int getSdkVersion() {
            return this._builder.getSdkVersion();
        }

        @NotNull
        public final String getSdkVersionName() {
            String sdkVersionName = this._builder.getSdkVersionName();
            Intrinsics.checkNotNullExpressionValue(sdkVersionName, "_builder.getSdkVersionName()");
            return sdkVersionName;
        }

        public final boolean getTest() {
            return this._builder.getTest();
        }

        public final boolean hasCustomMediationName() {
            return this._builder.hasCustomMediationName();
        }

        public final boolean hasIsFidAvailable() {
            return this._builder.hasIsFidAvailable();
        }

        public final boolean hasMediationVersion() {
            return this._builder.hasMediationVersion();
        }

        public final boolean hasOfferwallVersion() {
            return this._builder.hasOfferwallVersion();
        }

        public final boolean hasOmidPartnerVersion() {
            return this._builder.hasOmidPartnerVersion();
        }

        public final boolean hasOmidVersion() {
            return this._builder.hasOmidVersion();
        }

        public final boolean hasScarVersionName() {
            return this._builder.hasScarVersionName();
        }

        public final boolean hasSdkDevelopmentPlatform() {
            return this._builder.hasSdkDevelopmentPlatform();
        }

        public final void setCustomMediationName(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCustomMediationName(value);
        }

        public final void setGameId(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setGameId(value);
        }

        public final void setIsFidAvailable(boolean z10) {
            this._builder.setIsFidAvailable(z10);
        }

        public final void setMediationProvider(@NotNull ClientInfoOuterClass.MediationProvider value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setMediationProvider(value);
        }

        public final void setMediationProviderValue(int i10) {
            this._builder.setMediationProviderValue(i10);
        }

        public final void setMediationVersion(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setMediationVersion(value);
        }

        public final void setOfferwallVersion(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOfferwallVersion(value);
        }

        public final void setOmidPartnerVersion(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOmidPartnerVersion(value);
        }

        public final void setOmidVersion(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOmidVersion(value);
        }

        public final void setPlatform(@NotNull ClientInfoOuterClass.Platform value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPlatform(value);
        }

        public final void setPlatformValue(int i10) {
            this._builder.setPlatformValue(i10);
        }

        public final void setScarVersionName(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setScarVersionName(value);
        }

        public final void setSdkDevelopmentPlatform(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSdkDevelopmentPlatform(value);
        }

        public final void setSdkVersion(int i10) {
            this._builder.setSdkVersion(i10);
        }

        public final void setSdkVersionName(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSdkVersionName(value);
        }

        public final void setTest(boolean z10) {
            this._builder.setTest(z10);
        }

        private Dsl(ClientInfoOuterClass.ClientInfo.Builder builder) {
            this._builder = builder;
        }
    }

    private ClientInfoKt() {
    }
}
