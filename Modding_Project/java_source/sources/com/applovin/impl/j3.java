package com.applovin.impl;

import android.content.Context;
import android.content.Intent;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.webkit.internal.AssetHelper;
import com.applovin.impl.d;
import com.applovin.impl.l3;
import com.applovin.impl.p2;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxDebuggerAdUnitsListActivity;
import com.applovin.mediation.MaxDebuggerDetailActivity;
import com.applovin.mediation.MaxDebuggerTcfConsentStatusesListActivity;
import com.applovin.mediation.MaxDebuggerTcfInfoListActivity;
import com.applovin.mediation.MaxDebuggerTestLiveNetworkActivity;
import com.applovin.mediation.MaxDebuggerTestModeNetworkActivity;
import com.applovin.mediation.MaxDebuggerUnifiedFlowActivity;
import com.applovin.sdk.R;
/* loaded from: classes2.dex */
public abstract class j3 extends k3 {

    /* renamed from: a  reason: collision with root package name */
    private l3 f8158a;

    /* renamed from: b  reason: collision with root package name */
    private DataSetObserver f8159b;

    /* renamed from: c  reason: collision with root package name */
    private FrameLayout f8160c;

    /* renamed from: d  reason: collision with root package name */
    private ListView f8161d;

    /* renamed from: e  reason: collision with root package name */
    private com.applovin.impl.a f8162e;

    /* loaded from: classes2.dex */
    class a extends DataSetObserver {
        a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            j3.this.a();
            j3 j3Var = j3.this;
            j3Var.b((Context) j3Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements p2.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.c f8164a;

        /* loaded from: classes2.dex */
        class a implements d.b {
            a() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerUnifiedFlowActivity maxDebuggerUnifiedFlowActivity) {
                maxDebuggerUnifiedFlowActivity.initialize(j3.this.f8158a.t());
            }
        }

        /* renamed from: com.applovin.impl.j3$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0111b implements d.b {
            C0111b() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerTcfInfoListActivity maxDebuggerTcfInfoListActivity) {
                maxDebuggerTcfInfoListActivity.initialize(j3.this.f8158a.d(), j3.this.f8158a.t());
            }
        }

        /* loaded from: classes2.dex */
        class c implements d.b {
            c() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerTcfConsentStatusesListActivity maxDebuggerTcfConsentStatusesListActivity) {
                maxDebuggerTcfConsentStatusesListActivity.initialize(j3.this.f8158a.d(), j3.this.f8158a.t());
            }
        }

        /* loaded from: classes2.dex */
        class d implements d.b {
            d() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerAdUnitsListActivity maxDebuggerAdUnitsListActivity) {
                maxDebuggerAdUnitsListActivity.initialize(j3.this.f8158a.f(), false, j3.this.f8158a.t());
            }
        }

        /* loaded from: classes2.dex */
        class e implements d.b {
            e() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerTestLiveNetworkActivity maxDebuggerTestLiveNetworkActivity) {
                maxDebuggerTestLiveNetworkActivity.initialize(j3.this.f8158a.k(), j3.this.f8158a.w(), j3.this.f8158a.t());
            }
        }

        /* loaded from: classes2.dex */
        class f implements d.b {
            f() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerTestModeNetworkActivity maxDebuggerTestModeNetworkActivity) {
                maxDebuggerTestModeNetworkActivity.initialize(j3.this.f8158a.v(), j3.this.f8158a.t());
            }
        }

        /* loaded from: classes2.dex */
        class g implements d.b {
            g() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerAdUnitsListActivity maxDebuggerAdUnitsListActivity) {
                maxDebuggerAdUnitsListActivity.initialize(j3.this.f8158a.o(), true, j3.this.f8158a.t());
            }
        }

        /* loaded from: classes2.dex */
        class h implements d.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ o2 f8173a;

            h(o2 o2Var) {
                this.f8173a = o2Var;
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerDetailActivity maxDebuggerDetailActivity) {
                maxDebuggerDetailActivity.initialize(((w3) this.f8173a).r());
            }
        }

        b(com.applovin.impl.c cVar) {
            this.f8164a = cVar;
        }

        @Override // com.applovin.impl.p2.a
        public void a(i2 i2Var, o2 o2Var) {
            int b10 = i2Var.b();
            if (b10 == l3.e.APP_INFO.ordinal()) {
                k7.a(o2Var.c(), o2Var.b(), j3.this);
            } else if (b10 == l3.e.MAX.ordinal()) {
                if (j3.this.f8158a.a(o2Var)) {
                    com.applovin.impl.d.a(j3.this, MaxDebuggerUnifiedFlowActivity.class, this.f8164a, new a());
                } else {
                    k7.a(o2Var.c(), o2Var.b(), j3.this);
                }
            } else if (b10 == l3.e.PRIVACY.ordinal()) {
                if (i2Var.a() == l3.d.CMP.ordinal()) {
                    if (StringUtils.isValidString(j3.this.f8158a.t().s0().j())) {
                        com.applovin.impl.d.a(j3.this, MaxDebuggerTcfInfoListActivity.class, this.f8164a, new C0111b());
                    } else {
                        k7.a(o2Var.c(), o2Var.b(), j3.this);
                    }
                } else if (i2Var.a() == l3.d.NETWORK_CONSENT_STATUSES.ordinal()) {
                    com.applovin.impl.d.a(j3.this, MaxDebuggerTcfConsentStatusesListActivity.class, this.f8164a, new c());
                }
            } else if (b10 == l3.e.ADS.ordinal()) {
                if (i2Var.a() == l3.b.AD_UNITS.ordinal()) {
                    if (j3.this.f8158a.f().size() > 0) {
                        com.applovin.impl.d.a(j3.this, MaxDebuggerAdUnitsListActivity.class, this.f8164a, new d());
                    } else {
                        k7.a("No live ad units", "Please setup or enable your MAX ad units on https://applovin.com.", j3.this);
                    }
                } else if (i2Var.a() == l3.b.SELECT_LIVE_NETWORKS.ordinal()) {
                    if (j3.this.f8158a.k().size() <= 0 && j3.this.f8158a.w().size() <= 0) {
                        k7.a("Complete Integrations", "Please complete integrations in order to access this.", j3.this);
                    } else if (j3.this.f8158a.t().t0().c()) {
                        k7.a("Restart Required", o2Var.b(), j3.this);
                    } else {
                        com.applovin.impl.d.a(j3.this, MaxDebuggerTestLiveNetworkActivity.class, this.f8164a, new e());
                    }
                } else if (i2Var.a() == l3.b.SELECT_TEST_MODE_NETWORKS.ordinal()) {
                    if (!j3.this.f8158a.t().t0().c()) {
                        j3.this.getSdk().t0().a();
                        k7.a("Restart Required", o2Var.b(), j3.this);
                    } else if (j3.this.f8158a.v().size() > 0) {
                        com.applovin.impl.d.a(j3.this, MaxDebuggerTestModeNetworkActivity.class, this.f8164a, new f());
                    } else {
                        k7.a("Complete Integrations", "Please complete integrations in order to access this.", j3.this);
                    }
                } else if (i2Var.a() == l3.b.INITIALIZATION_AD_UNITS.ordinal()) {
                    com.applovin.impl.d.a(j3.this, MaxDebuggerAdUnitsListActivity.class, this.f8164a, new g());
                }
            } else if ((b10 == l3.e.MICRO_SDK_PARTNER_NETWORKS.ordinal() || b10 == l3.e.INCOMPLETE_NETWORKS.ordinal() || b10 == l3.e.COMPLETED_NETWORKS.ordinal()) && (o2Var instanceof w3)) {
                com.applovin.impl.d.a(j3.this, MaxDebuggerDetailActivity.class, this.f8164a, new h(o2Var));
            }
        }
    }

    private void c() {
        a();
        com.applovin.impl.a aVar = new com.applovin.impl.a(this, 50, 16842874);
        this.f8162e = aVar;
        aVar.setColor(-3355444);
        this.f8160c.addView(this.f8162e, new FrameLayout.LayoutParams(-1, -1, 17));
        this.f8160c.bringChildToFront(this.f8162e);
        this.f8162e.a();
    }

    @Override // com.applovin.impl.k3
    protected com.applovin.impl.sdk.k getSdk() {
        l3 l3Var = this.f8158a;
        if (l3Var != null) {
            return l3Var.t();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.k3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("MAX Mediation Debugger");
        setContentView(R.layout.mediation_debugger_list_view);
        this.f8160c = (FrameLayout) findViewById(16908290);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.f8161d = listView;
        listView.setAdapter((ListAdapter) this.f8158a);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.mediation_debugger_activity_menu, menu);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.k3, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        l3 l3Var = this.f8158a;
        if (l3Var != null) {
            l3Var.unregisterDataSetObserver(this.f8159b);
            this.f8158a.a((p2.a) null);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (R.id.action_share == menuItem.getItemId()) {
            b();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        l3 l3Var = this.f8158a;
        if (l3Var != null && !l3Var.y()) {
            c();
        }
    }

    public void setListAdapter(l3 l3Var, c cVar) {
        DataSetObserver dataSetObserver;
        l3 l3Var2 = this.f8158a;
        if (l3Var2 != null && (dataSetObserver = this.f8159b) != null) {
            l3Var2.unregisterDataSetObserver(dataSetObserver);
        }
        this.f8158a = l3Var;
        this.f8159b = new a();
        b((Context) this);
        this.f8158a.registerDataSetObserver(this.f8159b);
        this.f8158a.a(new b(cVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        com.applovin.impl.a aVar = this.f8162e;
        if (aVar != null) {
            aVar.b();
            this.f8160c.removeView(this.f8162e);
            this.f8162e = null;
        }
    }

    private void b() {
        l3 l3Var = this.f8158a;
        if (l3Var == null) {
            return;
        }
        String p10 = l3Var.p();
        if (TextUtils.isEmpty(p10)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.TEXT", p10);
        intent.putExtra("android.intent.extra.TITLE", "Mediation Debugger logs");
        intent.putExtra("android.intent.extra.SUBJECT", "MAX Mediation Debugger logs");
        startActivity(Intent.createChooser(intent, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context) {
        k7.a(this.f8158a.i(), this.f8158a.h(), context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final Context context) {
        if (!StringUtils.isValidString(this.f8158a.h()) || this.f8158a.x()) {
            return;
        }
        this.f8158a.b(true);
        runOnUiThread(new Runnable() { // from class: com.applovin.impl.ob
            @Override // java.lang.Runnable
            public final void run() {
                j3.this.a(context);
            }
        });
    }
}
