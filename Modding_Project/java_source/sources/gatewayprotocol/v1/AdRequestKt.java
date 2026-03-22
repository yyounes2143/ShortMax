package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.AdRequestOuterClass;
import gatewayprotocol.v1.CampaignStateOuterClass;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.SessionCountersOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdRequestKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdRequestKt {
    @NotNull
    public static final AdRequestKt INSTANCE = new AdRequestKt();

    /* compiled from: AdRequestKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final AdRequestOuterClass.AdRequest.Builder _builder;

        /* compiled from: AdRequestKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(AdRequestOuterClass.AdRequest.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(AdRequestOuterClass.AdRequest.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ AdRequestOuterClass.AdRequest _build() {
            AdRequestOuterClass.AdRequest build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearAdFormat() {
            this._builder.clearAdFormat();
        }

        public final void clearAdRequestType() {
            this._builder.clearAdRequestType();
        }

        public final void clearBannerSize() {
            this._builder.clearBannerSize();
        }

        public final void clearCampaignState() {
            this._builder.clearCampaignState();
        }

        public final void clearDynamicDeviceInfo() {
            this._builder.clearDynamicDeviceInfo();
        }

        public final void clearImpressionOpportunityId() {
            this._builder.clearImpressionOpportunityId();
        }

        public final void clearPlacementId() {
            this._builder.clearPlacementId();
        }

        public final void clearRequestImpressionConfiguration() {
            this._builder.clearRequestImpressionConfiguration();
        }

        public final void clearScarSignal() {
            this._builder.clearScarSignal();
        }

        public final void clearSessionCounters() {
            this._builder.clearSessionCounters();
        }

        public final void clearStaticDeviceInfo() {
            this._builder.clearStaticDeviceInfo();
        }

        public final void clearTcf() {
            this._builder.clearTcf();
        }

        public final void clearWebviewVersion() {
            this._builder.clearWebviewVersion();
        }

        @NotNull
        public final InitializationResponseOuterClass.AdFormat getAdFormat() {
            InitializationResponseOuterClass.AdFormat adFormat = this._builder.getAdFormat();
            Intrinsics.checkNotNullExpressionValue(adFormat, "_builder.getAdFormat()");
            return adFormat;
        }

        public final int getAdFormatValue() {
            return this._builder.getAdFormatValue();
        }

        @NotNull
        public final AdRequestOuterClass.AdRequestType getAdRequestType() {
            AdRequestOuterClass.AdRequestType adRequestType = this._builder.getAdRequestType();
            Intrinsics.checkNotNullExpressionValue(adRequestType, "_builder.getAdRequestType()");
            return adRequestType;
        }

        public final int getAdRequestTypeValue() {
            return this._builder.getAdRequestTypeValue();
        }

        @NotNull
        public final AdRequestOuterClass.BannerSize getBannerSize() {
            AdRequestOuterClass.BannerSize bannerSize = this._builder.getBannerSize();
            Intrinsics.checkNotNullExpressionValue(bannerSize, "_builder.getBannerSize()");
            return bannerSize;
        }

        @Nullable
        public final AdRequestOuterClass.BannerSize getBannerSizeOrNull(@NotNull Dsl dsl) {
            Intrinsics.checkNotNullParameter(dsl, "<this>");
            return AdRequestKtKt.getBannerSizeOrNull(dsl._builder);
        }

        @NotNull
        public final CampaignStateOuterClass.CampaignState getCampaignState() {
            CampaignStateOuterClass.CampaignState campaignState = this._builder.getCampaignState();
            Intrinsics.checkNotNullExpressionValue(campaignState, "_builder.getCampaignState()");
            return campaignState;
        }

        @NotNull
        public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfo() {
            DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfo = this._builder.getDynamicDeviceInfo();
            Intrinsics.checkNotNullExpressionValue(dynamicDeviceInfo, "_builder.getDynamicDeviceInfo()");
            return dynamicDeviceInfo;
        }

        @NotNull
        public final ByteString getImpressionOpportunityId() {
            ByteString impressionOpportunityId = this._builder.getImpressionOpportunityId();
            Intrinsics.checkNotNullExpressionValue(impressionOpportunityId, "_builder.getImpressionOpportunityId()");
            return impressionOpportunityId;
        }

        @NotNull
        public final String getPlacementId() {
            String placementId = this._builder.getPlacementId();
            Intrinsics.checkNotNullExpressionValue(placementId, "_builder.getPlacementId()");
            return placementId;
        }

        public final boolean getRequestImpressionConfiguration() {
            return this._builder.getRequestImpressionConfiguration();
        }

        @NotNull
        public final ByteString getScarSignal() {
            ByteString scarSignal = this._builder.getScarSignal();
            Intrinsics.checkNotNullExpressionValue(scarSignal, "_builder.getScarSignal()");
            return scarSignal;
        }

        @NotNull
        public final SessionCountersOuterClass.SessionCounters getSessionCounters() {
            SessionCountersOuterClass.SessionCounters sessionCounters = this._builder.getSessionCounters();
            Intrinsics.checkNotNullExpressionValue(sessionCounters, "_builder.getSessionCounters()");
            return sessionCounters;
        }

        @NotNull
        public final StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfo() {
            StaticDeviceInfoOuterClass.StaticDeviceInfo staticDeviceInfo = this._builder.getStaticDeviceInfo();
            Intrinsics.checkNotNullExpressionValue(staticDeviceInfo, "_builder.getStaticDeviceInfo()");
            return staticDeviceInfo;
        }

        @NotNull
        public final ByteString getTcf() {
            ByteString tcf = this._builder.getTcf();
            Intrinsics.checkNotNullExpressionValue(tcf, "_builder.getTcf()");
            return tcf;
        }

        public final int getWebviewVersion() {
            return this._builder.getWebviewVersion();
        }

        public final boolean hasAdFormat() {
            return this._builder.hasAdFormat();
        }

        public final boolean hasAdRequestType() {
            return this._builder.hasAdRequestType();
        }

        public final boolean hasBannerSize() {
            return this._builder.hasBannerSize();
        }

        public final boolean hasCampaignState() {
            return this._builder.hasCampaignState();
        }

        public final boolean hasDynamicDeviceInfo() {
            return this._builder.hasDynamicDeviceInfo();
        }

        public final boolean hasSessionCounters() {
            return this._builder.hasSessionCounters();
        }

        public final boolean hasStaticDeviceInfo() {
            return this._builder.hasStaticDeviceInfo();
        }

        public final boolean hasTcf() {
            return this._builder.hasTcf();
        }

        public final boolean hasWebviewVersion() {
            return this._builder.hasWebviewVersion();
        }

        public final void setAdFormat(@NotNull InitializationResponseOuterClass.AdFormat value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdFormat(value);
        }

        public final void setAdFormatValue(int i10) {
            this._builder.setAdFormatValue(i10);
        }

        public final void setAdRequestType(@NotNull AdRequestOuterClass.AdRequestType value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdRequestType(value);
        }

        public final void setAdRequestTypeValue(int i10) {
            this._builder.setAdRequestTypeValue(i10);
        }

        public final void setBannerSize(@NotNull AdRequestOuterClass.BannerSize value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setBannerSize(value);
        }

        public final void setCampaignState(@NotNull CampaignStateOuterClass.CampaignState value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCampaignState(value);
        }

        public final void setDynamicDeviceInfo(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfo value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDynamicDeviceInfo(value);
        }

        public final void setImpressionOpportunityId(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setImpressionOpportunityId(value);
        }

        public final void setPlacementId(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPlacementId(value);
        }

        public final void setRequestImpressionConfiguration(boolean z10) {
            this._builder.setRequestImpressionConfiguration(z10);
        }

        public final void setScarSignal(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setScarSignal(value);
        }

        public final void setSessionCounters(@NotNull SessionCountersOuterClass.SessionCounters value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSessionCounters(value);
        }

        public final void setStaticDeviceInfo(@NotNull StaticDeviceInfoOuterClass.StaticDeviceInfo value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setStaticDeviceInfo(value);
        }

        public final void setTcf(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTcf(value);
        }

        public final void setWebviewVersion(int i10) {
            this._builder.setWebviewVersion(i10);
        }

        private Dsl(AdRequestOuterClass.AdRequest.Builder builder) {
            this._builder = builder;
        }
    }

    private AdRequestKt() {
    }
}
