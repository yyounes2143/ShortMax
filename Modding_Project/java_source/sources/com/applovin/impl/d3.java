package com.applovin.impl;

import android.content.Context;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import com.applovin.impl.b3;
import com.applovin.impl.o2;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class d3 extends p2 {

    /* renamed from: e  reason: collision with root package name */
    private final b3 f7786e;

    /* renamed from: f  reason: collision with root package name */
    private List f7787f;

    /* renamed from: g  reason: collision with root package name */
    private final List f7788g;

    /* renamed from: h  reason: collision with root package name */
    private final List f7789h;

    /* renamed from: i  reason: collision with root package name */
    private final List f7790i;

    /* renamed from: j  reason: collision with root package name */
    private final List f7791j;

    /* renamed from: k  reason: collision with root package name */
    private SpannedString f7792k;

    /* loaded from: classes2.dex */
    public enum a {
        INTEGRATIONS,
        PERMISSIONS,
        CONFIGURATION,
        DEPENDENCIES,
        TEST_ADS,
        COUNT
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d3(b3 b3Var, Context context) {
        super(context);
        this.f7786e = b3Var;
        if (b3Var.q() == b3.a.INVALID_INTEGRATION) {
            SpannableString spannableString = new SpannableString("Tap for more information");
            spannableString.setSpan(new AbsoluteSizeSpan(12, true), 0, spannableString.length(), 33);
            this.f7792k = new SpannedString(spannableString);
        } else {
            this.f7792k = new SpannedString("");
        }
        this.f7787f = g();
        this.f7788g = b(b3Var.n());
        this.f7789h = e();
        this.f7790i = a(b3Var.f());
        this.f7791j = j();
        notifyDataSetChanged();
    }

    private o2 f() {
        if (this.f7786e.I()) {
            return null;
        }
        return o2.a().d("Initialization Status").c(f(this.f7786e.i())).a(false).a();
    }

    private List g() {
        ArrayList arrayList = new ArrayList(3);
        CollectionUtils.addObjectIfExists(i(), arrayList);
        CollectionUtils.addObjectIfExists(d(), arrayList);
        CollectionUtils.addObjectIfExists(f(), arrayList);
        return arrayList;
    }

    private o2 i() {
        o2.b c10 = o2.a().d("SDK").c(this.f7786e.p());
        if (TextUtils.isEmpty(this.f7786e.p())) {
            c10.a(a(this.f7786e.G())).b(b(this.f7786e.G()));
        }
        return c10.a();
    }

    private List j() {
        ArrayList arrayList = new ArrayList(3);
        if (StringUtils.isValidString(this.f7786e.v())) {
            arrayList.add(o2.a(o2.c.DETAIL).d(this.f7786e.v()).a());
        }
        if (this.f7786e.y() == b3.b.NOT_SUPPORTED) {
            return arrayList;
        }
        if (this.f7786e.s() != null) {
            arrayList.add(c(this.f7786e.s()));
        }
        arrayList.add(a(this.f7786e.y()));
        return arrayList;
    }

    public boolean a(i2 i2Var) {
        return i2Var.b() == a.TEST_ADS.ordinal() && i2Var.a() == this.f7791j.size() - 1;
    }

    @Override // com.applovin.impl.p2
    protected int b() {
        return a.COUNT.ordinal();
    }

    @Override // com.applovin.impl.p2
    protected List c(int i10) {
        if (i10 == a.INTEGRATIONS.ordinal()) {
            return this.f7787f;
        }
        if (i10 == a.PERMISSIONS.ordinal()) {
            return this.f7788g;
        }
        if (i10 == a.CONFIGURATION.ordinal()) {
            return this.f7789h;
        }
        if (i10 == a.DEPENDENCIES.ordinal()) {
            return this.f7790i;
        }
        return this.f7791j;
    }

    @Override // com.applovin.impl.p2
    protected int d(int i10) {
        if (i10 == a.INTEGRATIONS.ordinal()) {
            return this.f7787f.size();
        }
        if (i10 == a.PERMISSIONS.ordinal()) {
            return this.f7788g.size();
        }
        if (i10 == a.CONFIGURATION.ordinal()) {
            return this.f7789h.size();
        }
        if (i10 == a.DEPENDENCIES.ordinal()) {
            return this.f7790i.size();
        }
        return this.f7791j.size();
    }

    @Override // com.applovin.impl.p2
    protected o2 e(int i10) {
        if (i10 == a.INTEGRATIONS.ordinal()) {
            return new t4("INTEGRATIONS");
        }
        if (i10 == a.PERMISSIONS.ordinal()) {
            return new t4("PERMISSIONS");
        }
        if (i10 == a.CONFIGURATION.ordinal()) {
            return new t4("CONFIGURATION");
        }
        if (i10 == a.DEPENDENCIES.ordinal()) {
            return new t4("DEPENDENCIES");
        }
        return new t4("TEST ADS");
    }

    public b3 h() {
        return this.f7786e;
    }

    public void k() {
        this.f7787f = g();
    }

    public String toString() {
        return "MediatedNetworkListAdapter{}";
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        if (list.size() > 0) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                j1 j1Var = (j1) it.next();
                arrayList.add(a(j1Var.b(), j1Var.a(), j1Var.c(), true));
            }
        }
        return arrayList;
    }

    private List b(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        if (list.size() > 0) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                m4 m4Var = (m4) it.next();
                arrayList.add(a(m4Var.b(), m4Var.a(), m4Var.c(), true));
            }
        }
        return arrayList;
    }

    private String f(int i10) {
        if (MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS.getCode() != i10 && MaxAdapter.InitializationStatus.INITIALIZED_UNKNOWN.getCode() != i10 && MaxAdapter.InitializationStatus.DOES_NOT_APPLY.getCode() != i10) {
            if (MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.getCode() == i10) {
                return "Failure";
            }
            if (MaxAdapter.InitializationStatus.INITIALIZING.getCode() == i10) {
                return "Initializing...";
            }
            return "Not Initialized";
        }
        return "Initialized";
    }

    private o2 a(b3.b bVar) {
        o2.b a10 = o2.a();
        if (bVar == b3.b.READY) {
            a10.a(this.f9196a);
        }
        return a10.d("Test Mode").c(bVar.c()).c(bVar.d()).b("Restart Required").a(bVar.b()).a(true).a();
    }

    private int b(boolean z10) {
        return m0.a(z10 ? R.color.applovin_sdk_checkmarkColor : R.color.applovin_sdk_xmarkColor, this.f9196a);
    }

    private o2 c(List list) {
        return o2.a().d("Region/VPN Required").c(CollectionUtils.implode(list, ", ", list.size())).a();
    }

    private o2 d() {
        o2.b c10 = o2.a().d("Adapter").c(this.f7786e.c());
        if (TextUtils.isEmpty(this.f7786e.c())) {
            c10.a(a(this.f7786e.A())).b(b(this.f7786e.A()));
        }
        return c10.a();
    }

    private List e() {
        ArrayList arrayList = new ArrayList(1);
        if (this.f7786e.E()) {
            arrayList.add(a("Java 8", "For optimal performance, please enable Java 8 support. See: https://developers.applovin.com/en/android/overview/integration", com.applovin.impl.sdk.k.G0(), true));
        }
        return arrayList;
    }

    private int c(boolean z10) {
        return z10 ? R.drawable.applovin_ic_x_mark : R.drawable.applovin_ic_warning;
    }

    private int d(boolean z10) {
        return m0.a(z10 ? R.color.applovin_sdk_xmarkColor : R.color.applovin_sdk_warningColor, this.f9196a);
    }

    private o2 a(String str, String str2, boolean z10, boolean z11) {
        return o2.a(z10 ? o2.c.RIGHT_DETAIL : o2.c.DETAIL).d(str).a(z10 ? null : this.f7792k).b("Instructions").a(str2).a(z10 ? R.drawable.applovin_ic_check_mark_bordered : c(z11)).b(z10 ? m0.a(R.color.applovin_sdk_checkmarkColor, this.f9196a) : d(z11)).a(!z10).a();
    }

    private int a(boolean z10) {
        return z10 ? R.drawable.applovin_ic_check_mark_bordered : R.drawable.applovin_ic_x_mark;
    }
}
