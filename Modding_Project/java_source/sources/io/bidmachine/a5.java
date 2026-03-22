package io.bidmachine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.openrtb.Response;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProtoTransformer.java */
/* loaded from: classes7.dex */
public class a5 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProtoTransformer.java */
    /* loaded from: classes7.dex */
    public interface a<AdResponse> {
        void a(@NonNull fr.a aVar);

        void onSuccess(@NonNull AdResponse adresponse);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull AdRequestParameters adRequestParameters, @NonNull NetworkAdUnitManager networkAdUnitManager, @Nullable Response response, @NonNull a<u> aVar) {
        if (response != null && response.getSeatbidCount() != 0) {
            Response.Seatbid seatbid = response.getSeatbid(0);
            if (seatbid != null && seatbid.getBidCount() != 0) {
                Response.Seatbid.Bid bid = seatbid.getBid(0);
                if (bid == null) {
                    aVar.a(fr.a.k("Bid"));
                    return;
                }
                Any media = bid.getMedia();
                if (media == null) {
                    aVar.a(fr.a.k("Media"));
                    return;
                } else if (!media.is(Ad.class)) {
                    aVar.a(fr.a.h("Media not valid"));
                    return;
                } else {
                    try {
                        Ad ad2 = (Ad) media.unpack(Ad.class);
                        if (ad2 == null) {
                            aVar.a(fr.a.k("Ad"));
                            return;
                        }
                        NetworkAdapter findNetworkAdapter = adRequestParameters.getAdsType().findNetworkAdapter(ad2);
                        if (findNetworkAdapter == null) {
                            aVar.a(fr.a.k("NetworkAdapter"));
                            return;
                        } else {
                            aVar.onSuccess(new u(adRequestParameters, networkAdUnitManager, response, seatbid, bid, ad2, findNetworkAdapter));
                            return;
                        }
                    } catch (Throwable th2) {
                        io.bidmachine.core.a.m(th2);
                        aVar.a(fr.a.l("Failed to process response", th2));
                        return;
                    }
                }
            }
            aVar.a(fr.a.k("Seatbid"));
            return;
        }
        aVar.a(fr.a.k("Response"));
    }
}
