package om;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.adcom.Ad;
import io.bidmachine.AdContentType;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.CustomParams;
import io.bidmachine.Executable;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfig;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement;
import io.bidmachine.protobuf.sdk.Placement;
import java.util.Collection;
import java.util.List;
import xq.d;
/* compiled from: PlacementBuilder.java */
/* loaded from: classes7.dex */
public abstract class n<UnifiedAdRequestParamsType extends xq.d> {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final AdContentType f64304a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final g<UnifiedAdRequestParamsType> f64305b = new g<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(@NonNull AdContentType adContentType) {
        this.f64304a = adContentType;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(Placement.Builder builder, CustomParams customParams) {
        Struct.Builder newBuilder = Struct.newBuilder();
        customParams.fillStructBuilder(newBuilder);
        if (newBuilder.getFieldsCount() > 0) {
            builder.setCustomData(newBuilder);
        }
    }

    @Nullable
    public abstract lp.b b(@NonNull Ad ad2);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public lp.b c(@NonNull Ad ad2) {
        return this.f64305b.a(ad2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public HeaderBiddingPlacement.Builder d(@NonNull ContextProvider contextProvider, @NonNull UnifiedAdRequestParamsType unifiedadrequestparamstype, @NonNull AdsType adsType, @NonNull Collection<NetworkConfig> collection, @NonNull List<NetworkAdUnit> list, int i10) {
        return this.f64305b.b(contextProvider, unifiedadrequestparamstype, adsType, g(), collection, list, i10);
    }

    @NonNull
    public abstract Message.Builder e(@NonNull ContextProvider contextProvider, @NonNull UnifiedAdRequestParamsType unifiedadrequestparamstype, @NonNull AdsType adsType, @NonNull Collection<NetworkConfig> collection, @NonNull List<NetworkAdUnit> list, @Nullable AdPlacementConfig adPlacementConfig, int i10) throws Exception;

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Placement f(@NonNull AdPlacementConfig adPlacementConfig, @Nullable HeaderBiddingPlacement.Builder builder) {
        final Placement.Builder newBuilder = Placement.newBuilder();
        newBuilder.setAdType(adPlacementConfig.getAdsFormat().getAdsType().getName());
        String placementId = adPlacementConfig.getPlacementId();
        if (!TextUtils.isEmpty(placementId)) {
            newBuilder.setPlacementId(StringValue.of(placementId));
        }
        io.bidmachine.core.g.H(adPlacementConfig.getCustomParams(), new Executable() { // from class: om.m
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                n.h(Placement.Builder.this, (CustomParams) obj);
            }
        });
        if (builder != null) {
            newBuilder.setHbPlacement(builder);
        }
        return newBuilder.build();
    }

    public AdContentType g() {
        return this.f64304a;
    }

    @Nullable
    public HeaderBiddingAd i(@NonNull Ad ad2) {
        return this.f64305b.c(ad2);
    }
}
