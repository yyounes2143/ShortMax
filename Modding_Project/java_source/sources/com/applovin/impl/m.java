package com.applovin.impl;

import android.content.Context;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class m extends p2 {

    /* renamed from: e  reason: collision with root package name */
    private final n f8431e;

    /* renamed from: f  reason: collision with root package name */
    private final o f8432f;

    /* renamed from: g  reason: collision with root package name */
    private final f8 f8433g;

    /* renamed from: h  reason: collision with root package name */
    private final String f8434h;

    /* renamed from: i  reason: collision with root package name */
    private final List f8435i;

    /* renamed from: j  reason: collision with root package name */
    private final List f8436j;

    /* renamed from: k  reason: collision with root package name */
    private final List f8437k;

    /* loaded from: classes2.dex */
    enum a {
        INFO,
        BIDDERS,
        WATERFALL,
        COUNT
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends w3 {

        /* renamed from: p  reason: collision with root package name */
        private final f8 f8443p;

        b(f8 f8Var, String str, boolean z10) {
            super(f8Var.b().d(), m.this.f9196a);
            SpannedString spannedString;
            this.f8443p = f8Var;
            this.f9076c = StringUtils.createSpannedString(f8Var.b().a(), ViewCompat.MEASURED_STATE_MASK, 18, 1);
            if (!TextUtils.isEmpty(str)) {
                spannedString = new SpannedString(str);
            } else {
                spannedString = null;
            }
            this.f9077d = spannedString;
            this.f9075b = z10;
        }

        @Override // com.applovin.impl.o2
        public int g() {
            return -12303292;
        }

        @Override // com.applovin.impl.w3, com.applovin.impl.o2
        public boolean o() {
            return this.f9075b;
        }

        public f8 v() {
            return this.f8443p;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(n nVar, o oVar, f8 f8Var, Context context) {
        super(context);
        o f10;
        String d10;
        this.f8431e = nVar;
        this.f8433g = f8Var;
        if (oVar != null) {
            f10 = oVar;
        } else {
            f10 = nVar.f();
        }
        this.f8432f = f10;
        if (oVar != null) {
            d10 = oVar.c();
        } else {
            d10 = nVar.d();
        }
        this.f8434h = d10;
        this.f8435i = h();
        this.f8436j = e();
        this.f8437k = l();
        notifyDataSetChanged();
    }

    private o2 f() {
        return o2.a().d("AB Test Experiment Name").c(j().b()).a();
    }

    private o2 g() {
        return o2.a().d("ID").c(this.f8431e.c()).a();
    }

    private List h() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(g());
        arrayList.add(d());
        if (this.f8432f.b() != null) {
            arrayList.add(f());
        }
        if (this.f8433g != null) {
            arrayList.add(i());
        }
        return arrayList;
    }

    private o2 i() {
        return o2.a().d("Selected Network").c(this.f8433g.b().a()).a();
    }

    private List l() {
        boolean z10;
        f8 f8Var = this.f8433g;
        if (f8Var != null && f8Var.d()) {
            return new ArrayList();
        }
        List<f8> e10 = this.f8432f.e();
        ArrayList arrayList = new ArrayList(e10.size());
        for (f8 f8Var2 : e10) {
            f8 f8Var3 = this.f8433g;
            if (f8Var3 == null || f8Var3.b().c().equals(f8Var2.b().c())) {
                if (this.f8433g == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                arrayList.add(new b(f8Var2, null, z10));
                for (x3 x3Var : f8Var2.c()) {
                    arrayList.add(o2.a().d(x3Var.a()).c(x3Var.b()).b(true).a());
                }
            }
        }
        return arrayList;
    }

    @Override // com.applovin.impl.p2
    protected int b() {
        return a.COUNT.ordinal();
    }

    @Override // com.applovin.impl.p2
    protected List c(int i10) {
        if (i10 == a.INFO.ordinal()) {
            return this.f8435i;
        }
        if (i10 == a.BIDDERS.ordinal()) {
            return this.f8436j;
        }
        return this.f8437k;
    }

    @Override // com.applovin.impl.p2
    protected int d(int i10) {
        if (i10 == a.INFO.ordinal()) {
            return this.f8435i.size();
        }
        if (i10 == a.BIDDERS.ordinal()) {
            return this.f8436j.size();
        }
        return this.f8437k.size();
    }

    @Override // com.applovin.impl.p2
    protected o2 e(int i10) {
        if (i10 == a.INFO.ordinal()) {
            return new t4("INFO");
        }
        if (i10 == a.BIDDERS.ordinal()) {
            return new t4("BIDDERS");
        }
        return new t4("WATERFALL");
    }

    public o j() {
        return this.f8432f;
    }

    public String k() {
        return this.f8434h;
    }

    private o2 d() {
        return o2.a().d("Ad Format").c(this.f8431e.b()).a();
    }

    private List e() {
        f8 f8Var = this.f8433g;
        if (f8Var == null || f8Var.d()) {
            List<f8> a10 = this.f8432f.a();
            ArrayList arrayList = new ArrayList(a10.size());
            for (f8 f8Var2 : a10) {
                f8 f8Var3 = this.f8433g;
                if (f8Var3 == null || f8Var3.b().c().equals(f8Var2.b().c())) {
                    arrayList.add(new b(f8Var2, f8Var2.a() != null ? f8Var2.a().a() : "", this.f8433g == null));
                }
            }
            return arrayList;
        }
        return new ArrayList();
    }
}
