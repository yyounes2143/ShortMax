package com.applovin.impl;

import android.content.Context;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.applovin.impl.d;
import com.applovin.impl.o2;
import com.applovin.impl.p2;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.x6;
import com.applovin.mediation.MaxDebuggerCmpNetworksListActivity;
import com.applovin.mediation.MaxDebuggerTcfStringActivity;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class v6 extends k3 {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.sdk.k f10412a;

    /* renamed from: b  reason: collision with root package name */
    private p2 f10413b;

    /* renamed from: c  reason: collision with root package name */
    private final List f10414c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final List f10415d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private final List f10416e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private final List f10417f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private final List f10418g = new ArrayList();

    /* loaded from: classes2.dex */
    class a extends p2 {
        a(Context context) {
            super(context);
        }

        @Override // com.applovin.impl.p2
        protected int b() {
            return e.values().length;
        }

        @Override // com.applovin.impl.p2
        protected List c(int i10) {
            return i10 == e.IAB_TCF_PARAMETERS.ordinal() ? v6.this.c() : v6.this.a();
        }

        @Override // com.applovin.impl.p2
        protected int d(int i10) {
            if (i10 == e.IAB_TCF_PARAMETERS.ordinal()) {
                return d.values().length;
            }
            return c.values().length;
        }

        @Override // com.applovin.impl.p2
        protected o2 e(int i10) {
            if (i10 == e.IAB_TCF_PARAMETERS.ordinal()) {
                return new t4("IAB TCF Parameters");
            }
            return new t4("CMP CONFIGURATION");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements p2.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ w6 f10420a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.sdk.k f10421b;

        /* loaded from: classes2.dex */
        class a implements d.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f10423a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f10424b;

            a(String str, String str2) {
                this.f10423a = str;
                this.f10424b = str2;
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerTcfStringActivity maxDebuggerTcfStringActivity) {
                maxDebuggerTcfStringActivity.initialize(this.f10423a, this.f10424b, b.this.f10421b);
            }
        }

        /* renamed from: com.applovin.impl.v6$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0123b implements d.b {
            C0123b() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerCmpNetworksListActivity maxDebuggerCmpNetworksListActivity) {
                maxDebuggerCmpNetworksListActivity.initialize(v6.this.f10416e, v6.this.f10417f, v6.this.f10414c, v6.this.f10415d, v6.this.f10418g, b.this.f10421b);
            }
        }

        b(w6 w6Var, com.applovin.impl.sdk.k kVar) {
            this.f10420a = w6Var;
            this.f10421b = kVar;
        }

        @Override // com.applovin.impl.p2.a
        public void a(i2 i2Var, o2 o2Var) {
            String a10;
            String c10;
            if (i2Var.b() == e.IAB_TCF_PARAMETERS.ordinal()) {
                if (i2Var.a() == d.TC_STRING.ordinal()) {
                    a10 = x4.f10529w.a();
                    c10 = this.f10420a.j();
                } else {
                    a10 = x4.f10530x.a();
                    c10 = this.f10420a.c();
                }
                com.applovin.impl.d.a(v6.this, MaxDebuggerTcfStringActivity.class, this.f10421b.e(), new a(a10, c10));
            } else if (i2Var.a() == c.CONFIGURED_NETWORKS.ordinal()) {
                com.applovin.impl.d.a(v6.this, MaxDebuggerCmpNetworksListActivity.class, this.f10421b.e(), new C0123b());
            } else {
                k7.a(o2Var.c(), o2Var.b(), v6.this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum c {
        CMP_SDK_ID,
        CMP_SDK_VERSION,
        INSTRUCTIONS,
        CONFIGURED_NETWORKS
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum d {
        GDPR_APPLIES,
        TC_STRING,
        AC_STRING
    }

    /* loaded from: classes2.dex */
    private enum e {
        IAB_TCF_PARAMETERS,
        CMP_CONFIGURATION
    }

    @Override // com.applovin.impl.k3
    protected com.applovin.impl.sdk.k getSdk() {
        return this.f10412a;
    }

    public void initialize(List<x6> list, com.applovin.impl.sdk.k kVar) {
        this.f10412a = kVar;
        w6 s02 = kVar.s0();
        a(list);
        a aVar = new a(this);
        this.f10413b = aVar;
        aVar.a(new b(s02, kVar));
        this.f10413b.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.k3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        setTitle("CMP (Consent Management Platform)");
        ((ListView) findViewById(R.id.listView)).setAdapter((ListAdapter) this.f10413b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.k3, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        p2 p2Var = this.f10413b;
        if (p2Var != null) {
            p2Var.a((p2.a) null);
        }
    }

    private void a(List list) {
        boolean b10 = this.f10412a.s0().b();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            x6 x6Var = (x6) it.next();
            if (x6Var.f() == x6.a.TCF_VENDOR) {
                if (Boolean.TRUE.equals(x6Var.a())) {
                    a(x6Var, this.f10414c);
                } else {
                    a(x6Var, this.f10416e);
                }
            } else if (x6Var.f() != x6.a.ATP_NETWORK) {
                this.f10418g.add(x6Var);
            } else if (b10) {
                if (Boolean.TRUE.equals(x6Var.a())) {
                    a(x6Var, this.f10415d);
                } else {
                    a(x6Var, this.f10417f);
                }
            } else {
                this.f10418g.add(x6Var);
            }
        }
    }

    private o2 b() {
        o2.b a10;
        String a11 = x4.f10526t.a();
        Integer e10 = this.f10412a.s0().e();
        if (StringUtils.isValidString(this.f10412a.s0().d())) {
            a10 = o2.a(o2.c.RIGHT_DETAIL);
        } else {
            o2.b b10 = o2.a(o2.c.DETAIL).b("Unknown CMP SDK ID");
            a10 = b10.a("Your integrated CMP might not be Google-certified. " + ("SharedPreferences value for key " + a11 + " is " + e10 + ".") + "\n\nIf you use Google AdMob or Google Ad Manager, make sure that the integrated CMP is included in the list of Google-certified CMPs at: https://support.google.com/admob/answer/13554116").a(R.drawable.applovin_ic_warning).b(m0.a(R.color.applovin_sdk_warningColor, this)).a(true);
        }
        a10.d(a11);
        a10.c(e10 != null ? e10.toString() : "No value set");
        a10.c(e10 != null ? ViewCompat.MEASURED_STATE_MASK : SupportMenu.CATEGORY_MASK);
        return a10.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List c() {
        ArrayList arrayList = new ArrayList(d.values().length);
        Integer g10 = this.f10412a.s0().g();
        String j10 = this.f10412a.s0().j();
        String c10 = this.f10412a.s0().c();
        arrayList.add(a(x4.f10528v.a(), g10));
        arrayList.add(a(x4.f10529w.a(), j10, !z6.b(j10)));
        arrayList.add(a(x4.f10530x.a(), c10, false));
        return arrayList;
    }

    private void a(x6 x6Var, List list) {
        if (x6Var.d() != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (x6Var.d().equals(((x6) it.next()).d())) {
                    return;
                }
            }
        }
        list.add(x6Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List a() {
        String str;
        ArrayList arrayList = new ArrayList(c.values().length);
        int size = this.f10416e.size() + this.f10417f.size();
        arrayList.add(b());
        arrayList.add(a(x4.f10527u.a(), this.f10412a.s0().f()));
        arrayList.add(o2.a(o2.c.DETAIL).d("To check which networks are missing from your CMP, first make sure that you have granted consent to all networks through your CMP flow. Then add the following networks to your CMP network list.").a());
        o2.b d10 = o2.a(o2.c.RIGHT_DETAIL).d("Configured CMP Networks");
        if (size > 0) {
            str = "Missing " + size + " network(s)";
        } else {
            str = "";
        }
        arrayList.add(d10.c(str).c(size > 0 ? SupportMenu.CATEGORY_MASK : ViewCompat.MEASURED_STATE_MASK).a(this).a(true).a());
        return arrayList;
    }

    private o2 a(String str, Integer num) {
        return o2.a(o2.c.RIGHT_DETAIL).d(str).c(num != null ? num.toString() : "No value set").c(num != null ? ViewCompat.MEASURED_STATE_MASK : SupportMenu.CATEGORY_MASK).a();
    }

    private o2 a(String str, String str2, boolean z10) {
        boolean isValidString = StringUtils.isValidString(str2);
        if (isValidString && str2.length() > 35) {
            str2 = str2.substring(0, 35) + "...";
        }
        o2.b d10 = o2.a(o2.c.DETAIL).d(str);
        if (!isValidString) {
            str2 = "No value set";
        }
        o2.b a10 = d10.c(str2).c(z10 ? SupportMenu.CATEGORY_MASK : ViewCompat.MEASURED_STATE_MASK).a(isValidString);
        if (isValidString) {
            a10.a(this);
        }
        return a10.a();
    }
}
