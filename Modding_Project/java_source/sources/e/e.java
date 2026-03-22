package e;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class e extends AppOpenAd.AppOpenAdLoadCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ t f50629a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f50630b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ g.a f50631c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ca.e f50632d;

    public e(t tVar, String str, g.a aVar, ca.e eVar) {
        this.f50629a = tVar;
        this.f50630b = str;
        this.f50631c = aVar;
        this.f50632d = eVar;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdFailedToLoad(LoadAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        t.X(this.f50629a, this.f50632d, this.f50631c, this.f50630b, error);
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdLoaded(AppOpenAd appOpenAd) {
        AppOpenAd ad2 = appOpenAd;
        Intrinsics.checkNotNullParameter(ad2, "ad");
        this.f50629a.Z(this.f50630b, ad2, this.f50631c, ad2.getResponseInfo());
    }
}
