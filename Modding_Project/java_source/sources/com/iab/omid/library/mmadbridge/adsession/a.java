package com.iab.omid.library.mmadbridge.adsession;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.iab.omid.library.mmadbridge.internal.c;
import com.iab.omid.library.mmadbridge.internal.e;
import com.iab.omid.library.mmadbridge.internal.f;
import com.iab.omid.library.mmadbridge.internal.i;
import com.iab.omid.library.mmadbridge.publisher.AdSessionStatePublisher;
import com.iab.omid.library.mmadbridge.publisher.b;
import com.iab.omid.library.mmadbridge.utils.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class a extends AdSession {

    /* renamed from: a  reason: collision with root package name */
    private final AdSessionContext f22973a;

    /* renamed from: b  reason: collision with root package name */
    private final AdSessionConfiguration f22974b;

    /* renamed from: c  reason: collision with root package name */
    private final f f22975c;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.weakreference.a f22976d;

    /* renamed from: e  reason: collision with root package name */
    private AdSessionStatePublisher f22977e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f22978f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f22979g;

    /* renamed from: h  reason: collision with root package name */
    private final String f22980h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f22981i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f22982j;

    /* renamed from: k  reason: collision with root package name */
    private PossibleObstructionListener f22983k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this(adSessionConfiguration, adSessionContext, UUID.randomUUID().toString());
    }

    private void a() {
        if (this.f22981i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private void b() {
        if (this.f22982j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        if (this.f22979g) {
            return;
        }
        this.f22975c.a(view, friendlyObstructionPurpose, str);
    }

    public View c() {
        return this.f22976d.get();
    }

    public List<e> d() {
        return this.f22975c.a();
    }

    public boolean e() {
        if (this.f22983k != null) {
            return true;
        }
        return false;
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (!this.f22979g) {
            g.a(errorType, "Error type is null");
            g.a(str, "Message is null");
            getAdSessionStatePublisher().a(errorType, str);
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    public boolean f() {
        if (this.f22978f && !this.f22979g) {
            return true;
        }
        return false;
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.AdSession
    public void finish() {
        if (this.f22979g) {
            return;
        }
        this.f22976d.clear();
        removeAllFriendlyObstructions();
        this.f22979g = true;
        getAdSessionStatePublisher().f();
        c.c().b(this);
        getAdSessionStatePublisher().b();
        this.f22977e = null;
        this.f22983k = null;
    }

    public boolean g() {
        return this.f22979g;
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.AdSession
    public String getAdSessionId() {
        return this.f22980h;
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.AdSession
    public AdSessionStatePublisher getAdSessionStatePublisher() {
        return this.f22977e;
    }

    public boolean h() {
        return this.f22974b.isNativeImpressionOwner();
    }

    public boolean i() {
        return this.f22974b.isNativeMediaEventsOwner();
    }

    public boolean j() {
        return this.f22978f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        a();
        getAdSessionStatePublisher().g();
        this.f22981i = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        b();
        getAdSessionStatePublisher().h();
        this.f22982j = true;
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.AdSession
    public void registerAdView(View view) {
        if (this.f22979g) {
            return;
        }
        g.a(view, "AdView is null");
        if (c() == view) {
            return;
        }
        b(view);
        getAdSessionStatePublisher().a();
        a(view);
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f22979g) {
            return;
        }
        this.f22975c.b();
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f22979g) {
            return;
        }
        this.f22975c.c(view);
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.AdSession
    public void setPossibleObstructionListener(PossibleObstructionListener possibleObstructionListener) {
        this.f22983k = possibleObstructionListener;
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.AdSession
    public void start() {
        if (this.f22978f) {
            return;
        }
        this.f22978f = true;
        c.c().c(this);
        this.f22977e.a(i.c().b());
        this.f22977e.a(com.iab.omid.library.mmadbridge.internal.a.a().b());
        this.f22977e.a(this, this.f22973a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext, String str) {
        this.f22975c = new f();
        this.f22978f = false;
        this.f22979g = false;
        this.f22974b = adSessionConfiguration;
        this.f22973a = adSessionContext;
        this.f22980h = str;
        b(null);
        this.f22977e = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.mmadbridge.publisher.a(str, adSessionContext.getWebView()) : new b(str, adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f22977e.i();
        c.c().a(this);
        this.f22977e.a(adSessionConfiguration);
    }

    private void a(View view) {
        Collection<a> b10 = c.c().b();
        if (b10 == null || b10.isEmpty()) {
            return;
        }
        for (a aVar : b10) {
            if (aVar != this && aVar.c() == view) {
                aVar.f22976d.clear();
            }
        }
    }

    private void b(View view) {
        this.f22976d = new com.iab.omid.library.mmadbridge.weakreference.a(view);
    }

    public void a(List<com.iab.omid.library.mmadbridge.weakreference.a> list) {
        if (e()) {
            ArrayList arrayList = new ArrayList();
            for (com.iab.omid.library.mmadbridge.weakreference.a aVar : list) {
                View view = aVar.get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.f22983k.onPossibleObstructionsDetected(this.f22980h, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull JSONObject jSONObject) {
        b();
        getAdSessionStatePublisher().a(jSONObject);
        this.f22982j = true;
    }
}
