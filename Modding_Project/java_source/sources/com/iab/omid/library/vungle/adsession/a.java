package com.iab.omid.library.vungle.adsession;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.iab.omid.library.vungle.internal.c;
import com.iab.omid.library.vungle.internal.e;
import com.iab.omid.library.vungle.internal.f;
import com.iab.omid.library.vungle.internal.i;
import com.iab.omid.library.vungle.publisher.AdSessionStatePublisher;
import com.iab.omid.library.vungle.publisher.b;
import com.iab.omid.library.vungle.utils.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class a extends AdSession {

    /* renamed from: a  reason: collision with root package name */
    private final AdSessionContext f23236a;

    /* renamed from: b  reason: collision with root package name */
    private final AdSessionConfiguration f23237b;

    /* renamed from: c  reason: collision with root package name */
    private final f f23238c;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.vungle.weakreference.a f23239d;

    /* renamed from: e  reason: collision with root package name */
    private AdSessionStatePublisher f23240e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f23241f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f23242g;

    /* renamed from: h  reason: collision with root package name */
    private final String f23243h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f23244i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f23245j;

    /* renamed from: k  reason: collision with root package name */
    private PossibleObstructionListener f23246k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this(adSessionConfiguration, adSessionContext, UUID.randomUUID().toString());
    }

    private void a() {
        if (this.f23244i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private void b() {
        if (this.f23245j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    @Override // com.iab.omid.library.vungle.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        if (this.f23242g) {
            return;
        }
        this.f23238c.a(view, friendlyObstructionPurpose, str);
    }

    public String c() {
        return this.f23243h;
    }

    public AdSessionStatePublisher d() {
        return this.f23240e;
    }

    public View e() {
        return this.f23239d.get();
    }

    @Override // com.iab.omid.library.vungle.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (!this.f23242g) {
            g.a(errorType, "Error type is null");
            g.a(str, "Message is null");
            d().a(errorType, str);
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    public List<e> f() {
        return this.f23238c.a();
    }

    @Override // com.iab.omid.library.vungle.adsession.AdSession
    public void finish() {
        if (this.f23242g) {
            return;
        }
        this.f23239d.clear();
        removeAllFriendlyObstructions();
        this.f23242g = true;
        d().f();
        c.c().b(this);
        d().b();
        this.f23240e = null;
        this.f23246k = null;
    }

    public boolean g() {
        if (this.f23246k != null) {
            return true;
        }
        return false;
    }

    public boolean h() {
        if (this.f23241f && !this.f23242g) {
            return true;
        }
        return false;
    }

    public boolean i() {
        return this.f23242g;
    }

    public boolean j() {
        return this.f23237b.isNativeImpressionOwner();
    }

    public boolean k() {
        return this.f23237b.isNativeMediaEventsOwner();
    }

    public boolean l() {
        return this.f23241f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        a();
        d().g();
        this.f23244i = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        b();
        d().h();
        this.f23245j = true;
    }

    @Override // com.iab.omid.library.vungle.adsession.AdSession
    public void registerAdView(@Nullable View view) {
        if (this.f23242g || e() == view) {
            return;
        }
        b(view);
        d().a();
        a(view);
    }

    @Override // com.iab.omid.library.vungle.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f23242g) {
            return;
        }
        this.f23238c.b();
    }

    @Override // com.iab.omid.library.vungle.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f23242g) {
            return;
        }
        this.f23238c.c(view);
    }

    @Override // com.iab.omid.library.vungle.adsession.AdSession
    public void setPossibleObstructionListener(PossibleObstructionListener possibleObstructionListener) {
        this.f23246k = possibleObstructionListener;
    }

    @Override // com.iab.omid.library.vungle.adsession.AdSession
    public void start() {
        if (!this.f23241f && this.f23240e != null) {
            this.f23241f = true;
            c.c().c(this);
            this.f23240e.a(i.c().b());
            this.f23240e.a(com.iab.omid.library.vungle.internal.a.a().b());
            this.f23240e.a(this, this.f23236a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext, String str) {
        this.f23238c = new f();
        this.f23241f = false;
        this.f23242g = false;
        this.f23237b = adSessionConfiguration;
        this.f23236a = adSessionContext;
        this.f23243h = str;
        b(null);
        this.f23240e = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.vungle.publisher.a(str, adSessionContext.getWebView()) : new b(str, adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f23240e.i();
        c.c().a(this);
        this.f23240e.a(adSessionConfiguration);
    }

    private void a(@Nullable View view) {
        Collection<a> b10 = c.c().b();
        if (b10 == null || b10.isEmpty()) {
            return;
        }
        for (a aVar : b10) {
            if (aVar != this && aVar.e() == view) {
                aVar.f23239d.clear();
            }
        }
    }

    private void b(@Nullable View view) {
        this.f23239d = new com.iab.omid.library.vungle.weakreference.a(view);
    }

    public void a(List<com.iab.omid.library.vungle.weakreference.a> list) {
        if (g()) {
            ArrayList arrayList = new ArrayList();
            for (com.iab.omid.library.vungle.weakreference.a aVar : list) {
                View view = aVar.get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.f23246k.onPossibleObstructionsDetected(this.f23243h, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull JSONObject jSONObject) {
        b();
        d().a(jSONObject);
        this.f23245j = true;
    }
}
