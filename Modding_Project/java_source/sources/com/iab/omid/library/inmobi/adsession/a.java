package com.iab.omid.library.inmobi.adsession;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.iab.omid.library.inmobi.internal.c;
import com.iab.omid.library.inmobi.internal.e;
import com.iab.omid.library.inmobi.internal.f;
import com.iab.omid.library.inmobi.internal.i;
import com.iab.omid.library.inmobi.publisher.AdSessionStatePublisher;
import com.iab.omid.library.inmobi.publisher.b;
import com.iab.omid.library.inmobi.utils.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class a extends AdSession {

    /* renamed from: a  reason: collision with root package name */
    private final AdSessionContext f22837a;

    /* renamed from: b  reason: collision with root package name */
    private final AdSessionConfiguration f22838b;

    /* renamed from: c  reason: collision with root package name */
    private final f f22839c;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.inmobi.weakreference.a f22840d;

    /* renamed from: e  reason: collision with root package name */
    private AdSessionStatePublisher f22841e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f22842f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f22843g;

    /* renamed from: h  reason: collision with root package name */
    private final String f22844h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f22845i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f22846j;

    /* renamed from: k  reason: collision with root package name */
    private PossibleObstructionListener f22847k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this(adSessionConfiguration, adSessionContext, UUID.randomUUID().toString());
    }

    private void a() {
        if (this.f22845i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private void b() {
        if (this.f22846j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        if (this.f22843g) {
            return;
        }
        this.f22839c.a(view, friendlyObstructionPurpose, str);
    }

    public String c() {
        return this.f22844h;
    }

    public AdSessionStatePublisher d() {
        return this.f22841e;
    }

    public View e() {
        return this.f22840d.get();
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (!this.f22843g) {
            g.a(errorType, "Error type is null");
            g.a(str, "Message is null");
            d().a(errorType, str);
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    public List<e> f() {
        return this.f22839c.a();
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public void finish() {
        if (this.f22843g) {
            return;
        }
        this.f22840d.clear();
        removeAllFriendlyObstructions();
        this.f22843g = true;
        d().f();
        c.c().b(this);
        d().b();
        this.f22841e = null;
        this.f22847k = null;
    }

    public boolean g() {
        if (this.f22847k != null) {
            return true;
        }
        return false;
    }

    public boolean h() {
        if (this.f22842f && !this.f22843g) {
            return true;
        }
        return false;
    }

    public boolean i() {
        return this.f22843g;
    }

    public boolean j() {
        return this.f22838b.isNativeImpressionOwner();
    }

    public boolean k() {
        return this.f22838b.isNativeMediaEventsOwner();
    }

    public boolean l() {
        return this.f22842f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        a();
        d().g();
        this.f22845i = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        b();
        d().h();
        this.f22846j = true;
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public void registerAdView(@Nullable View view) {
        if (this.f22843g || e() == view) {
            return;
        }
        b(view);
        d().a();
        a(view);
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f22843g) {
            return;
        }
        this.f22839c.b();
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f22843g) {
            return;
        }
        this.f22839c.c(view);
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public void setPossibleObstructionListener(PossibleObstructionListener possibleObstructionListener) {
        this.f22847k = possibleObstructionListener;
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public void start() {
        if (!this.f22842f && this.f22841e != null) {
            this.f22842f = true;
            c.c().c(this);
            this.f22841e.a(i.c().b());
            this.f22841e.a(com.iab.omid.library.inmobi.internal.a.a().b());
            this.f22841e.a(this, this.f22837a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext, String str) {
        this.f22839c = new f();
        this.f22842f = false;
        this.f22843g = false;
        this.f22838b = adSessionConfiguration;
        this.f22837a = adSessionContext;
        this.f22844h = str;
        b(null);
        this.f22841e = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.inmobi.publisher.a(str, adSessionContext.getWebView()) : new b(str, adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f22841e.i();
        c.c().a(this);
        this.f22841e.a(adSessionConfiguration);
    }

    private void a(@Nullable View view) {
        Collection<a> b10 = c.c().b();
        if (b10 == null || b10.isEmpty()) {
            return;
        }
        for (a aVar : b10) {
            if (aVar != this && aVar.e() == view) {
                aVar.f22840d.clear();
            }
        }
    }

    private void b(@Nullable View view) {
        this.f22840d = new com.iab.omid.library.inmobi.weakreference.a(view);
    }

    public void a(List<com.iab.omid.library.inmobi.weakreference.a> list) {
        if (g()) {
            ArrayList arrayList = new ArrayList();
            for (com.iab.omid.library.inmobi.weakreference.a aVar : list) {
                View view = aVar.get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.f22847k.onPossibleObstructionsDetected(this.f22844h, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull JSONObject jSONObject) {
        b();
        d().a(jSONObject);
        this.f22846j = true;
    }
}
