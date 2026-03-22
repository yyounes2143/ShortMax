package lm;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
/* loaded from: classes7.dex */
class f extends FullScreenContentCallback {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final hm.o f62248a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(@NonNull hm.o oVar) {
        this.f62248a = oVar;
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdClicked() {
        this.f62248a.onAdClicked();
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdDismissedFullScreenContent() {
        this.f62248a.b();
        this.f62248a.onAdClosed();
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdFailedToShowFullScreenContent(@NonNull AdError adError) {
        this.f62248a.onAdShowFailed(o.b(fr.a.f51922r, adError));
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdImpression() {
        this.f62248a.onAdShown();
    }
}
