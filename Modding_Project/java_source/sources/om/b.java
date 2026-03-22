package om;

import android.graphics.Point;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.adcom.ApiFramework;
import com.explorestack.protobuf.adcom.Placement;
import com.explorestack.protobuf.adcom.PlacementPosition;
import com.explorestack.protobuf.adcom.SizeUnit;
import io.bidmachine.AdContentType;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdsType;
import io.bidmachine.Constants;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfig;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import xq.d;
/* compiled from: DisplayPlacementBuilder.java */
/* loaded from: classes7.dex */
public class b<UnifiedAdRequestParamsType extends xq.d> extends n<UnifiedAdRequestParamsType> {

    /* renamed from: c  reason: collision with root package name */
    private final boolean f64276c;

    public b(boolean z10) {
        super(AdContentType.Static);
        this.f64276c = z10;
    }

    @Override // om.n
    @Nullable
    public lp.b b(@NonNull Ad ad2) {
        if (!ad2.hasDisplay()) {
            return null;
        }
        lp.b c10 = c(ad2);
        if (c10 == null) {
            Ad.Display display = ad2.getDisplay();
            if (TextUtils.isEmpty(display.getAdm())) {
                return null;
            }
            a aVar = new a(ad2);
            aVar.j(display.getAdm());
            aVar.l(display.getW());
            aVar.k(display.getH());
            return aVar;
        }
        return c10;
    }

    @Override // om.n
    @NonNull
    public Message.Builder e(@NonNull ContextProvider contextProvider, @NonNull UnifiedAdRequestParamsType unifiedadrequestparamstype, @NonNull AdsType adsType, @NonNull Collection<NetworkConfig> collection, @NonNull List<NetworkAdUnit> list, @Nullable AdPlacementConfig adPlacementConfig, int i10) throws Exception {
        Point j10 = j(contextProvider, unifiedadrequestparamstype);
        Placement.DisplayPlacement.Builder h10 = Placement.DisplayPlacement.newBuilder().addApi(ApiFramework.API_FRAMEWORK_MRAID_2_0).addApi(ApiFramework.API_FRAMEWORK_OMID_1_0).setUnit(SizeUnit.SIZE_UNIT_DIPS).addAllMime(Arrays.asList(Constants.IMAGE_MIME_TYPES)).setW(j10.x).setH(j10.y);
        if (this.f64276c) {
            h10.setInstl(true);
            h10.setPos(PlacementPosition.PLACEMENT_POSITION_FULLSCREEN);
        }
        HeaderBiddingPlacement.Builder d10 = d(contextProvider, unifiedadrequestparamstype, adsType, collection, list, i10);
        if (adPlacementConfig == null && d10 != null) {
            h10.addExtProto(Any.pack(d10.build()));
        } else if (adPlacementConfig != null) {
            h10.addExtProto(Any.pack(f(adPlacementConfig, d10)));
        }
        return h10;
    }

    public Point j(@NonNull ContextProvider contextProvider, @NonNull UnifiedAdRequestParamsType unifiedadrequestparamstype) {
        return io.bidmachine.core.g.D(contextProvider.getContext());
    }
}
