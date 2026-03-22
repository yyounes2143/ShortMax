package io.bidmachine.nativead;

import androidx.annotation.NonNull;
import com.explorestack.protobuf.adcom.Placement;
import fr.e;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdRequestParameters;
import io.bidmachine.AdsFormat;
import io.bidmachine.MediaAssetType;
import java.util.List;
/* compiled from: NativeAdRequestParameters.java */
/* loaded from: classes8.dex */
public class a extends AdRequestParameters {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final List<MediaAssetType> f57951a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f57952b;

    public a(@NonNull List<MediaAssetType> list) {
        super(new AdPlacementConfig.Builder(AdsFormat.Native).build());
        this.f57952b = true;
        this.f57951a = list;
    }

    private boolean b(@NonNull a aVar) {
        if (!MediaAssetType.isAll(aVar.f57951a) && !aVar.f57951a.containsAll(this.f57951a)) {
            return false;
        }
        return true;
    }

    public boolean a(@NonNull MediaAssetType mediaAssetType) {
        if (!this.f57951a.isEmpty() && !this.f57951a.contains(mediaAssetType) && !this.f57951a.contains(MediaAssetType.All)) {
            return false;
        }
        return true;
    }

    public boolean c() {
        return this.f57952b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(boolean z10) {
        this.f57952b = z10;
    }

    @Override // io.bidmachine.AdRequestParameters
    public boolean isParametersMatched(@NonNull AdRequestParameters adRequestParameters) {
        if (super.isParametersMatched(adRequestParameters) && (adRequestParameters instanceof a) && b((a) adRequestParameters)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.AdRequestParameters
    public boolean isPlacementObjectValid(@NonNull Placement placement) throws Throwable {
        return e.l(placement);
    }
}
