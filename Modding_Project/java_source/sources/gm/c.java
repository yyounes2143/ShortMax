package gm;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import io.bidmachine.ads.networks.gam.i0;
/* loaded from: classes7.dex */
class c extends FullScreenContentCallback {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final i0 f52407a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@NonNull i0 i0Var) {
        this.f52407a = i0Var;
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdClicked() {
        this.f52407a.onAdClicked();
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdDismissedFullScreenContent() {
        this.f52407a.b();
        this.f52407a.onAdClosed();
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdFailedToShowFullScreenContent(@NonNull AdError adError) {
        this.f52407a.onAdShowFailed(new fr.a(fr.a.f51922r, adError.getCode(), adError.getMessage()));
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdImpression() {
        this.f52407a.onAdShown();
    }
}
