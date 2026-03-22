package com.applovin.impl.adview;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebViewClient;
import com.applovin.impl.e2;
import com.applovin.impl.j0;
import com.applovin.impl.k7;
import com.applovin.impl.l7;
import com.applovin.impl.l8;
import com.applovin.impl.o0;
import com.applovin.impl.o7;
import com.applovin.impl.r4;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t7;
import com.applovin.impl.v4;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public class b extends j0 {

    /* renamed from: j  reason: collision with root package name */
    private static final Set f7411j = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: k  reason: collision with root package name */
    private static final Object f7412k = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f7413c;

    /* renamed from: d  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7414d;

    /* renamed from: e  reason: collision with root package name */
    private com.applovin.impl.sdk.ad.b f7415e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f7416f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f7417g;

    /* renamed from: h  reason: collision with root package name */
    private final List f7418h;

    /* renamed from: i  reason: collision with root package name */
    private final Object f7419i;

    /* loaded from: classes2.dex */
    class a extends r4 {
        a() {
        }

        @Override // com.applovin.impl.r4
        protected Map a() {
            return CollectionUtils.hashMap("name", "AdWebView");
        }
    }

    public b(c cVar, com.applovin.impl.sdk.k kVar, Context context) {
        super(context);
        WebViewClient aVar;
        com.applovin.impl.adview.a aVar2;
        this.f7418h = new ArrayList();
        this.f7419i = new Object();
        if (kVar != null) {
            this.f7414d = kVar;
            this.f7413c = kVar.O();
            Integer num = (Integer) kVar.a(v4.f10368u6);
            if (num.intValue() > 0) {
                synchronized (f7412k) {
                    Set set = f7411j;
                    set.add(this);
                    k7.a("AdWebView", set.size(), num.intValue(), kVar.E());
                }
            }
            setBackgroundColor(0);
            WebSettings settings = getSettings();
            settings.setSupportMultipleWindows(false);
            settings.setJavaScriptEnabled(true);
            if (cVar != null) {
                aVar = cVar;
            } else {
                aVar = new a();
            }
            setWebViewClient(aVar);
            if (cVar != null) {
                aVar2 = cVar.d();
            } else {
                aVar2 = null;
            }
            setWebChromeClient(new com.applovin.impl.t(aVar2, kVar));
            setVerticalScrollBarEnabled(false);
            setHorizontalScrollBarEnabled(false);
            setScrollBarStyle(33554432);
            if (o0.j() && ((Boolean) kVar.a(v4.N5)).booleanValue()) {
                setWebViewRenderProcessClient(new d(kVar).a());
            }
            setOnTouchListener(new View.OnTouchListener() { // from class: com.applovin.impl.adview.c0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean a10;
                    a10 = b.a(view, motionEvent);
                    return a10;
                }
            });
            setOnLongClickListener(new View.OnLongClickListener() { // from class: com.applovin.impl.adview.d0
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean a10;
                    a10 = b.this.a(view);
                    return a10;
                }
            });
            return;
        }
        throw new IllegalArgumentException("No sdk specified.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        if (view.hasFocus()) {
            return false;
        }
        view.requestFocus();
        return false;
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f7416f = true;
        this.f7417g = false;
        super.destroy();
    }

    public com.applovin.impl.sdk.ad.b getCurrentAd() {
        return this.f7415e;
    }

    public void setAdHtmlLoaded(boolean z10) {
        this.f7417g = z10;
        if (z10 && ((Boolean) this.f7414d.a(v4.f10304m6)).booleanValue()) {
            b();
        }
    }

    private void b() {
        synchronized (this.f7419i) {
            try {
                for (String str : this.f7418h) {
                    l8.a(this, str, "AdWebView", this.f7414d);
                }
                this.f7418h.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(View view) {
        if (com.applovin.impl.sdk.o.a()) {
            this.f7413c.a("AdWebView", "Received a LongClick event.");
            return true;
        }
        return true;
    }

    public void a(com.applovin.impl.sdk.ad.b bVar) {
        String str;
        if (!this.f7416f) {
            this.f7415e = bVar;
            try {
                applySettings(bVar);
                if (k7.a(bVar.getSize())) {
                    setVisibility(0);
                }
                bVar.a(SystemClock.elapsedRealtime());
                if (bVar instanceof com.applovin.impl.sdk.ad.a) {
                    loadDataWithBaseURL(bVar.k(), ((com.applovin.impl.sdk.ad.a) bVar).s1(), "text/html", null, "");
                    if (com.applovin.impl.sdk.o.a()) {
                        this.f7413c.a("AdWebView", "AppLovinAd rendered");
                        return;
                    }
                    return;
                } else if (bVar instanceof l7) {
                    l7 l7Var = (l7) bVar;
                    o7 s12 = l7Var.s1();
                    if (s12 != null) {
                        t7 e10 = s12.e();
                        Uri c10 = e10.c();
                        if (c10 != null) {
                            str = c10.toString();
                        } else {
                            str = "";
                        }
                        String str2 = str;
                        String b10 = e10.b();
                        String u12 = l7Var.u1();
                        if (!StringUtils.isValidString(str2) && !StringUtils.isValidString(b10)) {
                            if (com.applovin.impl.sdk.o.a()) {
                                this.f7413c.b("AdWebView", "Unable to load companion ad. No resources provided.");
                                return;
                            }
                            return;
                        }
                        if (e10.d() == t7.a.STATIC) {
                            if (com.applovin.impl.sdk.o.a()) {
                                this.f7413c.a("AdWebView", "Rendering WebView for static VAST ad");
                            }
                            String a10 = a((String) this.f7414d.a(v4.D4), str2);
                            if (l7Var.J1() && l7Var.isOpenMeasurementEnabled() && l7Var.K1()) {
                                a10 = this.f7414d.e0().a(a10, e2.a((AppLovinAdImpl) bVar));
                            }
                            loadDataWithBaseURL(bVar.k(), a10, "text/html", null, "");
                            return;
                        } else if (e10.d() == t7.a.HTML) {
                            if (StringUtils.isValidString(b10)) {
                                String a11 = a(u12, b10);
                                String str3 = StringUtils.isValidString(a11) ? a11 : b10;
                                if (com.applovin.impl.sdk.o.a()) {
                                    com.applovin.impl.sdk.o oVar = this.f7413c;
                                    oVar.a("AdWebView", "Rendering WebView for HTML VAST ad with resourceContents: " + str3);
                                }
                                loadDataWithBaseURL(bVar.k(), str3, "text/html", null, "");
                                return;
                            } else if (StringUtils.isValidString(str2)) {
                                if (com.applovin.impl.sdk.o.a()) {
                                    this.f7413c.a("AdWebView", "Preparing to load HTML VAST ad resourceUri");
                                }
                                a(str2, bVar.k(), u12, this.f7414d, l7Var);
                                return;
                            } else {
                                return;
                            }
                        } else if (e10.d() == t7.a.IFRAME) {
                            if (StringUtils.isValidString(str2)) {
                                if (com.applovin.impl.sdk.o.a()) {
                                    this.f7413c.a("AdWebView", "Preparing to load iFrame VAST ad resourceUri");
                                }
                                a(str2, bVar.k(), u12, this.f7414d, l7Var);
                                return;
                            } else if (StringUtils.isValidString(b10)) {
                                String a12 = a(u12, b10);
                                String str4 = StringUtils.isValidString(a12) ? a12 : b10;
                                if (com.applovin.impl.sdk.o.a()) {
                                    com.applovin.impl.sdk.o oVar2 = this.f7413c;
                                    oVar2.a("AdWebView", "Rendering WebView for iFrame VAST ad with resourceContents: " + str4);
                                }
                                loadDataWithBaseURL(bVar.k(), str4, "text/html", null, "");
                                return;
                            } else {
                                return;
                            }
                        } else if (com.applovin.impl.sdk.o.a()) {
                            this.f7413c.b("AdWebView", "Failed to render VAST companion ad of invalid type");
                            return;
                        } else {
                            return;
                        }
                    } else if (com.applovin.impl.sdk.o.a()) {
                        this.f7413c.a("AdWebView", "No companion ad provided.");
                        return;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } catch (Throwable th2) {
                String valueOf = bVar != null ? String.valueOf(bVar.getAdIdNumber()) : "null";
                throw new RuntimeException("Unable to render AppLovin ad (" + valueOf + ") - " + th2);
            }
        }
        com.applovin.impl.sdk.o.h("AdWebView", "Ad can not be loaded in a destroyed webview");
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
    }

    @Override // android.view.View
    public void scrollTo(int i10, int i11) {
    }

    public void a(String str) {
        if (((Boolean) this.f7414d.a(v4.f10304m6)).booleanValue()) {
            if (this.f7417g) {
                l8.a(this, str, "AdWebView", this.f7414d);
                return;
            }
            synchronized (this.f7418h) {
                this.f7418h.add(str);
            }
            return;
        }
        l8.a(this, str, "AdWebView", this.f7414d);
    }

    private void a(String str, String str2, String str3, com.applovin.impl.sdk.k kVar, l7 l7Var) {
        String a10 = a(str3, str);
        if (StringUtils.isValidString(a10)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7413c;
                oVar.a("AdWebView", "Rendering webview for VAST ad with resourceContents : " + a10);
            }
            loadDataWithBaseURL(str2, a10, "text/html", null, "");
            return;
        }
        String a11 = a((String) kVar.a(v4.E4), str);
        if (StringUtils.isValidString(a11)) {
            if (l7Var.J1() && l7Var.isOpenMeasurementEnabled()) {
                a11 = kVar.e0().a(a11, e2.a((AppLovinAdImpl) l7Var));
            }
            String str4 = a11;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.f7413c;
                oVar2.a("AdWebView", "Rendering webview for VAST ad with resourceContents : " + str4);
            }
            loadDataWithBaseURL(str2, str4, "text/html", null, "");
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar3 = this.f7413c;
            oVar3.a("AdWebView", "Rendering webview for VAST ad with resourceURL : " + str);
        }
        loadUrl(str);
    }

    private String a(String str, String str2) {
        if (StringUtils.isValidString(str)) {
            return str.replace("{SOURCE}", str2);
        }
        return null;
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i10, int i11, int i12, int i13) {
    }
}
