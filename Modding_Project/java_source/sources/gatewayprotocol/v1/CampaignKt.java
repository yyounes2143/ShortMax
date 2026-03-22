package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.CampaignStateOuterClass;
import gatewayprotocol.v1.TimestampsOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CampaignKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CampaignKt {
    @NotNull
    public static final CampaignKt INSTANCE = new CampaignKt();

    /* compiled from: CampaignKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final CampaignStateOuterClass.Campaign.Builder _builder;

        /* compiled from: CampaignKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(CampaignStateOuterClass.Campaign.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(CampaignStateOuterClass.Campaign.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ CampaignStateOuterClass.Campaign _build() {
            CampaignStateOuterClass.Campaign build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearData() {
            this._builder.clearData();
        }

        public final void clearDataVersion() {
            this._builder.clearDataVersion();
        }

        public final void clearImpressionOpportunityId() {
            this._builder.clearImpressionOpportunityId();
        }

        public final void clearLoadTimestamp() {
            this._builder.clearLoadTimestamp();
        }

        public final void clearPlacementId() {
            this._builder.clearPlacementId();
        }

        public final void clearShowTimestamp() {
            this._builder.clearShowTimestamp();
        }

        @NotNull
        public final ByteString getData() {
            ByteString data = this._builder.getData();
            Intrinsics.checkNotNullExpressionValue(data, "_builder.getData()");
            return data;
        }

        public final int getDataVersion() {
            return this._builder.getDataVersion();
        }

        @NotNull
        public final ByteString getImpressionOpportunityId() {
            ByteString impressionOpportunityId = this._builder.getImpressionOpportunityId();
            Intrinsics.checkNotNullExpressionValue(impressionOpportunityId, "_builder.getImpressionOpportunityId()");
            return impressionOpportunityId;
        }

        @NotNull
        public final TimestampsOuterClass.Timestamps getLoadTimestamp() {
            TimestampsOuterClass.Timestamps loadTimestamp = this._builder.getLoadTimestamp();
            Intrinsics.checkNotNullExpressionValue(loadTimestamp, "_builder.getLoadTimestamp()");
            return loadTimestamp;
        }

        @NotNull
        public final String getPlacementId() {
            String placementId = this._builder.getPlacementId();
            Intrinsics.checkNotNullExpressionValue(placementId, "_builder.getPlacementId()");
            return placementId;
        }

        @NotNull
        public final TimestampsOuterClass.Timestamps getShowTimestamp() {
            TimestampsOuterClass.Timestamps showTimestamp = this._builder.getShowTimestamp();
            Intrinsics.checkNotNullExpressionValue(showTimestamp, "_builder.getShowTimestamp()");
            return showTimestamp;
        }

        @Nullable
        public final TimestampsOuterClass.Timestamps getShowTimestampOrNull(@NotNull Dsl dsl) {
            Intrinsics.checkNotNullParameter(dsl, "<this>");
            return CampaignKtKt.getShowTimestampOrNull(dsl._builder);
        }

        public final boolean hasLoadTimestamp() {
            return this._builder.hasLoadTimestamp();
        }

        public final boolean hasShowTimestamp() {
            return this._builder.hasShowTimestamp();
        }

        public final void setData(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setData(value);
        }

        public final void setDataVersion(int i10) {
            this._builder.setDataVersion(i10);
        }

        public final void setImpressionOpportunityId(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setImpressionOpportunityId(value);
        }

        public final void setLoadTimestamp(@NotNull TimestampsOuterClass.Timestamps value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setLoadTimestamp(value);
        }

        public final void setPlacementId(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPlacementId(value);
        }

        public final void setShowTimestamp(@NotNull TimestampsOuterClass.Timestamps value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setShowTimestamp(value);
        }

        private Dsl(CampaignStateOuterClass.Campaign.Builder builder) {
            this._builder = builder;
        }
    }

    private CampaignKt() {
    }
}
