package com.iab.omid.library.applovin.adsession;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.iab.omid.library.applovin.internal.c;
import com.iab.omid.library.applovin.internal.e;
import com.iab.omid.library.applovin.internal.f;
import com.iab.omid.library.applovin.internal.i;
import com.iab.omid.library.applovin.publisher.AdSessionStatePublisher;
import com.iab.omid.library.applovin.publisher.b;
import com.iab.omid.library.applovin.utils.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class a extends AdSession {

    /* renamed from: a  reason: collision with root package name */
    private final AdSessionContext f22437a;

    /* renamed from: b  reason: collision with root package name */
    private final AdSessionConfiguration f22438b;

    /* renamed from: c  reason: collision with root package name */
    private final f f22439c;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.applovin.weakreference.a f22440d;

    /* renamed from: e  reason: collision with root package name */
    private AdSessionStatePublisher f22441e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f22442f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f22443g;

    /* renamed from: h  reason: collision with root package name */
    private final String f22444h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f22445i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f22446j;

    /* renamed from: k  reason: collision with root package name */
    private PossibleObstructionListener f22447k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this(adSessionConfiguration, adSessionContext, UUID.randomUUID().toString());
    }

    private void a() {
        if (this.f22445i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private void b() {
        if (this.f22446j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        if (this.f22443g) {
            return;
        }
        this.f22439c.a(view, friendlyObstructionPurpose, str);
    }

    public String c() {
        return this.f22444h;
    }

    public AdSessionStatePublisher d() {
        return this.f22441e;
    }

    public View e() {
        return this.f22440d.get();
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (!this.f22443g) {
            g.a(errorType, "Error type is null");
            g.a(str, "Message is null");
            d().a(errorType, str);
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    public List<e> f() {
        return this.f22439c.a();
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public void finish() {
        if (this.f22443g) {
            return;
        }
        this.f22440d.clear();
        removeAllFriendlyObstructions();
        this.f22443g = true;
        d().f();
        c.c().b(this);
        d().b();
        this.f22441e = null;
        this.f22447k = null;
    }

    public boolean g() {
        if (this.f22447k != null) {
            return true;
        }
        return false;
    }

    public boolean h() {
        if (this.f22442f && !this.f22443g) {
            return true;
        }
        return false;
    }

    public boolean i() {
        return this.f22443g;
    }

    public boolean j() {
        return this.f22438b.isNativeImpressionOwner();
    }

    public boolean k() {
        return this.f22438b.isNativeMediaEventsOwner();
    }

    public boolean l() {
        return this.f22442f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        a();
        d().g();
        this.f22445i = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        b();
        d().h();
        this.f22446j = true;
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public void registerAdView(@Nullable View view) {
        if (this.f22443g || e() == view) {
            return;
        }
        b(view);
        d().a();
        a(view);
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f22443g) {
            return;
        }
        this.f22439c.b();
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f22443g) {
            return;
        }
        this.f22439c.c(view);
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public void setPossibleObstructionListener(PossibleObstructionListener possibleObstructionListener) {
        this.f22447k = possibleObstructionListener;
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public void start() {
        if (!this.f22442f && this.f22441e != null) {
            this.f22442f = true;
            c.c().c(this);
            this.f22441e.a(i.c().b());
            this.f22441e.a(com.iab.omid.library.applovin.internal.a.a().b());
            this.f22441e.a(this, this.f22437a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext, String str) {
        this.f22439c = new f();
        this.f22442f = false;
        this.f22443g = false;
        this.f22438b = adSessionConfiguration;
        this.f22437a = adSessionContext;
        this.f22444h = str;
        b(null);
        this.f22441e = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.applovin.publisher.a(str, adSessionContext.getWebView()) : new b(str, adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f22441e.i();
        c.c().a(this);
        this.f22441e.a(adSessionConfiguration);
    }

    private void a(@Nullable View view) {
        Collection<a> b10 = c.c().b();
        if (b10 == null || b10.isEmpty()) {
            return;
        }
        for (a aVar : b10) {
            if (aVar != this && aVar.e() == view) {
                aVar.f22440d.clear();
            }
        }
    }

    private void b(@Nullable View view) {
        this.f22440d = new com.iab.omid.library.applovin.weakreference.a(view);
    }

    public void a(List<com.iab.omid.library.applovin.weakreference.a> list) {
        if (g()) {
            ArrayList arrayList = new ArrayList();
            for (com.iab.omid.library.applovin.weakreference.a aVar : list) {
                View view = aVar.get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.f22447k.onPossibleObstructionsDetected(this.f22444h, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull JSONObject jSONObject) {
        b();
        d().a(jSONObject);
        this.f22446j = true;
    }
}
