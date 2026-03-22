package km;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
/* loaded from: classes7.dex */
class f extends FullScreenContentCallback {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final hm.o f60774a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(@NonNull hm.o oVar) {
        this.f60774a = oVar;
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdClicked() {
        this.f60774a.onAdClicked();
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdDismissedFullScreenContent() {
        this.f60774a.b();
        this.f60774a.onAdClosed();
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdFailedToShowFullScreenContent(@NonNull AdError adError) {
        this.f60774a.onAdShowFailed(o.b(fr.a.f51922r, adError));
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdImpression() {
        this.f60774a.onAdShown();
    }
}
