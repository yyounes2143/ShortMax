package xm;

import androidx.annotation.NonNull;
import com.explorestack.protobuf.adcom.Placement;
import fr.e;
import io.bidmachine.AdContentType;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdsFormat;
import io.bidmachine.FullScreenAdRequestParameters;
/* compiled from: InterstitialAdRequestParameters.java */
/* loaded from: classes7.dex */
public class b extends FullScreenAdRequestParameters {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InterstitialAdRequestParameters.java */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f70508a;

        static {
            int[] iArr = new int[AdContentType.values().length];
            f70508a = iArr;
            try {
                iArr[AdContentType.Static.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f70508a[AdContentType.Video.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public b(@NonNull AdContentType adContentType) {
        super(new AdPlacementConfig.Builder(a(adContentType)).build(), adContentType);
    }

    @NonNull
    private static AdsFormat a(@NonNull AdContentType adContentType) {
        int i10 = a.f70508a[adContentType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                return AdsFormat.Interstitial;
            }
            return AdsFormat.InterstitialVideo;
        }
        return AdsFormat.InterstitialStatic;
    }

    @Override // io.bidmachine.AdRequestParameters
    public boolean isPlacementObjectValid(@NonNull Placement placement) throws Throwable {
        return e.k(placement);
    }
}
