package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.applovin.impl.e0;
import com.applovin.impl.j5;
import com.applovin.impl.l7;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t7;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes2.dex */
class l5 extends j5 {

    /* renamed from: q  reason: collision with root package name */
    private final l7 f8365q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements e0.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ t7 f8366a;

        a(t7 t7Var) {
            this.f8366a = t7Var;
        }

        @Override // com.applovin.impl.e0.a
        public void a(Uri uri) {
            if (uri != null) {
                this.f8366a.a(uri);
                l5.this.f8365q.b(true);
                return;
            }
            com.applovin.impl.sdk.o oVar = l5.this.f7962c;
            if (com.applovin.impl.sdk.o.a()) {
                l5 l5Var = l5.this;
                l5Var.f7962c.b(l5Var.f7961b, "Failed to cache static companion ad");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements j5.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ t7 f8368a;

        b(t7 t7Var) {
            this.f8368a = t7Var;
        }

        @Override // com.applovin.impl.j5.e
        public void a(String str) {
            this.f8368a.a(str);
            l5.this.f8365q.b(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements j5.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ t7 f8370a;

        c(t7 t7Var) {
            this.f8370a = t7Var;
        }

        @Override // com.applovin.impl.j5.e
        public void a(String str) {
            this.f8370a.a(str);
            l5.this.f8365q.b(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements e0.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ z7 f8372a;

        d(z7 z7Var) {
            this.f8372a = z7Var;
        }

        @Override // com.applovin.impl.e0.a
        public void a(Uri uri) {
            if (uri != null) {
                com.applovin.impl.sdk.o oVar = l5.this.f7962c;
                if (com.applovin.impl.sdk.o.a()) {
                    l5 l5Var = l5.this;
                    com.applovin.impl.sdk.o oVar2 = l5Var.f7962c;
                    String str = l5Var.f7961b;
                    oVar2.a(str, "Video file successfully cached into: " + uri);
                }
                this.f8372a.a(uri);
                return;
            }
            com.applovin.impl.sdk.o oVar3 = l5.this.f7962c;
            if (com.applovin.impl.sdk.o.a()) {
                l5 l5Var2 = l5.this;
                com.applovin.impl.sdk.o oVar4 = l5Var2.f7962c;
                String str2 = l5Var2.f7961b;
                oVar4.b(str2, "Failed to cache video file: " + this.f8372a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements j5.e {
        e() {
        }

        @Override // com.applovin.impl.j5.e
        public void a(String str) {
            if (l5.this.f8365q.isOpenMeasurementEnabled()) {
                str = l5.this.f7960a.e0().a(str, e2.a((AppLovinAdImpl) l5.this.f8177g));
            }
            l5.this.f8365q.d(str);
            com.applovin.impl.sdk.o oVar = l5.this.f7962c;
            if (com.applovin.impl.sdk.o.a()) {
                l5 l5Var = l5.this;
                com.applovin.impl.sdk.o oVar2 = l5Var.f7962c;
                String str2 = l5Var.f7961b;
                oVar2.a(str2, "Finish caching HTML template " + l5.this.f8365q.u1() + " for ad #" + l5.this.f8365q.getAdIdNumber());
            }
        }
    }

    public l5(l7 l7Var, com.applovin.impl.sdk.k kVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super("TaskCacheVastAd", l7Var, kVar, appLovinAdLoadListener);
        this.f8365q = l7Var;
    }

    private String d(String str) {
        for (String str2 : StringUtils.getRegexMatches(StringUtils.match(str, (String) this.f7960a.a(v4.X4)), 1)) {
            if (!TextUtils.isEmpty(str2)) {
                Uri a10 = a(str2, Collections.emptyList(), false);
                if (a10 != null) {
                    str = str.replace(str2, a10.toString());
                    this.f8177g.a(a10);
                } else if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.f7962c;
                    String str3 = this.f7961b;
                    oVar.b(str3, "Failed to cache JavaScript resource: " + str2);
                }
            }
        }
        return str;
    }

    private void m() {
        String str;
        if (l()) {
            return;
        }
        if (this.f8365q.G1()) {
            o7 s12 = this.f8365q.s1();
            if (s12 != null) {
                t7 e10 = s12.e();
                if (e10 != null) {
                    Uri c10 = e10.c();
                    if (c10 != null) {
                        str = c10.toString();
                    } else {
                        str = "";
                    }
                    String b10 = e10.b();
                    if (!URLUtil.isValidUrl(str) && !StringUtils.isValidString(b10)) {
                        if (com.applovin.impl.sdk.o.a()) {
                            this.f7962c.k(this.f7961b, "Companion ad does not have any resources attached. Skipping...");
                        }
                    } else if (e10.d() == t7.a.STATIC) {
                        if (com.applovin.impl.sdk.o.a()) {
                            com.applovin.impl.sdk.o oVar = this.f7962c;
                            String str2 = this.f7961b;
                            oVar.a(str2, "Caching static companion ad at " + str + "...");
                        }
                        Uri a10 = a(str, Collections.emptyList(), false);
                        if (a10 != null) {
                            e10.a(a10);
                            this.f8365q.b(true);
                        } else if (com.applovin.impl.sdk.o.a()) {
                            this.f7962c.b(this.f7961b, "Failed to cache static companion ad");
                        }
                    } else if (e10.d() == t7.a.HTML) {
                        if (StringUtils.isValidString(str)) {
                            if (com.applovin.impl.sdk.o.a()) {
                                com.applovin.impl.sdk.o oVar2 = this.f7962c;
                                String str3 = this.f7961b;
                                oVar2.a(str3, "Begin caching HTML companion ad. Fetching from " + str + "...");
                            }
                            String c11 = c(str, null, false);
                            if (StringUtils.isValidString(c11)) {
                                if (com.applovin.impl.sdk.o.a()) {
                                    this.f7962c.a(this.f7961b, "HTML fetched. Caching HTML now...");
                                }
                                e10.a(a(c11, Collections.emptyList(), this.f8365q));
                                this.f8365q.b(true);
                                return;
                            } else if (com.applovin.impl.sdk.o.a()) {
                                com.applovin.impl.sdk.o oVar3 = this.f7962c;
                                String str4 = this.f7961b;
                                oVar3.b(str4, "Unable to load companion ad resources from " + str);
                                return;
                            } else {
                                return;
                            }
                        }
                        if (com.applovin.impl.sdk.o.a()) {
                            com.applovin.impl.sdk.o oVar4 = this.f7962c;
                            String str5 = this.f7961b;
                            oVar4.a(str5, "Caching provided HTML for companion ad. No fetch required. HTML: " + b10);
                        }
                        if (((Boolean) this.f7960a.a(v4.W4)).booleanValue()) {
                            b10 = d(b10);
                        }
                        e10.a(a(b10, Collections.emptyList(), this.f8365q));
                        this.f8365q.b(true);
                    } else if (e10.d() == t7.a.IFRAME && com.applovin.impl.sdk.o.a()) {
                        this.f7962c.a(this.f7961b, "Skip caching of iFrame resource...");
                    }
                } else if (com.applovin.impl.sdk.o.a()) {
                    this.f7962c.b(this.f7961b, "Failed to retrieve non-video resources from companion ad. Skipping...");
                }
            } else if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "No companion ad provided. Skipping...");
            }
        } else if (com.applovin.impl.sdk.o.a()) {
            this.f7962c.a(this.f7961b, "Companion ad caching disabled. Skipping...");
        }
    }

    private void n() {
        if (!l() && x7.a(this.f8365q)) {
            String u12 = this.f8365q.u1();
            if (StringUtils.isValidString(u12)) {
                String a10 = a(u12, this.f8365q.c0(), this.f8177g);
                if (this.f8365q.isOpenMeasurementEnabled()) {
                    a10 = this.f7960a.e0().a(a10, e2.a((AppLovinAdImpl) this.f8177g));
                }
                this.f8365q.d(a10);
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.f7962c;
                    String str = this.f7961b;
                    oVar.a(str, "Finish caching HTML template " + this.f8365q.u1() + " for ad #" + this.f8365q.getAdIdNumber());
                }
            } else if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Unable to load HTML template");
            }
        }
    }

    private void o() {
        z7 C1;
        Uri e10;
        if (l()) {
            return;
        }
        if (this.f8365q.H1()) {
            if (this.f8365q.B1() != null && (C1 = this.f8365q.C1()) != null && (e10 = C1.e()) != null) {
                Uri b10 = b(e10.toString(), Collections.emptyList(), false);
                if (b10 != null) {
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar = this.f7962c;
                        String str = this.f7961b;
                        oVar.a(str, "Video file successfully cached into: " + b10);
                    }
                    C1.a(b10);
                } else if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar2 = this.f7962c;
                    String str2 = this.f7961b;
                    oVar2.b(str2, "Failed to cache video file: " + C1);
                }
            }
        } else if (com.applovin.impl.sdk.o.a()) {
            this.f7962c.a(this.f7961b, "Video caching disabled. Skipping...");
        }
    }

    private c0 p() {
        String str;
        if (!this.f8365q.G1()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Companion ad caching disabled. Skipping...");
            }
            return null;
        }
        o7 s12 = this.f8365q.s1();
        if (s12 == null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "No companion ad provided. Skipping...");
            }
            return null;
        }
        t7 e10 = s12.e();
        if (e10 == null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.b(this.f7961b, "Failed to retrieve non-video resources from companion ad. Skipping...");
            }
            return null;
        }
        Uri c10 = e10.c();
        if (c10 != null) {
            str = c10.toString();
        } else {
            str = "";
        }
        String str2 = str;
        String b10 = e10.b();
        if (!URLUtil.isValidUrl(str2) && !StringUtils.isValidString(b10)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.k(this.f7961b, "Companion ad does not have any resources attached. Skipping...");
            }
        } else if (e10.d() == t7.a.STATIC) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str3 = this.f7961b;
                oVar.a(str3, "Caching static companion ad at " + str2 + "...");
            }
            return new e0(str2, this.f8365q, Collections.emptyList(), false, this.f8179i, this.f7960a, new a(e10));
        } else if (e10.d() == t7.a.HTML) {
            if (StringUtils.isValidString(str2)) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar2 = this.f7962c;
                    String str4 = this.f7961b;
                    oVar2.a(str4, "Begin caching HTML companion ad. Fetching from " + str2 + "...");
                }
                String c11 = c(str2, null, false);
                if (StringUtils.isValidString(c11)) {
                    if (com.applovin.impl.sdk.o.a()) {
                        this.f7962c.a(this.f7961b, "HTML fetched. Caching HTML now...");
                    }
                    return a(c11, Collections.emptyList(), new b(e10));
                } else if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar3 = this.f7962c;
                    String str5 = this.f7961b;
                    oVar3.b(str5, "Unable to load companion ad resources from " + str2);
                }
            } else {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar4 = this.f7962c;
                    String str6 = this.f7961b;
                    oVar4.a(str6, "Caching provided HTML for companion ad. No fetch required. HTML: " + b10);
                }
                return a(b10, Collections.emptyList(), new c(e10));
            }
        } else if (e10.d() == t7.a.IFRAME && com.applovin.impl.sdk.o.a()) {
            this.f7962c.a(this.f7961b, "Skip caching of iFrame resource...");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.impl.j5
    public void f() {
        this.f8365q.getAdEventTracker().h();
        super.f();
    }

    protected d0 q() {
        if (TextUtils.isEmpty(this.f8365q.u1())) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Unable to load HTML template");
                return null;
            }
            return null;
        }
        return a(this.f8365q.u1(), this.f8365q.c0(), new e());
    }

    protected e0 r() {
        z7 C1;
        Uri e10;
        if (!this.f8365q.H1()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Video caching disabled. Skipping...");
            }
            return null;
        } else if (this.f8365q.B1() == null || (C1 = this.f8365q.C1()) == null || (e10 = C1.e()) == null) {
            return null;
        } else {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str = this.f7961b;
                oVar.a(str, "Caching video file " + C1 + " creative...");
            }
            return a(e10.toString(), Collections.emptyList(), false, new d(C1));
        }
    }

    @Override // com.applovin.impl.j5, java.lang.Runnable
    public void run() {
        String str;
        super.run();
        boolean O0 = this.f8365q.O0();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str2 = this.f7961b;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Begin caching for VAST ");
            if (O0) {
                str = "streaming ";
            } else {
                str = "";
            }
            sb2.append(str);
            sb2.append("ad #");
            sb2.append(this.f8177g.getAdIdNumber());
            sb2.append("...");
            oVar.a(str2, sb2.toString());
        }
        if (O0) {
            if (((Boolean) this.f7960a.a(v4.I0)).booleanValue()) {
                if (!o0.e()) {
                    a(e());
                }
                if (this.f8365q.E1()) {
                    f();
                    ArrayList arrayList = new ArrayList();
                    c0 p10 = p();
                    if (p10 != null) {
                        arrayList.add(p10);
                    }
                    d0 q10 = q();
                    if (q10 != null) {
                        arrayList.add(q10);
                    }
                    e0 r10 = r();
                    if (r10 != null) {
                        arrayList.add(r10);
                    }
                    a(arrayList);
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    if (this.f8365q.v1() == l7.c.COMPANION_AD) {
                        c0 p11 = p();
                        if (p11 != null) {
                            arrayList2.add(p11);
                        }
                        d0 q11 = q();
                        if (q11 != null) {
                            arrayList2.add(q11);
                        }
                        a(arrayList2);
                        f();
                        e0 r11 = r();
                        if (r11 != null) {
                            arrayList3.add(r11);
                        }
                        a(arrayList3);
                    } else {
                        e0 r12 = r();
                        if (r12 != null) {
                            arrayList2.add(r12);
                        }
                        a(arrayList2);
                        f();
                        c0 p12 = p();
                        if (p12 != null) {
                            arrayList3.add(p12);
                        }
                        d0 q12 = q();
                        if (q12 != null) {
                            arrayList3.add(q12);
                        }
                        a(arrayList3);
                    }
                }
            } else {
                j();
                if (this.f8365q.E1()) {
                    f();
                }
                l7.c v12 = this.f8365q.v1();
                l7.c cVar = l7.c.COMPANION_AD;
                if (v12 == cVar) {
                    m();
                    n();
                    a(this.f8365q);
                } else {
                    o();
                }
                if (!this.f8365q.E1()) {
                    f();
                }
                if (this.f8365q.v1() == cVar) {
                    o();
                } else {
                    m();
                    n();
                    a(this.f8365q);
                }
            }
        } else if (((Boolean) this.f7960a.a(v4.I0)).booleanValue()) {
            ArrayList arrayList4 = new ArrayList();
            if (!o0.e()) {
                arrayList4.addAll(e());
            }
            c0 p13 = p();
            if (p13 != null) {
                arrayList4.add(p13);
            }
            e0 r13 = r();
            if (r13 != null) {
                arrayList4.add(r13);
            }
            d0 q13 = q();
            if (q13 != null) {
                arrayList4.add(q13);
            }
            a(arrayList4);
            f();
        } else {
            j();
            m();
            o();
            n();
            a(this.f8365q);
            f();
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar2 = this.f7962c;
            String str3 = this.f7961b;
            oVar2.a(str3, "Finished caching VAST ad #" + this.f8365q.getAdIdNumber());
        }
        this.f8365q.F1();
        k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.impl.j5
    public void a(int i10) {
        this.f8365q.getAdEventTracker().f();
        super.a(i10);
    }
}
