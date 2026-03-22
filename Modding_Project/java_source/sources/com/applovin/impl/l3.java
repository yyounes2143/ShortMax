package com.applovin.impl;

import android.content.Context;
import android.text.TextUtils;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.b0;
import com.applovin.impl.b3;
import com.applovin.impl.o2;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.x6;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class l3 extends p2 implements AppLovinCommunicatorSubscriber, b0.a {
    private List A;
    private List B;
    private List C;
    private List D;
    private List E;

    /* renamed from: e  reason: collision with root package name */
    private com.applovin.impl.sdk.k f8315e;

    /* renamed from: f  reason: collision with root package name */
    private List f8316f;

    /* renamed from: g  reason: collision with root package name */
    private List f8317g;

    /* renamed from: h  reason: collision with root package name */
    private List f8318h;

    /* renamed from: i  reason: collision with root package name */
    private List f8319i;

    /* renamed from: j  reason: collision with root package name */
    private String f8320j;

    /* renamed from: k  reason: collision with root package name */
    private String f8321k;

    /* renamed from: l  reason: collision with root package name */
    private String f8322l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f8323m;

    /* renamed from: n  reason: collision with root package name */
    private final StringBuilder f8324n;

    /* renamed from: o  reason: collision with root package name */
    private final AtomicBoolean f8325o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f8326p;

    /* renamed from: q  reason: collision with root package name */
    private List f8327q;

    /* renamed from: r  reason: collision with root package name */
    private List f8328r;

    /* renamed from: s  reason: collision with root package name */
    private List f8329s;

    /* renamed from: t  reason: collision with root package name */
    private List f8330t;

    /* renamed from: u  reason: collision with root package name */
    private List f8331u;

    /* renamed from: v  reason: collision with root package name */
    private List f8332v;

    /* renamed from: w  reason: collision with root package name */
    private List f8333w;

    /* renamed from: x  reason: collision with root package name */
    private List f8334x;

    /* renamed from: y  reason: collision with root package name */
    private List f8335y;

    /* renamed from: z  reason: collision with root package name */
    private List f8336z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8337a;

        static {
            int[] iArr = new int[b0.b.values().length];
            f8337a = iArr;
            try {
                iArr[b0.b.APP_DETAILS_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8337a[b0.b.INVALID_DEVELOPER_URI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8337a[b0.b.APPADSTXT_NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8337a[b0.b.MISSING_APPLOVIN_ENTRIES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8337a[b0.b.MISSING_NON_APPLOVIN_ENTRIES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public enum b {
        AD_UNITS,
        SELECT_LIVE_NETWORKS,
        SELECT_TEST_MODE_NETWORKS,
        INITIALIZATION_AD_UNITS,
        COUNT
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum c {
        SUCCESS,
        WARNING,
        ERROR
    }

    /* loaded from: classes2.dex */
    public enum d {
        CMP,
        NETWORK_CONSENT_STATUSES,
        DO_NOT_SELL,
        COUNT
    }

    /* loaded from: classes2.dex */
    public enum e {
        APP_INFO,
        MAX,
        PRIVACY,
        ADS,
        INCOMPLETE_NETWORKS,
        MICRO_SDK_PARTNER_NETWORKS,
        COMPLETED_NETWORKS,
        MISSING_NETWORKS,
        COUNT
    }

    public l3(Context context) {
        super(context);
        this.f8324n = new StringBuilder("");
        this.f8325o = new AtomicBoolean();
        this.f8327q = new ArrayList();
        this.f8328r = new ArrayList();
        this.f8329s = new ArrayList();
        this.f8330t = new ArrayList();
        this.f8331u = new ArrayList();
        this.f8332v = new ArrayList();
        this.f8333w = new ArrayList();
        this.f8334x = new ArrayList();
        this.f8335y = new ArrayList();
        this.f8336z = new ArrayList();
        this.A = new ArrayList();
        this.B = new ArrayList();
        this.C = new ArrayList();
        this.D = new ArrayList();
        this.E = new ArrayList();
    }

    private List g() {
        boolean c10 = this.f8315e.t0().c();
        List b10 = this.f8315e.t0().b();
        if (c10) {
            return a((String) null, a(b10, false));
        }
        return a(a(b10, true), (String) null);
    }

    private List j() {
        String str;
        String str2;
        ArrayList arrayList = new ArrayList(7);
        try {
            str = this.f9196a.getPackageManager().getPackageInfo(this.f9196a.getPackageName(), 0).versionName;
        } catch (Throwable unused) {
            str = null;
        }
        arrayList.add(o2.a().d("Package Name").c(this.f9196a.getPackageName()).a());
        o2.b d10 = o2.a().d("App Version");
        String str3 = "None";
        if (!StringUtils.isValidString(str)) {
            str = "None";
        }
        arrayList.add(d10.c(str).a());
        arrayList.add(o2.a().d("OS").c(k7.d()).a());
        o2.b d11 = o2.a().d("Account");
        if (!StringUtils.isValidString(this.f8322l)) {
            str2 = "None";
        } else {
            str2 = this.f8322l;
        }
        arrayList.add(d11.c(str2).a());
        o2.b d12 = o2.a().d("Mediation Provider");
        if (StringUtils.isValidString(this.f8315e.V())) {
            str3 = this.f8315e.V();
        }
        arrayList.add(d12.c(str3).a());
        arrayList.add(o2.a().d("OM SDK Version").c(this.f8315e.e0().c()).a());
        arrayList.add(a(com.applovin.impl.sdk.k.G0()));
        return arrayList;
    }

    private o2 l() {
        int i10;
        int i11;
        String d10 = this.f8315e.s0().d();
        boolean isValidString = StringUtils.isValidString(d10);
        boolean isValidString2 = StringUtils.isValidString(this.f8315e.s0().j());
        o2.b d11 = o2.a(o2.c.DETAIL).d("CMP (Consent Management Platform)");
        if (!isValidString) {
            if (isValidString2) {
                d10 = "Unknown";
            } else {
                d10 = "None";
            }
        }
        o2.b c10 = d11.c(d10);
        if (this.f8323m) {
            boolean z10 = true;
            c10.a(true);
            if (isValidString2) {
                c10.a(this.f9196a);
            } else {
                c10.b("TC Data Not Found");
                c10.a("By January 16, 2024, if you use Google AdMob or Google Ad Manager, you must also use a Google-certified CMP. Test your app in EEA and UK regions to ensure that this warning doesn't appear in those regions.\n\nFor more details, see:\nhttps://support.google.com/admob/answer/13554116");
                if (this.f8315e.w().getConsentFlowUserGeography() != AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR) {
                    z10 = false;
                }
                if (z10) {
                    i10 = R.drawable.applovin_ic_x_mark;
                } else {
                    i10 = R.drawable.applovin_ic_warning;
                }
                c10.a(i10);
                if (z10) {
                    i11 = R.color.applovin_sdk_xmarkColor;
                } else {
                    i11 = R.color.applovin_sdk_warningColor;
                }
                c10.b(m0.a(i11, this.f9196a));
            }
        }
        return c10.a();
    }

    private o2 m() {
        return o2.a().d("MAX Terms and Privacy Policy Flow").a(this.f9196a).a(true).a();
    }

    private o2 n() {
        int i10;
        int i11;
        boolean hasSupportedCmp = this.f8315e.t().hasSupportedCmp();
        o2.b d10 = o2.a().d("Google UMP SDK");
        if (hasSupportedCmp) {
            i10 = R.drawable.applovin_ic_check_mark_bordered;
        } else {
            i10 = R.drawable.applovin_ic_x_mark;
        }
        o2.b a10 = d10.a(i10);
        if (hasSupportedCmp) {
            i11 = R.color.applovin_sdk_checkmarkColor;
        } else {
            i11 = R.color.applovin_sdk_xmarkColor;
        }
        return a10.b(m0.a(i11, this.f9196a)).b("Google UMP SDK").a("In order to use MAX Terms and Privacy Policy Flow, you must add the Google User Messaging Platform SDK as a dependency.\n\nFor more details, see:\nhttps://developers.applovin.com/en/android/overview/terms-and-privacy-policy-flow").a(!hasSupportedCmp).a();
    }

    private List q() {
        ArrayList arrayList = new ArrayList(7);
        arrayList.add(o2.a().d("SDK Version").c(AppLovinSdk.VERSION).a());
        String str = (String) this.f8315e.a(v4.I3);
        o2.b d10 = o2.a().d("Plugin Version");
        String str2 = "None";
        if (!StringUtils.isValidString(str)) {
            str = "None";
        }
        arrayList.add(d10.c(str).a());
        arrayList.add(e());
        if (this.f8315e.I0()) {
            String a10 = k7.a(this.f8315e.o0());
            if (StringUtils.isValidString(a10)) {
                str2 = a10;
            }
            arrayList.add(b("Unity Version", str2));
        }
        if (this.f8315e.y().j()) {
            arrayList.add(m());
            arrayList.add(n());
        } else if (this.f8315e.y().l()) {
            arrayList.add(u());
        }
        return arrayList;
    }

    private o2 r() {
        return o2.a().d("Network Consent Statuses").a(this.f9196a).a(true).a();
    }

    private List s() {
        ArrayList arrayList = new ArrayList(d.COUNT.ordinal());
        arrayList.add(l());
        if (StringUtils.isValidString(this.f8315e.s0().j())) {
            arrayList.add(r());
        } else {
            arrayList.add(new p4(p0.b(), false, this.f9196a));
        }
        arrayList.add(new p4(p0.a(), true, this.f9196a));
        return arrayList;
    }

    private o2 u() {
        return o2.a().d("Terms Flow").a(R.drawable.applovin_ic_x_mark).b(m0.a(R.color.applovin_sdk_xmarkColor, this.f9196a)).b("Terms Flow has been replaced").a(this.f8315e.y().g()).a(true).a();
    }

    private void z() {
        String str;
        StringBuilder sb2 = new StringBuilder("\n========== MEDIATION DEBUGGER ==========");
        sb2.append("\n========== APP INFO ==========");
        sb2.append("\nDev Build - " + k7.c(this.f8315e));
        StringBuilder sb3 = new StringBuilder();
        sb3.append("\nTest Mode - ");
        if (this.f8315e.t0().c()) {
            str = "enabled";
        } else {
            str = "disabled";
        }
        sb3.append(str);
        sb2.append(sb3.toString());
        sb2.append("\nTarget SDK - " + this.f8315e.B().E().get("target_sdk"));
        sb2.append("\n========== MAX ==========");
        String str2 = AppLovinSdk.VERSION;
        String str3 = (String) this.f8315e.a(v4.I3);
        String b10 = j.b();
        sb2.append("\nSDK Version - " + str2);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("\nPlugin Version - ");
        String str4 = "None";
        if (!StringUtils.isValidString(str3)) {
            str3 = "None";
        }
        sb4.append(str3);
        sb2.append(sb4.toString());
        StringBuilder sb5 = new StringBuilder();
        sb5.append("\nAd Review Version - ");
        if (!StringUtils.isValidString(b10)) {
            b10 = "Disabled";
        }
        sb5.append(b10);
        sb2.append(sb5.toString());
        if (this.f8315e.I0()) {
            String a10 = k7.a(this.f8315e.o0());
            StringBuilder sb6 = new StringBuilder();
            sb6.append("\nUnity Version - ");
            if (StringUtils.isValidString(a10)) {
                str4 = a10;
            }
            sb6.append(str4);
            sb2.append(sb6.toString());
        }
        sb2.append("\n========== PRIVACY ==========");
        sb2.append(p0.a(this.f9196a));
        sb2.append(this.f8315e.y().e());
        sb2.append("\n========== CMP (CONSENT MANAGEMENT PLATFORM) ==========");
        sb2.append(this.f8315e.s0().i());
        sb2.append("\n========== NETWORK CONSENT STATUSES ==========");
        for (x6 x6Var : d()) {
            sb2.append(x6Var.e());
        }
        sb2.append("\n========== NETWORKS ==========");
        for (b3 b3Var : this.f8328r) {
            a(sb2, b3Var.j());
        }
        for (b3 b3Var2 : this.f8329s) {
            a(sb2, b3Var2.j());
        }
        for (b3 b3Var3 : this.f8327q) {
            a(sb2, b3Var3.j());
        }
        sb2.append("\n========== AD UNITS ==========");
        for (n nVar : this.f8317g) {
            a(sb2, nVar.e());
        }
        sb2.append("\n========== END ==========");
        com.applovin.impl.sdk.o.g("MediationDebuggerListAdapter", sb2.toString());
        this.f8324n.append(sb2.toString());
    }

    public boolean a(o2 o2Var) {
        if (o2Var.k() == null) {
            return false;
        }
        return "MAX Terms and Privacy Policy Flow".equals(o2Var.k().toString());
    }

    public void b(boolean z10) {
        this.f8326p = z10;
    }

    @Override // com.applovin.impl.p2
    protected List c(int i10) {
        if (i10 == e.APP_INFO.ordinal()) {
            return this.f8334x;
        }
        if (i10 == e.MAX.ordinal()) {
            return this.f8335y;
        }
        if (i10 == e.PRIVACY.ordinal()) {
            return this.f8336z;
        }
        if (i10 == e.ADS.ordinal()) {
            return this.A;
        }
        if (i10 == e.INCOMPLETE_NETWORKS.ordinal()) {
            return this.B;
        }
        if (i10 == e.MICRO_SDK_PARTNER_NETWORKS.ordinal()) {
            return this.C;
        }
        if (i10 == e.COMPLETED_NETWORKS.ordinal()) {
            return this.D;
        }
        return this.E;
    }

    public List d() {
        ArrayList arrayList = new ArrayList();
        for (b3 b3Var : this.f8316f) {
            arrayList.add(b3Var.t());
        }
        String k10 = this.f8315e.s0().k();
        if (k10 != null) {
            String c10 = this.f8315e.s0().c();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                x6 x6Var = (x6) it.next();
                if (x6Var.f() == x6.a.TCF_VENDOR && x6Var.d() != null) {
                    x6Var.a(Boolean.valueOf(z6.a(k10, x6Var.d().intValue() - 1)));
                } else if (x6Var.f() == x6.a.ATP_NETWORK && x6Var.d() != null) {
                    x6Var.a(z6.a(x6Var.d().intValue(), c10));
                }
            }
        } else {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((x6) it2.next()).a(null);
            }
        }
        return arrayList;
    }

    @Override // com.applovin.impl.p2
    protected o2 e(int i10) {
        if (i10 == e.APP_INFO.ordinal()) {
            return new t4("APP INFO");
        }
        if (i10 == e.MAX.ordinal()) {
            return new t4("MAX");
        }
        if (i10 == e.PRIVACY.ordinal()) {
            return new t4("PRIVACY");
        }
        if (i10 == e.ADS.ordinal()) {
            return new t4("ADS");
        }
        if (i10 == e.INCOMPLETE_NETWORKS.ordinal()) {
            return new t4("INCOMPLETE SDK INTEGRATIONS");
        }
        if (i10 == e.MICRO_SDK_PARTNER_NETWORKS.ordinal()) {
            return new t4("APPLOVIN MICRO SDK PARTNERS");
        }
        if (i10 == e.COMPLETED_NETWORKS.ordinal()) {
            return new t4("COMPLETED SDK INTEGRATIONS");
        }
        return new t4("MISSING SDK INTEGRATIONS");
    }

    public List f() {
        return this.f8317g;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "MediationDebuggerListAdapter";
    }

    public String h() {
        return this.f8321k;
    }

    public String i() {
        return this.f8320j;
    }

    public List k() {
        return this.f8331u;
    }

    public List o() {
        return this.f8318h;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("privacy_setting_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.f8336z = s();
            c();
        } else if ("network_sdk_version_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.B = a(this.f8327q);
            this.C = a(this.f8328r);
            this.D = a(this.f8329s);
            c();
        } else if ("live_networks_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.A = a(a((List) appLovinCommunicatorMessage.getMessageData().getStringArrayList("live_networks"), true), (String) null);
            c();
        } else if ("test_mode_networks_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.A = a((String) null, a((List) appLovinCommunicatorMessage.getMessageData().getStringArrayList("test_mode_networks"), false));
            c();
        }
    }

    public String p() {
        return this.f8324n.toString();
    }

    public com.applovin.impl.sdk.k t() {
        return this.f8315e;
    }

    public String toString() {
        return "MediationDebuggerListAdapter{isInitialized=" + this.f8325o.get() + "}";
    }

    public List v() {
        return this.f8333w;
    }

    public List w() {
        return this.f8332v;
    }

    public boolean x() {
        return this.f8326p;
    }

    public boolean y() {
        return this.f8325o.get();
    }

    @Override // com.applovin.impl.p2
    protected int b() {
        return e.COUNT.ordinal();
    }

    private void b(List list) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            o f10 = ((n) it.next()).f();
            for (f8 f8Var : f10.a()) {
                hashSet.add(f8Var.b());
            }
            for (f8 f8Var2 : f10.e()) {
                hashSet2.add(f8Var2.b());
            }
        }
        this.f8331u = new ArrayList(hashSet);
        this.f8332v = new ArrayList(hashSet2);
        Collections.sort(this.f8331u);
        Collections.sort(this.f8332v);
    }

    public void a(List list, List list2, List list3, List list4, String str, String str2, String str3, boolean z10, com.applovin.impl.sdk.k kVar) {
        this.f8315e = kVar;
        this.f8316f = list;
        this.f8317g = list2;
        this.f8318h = list3;
        this.f8319i = list4;
        this.f8320j = str;
        this.f8321k = str2;
        this.f8322l = str3;
        this.f8323m = z10;
        if (list != null && this.f8325o.compareAndSet(false, true)) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().a("MediationDebuggerListAdapter", "Populating networks...");
            }
            c(list);
            b(list2);
            d(this.f8329s);
            this.f8334x.addAll(j());
            this.f8335y.addAll(q());
            this.f8336z.addAll(s());
            this.A.addAll(g());
            this.B = a(this.f8327q);
            this.C = a(this.f8328r);
            this.D = a(this.f8329s);
            this.E = a(this.f8330t);
            ArrayList arrayList = new ArrayList(3);
            arrayList.add("privacy_setting_updated");
            arrayList.add("network_sdk_version_updated");
            arrayList.add("live_networks_updated");
            arrayList.add("test_mode_networks_updated");
            AppLovinCommunicator.getInstance(this.f9196a).subscribe(this, arrayList);
            z();
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.zb
            @Override // java.lang.Runnable
            public final void run() {
                l3.this.notifyDataSetChanged();
            }
        });
    }

    @Override // com.applovin.impl.p2
    protected int d(int i10) {
        if (i10 == e.APP_INFO.ordinal()) {
            return this.f8334x.size();
        }
        if (i10 == e.MAX.ordinal()) {
            return this.f8335y.size();
        }
        if (i10 == e.PRIVACY.ordinal()) {
            return this.f8336z.size();
        }
        if (i10 == e.ADS.ordinal()) {
            return this.A.size();
        }
        if (i10 == e.INCOMPLETE_NETWORKS.ordinal()) {
            return this.B.size();
        }
        if (i10 == e.MICRO_SDK_PARTNER_NETWORKS.ordinal()) {
            return this.C.size();
        }
        if (i10 == e.COMPLETED_NETWORKS.ordinal()) {
            return this.D.size();
        }
        return this.E.size();
    }

    private o2 b(String str, String str2) {
        o2.b d10 = o2.a().d(str);
        if (StringUtils.isValidString(str2)) {
            d10.c(str2);
        } else {
            d10.a(R.drawable.applovin_ic_x_mark);
            d10.b(m0.a(R.color.applovin_sdk_xmarkColor, this.f9196a));
        }
        return d10.a();
    }

    private void c(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b3 b3Var = (b3) it.next();
            if (!b3Var.H()) {
                if (b3Var.q() != b3.a.INCOMPLETE_INTEGRATION && b3Var.q() != b3.a.INVALID_INTEGRATION) {
                    if (b3Var.q() == b3.a.COMPLETE) {
                        if (b3Var.z()) {
                            this.f8328r.add(b3Var);
                        } else {
                            this.f8329s.add(b3Var);
                        }
                    } else if (b3Var.q() == b3.a.MISSING) {
                        this.f8330t.add(b3Var);
                    }
                } else if (b3Var.z()) {
                    this.f8328r.add(b3Var);
                } else {
                    this.f8327q.add(b3Var);
                }
            }
        }
    }

    private o2 e() {
        String str;
        o2.b d10 = o2.a().d("Ad Review Version");
        String b10 = j.b();
        if (StringUtils.isValidString(b10)) {
            String a10 = j.a();
            if (!StringUtils.isValidString(a10) || a10.equals(this.f8315e.j0())) {
                str = null;
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("MAX Ad Review integrated with wrong SDK key. Please check that your ");
                sb2.append(this.f8315e.I0() ? "SDK key is downloaded" : "Gradle plugin snippet is integrated");
                sb2.append(" from the correct account.");
                str = sb2.toString();
            }
        } else {
            str = "Integrating MAX Ad review is OPTIONAL. This feature gives developers unprecedented transparency into the creatives the users see in their apps.";
        }
        if (str != null) {
            d10.b("MAX Ad Review").a(str).a(R.drawable.applovin_ic_x_mark).b(m0.a(R.color.applovin_sdk_xmarkColor, this.f9196a)).a(true);
        } else {
            d10.c(b10);
        }
        return d10.a();
    }

    private o2 b(String str) {
        o2.b a10 = o2.a();
        if (this.f8315e.t0().c()) {
            a10.a(this.f9196a);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(StringUtils.isValidString(str) ? "" : "Select ");
        sb2.append("Test Mode Network");
        o2.b d10 = a10.d(sb2.toString());
        if (!this.f8315e.t0().c()) {
            str = "Enable";
        }
        return d10.c(str).c(-16776961).a("Please re-launch the app to enable test mode. This will allow the selection of test mode networks.").a(true).a();
    }

    private void d(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b3 b3Var = (b3) it.next();
            if (b3Var.y() == b3.b.READY) {
                this.f8333w.add(b3Var);
            }
        }
    }

    @Override // com.applovin.impl.b0.a
    public void a(z zVar, String str) {
        String a10;
        c a11;
        c cVar;
        String str2;
        List<a0> a12 = b0.a(zVar, this.f8319i);
        if (a12.isEmpty()) {
            str2 = "All required entries found at " + str + ".";
            cVar = c.SUCCESS;
        } else {
            a0 a0Var = null;
            for (a0 a0Var2 : a12) {
                this.f8315e.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f8315e.O().b("MediationDebuggerListAdapter", str + " is missing a required entry: " + a0Var2.d());
                }
                if (a0Var2.g()) {
                    a0Var = a0Var2;
                }
            }
            if (a0Var != null) {
                b0.b bVar = b0.b.MISSING_APPLOVIN_ENTRIES;
                a10 = a(bVar, str, a0Var.d());
                a11 = a(bVar);
            } else {
                b0.b bVar2 = b0.b.MISSING_NON_APPLOVIN_ENTRIES;
                a10 = a(bVar2, str, null);
                a11 = a(bVar2);
            }
            String str3 = a10;
            cVar = a11;
            str2 = str3;
        }
        this.f8335y.add(a(str2, cVar));
        c();
    }

    @Override // com.applovin.impl.b0.a
    public void a(b0.b bVar, String str) {
        if (bVar == b0.b.APP_DETAILS_NOT_FOUND) {
            this.f8315e.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f8315e.O().a("MediationDebuggerListAdapter", "Could not retrieve app details for this package name; app-ads.txt row will not show on the mediation debugger.");
                return;
            }
            return;
        }
        this.f8335y.add(a(a(bVar, str, null), a(bVar)));
        c();
    }

    private void a(StringBuilder sb2, String str) {
        String sb3 = sb2.toString();
        if (sb3.length() + str.length() >= ((Integer) this.f8315e.a(v4.f10337r)).intValue()) {
            com.applovin.impl.sdk.o.g("MediationDebuggerListAdapter", sb3);
            this.f8324n.append(sb3);
            sb2.setLength(1);
        }
        sb2.append(str);
    }

    private List a(String str, String str2) {
        ArrayList arrayList = new ArrayList(3);
        o2.b a10 = o2.a();
        arrayList.add(a10.d("View Ad Units (" + this.f8317g.size() + ")").a(this.f9196a).a(true).a());
        arrayList.add(a(str));
        arrayList.add(b(str2));
        if (!this.f8318h.isEmpty()) {
            o2.b a11 = o2.a();
            arrayList.add(a11.d("Selective Init Ad Units (" + this.f8318h.size() + ")").a(this.f9196a).a(true).a());
        }
        arrayList.add(o2.a().d("Test Mode Enabled").c(String.valueOf(this.f8315e.t0().c())).a());
        return arrayList;
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new w3((b3) it.next(), this.f9196a));
        }
        return arrayList;
    }

    private o2 a(String str) {
        o2.b a10 = o2.a();
        if (!this.f8315e.t0().c()) {
            a10.a(this.f9196a);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(StringUtils.isValidString(str) ? "" : "Select ");
        sb2.append("Live Network");
        o2.b d10 = a10.d(sb2.toString());
        if (this.f8315e.t0().c()) {
            str = "Enable";
        }
        return d10.c(str).c(-16776961).a("Ad loads are not supported while Test Mode is enabled. Please restart the app and make sure your GAID has not been enabled for test mode and that you are not on an emulator.").a(true).a();
    }

    private o2 a(boolean z10) {
        return o2.a().d("Java 8").a(z10 ? R.drawable.applovin_ic_check_mark_bordered : R.drawable.applovin_ic_x_mark).b(m0.a(z10 ? R.color.applovin_sdk_checkmarkColor : R.color.applovin_sdk_xmarkColor, this.f9196a)).b("Upgrade to Java 8").a("For optimal performance, please enable Java 8 support. This will be required in a future SDK release. See: https://developers.applovin.com/en/android/overview/integration").a(!z10).a();
    }

    private o2 a(String str, c cVar) {
        int i10;
        int a10;
        if (cVar == c.SUCCESS) {
            i10 = R.drawable.applovin_ic_check_mark_bordered;
            a10 = m0.a(R.color.applovin_sdk_checkmarkColor, this.f9196a);
        } else if (cVar == c.WARNING) {
            i10 = R.drawable.applovin_ic_warning;
            a10 = m0.a(R.color.applovin_sdk_warningColor, this.f9196a);
        } else {
            i10 = R.drawable.applovin_ic_x_mark;
            a10 = m0.a(R.color.applovin_sdk_xmarkColor, this.f9196a);
        }
        return o2.a().d("app-ads.txt").a(i10).b(a10).b("app-ads.txt").a(str).a(true).a();
    }

    private String a(b0.b bVar, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            str = "app-ads.txt URL";
        }
        int i10 = a.f8337a[bVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return "Unable to find app-ads.txt file or parse entries of the file at " + str + ".\n\nFor more information, please visit Account -> App-Ads.txt Info at:\nhttps://dash.applovin.com/o/account?r=2#app_ads_txt";
                } else if (i10 != 4) {
                    if (i10 != 5) {
                        return "";
                    }
                    return "Text file at " + str + " is missing some of the suggested lines.\n\nFor more information, please visit Account -> App-Ads.txt Info at:\nhttps://dash.applovin.com/o/account?r=2#app_ads_txt";
                } else {
                    return "Text file at " + str + " is missing the required AppLovin line:\n\n" + str2 + "\n\nFor more information, please visit Account -> App-Ads.txt Info at:\nhttps://dash.applovin.com/o/account?r=2#app_ads_txt";
                }
            }
            return "Unable to find a valid developer URL from the Play Store listing.";
        }
        return "Could not retrieve app details from the Play Store for this package name. Check back once this app has been published on the Play Store.";
    }

    private c a(b0.b bVar) {
        int i10 = a.f8337a[bVar.ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4) {
            return c.ERROR;
        }
        if (i10 != 5) {
            return c.ERROR;
        }
        return c.WARNING;
    }

    private String a(List list, boolean z10) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        if (z10) {
            for (r2 r2Var : this.f8331u) {
                if (list.equals(r2Var.b())) {
                    return r2Var.a();
                }
            }
            for (r2 r2Var2 : this.f8332v) {
                if (list.equals(r2Var2.b())) {
                    return r2Var2.a();
                }
            }
        } else {
            for (b3 b3Var : this.f8333w) {
                if (list.equals(b3Var.u())) {
                    return b3Var.g();
                }
            }
        }
        return tb.a(",", list);
    }
}
