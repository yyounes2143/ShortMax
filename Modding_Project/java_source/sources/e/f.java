package e;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class f extends AdListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ t f50634a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f50635b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AdView f50636c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ g.a f50637d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ca.e f50638e;

    public f(t tVar, String str, AdView adView, g.a aVar, ca.e eVar) {
        this.f50634a = tVar;
        this.f50635b = str;
        this.f50636c = adView;
        this.f50637d = aVar;
        this.f50638e = eVar;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        t.X(this.f50634a, this.f50638e, this.f50637d, this.f50635b, error);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        t tVar = this.f50634a;
        String str = this.f50635b;
        AdView adView = this.f50636c;
        tVar.Z(str, adView, this.f50637d, adView.getResponseInfo());
    }
}
