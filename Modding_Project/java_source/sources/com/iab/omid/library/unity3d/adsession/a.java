package com.iab.omid.library.unity3d.adsession;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.iab.omid.library.unity3d.internal.c;
import com.iab.omid.library.unity3d.internal.e;
import com.iab.omid.library.unity3d.internal.h;
import com.iab.omid.library.unity3d.publisher.AdSessionStatePublisher;
import com.iab.omid.library.unity3d.publisher.b;
import com.iab.omid.library.unity3d.utils.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class a extends AdSession {

    /* renamed from: l  reason: collision with root package name */
    private static final Pattern f23108l = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: a  reason: collision with root package name */
    private final AdSessionContext f23109a;

    /* renamed from: b  reason: collision with root package name */
    private final AdSessionConfiguration f23110b;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.unity3d.weakreference.a f23112d;

    /* renamed from: e  reason: collision with root package name */
    private AdSessionStatePublisher f23113e;

    /* renamed from: h  reason: collision with root package name */
    private final String f23116h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f23117i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f23118j;

    /* renamed from: k  reason: collision with root package name */
    private PossibleObstructionListener f23119k;

    /* renamed from: c  reason: collision with root package name */
    private final List<e> f23111c = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private boolean f23114f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f23115g = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        AdSessionStatePublisher aVar;
        this.f23110b = adSessionConfiguration;
        this.f23109a = adSessionContext;
        String uuid = UUID.randomUUID().toString();
        this.f23116h = uuid;
        d(null);
        if (adSessionContext.getAdSessionContextType() != AdSessionContextType.HTML && adSessionContext.getAdSessionContextType() != AdSessionContextType.JAVASCRIPT) {
            aVar = new b(uuid, adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        } else {
            aVar = new com.iab.omid.library.unity3d.publisher.a(uuid, adSessionContext.getWebView());
        }
        this.f23113e = aVar;
        this.f23113e.i();
        c.c().a(this);
        this.f23113e.a(adSessionConfiguration);
    }

    private void a() {
        if (this.f23117i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private e b(View view) {
        for (e eVar : this.f23111c) {
            if (eVar.c().get() == view) {
                return eVar;
            }
        }
        return null;
    }

    @Override // com.iab.omid.library.unity3d.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        if (this.f23115g) {
            return;
        }
        a(view);
        a(str);
        if (b(view) == null) {
            this.f23111c.add(new e(view, friendlyObstructionPurpose, str));
        }
    }

    public View c() {
        return this.f23112d.get();
    }

    public List<e> d() {
        return this.f23111c;
    }

    public boolean e() {
        if (this.f23119k != null) {
            return true;
        }
        return false;
    }

    @Override // com.iab.omid.library.unity3d.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (!this.f23115g) {
            g.a(errorType, "Error type is null");
            g.a(str, "Message is null");
            getAdSessionStatePublisher().a(errorType, str);
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    public boolean f() {
        if (this.f23114f && !this.f23115g) {
            return true;
        }
        return false;
    }

    @Override // com.iab.omid.library.unity3d.adsession.AdSession
    public void finish() {
        if (this.f23115g) {
            return;
        }
        this.f23112d.clear();
        removeAllFriendlyObstructions();
        this.f23115g = true;
        getAdSessionStatePublisher().f();
        c.c().b(this);
        getAdSessionStatePublisher().b();
        this.f23113e = null;
        this.f23119k = null;
    }

    public boolean g() {
        return this.f23115g;
    }

    @Override // com.iab.omid.library.unity3d.adsession.AdSession
    public String getAdSessionId() {
        return this.f23116h;
    }

    @Override // com.iab.omid.library.unity3d.adsession.AdSession
    public AdSessionStatePublisher getAdSessionStatePublisher() {
        return this.f23113e;
    }

    public boolean h() {
        return this.f23110b.isNativeImpressionOwner();
    }

    public boolean i() {
        return this.f23110b.isNativeMediaEventsOwner();
    }

    public boolean j() {
        return this.f23114f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        a();
        getAdSessionStatePublisher().g();
        this.f23117i = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        b();
        getAdSessionStatePublisher().h();
        this.f23118j = true;
    }

    @Override // com.iab.omid.library.unity3d.adsession.AdSession
    public void registerAdView(View view) {
        if (this.f23115g) {
            return;
        }
        g.a(view, "AdView is null");
        if (c() == view) {
            return;
        }
        d(view);
        getAdSessionStatePublisher().a();
        c(view);
    }

    @Override // com.iab.omid.library.unity3d.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f23115g) {
            return;
        }
        this.f23111c.clear();
    }

    @Override // com.iab.omid.library.unity3d.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f23115g) {
            return;
        }
        a(view);
        e b10 = b(view);
        if (b10 != null) {
            this.f23111c.remove(b10);
        }
    }

    @Override // com.iab.omid.library.unity3d.adsession.AdSession
    public void setPossibleObstructionListener(PossibleObstructionListener possibleObstructionListener) {
        this.f23119k = possibleObstructionListener;
    }

    @Override // com.iab.omid.library.unity3d.adsession.AdSession
    public void start() {
        if (this.f23114f) {
            return;
        }
        this.f23114f = true;
        c.c().c(this);
        this.f23113e.a(h.c().b());
        this.f23113e.a(com.iab.omid.library.unity3d.internal.a.a().b());
        this.f23113e.a(this, this.f23109a);
    }

    private static void a(View view) {
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
    }

    private void b() {
        if (this.f23118j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    private void c(View view) {
        Collection<a> b10 = c.c().b();
        if (b10 == null || b10.isEmpty()) {
            return;
        }
        for (a aVar : b10) {
            if (aVar != this && aVar.c() == view) {
                aVar.f23112d.clear();
            }
        }
    }

    private void d(View view) {
        this.f23112d = new com.iab.omid.library.unity3d.weakreference.a(view);
    }

    private void a(String str) {
        if (str != null) {
            if (str.length() > 50) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason over 50 characters in length");
            }
            if (!f23108l.matcher(str).matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
            }
        }
    }

    public void a(List<com.iab.omid.library.unity3d.weakreference.a> list) {
        if (e()) {
            ArrayList arrayList = new ArrayList();
            for (com.iab.omid.library.unity3d.weakreference.a aVar : list) {
                View view = aVar.get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.f23119k.onPossibleObstructionsDetected(this.f23116h, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull JSONObject jSONObject) {
        b();
        getAdSessionStatePublisher().a(jSONObject);
        this.f23118j = true;
    }
}
