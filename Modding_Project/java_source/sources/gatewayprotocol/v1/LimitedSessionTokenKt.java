package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.ClientInfoOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LimitedSessionTokenKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class LimitedSessionTokenKt {
    @NotNull
    public static final LimitedSessionTokenKt INSTANCE = new LimitedSessionTokenKt();

    /* compiled from: LimitedSessionTokenKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final UniversalRequestOuterClass.LimitedSessionToken.Builder _builder;

        /* compiled from: LimitedSessionTokenKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(UniversalRequestOuterClass.LimitedSessionToken.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(UniversalRequestOuterClass.LimitedSessionToken.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ UniversalRequestOuterClass.LimitedSessionToken _build() {
            UniversalRequestOuterClass.LimitedSessionToken build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearCustomMediationName() {
            this._builder.clearCustomMediationName();
        }

        public final void clearDeviceMake() {
            this._builder.clearDeviceMake();
        }

        public final void clearDeviceModel() {
            this._builder.clearDeviceModel();
        }

        public final void clearGameId() {
            this._builder.clearGameId();
        }

        public final void clearIdfi() {
            this._builder.clearIdfi();
        }

        public final void clearMediationProvider() {
            this._builder.clearMediationProvider();
        }

        public final void clearMediationVersion() {
            this._builder.clearMediationVersion();
        }

        public final void clearOsVersion() {
            this._builder.clearOsVersion();
        }

        public final void clearPlatform() {
            this._builder.clearPlatform();
        }

        public final void clearSdkVersion() {
            this._builder.clearSdkVersion();
        }

        public final void clearSdkVersionName() {
            this._builder.clearSdkVersionName();
        }

        public final void clearSessionId() {
            this._builder.clearSessionId();
        }

        @NotNull
        public final String getCustomMediationName() {
            String customMediationName = this._builder.getCustomMediationName();
            Intrinsics.checkNotNullExpressionValue(customMediationName, "_builder.getCustomMediationName()");
            return customMediationName;
        }

        @NotNull
        public final String getDeviceMake() {
            String deviceMake = this._builder.getDeviceMake();
            Intrinsics.checkNotNullExpressionValue(deviceMake, "_builder.getDeviceMake()");
            return deviceMake;
        }

        @NotNull
        public final String getDeviceModel() {
            String deviceModel = this._builder.getDeviceModel();
            Intrinsics.checkNotNullExpressionValue(deviceModel, "_builder.getDeviceModel()");
            return deviceModel;
        }

        @NotNull
        public final String getGameId() {
            String gameId = this._builder.getGameId();
            Intrinsics.checkNotNullExpressionValue(gameId, "_builder.getGameId()");
            return gameId;
        }

        @NotNull
        public final String getIdfi() {
            String idfi = this._builder.getIdfi();
            Intrinsics.checkNotNullExpressionValue(idfi, "_builder.getIdfi()");
            return idfi;
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
        public final String getOsVersion() {
            String osVersion = this._builder.getOsVersion();
            Intrinsics.checkNotNullExpressionValue(osVersion, "_builder.getOsVersion()");
            return osVersion;
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

        public final int getSdkVersion() {
            return this._builder.getSdkVersion();
        }

        @NotNull
        public final String getSdkVersionName() {
            String sdkVersionName = this._builder.getSdkVersionName();
            Intrinsics.checkNotNullExpressionValue(sdkVersionName, "_builder.getSdkVersionName()");
            return sdkVersionName;
        }

        @NotNull
        public final ByteString getSessionId() {
            ByteString sessionId = this._builder.getSessionId();
            Intrinsics.checkNotNullExpressionValue(sessionId, "_builder.getSessionId()");
            return sessionId;
        }

        public final boolean hasCustomMediationName() {
            return this._builder.hasCustomMediationName();
        }

        public final boolean hasMediationVersion() {
            return this._builder.hasMediationVersion();
        }

        public final boolean hasSessionId() {
            return this._builder.hasSessionId();
        }

        public final void setCustomMediationName(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCustomMediationName(value);
        }

        public final void setDeviceMake(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDeviceMake(value);
        }

        public final void setDeviceModel(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDeviceModel(value);
        }

        public final void setGameId(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setGameId(value);
        }

        public final void setIdfi(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setIdfi(value);
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

        public final void setOsVersion(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOsVersion(value);
        }

        public final void setPlatform(@NotNull ClientInfoOuterClass.Platform value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPlatform(value);
        }

        public final void setPlatformValue(int i10) {
            this._builder.setPlatformValue(i10);
        }

        public final void setSdkVersion(int i10) {
            this._builder.setSdkVersion(i10);
        }

        public final void setSdkVersionName(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSdkVersionName(value);
        }

        public final void setSessionId(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSessionId(value);
        }

        private Dsl(UniversalRequestOuterClass.LimitedSessionToken.Builder builder) {
            this._builder = builder;
        }
    }

    private LimitedSessionTokenKt() {
    }
}
