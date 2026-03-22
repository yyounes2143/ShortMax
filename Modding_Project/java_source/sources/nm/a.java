package nm;

import androidx.annotation.NonNull;
import com.explorestack.protobuf.adcom.Placement;
import fr.e;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdRequestParameters;
import io.bidmachine.AdsFormat;
import io.bidmachine.banner.BannerSize;
/* compiled from: BannerAdRequestParameters.java */
/* loaded from: classes7.dex */
public class a extends AdRequestParameters {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final BannerSize f62979a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BannerAdRequestParameters.java */
    /* renamed from: nm.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class C0877a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62980a;

        static {
            int[] iArr = new int[BannerSize.values().length];
            f62980a = iArr;
            try {
                iArr[BannerSize.Size_320x50.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62980a[BannerSize.Size_728x90.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62980a[BannerSize.Size_300x250.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public a(@NonNull BannerSize bannerSize) {
        super(new AdPlacementConfig.Builder(a(bannerSize)).build());
        this.f62979a = bannerSize;
    }

    @NonNull
    private static AdsFormat a(@NonNull BannerSize bannerSize) {
        int i10 = C0877a.f62980a[bannerSize.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return AdsFormat.Banner;
                }
                return AdsFormat.Banner_300x250;
            }
            return AdsFormat.Banner_728x90;
        }
        return AdsFormat.Banner_320x50;
    }

    private boolean c(@NonNull a aVar) {
        if (this.f62979a == aVar.f62979a) {
            return true;
        }
        return false;
    }

    @NonNull
    public BannerSize b() {
        return this.f62979a;
    }

    @Override // io.bidmachine.AdRequestParameters
    public boolean isParametersMatched(@NonNull AdRequestParameters adRequestParameters) {
        if (super.isParametersMatched(adRequestParameters) && (adRequestParameters instanceof a) && c((a) adRequestParameters)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.AdRequestParameters
    public boolean isPlacementObjectValid(@NonNull Placement placement) throws Throwable {
        return e.h(placement, this.f62979a);
    }
}
