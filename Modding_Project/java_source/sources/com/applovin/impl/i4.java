package com.applovin.impl;

import android.text.TextUtils;
import android.webkit.WebView;
import com.applovin.impl.sdk.utils.StringUtils;
import com.iab.omid.library.applovin.adsession.AdSession;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.CreativeType;
import com.iab.omid.library.applovin.adsession.ImpressionType;
import com.iab.omid.library.applovin.adsession.Owner;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import com.iab.omid.library.applovin.adsession.media.InteractionType;
import com.iab.omid.library.applovin.adsession.media.MediaEvents;
import com.iab.omid.library.applovin.adsession.media.Position;
import com.iab.omid.library.applovin.adsession.media.VastProperties;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class i4 extends c4 {

    /* renamed from: p  reason: collision with root package name */
    static final /* synthetic */ boolean f8112p = true;

    /* renamed from: h  reason: collision with root package name */
    private final l7 f8113h;

    /* renamed from: i  reason: collision with root package name */
    private final AtomicBoolean f8114i;

    /* renamed from: j  reason: collision with root package name */
    private MediaEvents f8115j;

    /* renamed from: k  reason: collision with root package name */
    private final VastProperties f8116k;

    /* renamed from: l  reason: collision with root package name */
    private final AtomicBoolean f8117l;

    /* renamed from: m  reason: collision with root package name */
    private final AtomicBoolean f8118m;

    /* renamed from: n  reason: collision with root package name */
    private final AtomicBoolean f8119n;

    /* renamed from: o  reason: collision with root package name */
    private final AtomicBoolean f8120o;

    public i4(l7 l7Var) {
        super(l7Var);
        this.f8114i = new AtomicBoolean();
        this.f8117l = new AtomicBoolean();
        this.f8118m = new AtomicBoolean();
        this.f8119n = new AtomicBoolean();
        this.f8120o = new AtomicBoolean();
        this.f8113h = l7Var;
        float y12 = (float) l7Var.y1();
        if (l7Var.y1() == -1) {
            this.f8116k = VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE);
        } else {
            this.f8116k = VastProperties.createVastPropertiesForSkippableMedia(y12, true, Position.STANDALONE);
        }
    }

    public void A() {
        b("track resumed", new Runnable() { // from class: com.applovin.impl.ra
            @Override // java.lang.Runnable
            public final void run() {
                i4.this.s();
            }
        });
    }

    public void B() {
        b("track skipped", new Runnable() { // from class: com.applovin.impl.ab
            @Override // java.lang.Runnable
            public final void run() {
                i4.this.t();
            }
        });
    }

    public void C() {
        if (this.f8120o.compareAndSet(false, true)) {
            b("track third quartile", new Runnable() { // from class: com.applovin.impl.sa
                @Override // java.lang.Runnable
                public final void run() {
                    i4.this.u();
                }
            });
        }
    }

    @Override // com.applovin.impl.c4
    protected AdSessionContext a(WebView webView) {
        VerificationScriptResource createVerificationScriptResourceWithoutParameters;
        if (f8112p || this.f8113h.r1() != null) {
            ArrayList arrayList = new ArrayList();
            for (m7 m7Var : this.f8113h.r1().b()) {
                List<s7> c10 = m7Var.c();
                if (c10.isEmpty()) {
                    x7.a(m7Var.b(), q7.FAILED_TO_LOAD_RESOURCE, this.f7696b);
                } else {
                    ArrayList<s7> arrayList2 = new ArrayList();
                    for (s7 s7Var : c10) {
                        if (CampaignEx.KEY_OMID.equalsIgnoreCase(s7Var.b())) {
                            arrayList2.add(s7Var);
                        }
                    }
                    if (arrayList2.isEmpty()) {
                        x7.a(m7Var.b(), q7.API_FRAMEWORK_OR_LANGUAGE_TYPE_NOT_SUPPORTED, this.f7696b);
                    } else {
                        ArrayList<URL> arrayList3 = new ArrayList();
                        for (s7 s7Var2 : arrayList2) {
                            try {
                                arrayList3.add(new URL(s7Var2.c()));
                            } catch (Throwable th2) {
                                if (com.applovin.impl.sdk.o.a()) {
                                    this.f7697c.a(this.f7698d, "Failed to parse JavaScript resource url", th2);
                                }
                            }
                        }
                        if (arrayList3.isEmpty()) {
                            x7.a(m7Var.b(), q7.FAILED_TO_LOAD_RESOURCE, this.f7696b);
                        } else {
                            String e10 = m7Var.e();
                            String d10 = m7Var.d();
                            if (StringUtils.isValidString(e10) && !StringUtils.isValidString(d10)) {
                                x7.a(m7Var.b(), q7.FAILED_TO_LOAD_RESOURCE, this.f7696b);
                            } else {
                                for (URL url : arrayList3) {
                                    if (StringUtils.isValidString(e10)) {
                                        createVerificationScriptResourceWithoutParameters = VerificationScriptResource.createVerificationScriptResourceWithParameters(d10, url, e10);
                                    } else {
                                        createVerificationScriptResourceWithoutParameters = VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url);
                                    }
                                    arrayList.add(createVerificationScriptResourceWithoutParameters);
                                }
                            }
                        }
                    }
                }
            }
            String a10 = this.f7696b.e0().a();
            if (TextUtils.isEmpty(a10)) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7697c.b(this.f7698d, "JavaScript SDK content not loaded successfully");
                }
                return null;
            }
            try {
                return AdSessionContext.createNativeAdSessionContext(this.f7696b.e0().b(), a10, arrayList, this.f8113h.getOpenMeasurementContentUrl(), this.f8113h.getOpenMeasurementCustomReferenceData());
            } catch (Throwable th3) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7697c.a(this.f7698d, "Failed to create ad session context", th3);
                    return null;
                }
                return null;
            }
        }
        throw new AssertionError();
    }

    public void b(final float f10, final boolean z10) {
        if (this.f8117l.compareAndSet(false, true)) {
            b("track started", new Runnable() { // from class: com.applovin.impl.ya
                @Override // java.lang.Runnable
                public final void run() {
                    i4.this.a(f10, z10);
                }
            });
        }
    }

    @Override // com.applovin.impl.c4
    public void h() {
        b("track loaded", new Runnable() { // from class: com.applovin.impl.db
            @Override // java.lang.Runnable
            public final void run() {
                i4.this.p();
            }
        });
    }

    public void v() {
        b("track clicked", new Runnable() { // from class: com.applovin.impl.xa
            @Override // java.lang.Runnable
            public final void run() {
                i4.this.m();
            }
        });
    }

    public void w() {
        b("track completed", new Runnable() { // from class: com.applovin.impl.bb
            @Override // java.lang.Runnable
            public final void run() {
                i4.this.n();
            }
        });
    }

    public void x() {
        if (this.f8118m.compareAndSet(false, true)) {
            b("track first quartile", new Runnable() { // from class: com.applovin.impl.va
                @Override // java.lang.Runnable
                public final void run() {
                    i4.this.o();
                }
            });
        }
    }

    public void y() {
        if (this.f8119n.compareAndSet(false, true)) {
            b("track midpoint", new Runnable() { // from class: com.applovin.impl.ta
                @Override // java.lang.Runnable
                public final void run() {
                    i4.this.q();
                }
            });
        }
    }

    public void z() {
        b("track paused", new Runnable() { // from class: com.applovin.impl.ua
            @Override // java.lang.Runnable
            public final void run() {
                i4.this.r();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        this.f8115j.bufferFinish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        this.f8115j.bufferStart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m() {
        this.f8115j.adUserInteraction(InteractionType.CLICK);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() {
        this.f8115j.complete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        this.f8115j.firstQuartile();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p() {
        this.f7701g.loaded(this.f8116k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q() {
        this.f8115j.midpoint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r() {
        this.f8115j.pause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        this.f8115j.resume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        this.f8115j.skipped();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
        this.f8115j.thirdQuartile();
    }

    public void i() {
        if (this.f8114i.compareAndSet(true, false)) {
            b("buffer finished", new Runnable() { // from class: com.applovin.impl.za
                @Override // java.lang.Runnable
                public final void run() {
                    i4.this.k();
                }
            });
        }
    }

    public void j() {
        if (this.f8114i.compareAndSet(false, true)) {
            b("buffer started", new Runnable() { // from class: com.applovin.impl.wa
                @Override // java.lang.Runnable
                public final void run() {
                    i4.this.l();
                }
            });
        }
    }

    public void b(final boolean z10) {
        b("track volume changed", new Runnable() { // from class: com.applovin.impl.cb
            @Override // java.lang.Runnable
            public final void run() {
                i4.this.a(z10);
            }
        });
    }

    @Override // com.applovin.impl.c4
    protected AdSessionConfiguration a() {
        try {
            CreativeType creativeType = CreativeType.VIDEO;
            ImpressionType impressionType = ImpressionType.BEGIN_TO_RENDER;
            Owner owner = Owner.NATIVE;
            return AdSessionConfiguration.createAdSessionConfiguration(creativeType, impressionType, owner, owner, false);
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7697c.a(this.f7698d, "Failed to create ad session configuration", th2);
            }
            return null;
        }
    }

    @Override // com.applovin.impl.c4
    protected void a(AdSession adSession) {
        try {
            this.f8115j = MediaEvents.createMediaEvents(adSession);
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7697c.a(this.f7698d, "Failed to create media events", th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(float f10, boolean z10) {
        this.f8115j.start(f10, z10 ? 0.0f : 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z10) {
        this.f8115j.volumeChange(z10 ? 0.0f : 1.0f);
    }
}
