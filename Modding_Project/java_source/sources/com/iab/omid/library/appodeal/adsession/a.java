package com.iab.omid.library.appodeal.adsession;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.iab.omid.library.appodeal.internal.c;
import com.iab.omid.library.appodeal.internal.e;
import com.iab.omid.library.appodeal.internal.f;
import com.iab.omid.library.appodeal.internal.i;
import com.iab.omid.library.appodeal.publisher.AdSessionStatePublisher;
import com.iab.omid.library.appodeal.publisher.b;
import com.iab.omid.library.appodeal.utils.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class a extends AdSession {

    /* renamed from: a  reason: collision with root package name */
    private final AdSessionContext f22572a;

    /* renamed from: b  reason: collision with root package name */
    private final AdSessionConfiguration f22573b;

    /* renamed from: c  reason: collision with root package name */
    private final f f22574c;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.appodeal.weakreference.a f22575d;

    /* renamed from: e  reason: collision with root package name */
    private AdSessionStatePublisher f22576e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f22577f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f22578g;

    /* renamed from: h  reason: collision with root package name */
    private final String f22579h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f22580i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f22581j;

    /* renamed from: k  reason: collision with root package name */
    private PossibleObstructionListener f22582k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this(adSessionConfiguration, adSessionContext, UUID.randomUUID().toString());
    }

    private void a() {
        if (this.f22580i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private void b() {
        if (this.f22581j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        if (this.f22578g) {
            return;
        }
        this.f22574c.a(view, friendlyObstructionPurpose, str);
    }

    public String c() {
        return this.f22579h;
    }

    public AdSessionStatePublisher d() {
        return this.f22576e;
    }

    public View e() {
        return this.f22575d.get();
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (!this.f22578g) {
            g.a(errorType, "Error type is null");
            g.a(str, "Message is null");
            d().a(errorType, str);
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    public List<e> f() {
        return this.f22574c.a();
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public void finish() {
        if (this.f22578g) {
            return;
        }
        this.f22575d.clear();
        removeAllFriendlyObstructions();
        this.f22578g = true;
        d().f();
        c.c().b(this);
        d().b();
        this.f22576e = null;
        this.f22582k = null;
    }

    public boolean g() {
        if (this.f22582k != null) {
            return true;
        }
        return false;
    }

    public boolean h() {
        if (this.f22577f && !this.f22578g) {
            return true;
        }
        return false;
    }

    public boolean i() {
        return this.f22578g;
    }

    public boolean j() {
        return this.f22573b.isNativeImpressionOwner();
    }

    public boolean k() {
        return this.f22573b.isNativeMediaEventsOwner();
    }

    public boolean l() {
        return this.f22577f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        a();
        d().g();
        this.f22580i = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        b();
        d().h();
        this.f22581j = true;
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public void registerAdView(@Nullable View view) {
        if (this.f22578g || e() == view) {
            return;
        }
        b(view);
        d().a();
        a(view);
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f22578g) {
            return;
        }
        this.f22574c.b();
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f22578g) {
            return;
        }
        this.f22574c.c(view);
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public void setPossibleObstructionListener(PossibleObstructionListener possibleObstructionListener) {
        this.f22582k = possibleObstructionListener;
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public void start() {
        if (!this.f22577f && this.f22576e != null) {
            this.f22577f = true;
            c.c().c(this);
            this.f22576e.a(i.c().b());
            this.f22576e.a(com.iab.omid.library.appodeal.internal.a.a().b());
            this.f22576e.a(this, this.f22572a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext, String str) {
        this.f22574c = new f();
        this.f22577f = false;
        this.f22578g = false;
        this.f22573b = adSessionConfiguration;
        this.f22572a = adSessionContext;
        this.f22579h = str;
        b(null);
        this.f22576e = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.appodeal.publisher.a(str, adSessionContext.getWebView()) : new b(str, adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f22576e.i();
        c.c().a(this);
        this.f22576e.a(adSessionConfiguration);
    }

    private void a(@Nullable View view) {
        Collection<a> b10 = c.c().b();
        if (b10 == null || b10.isEmpty()) {
            return;
        }
        for (a aVar : b10) {
            if (aVar != this && aVar.e() == view) {
                aVar.f22575d.clear();
            }
        }
    }

    private void b(@Nullable View view) {
        this.f22575d = new com.iab.omid.library.appodeal.weakreference.a(view);
    }

    public void a(List<com.iab.omid.library.appodeal.weakreference.a> list) {
        if (g()) {
            ArrayList arrayList = new ArrayList();
            for (com.iab.omid.library.appodeal.weakreference.a aVar : list) {
                View view = aVar.get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.f22582k.onPossibleObstructionsDetected(this.f22579h, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull JSONObject jSONObject) {
        b();
        d().a(jSONObject);
        this.f22581j = true;
    }
}
