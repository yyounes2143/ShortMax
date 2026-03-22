package com.iab.omid.library.bytedance2.adsession;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.iab.omid.library.bytedance2.internal.c;
import com.iab.omid.library.bytedance2.internal.e;
import com.iab.omid.library.bytedance2.internal.f;
import com.iab.omid.library.bytedance2.internal.i;
import com.iab.omid.library.bytedance2.publisher.AdSessionStatePublisher;
import com.iab.omid.library.bytedance2.publisher.b;
import com.iab.omid.library.bytedance2.utils.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class a extends AdSession {

    /* renamed from: a  reason: collision with root package name */
    private final AdSessionContext f22708a;

    /* renamed from: b  reason: collision with root package name */
    private final AdSessionConfiguration f22709b;

    /* renamed from: c  reason: collision with root package name */
    private final f f22710c;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.bytedance2.weakreference.a f22711d;

    /* renamed from: e  reason: collision with root package name */
    private AdSessionStatePublisher f22712e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f22713f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f22714g;

    /* renamed from: h  reason: collision with root package name */
    private final String f22715h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f22716i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f22717j;

    /* renamed from: k  reason: collision with root package name */
    private PossibleObstructionListener f22718k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this(adSessionConfiguration, adSessionContext, UUID.randomUUID().toString());
    }

    private void a() {
        if (this.f22716i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private void b() {
        if (this.f22717j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        if (this.f22714g) {
            return;
        }
        this.f22710c.a(view, friendlyObstructionPurpose, str);
    }

    public View c() {
        return this.f22711d.get();
    }

    public List<e> d() {
        return this.f22710c.a();
    }

    public boolean e() {
        if (this.f22718k != null) {
            return true;
        }
        return false;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (!this.f22714g) {
            g.a(errorType, "Error type is null");
            g.a(str, "Message is null");
            getAdSessionStatePublisher().a(errorType, str);
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    public boolean f() {
        if (this.f22713f && !this.f22714g) {
            return true;
        }
        return false;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void finish() {
        if (this.f22714g) {
            return;
        }
        this.f22711d.clear();
        removeAllFriendlyObstructions();
        this.f22714g = true;
        getAdSessionStatePublisher().f();
        c.c().b(this);
        getAdSessionStatePublisher().b();
        this.f22712e = null;
        this.f22718k = null;
    }

    public boolean g() {
        return this.f22714g;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public String getAdSessionId() {
        return this.f22715h;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public AdSessionStatePublisher getAdSessionStatePublisher() {
        return this.f22712e;
    }

    public boolean h() {
        return this.f22709b.isNativeImpressionOwner();
    }

    public boolean i() {
        return this.f22709b.isNativeMediaEventsOwner();
    }

    public boolean j() {
        return this.f22713f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        a();
        getAdSessionStatePublisher().g();
        this.f22716i = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        b();
        getAdSessionStatePublisher().h();
        this.f22717j = true;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void registerAdView(View view) {
        if (this.f22714g) {
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

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f22714g) {
            return;
        }
        this.f22710c.b();
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f22714g) {
            return;
        }
        this.f22710c.c(view);
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void setPossibleObstructionListener(PossibleObstructionListener possibleObstructionListener) {
        this.f22718k = possibleObstructionListener;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void start() {
        if (this.f22713f) {
            return;
        }
        this.f22713f = true;
        c.c().c(this);
        this.f22712e.a(i.c().b());
        this.f22712e.a(com.iab.omid.library.bytedance2.internal.a.a().b());
        this.f22712e.a(this, this.f22708a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext, String str) {
        this.f22710c = new f();
        this.f22713f = false;
        this.f22714g = false;
        this.f22709b = adSessionConfiguration;
        this.f22708a = adSessionContext;
        this.f22715h = str;
        b(null);
        this.f22712e = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.bytedance2.publisher.a(str, adSessionContext.getWebView()) : new b(str, adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f22712e.i();
        c.c().a(this);
        this.f22712e.a(adSessionConfiguration);
    }

    private void a(View view) {
        Collection<a> b10 = c.c().b();
        if (b10 == null || b10.isEmpty()) {
            return;
        }
        for (a aVar : b10) {
            if (aVar != this && aVar.c() == view) {
                aVar.f22711d.clear();
            }
        }
    }

    private void b(View view) {
        this.f22711d = new com.iab.omid.library.bytedance2.weakreference.a(view);
    }

    public void a(List<com.iab.omid.library.bytedance2.weakreference.a> list) {
        if (e()) {
            ArrayList arrayList = new ArrayList();
            for (com.iab.omid.library.bytedance2.weakreference.a aVar : list) {
                View view = aVar.get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.f22718k.onPossibleObstructionsDetected(this.f22715h, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull JSONObject jSONObject) {
        b();
        getAdSessionStatePublisher().a(jSONObject);
        this.f22717j = true;
    }
}
