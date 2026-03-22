package om;

import androidx.annotation.NonNull;
import com.explorestack.protobuf.adcom.Ad;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HeaderBiddingAdObjectParams.java */
/* loaded from: classes7.dex */
public class c extends lp.b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@NonNull Ad ad2, @NonNull HeaderBiddingAd headerBiddingAd) {
        super(ad2);
        b().putAll(headerBiddingAd.getClientParamsMap());
        b().putAll(headerBiddingAd.getServerParamsMap());
    }

    @Override // lp.b
    public boolean f() {
        return true;
    }
}
