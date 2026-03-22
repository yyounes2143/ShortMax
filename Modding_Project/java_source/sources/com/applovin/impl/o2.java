package com.applovin.impl;

import android.content.Context;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.applovin.sdk.R;
/* loaded from: classes2.dex */
public class o2 {

    /* renamed from: a  reason: collision with root package name */
    protected c f9074a;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f9075b;

    /* renamed from: c  reason: collision with root package name */
    protected SpannedString f9076c;

    /* renamed from: d  reason: collision with root package name */
    protected SpannedString f9077d;

    /* renamed from: e  reason: collision with root package name */
    protected String f9078e;

    /* renamed from: f  reason: collision with root package name */
    protected String f9079f;

    /* renamed from: g  reason: collision with root package name */
    protected int f9080g;

    /* renamed from: h  reason: collision with root package name */
    protected int f9081h;

    /* renamed from: i  reason: collision with root package name */
    protected int f9082i;

    /* renamed from: j  reason: collision with root package name */
    protected int f9083j;

    /* renamed from: k  reason: collision with root package name */
    protected int f9084k;

    /* renamed from: l  reason: collision with root package name */
    protected int f9085l;

    /* renamed from: m  reason: collision with root package name */
    protected boolean f9086m;

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final c f9087a;

        /* renamed from: b  reason: collision with root package name */
        boolean f9088b;

        /* renamed from: c  reason: collision with root package name */
        SpannedString f9089c;

        /* renamed from: d  reason: collision with root package name */
        SpannedString f9090d;

        /* renamed from: e  reason: collision with root package name */
        String f9091e;

        /* renamed from: f  reason: collision with root package name */
        String f9092f;

        /* renamed from: g  reason: collision with root package name */
        int f9093g = 0;

        /* renamed from: h  reason: collision with root package name */
        int f9094h = 0;

        /* renamed from: i  reason: collision with root package name */
        int f9095i = ViewCompat.MEASURED_STATE_MASK;

        /* renamed from: j  reason: collision with root package name */
        int f9096j = ViewCompat.MEASURED_STATE_MASK;

        /* renamed from: k  reason: collision with root package name */
        int f9097k = 0;

        /* renamed from: l  reason: collision with root package name */
        int f9098l = 0;

        /* renamed from: m  reason: collision with root package name */
        boolean f9099m;

        public b(c cVar) {
            this.f9087a = cVar;
        }

        public b a(boolean z10) {
            this.f9088b = z10;
            return this;
        }

        public b b(SpannedString spannedString) {
            this.f9089c = spannedString;
            return this;
        }

        public b c(String str) {
            return a(!TextUtils.isEmpty(str) ? new SpannedString(str) : null);
        }

        public b d(String str) {
            return b(!TextUtils.isEmpty(str) ? new SpannedString(str) : null);
        }

        public b a(SpannedString spannedString) {
            this.f9090d = spannedString;
            return this;
        }

        public b b(String str) {
            this.f9091e = str;
            return this;
        }

        public b a(String str) {
            this.f9092f = str;
            return this;
        }

        public b b(int i10) {
            this.f9098l = i10;
            return this;
        }

        public b c(int i10) {
            this.f9096j = i10;
            return this;
        }

        public b d(int i10) {
            this.f9095i = i10;
            return this;
        }

        public b a(int i10) {
            this.f9094h = i10;
            return this;
        }

        public b b(boolean z10) {
            this.f9099m = z10;
            return this;
        }

        public b a(Context context) {
            this.f9094h = R.drawable.applovin_ic_disclosure_arrow;
            this.f9098l = m0.a(R.color.applovin_sdk_disclosureButtonColor, context);
            return this;
        }

        public o2 a() {
            return new o2(this);
        }
    }

    /* loaded from: classes2.dex */
    public enum c {
        SECTION(0),
        SECTION_CENTERED(1),
        SIMPLE(2),
        DETAIL(3),
        RIGHT_DETAIL(4),
        COUNT(5);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f9107a;

        c(int i10) {
            this.f9107a = i10;
        }

        public int b() {
            if (this == SECTION) {
                return R.layout.mediation_debugger_list_section;
            }
            if (this == SECTION_CENTERED) {
                return R.layout.mediation_debugger_list_section_centered;
            }
            if (this == SIMPLE) {
                return 17367043;
            }
            if (this == DETAIL) {
                return R.layout.applovin_debugger_list_item_detail;
            }
            return R.layout.mediation_debugger_list_item_right_detail;
        }

        public int c() {
            return this.f9107a;
        }
    }

    public static b a() {
        return a(c.RIGHT_DETAIL);
    }

    public static int n() {
        return c.COUNT.c();
    }

    public String b() {
        return this.f9079f;
    }

    public String c() {
        return this.f9078e;
    }

    public int d() {
        return this.f9081h;
    }

    public int e() {
        return this.f9085l;
    }

    public SpannedString f() {
        return this.f9077d;
    }

    public int g() {
        return this.f9083j;
    }

    public int h() {
        return this.f9080g;
    }

    public int i() {
        return this.f9084k;
    }

    public int j() {
        return this.f9074a.b();
    }

    public SpannedString k() {
        return this.f9076c;
    }

    public int l() {
        return this.f9082i;
    }

    public int m() {
        return this.f9074a.c();
    }

    public boolean o() {
        return this.f9075b;
    }

    public boolean p() {
        return this.f9086m;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public o2(c cVar) {
        this.f9080g = 0;
        this.f9081h = 0;
        this.f9082i = ViewCompat.MEASURED_STATE_MASK;
        this.f9083j = ViewCompat.MEASURED_STATE_MASK;
        this.f9084k = 0;
        this.f9085l = 0;
        this.f9074a = cVar;
    }

    public static b a(c cVar) {
        return new b(cVar);
    }

    private o2(b bVar) {
        this.f9080g = 0;
        this.f9081h = 0;
        this.f9082i = ViewCompat.MEASURED_STATE_MASK;
        this.f9083j = ViewCompat.MEASURED_STATE_MASK;
        this.f9084k = 0;
        this.f9085l = 0;
        this.f9074a = bVar.f9087a;
        this.f9075b = bVar.f9088b;
        this.f9076c = bVar.f9089c;
        this.f9077d = bVar.f9090d;
        this.f9078e = bVar.f9091e;
        this.f9079f = bVar.f9092f;
        this.f9080g = bVar.f9093g;
        this.f9081h = bVar.f9094h;
        this.f9082i = bVar.f9095i;
        this.f9083j = bVar.f9096j;
        this.f9084k = bVar.f9097k;
        this.f9085l = bVar.f9098l;
        this.f9086m = bVar.f9099m;
    }
}
