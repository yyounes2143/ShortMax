package ql;

import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdRequest;
/* compiled from: AdRequestFactory.java */
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private ml.a f65372a;

    public a(ml.a aVar) {
        this.f65372a = aVar;
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
        return new AdRequest.Builder().setRequestAgent(this.f65372a.b()).addNetworkExtrasBundle(AdMobAdapter.class, this.f65372a.a());
    }
}
