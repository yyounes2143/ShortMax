package ul;

import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdRequest;
/* compiled from: AdRequestFactory.java */
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private ml.a f68498a;

    public a(ml.a aVar) {
        this.f68498a = aVar;
    }

    public AdRequest a() {
        return c().build();
    }

    public AdRequest b(String str) {
        if (str.isEmpty()) {
            return a();
        }
        return c().setAdString(str).build();
    }

    public AdRequest.Builder c() {
        return new AdRequest.Builder().setRequestAgent(this.f68498a.b()).addNetworkExtrasBundle(AdMobAdapter.class, this.f68498a.a());
    }
}
