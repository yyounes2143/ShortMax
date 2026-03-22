package com.mbridge.msdk.foundation.entity;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.mbridge.msdk.foundation.tools.l0;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
/* compiled from: VideoReportData.java */
/* loaded from: classes5.dex */
public class n {
    public static int N = 1;
    public static int O;
    private String A;
    private String B;
    private int C;
    private String D;
    private String E;
    private String G;
    private String H;
    private String I;
    private int J;
    private long K;
    private String L;
    private int M;

    /* renamed from: b  reason: collision with root package name */
    private String f26935b;

    /* renamed from: c  reason: collision with root package name */
    private int f26936c;

    /* renamed from: e  reason: collision with root package name */
    private int f26938e;

    /* renamed from: f  reason: collision with root package name */
    private String f26939f;

    /* renamed from: g  reason: collision with root package name */
    private String f26940g;

    /* renamed from: h  reason: collision with root package name */
    private String f26941h;

    /* renamed from: i  reason: collision with root package name */
    private String f26942i;

    /* renamed from: j  reason: collision with root package name */
    private String f26943j;

    /* renamed from: k  reason: collision with root package name */
    private String f26944k;

    /* renamed from: l  reason: collision with root package name */
    private String f26945l;

    /* renamed from: m  reason: collision with root package name */
    private String f26946m;

    /* renamed from: n  reason: collision with root package name */
    private String f26947n;

    /* renamed from: o  reason: collision with root package name */
    private String f26948o;

    /* renamed from: p  reason: collision with root package name */
    private int f26949p;

    /* renamed from: q  reason: collision with root package name */
    private String f26950q;

    /* renamed from: r  reason: collision with root package name */
    private String f26951r;

    /* renamed from: s  reason: collision with root package name */
    private String f26952s;

    /* renamed from: u  reason: collision with root package name */
    private int f26954u;

    /* renamed from: v  reason: collision with root package name */
    private String f26955v;

    /* renamed from: w  reason: collision with root package name */
    private String f26956w;

    /* renamed from: x  reason: collision with root package name */
    private String f26957x;

    /* renamed from: y  reason: collision with root package name */
    private String f26958y;

    /* renamed from: z  reason: collision with root package name */
    private String f26959z;

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f26934a = null;

    /* renamed from: d  reason: collision with root package name */
    private int f26937d = 0;

    /* renamed from: t  reason: collision with root package name */
    private int f26953t = 0;
    private int F = 0;

    public n(String str, int i10, int i11, int i12, int i13, String str2, String str3, int i14, String str4, int i15, String str5) {
        this.f26950q = str;
        this.f26954u = i10;
        this.f26955v = str5;
        this.f26949p = i11;
        this.M = i12;
        this.J = i13;
        try {
            if (!TextUtils.isEmpty(str2)) {
                this.f26956w = URLEncoder.encode(str2, "utf-8");
            }
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
        this.f26957x = str3;
        this.C = i14;
        this.f26942i = str4;
        this.K = i15;
    }

    public String A() {
        return this.H;
    }

    public String B() {
        return this.I;
    }

    public int C() {
        return this.J;
    }

    public long D() {
        return this.K;
    }

    public String E() {
        return this.L;
    }

    public int F() {
        return this.M;
    }

    public String a() {
        return this.f26935b;
    }

    public void b(String str) {
        this.f26939f = str;
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f26940g = URLEncoder.encode(str);
    }

    public String d() {
        return this.f26939f;
    }

    public String e() {
        return this.f26940g;
    }

    public String f() {
        return this.f26941h;
    }

    public String g() {
        return this.f26942i;
    }

    public String h() {
        return this.f26943j;
    }

    public String i() {
        return this.f26944k;
    }

    public void j(String str) {
        this.f26950q = str;
    }

    public String k() {
        return this.f26946m;
    }

    public void l(String str) {
        this.f26955v = str;
    }

    public void m(String str) {
        this.f26957x = str;
    }

    public String n() {
        return this.f26950q;
    }

    public void o(String str) {
        this.f26959z = str;
    }

    public void p(String str) {
        this.A = str;
    }

    public int q() {
        return this.f26954u;
    }

    public String r() {
        return this.f26955v;
    }

    public String s() {
        return this.f26956w;
    }

    public String t() {
        return TextUtils.isEmpty(this.f26957x) ? "" : this.f26957x;
    }

    @NonNull
    public String toString() {
        return "RewardReportData [key=" + this.f26950q + ", networkType=" + this.f26954u + ", isCompleteView=" + this.f26949p + ", watchedMillis=" + this.M + ", videoLength=" + this.J + ", offerUrl=" + this.f26956w + ", reason=" + this.f26957x + ", result=" + this.C + ", duration=" + this.f26942i + ", videoSize=" + this.K + "]";
    }

    public void u(String str) {
        this.I = str;
    }

    public String v() {
        return this.f26959z;
    }

    public String w() {
        return this.A;
    }

    public int x() {
        return this.C;
    }

    public int y() {
        return this.F;
    }

    public String z() {
        return this.G;
    }

    public void a(String str) {
        this.f26935b = str;
    }

    public int b() {
        return this.f26936c;
    }

    public void d(String str) {
        this.f26941h = str;
    }

    public void e(String str) {
        this.f26942i = str;
    }

    public void f(String str) {
        this.f26943j = str;
    }

    public void g(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f26944k = URLEncoder.encode(str, "utf-8");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void h(String str) {
        this.f26945l = str;
    }

    public void i(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f26948o = URLEncoder.encode(str, "utf-8");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String j() {
        return this.f26945l;
    }

    public void k(String str) {
        this.f26952s = str;
    }

    public String l() {
        return this.f26948o;
    }

    public int m() {
        return this.f26949p;
    }

    public void n(String str) {
        this.f26958y = str;
    }

    public String o() {
        return this.f26951r;
    }

    public int p() {
        return this.f26953t;
    }

    public void q(String str) {
        this.B = str;
    }

    public void r(String str) {
        this.D = str;
    }

    public void s(String str) {
        this.E = str;
    }

    public void t(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.G = URLEncoder.encode(str, "utf-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
    }

    public String u() {
        return this.f26958y;
    }

    public void v(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.L = URLEncoder.encode(str, "utf-8");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(int i10) {
        this.f26936c = i10;
    }

    public void b(int i10) {
        this.f26953t = i10;
    }

    public void c(int i10) {
        this.f26954u = i10;
    }

    public void d(int i10) {
        this.C = i10;
    }

    public void e(int i10) {
        this.F = i10;
    }

    public String a(String str, String str2) {
        Map<String, String> map;
        if (TextUtils.isEmpty(str) || (map = this.f26934a) == null) {
            return str2;
        }
        try {
            String str3 = map.get(str);
            return TextUtils.isEmpty(str3) ? str2 : str3;
        } catch (Exception unused) {
            return str2;
        }
    }

    public void b(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        if (this.f26934a == null) {
            this.f26934a = new HashMap();
        }
        try {
            this.f26934a.put(str, str2);
        } catch (Exception unused) {
        }
    }

    public int c() {
        return this.f26938e;
    }

    public n() {
    }

    public n(String str, int i10, String str2, String str3, String str4) {
        this.f26950q = str;
        this.f26955v = str4;
        this.f26954u = i10;
        if (!TextUtils.isEmpty(str2)) {
            try {
                this.f26956w = URLEncoder.encode(str2, "utf-8");
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            }
        }
        this.f26957x = str3;
    }

    public n(String str, int i10, int i11, String str2, int i12, String str3, int i13, String str4) {
        this.f26950q = str;
        this.f26954u = i10;
        this.f26955v = str4;
        this.J = i11;
        if (!TextUtils.isEmpty(str2)) {
            try {
                this.f26956w = URLEncoder.encode(str2, "utf-8");
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            }
        }
        this.C = i12;
        this.f26942i = str3;
        this.K = i13;
    }

    public n(Context context, CampaignEx campaignEx, int i10, String str, long j10, int i11) {
        if (i11 == 1 || i11 == 287 || i11 == 94) {
            this.f26950q = "m_download_end";
        } else if (i11 == 95) {
            this.f26950q = "2000025";
        }
        int s10 = l0.s(context);
        this.f26954u = s10;
        this.f26955v = l0.a(context, s10);
        this.J = campaignEx.getVideoLength();
        this.f26958y = campaignEx.getRequestId();
        this.f26959z = campaignEx.getRequestIdNotice();
        if (!TextUtils.isEmpty(this.f26956w)) {
            try {
                this.f26956w = URLEncoder.encode(campaignEx.getNoticeUrl() == null ? campaignEx.getClickURL() : campaignEx.getNoticeUrl(), "utf-8");
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            }
        }
        this.C = i10;
        this.f26942i = str;
        this.K = j10 == 0 ? campaignEx.getVideoSize() : j10;
    }

    public n(String str, String str2, String str3, String str4, String str5, String str6, int i10, String str7) {
        this.f26950q = str;
        this.f26946m = str2;
        this.H = str3;
        this.f26951r = str4;
        this.I = str5;
        this.f26939f = str6;
        this.f26954u = i10;
        this.f26955v = str7;
    }

    public n(String str) {
        this.f26947n = str;
    }

    public n(String str, int i10, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f26950q = str;
        this.C = i10;
        this.f26942i = str2;
        try {
            if (!TextUtils.isEmpty(str3)) {
                this.f26944k = URLEncoder.encode(str3, "utf-8");
            }
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
        this.f26939f = str4;
        this.I = str5;
        this.f26957x = str6;
        this.f26943j = str7;
        if (Integer.valueOf(str2).intValue() > com.mbridge.msdk.foundation.same.a.L) {
            this.C = 2;
        }
    }

    public n(String str, String str2, String str3, String str4, String str5, int i10) {
        this.f26950q = str;
        this.f26939f = str2;
        this.f26958y = str3;
        this.f26959z = str4;
        this.I = str5;
        this.f26954u = i10;
    }

    public n(String str, String str2, String str3, String str4, String str5, int i10, int i11, String str6) {
        this.f26950q = str;
        this.f26939f = str2;
        this.f26958y = str3;
        this.f26959z = str4;
        this.I = str5;
        this.f26954u = i10;
        this.f26957x = str6;
        this.f26938e = i11;
    }
}
