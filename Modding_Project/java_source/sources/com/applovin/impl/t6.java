package com.applovin.impl;

import android.content.Context;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.applovin.impl.x6;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class t6 extends k3 {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.sdk.k f10053a;

    /* renamed from: b  reason: collision with root package name */
    private p2 f10054b;

    /* loaded from: classes2.dex */
    class a extends p2 {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ ArrayList f10055e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ ArrayList f10056f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ boolean f10057g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, ArrayList arrayList, ArrayList arrayList2, boolean z10) {
            super(context);
            this.f10055e = arrayList;
            this.f10056f = arrayList2;
            this.f10057g = z10;
        }

        @Override // com.applovin.impl.p2
        protected int b() {
            return b.values().length;
        }

        @Override // com.applovin.impl.p2
        protected List c(int i10) {
            if (i10 == b.TC_NETWORKS.ordinal()) {
                return this.f10055e;
            }
            return this.f10056f;
        }

        @Override // com.applovin.impl.p2
        protected int d(int i10) {
            if (i10 == b.TC_NETWORKS.ordinal()) {
                return this.f10055e.size();
            }
            return this.f10056f.size();
        }

        @Override // com.applovin.impl.p2
        protected o2 e(int i10) {
            String str;
            if (i10 == b.TC_NETWORKS.ordinal()) {
                return new t4("TCF VENDORS (TC STRING)");
            }
            if (this.f10057g) {
                str = "ATP NETWORKS (AC STRING)";
            } else {
                str = "APPLOVIN PRIVACY SETTING";
            }
            return new t4(str);
        }
    }

    /* loaded from: classes2.dex */
    private enum b {
        TC_NETWORKS,
        AC_NETWORKS
    }

    private o2 a(String str, String str2) {
        return o2.a().d(str).c(str2).a();
    }

    @Override // com.applovin.impl.k3
    protected com.applovin.impl.sdk.k getSdk() {
        return this.f10053a;
    }

    public void initialize(List<x6> list, com.applovin.impl.sdk.k kVar) {
        this.f10053a = kVar;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String a10 = p0.b().a(this);
        boolean b10 = kVar.s0().b();
        if (!b10) {
            arrayList2.add(a("Has User Consent", a10));
        }
        for (x6 x6Var : list) {
            Boolean a11 = x6Var.a();
            if (a11 != null) {
                if (x6Var.f() == x6.a.TCF_VENDOR) {
                    arrayList.add(a(x6Var.b(), String.valueOf(a11)));
                } else if (x6Var.f() == x6.a.ATP_NETWORK) {
                    arrayList2.add(a(x6Var.b(), String.valueOf(a11)));
                }
            } else if (b10 && x6Var.f() == x6.a.ATP_NETWORK) {
                arrayList2.add(a(x6Var.b(), a10));
            }
        }
        a aVar = new a(this, arrayList, arrayList2, b10);
        this.f10054b = aVar;
        aVar.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.k3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        setTitle("Network Consent Statuses");
        ((ListView) findViewById(R.id.listView)).setAdapter((ListAdapter) this.f10054b);
    }
}
