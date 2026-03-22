package com.applovin.impl;

import android.content.Context;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.applovin.impl.o2;
import com.applovin.impl.p2;
import com.applovin.impl.x6;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class l0 extends k3 {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.sdk.k f8295a;

    /* renamed from: b  reason: collision with root package name */
    private p2 f8296b;

    /* loaded from: classes2.dex */
    class a extends p2 {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ List f8297e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ List f8298f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ List f8299g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ List f8300h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ List f8301i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, List list, List list2, List list3, List list4, List list5) {
            super(context);
            this.f8297e = list;
            this.f8298f = list2;
            this.f8299g = list3;
            this.f8300h = list4;
            this.f8301i = list5;
        }

        @Override // com.applovin.impl.p2
        protected int b() {
            return c.values().length;
        }

        @Override // com.applovin.impl.p2
        protected List c(int i10) {
            List<x6> list;
            boolean z10 = true;
            if (i10 == c.MISSING_TC_NETWORKS.ordinal()) {
                list = this.f8297e;
            } else if (i10 == c.MISSING_AC_NETWORKS.ordinal()) {
                list = this.f8298f;
            } else {
                z10 = false;
                if (i10 == c.LISTED_TC_NETWORKS.ordinal()) {
                    list = this.f8299g;
                } else if (i10 == c.LISTED_AC_NETWORKS.ordinal()) {
                    list = this.f8300h;
                } else {
                    list = this.f8301i;
                }
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (x6 x6Var : list) {
                arrayList.add(l0.this.a(x6Var, z10));
            }
            return arrayList;
        }

        @Override // com.applovin.impl.p2
        protected int d(int i10) {
            if (i10 == c.MISSING_TC_NETWORKS.ordinal()) {
                return this.f8297e.size();
            }
            if (i10 == c.MISSING_AC_NETWORKS.ordinal()) {
                return this.f8298f.size();
            }
            if (i10 == c.LISTED_TC_NETWORKS.ordinal()) {
                return this.f8299g.size();
            }
            if (i10 == c.LISTED_AC_NETWORKS.ordinal()) {
                return this.f8300h.size();
            }
            return this.f8301i.size();
        }

        @Override // com.applovin.impl.p2
        protected o2 e(int i10) {
            if (i10 == c.MISSING_TC_NETWORKS.ordinal()) {
                return new t4("MISSING TCF VENDORS (TC STRING)");
            }
            if (i10 == c.MISSING_AC_NETWORKS.ordinal()) {
                return new t4("MISSING ATP NETWORKS (AC STRING)");
            }
            if (i10 == c.LISTED_TC_NETWORKS.ordinal()) {
                return new t4("LISTED TCF VENDORS (TC STRING)");
            }
            if (i10 == c.LISTED_AC_NETWORKS.ordinal()) {
                return new t4("LISTED ATP NETWORKS (AC STRING)");
            }
            return new t4("NON-CONFIGURABLE NETWORKS");
        }
    }

    /* loaded from: classes2.dex */
    class b implements p2.a {
        b() {
        }

        @Override // com.applovin.impl.p2.a
        public void a(i2 i2Var, o2 o2Var) {
            k7.a(o2Var.c(), o2Var.b(), l0.this);
        }
    }

    /* loaded from: classes2.dex */
    private enum c {
        MISSING_TC_NETWORKS,
        MISSING_AC_NETWORKS,
        LISTED_TC_NETWORKS,
        LISTED_AC_NETWORKS,
        OTHER_NETWORKS
    }

    @Override // com.applovin.impl.k3
    protected com.applovin.impl.sdk.k getSdk() {
        return this.f8295a;
    }

    public void initialize(List<x6> list, List<x6> list2, List<x6> list3, List<x6> list4, List<x6> list5, com.applovin.impl.sdk.k kVar) {
        this.f8295a = kVar;
        a aVar = new a(this, list, list2, list3, list4, list5);
        this.f8296b = aVar;
        aVar.a(new b());
        this.f8296b.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.k3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        setTitle("Configured CMP Networks");
        ((ListView) findViewById(R.id.listView)).setAdapter((ListAdapter) this.f8296b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public o2 a(x6 x6Var, boolean z10) {
        o2.b a10 = o2.a();
        boolean b10 = this.f8295a.s0().b();
        x6.a f10 = x6Var.f();
        x6.a aVar = x6.a.TCF_VENDOR;
        if (f10 != aVar && (x6Var.f() != x6.a.ATP_NETWORK || !b10)) {
            a10.d(x6Var.b());
        } else {
            String c10 = x6Var.c();
            String str = x6Var.f() == aVar ? "IAB Vendor ID: " : "Google ATP ID: ";
            o2.b b11 = a10.d(c10).d(z10 ? SupportMenu.CATEGORY_MASK : ViewCompat.MEASURED_STATE_MASK).b(c10);
            b11.a(str + x6Var.d()).a(true);
        }
        return a10.a();
    }
}
