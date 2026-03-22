package com.applovin.impl;

import android.text.TextUtils;
import androidx.core.internal.view.SupportMenu;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAppOpenAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxNativeAdAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class b3 implements Comparable, AppLovinCommunicatorSubscriber {
    private final List A;
    private final List B;
    private final List C;
    private final List D;
    private final Map E;
    private final boolean F;
    private final boolean G;
    private final x6 H;
    private final boolean I;
    private final String J;
    private final Map K;

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7507a;

    /* renamed from: b  reason: collision with root package name */
    private final a f7508b;

    /* renamed from: c  reason: collision with root package name */
    private int f7509c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f7510d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f7511e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f7512f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f7513g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f7514h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f7515i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f7516j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f7517k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f7518l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f7519m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f7520n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f7521o;

    /* renamed from: p  reason: collision with root package name */
    private final String f7522p;

    /* renamed from: q  reason: collision with root package name */
    private final String f7523q;

    /* renamed from: r  reason: collision with root package name */
    private String f7524r;

    /* renamed from: s  reason: collision with root package name */
    private String f7525s;

    /* renamed from: t  reason: collision with root package name */
    private final String f7526t;

    /* renamed from: u  reason: collision with root package name */
    private final String f7527u;

    /* renamed from: v  reason: collision with root package name */
    private final String f7528v;

    /* renamed from: w  reason: collision with root package name */
    private final String f7529w;

    /* renamed from: x  reason: collision with root package name */
    private final int f7530x;

    /* renamed from: y  reason: collision with root package name */
    private final List f7531y;

    /* renamed from: z  reason: collision with root package name */
    private final List f7532z;

    /* loaded from: classes2.dex */
    public enum a {
        MISSING("MISSING"),
        INCOMPLETE_INTEGRATION("INCOMPLETE INTEGRATION"),
        INVALID_INTEGRATION("INVALID INTEGRATION"),
        COMPLETE("COMPLETE");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f7538a;

        a(String str) {
            this.f7538a = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String b() {
            return this.f7538a;
        }
    }

    /* loaded from: classes2.dex */
    public enum b {
        NOT_SUPPORTED("Not Supported", SupportMenu.CATEGORY_MASK, "This network does not support test mode."),
        INVALID_INTEGRATION("Invalid Integration", SupportMenu.CATEGORY_MASK, "Please address all the integration issue(s) marked in red above."),
        NOT_INITIALIZED("Not Initialized", SupportMenu.CATEGORY_MASK, "Please configure this network in your MAX dashboard."),
        DISABLED("Enable", -16776961, "Please re-launch the app to enable test ads."),
        READY("", -16776961, "");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f7545a;

        /* renamed from: b  reason: collision with root package name */
        private final int f7546b;

        /* renamed from: c  reason: collision with root package name */
        private final String f7547c;

        b(String str, int i10, String str2) {
            this.f7545a = str;
            this.f7546b = i10;
            this.f7547c = str2;
        }

        public String b() {
            return this.f7547c;
        }

        public String c() {
            return this.f7545a;
        }

        public int d() {
            return this.f7546b;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:62:0x0209
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public b3(org.json.JSONObject r20, com.applovin.impl.sdk.k r21) {
        /*
            Method dump skipped, instructions count: 824
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.b3.<init>(org.json.JSONObject, com.applovin.impl.sdk.k):void");
    }

    private a a() {
        a aVar;
        if (this.f7510d) {
            if (this.f7511e) {
                aVar = a.COMPLETE;
            } else if (this.f7513g) {
                aVar = a.MISSING;
            } else {
                aVar = a.INCOMPLETE_INTEGRATION;
            }
        } else if (this.f7511e) {
            aVar = a.INCOMPLETE_INTEGRATION;
        } else {
            aVar = a.MISSING;
        }
        if (aVar == a.MISSING) {
            return aVar;
        }
        for (m4 m4Var : this.f7532z) {
            if (!m4Var.c()) {
                return a.INVALID_INTEGRATION;
            }
        }
        for (j1 j1Var : this.A) {
            if (!j1Var.c()) {
                return a.INVALID_INTEGRATION;
            }
        }
        if (!this.f7521o || com.applovin.impl.sdk.k.G0()) {
            return F() ? a.INCOMPLETE_INTEGRATION : aVar;
        }
        return a.INVALID_INTEGRATION;
    }

    public boolean A() {
        return this.f7511e;
    }

    public boolean B() {
        return this.f7512f;
    }

    public boolean C() {
        return this.f7514h;
    }

    public boolean D() {
        return this.I;
    }

    public boolean E() {
        return this.f7521o;
    }

    public boolean F() {
        if (!this.f7520n || !StringUtils.isValidString(this.f7525s)) {
            return false;
        }
        return !k7.d(this.f7525s).equals(k7.a(this.f7526t, this.f7525s.split("\\.").length));
    }

    public boolean G() {
        return this.f7510d;
    }

    public boolean H() {
        if (this.f7508b == a.MISSING && this.f7517k) {
            return true;
        }
        return false;
    }

    public boolean I() {
        return this.G;
    }

    public boolean J() {
        return this.f7518l;
    }

    public boolean K() {
        return this.f7519m;
    }

    public String b() {
        return this.f7524r;
    }

    public String c() {
        return this.f7526t;
    }

    public Map d() {
        return this.K;
    }

    public String e() {
        return this.J;
    }

    public List f() {
        return this.A;
    }

    public String g() {
        return this.f7523q;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "MediatedNetwork";
    }

    public int h() {
        return this.f7530x;
    }

    public int i() {
        return this.f7509c;
    }

    public final String j() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n---------- ");
        sb2.append(this.f7522p);
        sb2.append(" ----------");
        sb2.append("\nStatus  - ");
        sb2.append(this.f7508b.b());
        sb2.append("\nSDK     - ");
        String str2 = "UNAVAILABLE";
        if (!this.f7510d || TextUtils.isEmpty(this.f7525s)) {
            str = "UNAVAILABLE";
        } else {
            str = this.f7525s;
        }
        sb2.append(str);
        sb2.append("\nAdapter - ");
        if (this.f7511e && !TextUtils.isEmpty(this.f7526t)) {
            str2 = this.f7526t;
        }
        sb2.append(str2);
        for (m4 m4Var : n()) {
            if (!m4Var.c()) {
                sb2.append("\n* MISSING ");
                sb2.append(m4Var.b());
                sb2.append(": ");
                sb2.append(m4Var.a());
            }
        }
        for (j1 j1Var : f()) {
            if (!j1Var.c()) {
                sb2.append("\n* MISSING ");
                sb2.append(j1Var.b());
                sb2.append(": ");
                sb2.append(j1Var.a());
            }
        }
        return sb2.toString();
    }

    public String k() {
        return this.f7527u;
    }

    public List l() {
        return this.C;
    }

    public String m() {
        return this.f7522p;
    }

    public List n() {
        return this.f7532z;
    }

    public final com.applovin.impl.sdk.k o() {
        return this.f7507a;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        String string = appLovinCommunicatorMessage.getMessageData().getString("adapter_class", "");
        if (this.f7524r.equals(string)) {
            this.f7509c = appLovinCommunicatorMessage.getMessageData().getInt("init_status", 0);
            MaxAdapter a10 = t3.a(string, this.f7507a);
            if (a10 != null) {
                String a11 = t3.a(a10);
                if (!this.f7525s.equals(a11)) {
                    this.f7525s = a11;
                    this.f7507a.u().a(this.f7525s, string);
                }
            }
        }
    }

    public String p() {
        return this.f7525s;
    }

    public a q() {
        return this.f7508b;
    }

    public List r() {
        return this.f7531y;
    }

    public List s() {
        return this.B;
    }

    public x6 t() {
        return this.H;
    }

    public String toString() {
        return "MediatedNetwork{name=" + this.f7522p + ", displayName=" + this.f7523q + ", sdkAvailable=" + this.f7510d + ", sdkVersion=" + this.f7525s + ", adapterAvailable=" + this.f7511e + ", adapterVersion=" + this.f7526t + "}";
    }

    public List u() {
        return this.D;
    }

    public String v() {
        return this.f7528v;
    }

    public String w() {
        return this.f7529w;
    }

    public Map x() {
        return this.E;
    }

    public b y() {
        if (!this.f7515i) {
            return b.NOT_SUPPORTED;
        }
        a aVar = this.f7508b;
        if (aVar != a.COMPLETE && (aVar != a.INCOMPLETE_INTEGRATION || !G() || !A())) {
            return b.INVALID_INTEGRATION;
        }
        if (!this.f7507a.t0().c()) {
            return b.DISABLED;
        }
        if (this.f7516j && (this.f7509c == MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.getCode() || this.f7509c == MaxAdapter.InitializationStatus.INITIALIZING.getCode())) {
            return b.NOT_INITIALIZED;
        }
        return b.READY;
    }

    public boolean z() {
        return this.F;
    }

    private List a(MaxAdapter maxAdapter, boolean z10) {
        ArrayList arrayList = new ArrayList(5);
        if (maxAdapter instanceof MaxInterstitialAdapter) {
            arrayList.add(MaxAdFormat.INTERSTITIAL);
        }
        if (maxAdapter instanceof MaxAppOpenAdapter) {
            arrayList.add(MaxAdFormat.APP_OPEN);
        }
        if (maxAdapter instanceof MaxRewardedAdapter) {
            arrayList.add(MaxAdFormat.REWARDED);
        }
        if (maxAdapter instanceof MaxAdViewAdapter) {
            arrayList.add(MaxAdFormat.BANNER);
            arrayList.add(MaxAdFormat.LEADER);
            if (z10) {
                arrayList.add(MaxAdFormat.MREC);
            }
        }
        if (maxAdapter instanceof MaxNativeAdAdapter) {
            arrayList.add(MaxAdFormat.NATIVE);
        }
        return arrayList;
    }

    private List a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        ArrayList arrayList = new ArrayList();
        if (this.f7524r.equals("com.applovin.mediation.adapters.AppLovinMediationAdapter")) {
            m4 m4Var = new m4("com.google.android.gms.permission.AD_ID", "Please add\n<uses-permission android:name=\"com.google.android.gms.permission.AD_ID\" />\nto your AndroidManifest.xml", com.applovin.impl.sdk.k.o());
            if (m4Var.c()) {
                arrayList.add(m4Var);
            }
        }
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "permissions", new JSONObject());
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                arrayList.add(new m4(next, jSONObject2.getString(next), com.applovin.impl.sdk.k.o()));
            } catch (JSONException unused) {
            }
        }
        return arrayList;
    }

    private List a(JSONObject jSONObject) {
        return JsonUtils.optList(JsonUtils.getJSONArray(jSONObject, "supported_regions", null), null);
    }

    private List a(JSONObject jSONObject, String str, com.applovin.impl.sdk.k kVar) {
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "dependencies", new JSONArray());
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "dependencies_v2", new JSONArray());
        ArrayList arrayList = new ArrayList(jSONArray.length() + jSONArray2.length());
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i10, (JSONObject) null);
            if (jSONObject2 != null) {
                arrayList.add(new j1(jSONObject2, kVar));
            }
        }
        for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONArray2, i11, (JSONObject) null);
            if (jSONObject3 != null && j1.a(str, JsonUtils.getString(jSONObject3, "min_adapter_version", null), JsonUtils.getString(jSONObject3, "max_adapter_version", null))) {
                arrayList.add(new j1(jSONObject3, kVar));
            }
        }
        return arrayList;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(b3 b3Var) {
        return this.f7523q.compareToIgnoreCase(b3Var.f7523q);
    }
}
