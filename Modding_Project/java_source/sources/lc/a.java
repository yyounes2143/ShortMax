package lc;

import android.content.Context;
import android.text.TextUtils;
import com.pandora.ttlicense2.LicenseManager;
import lc.b;
import lc.c;
/* compiled from: Config.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f62108a;

    /* renamed from: b  reason: collision with root package name */
    private final String f62109b;

    /* renamed from: c  reason: collision with root package name */
    private final String f62110c;

    /* renamed from: d  reason: collision with root package name */
    private final String f62111d;

    /* renamed from: e  reason: collision with root package name */
    private final String f62112e;

    /* renamed from: f  reason: collision with root package name */
    private final String f62113f;

    /* renamed from: g  reason: collision with root package name */
    private final String f62114g;

    /* renamed from: h  reason: collision with root package name */
    private LicenseManager.Callback f62115h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f62116i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f62117j;

    /* renamed from: k  reason: collision with root package name */
    private final c f62118k;

    /* renamed from: l  reason: collision with root package name */
    public lc.b f62119l;

    /* compiled from: Config.java */
    /* loaded from: classes6.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private Context f62120a;

        /* renamed from: b  reason: collision with root package name */
        private String f62121b;

        /* renamed from: c  reason: collision with root package name */
        private String f62122c;

        /* renamed from: d  reason: collision with root package name */
        private String f62123d;

        /* renamed from: e  reason: collision with root package name */
        private String f62124e;

        /* renamed from: g  reason: collision with root package name */
        private String f62126g;

        /* renamed from: h  reason: collision with root package name */
        private LicenseManager.Callback f62127h;

        /* renamed from: k  reason: collision with root package name */
        private c f62130k;

        /* renamed from: l  reason: collision with root package name */
        private lc.b f62131l;

        /* renamed from: i  reason: collision with root package name */
        private boolean f62128i = true;

        /* renamed from: j  reason: collision with root package name */
        private boolean f62129j = true;

        /* renamed from: f  reason: collision with root package name */
        private String f62125f = nc.a.a();

        public a m() {
            if (this.f62120a != null) {
                if (!TextUtils.isEmpty(this.f62121b)) {
                    if (!TextUtils.isEmpty(this.f62124e)) {
                        if (!TextUtils.isEmpty(this.f62125f)) {
                            if (this.f62130k == null) {
                                this.f62130k = new c.b(this.f62120a).d();
                            }
                            if (this.f62131l == null) {
                                this.f62131l = new b.C0864b(this.f62120a).i();
                            }
                            return new a(this);
                        }
                        throw new NullPointerException("appRegion is null");
                    }
                    throw new NullPointerException("appChannel is null");
                }
                throw new NullPointerException("appID is null");
            }
            throw new NullPointerException("applicationContext is null");
        }

        public b n(String str) {
            this.f62124e = str;
            return this;
        }

        public b o(String str) {
            this.f62121b = str;
            return this;
        }

        public b p(String str) {
            this.f62122c = str;
            return this;
        }

        public b q(String str) {
            this.f62125f = str;
            return this;
        }

        public b r(String str) {
            this.f62123d = str;
            return this;
        }

        public b s(Context context) {
            this.f62120a = context;
            return this;
        }

        public b t(String str) {
            this.f62126g = str;
            return this;
        }

        public b u(c cVar) {
            this.f62130k = cVar;
            return this;
        }
    }

    public String a() {
        return this.f62112e;
    }

    public String b() {
        return this.f62109b;
    }

    public String c() {
        return this.f62110c;
    }

    public String d() {
        return this.f62113f;
    }

    public String e() {
        return this.f62111d;
    }

    public Context f() {
        return this.f62108a;
    }

    public LicenseManager.Callback g() {
        return this.f62115h;
    }

    public String h() {
        return this.f62114g;
    }

    public lc.b i() {
        return this.f62119l;
    }

    public c j() {
        return this.f62118k;
    }

    public boolean k() {
        return this.f62117j;
    }

    public boolean l() {
        return this.f62116i;
    }

    public String toString() {
        return "Config{applicationContext=" + this.f62108a + ", appID='" + this.f62109b + "', appName='" + this.f62110c + "', appVersion='" + this.f62111d + "', appChannel='" + this.f62112e + "', appRegion='" + this.f62113f + "', licenseUri='" + this.f62114g + "', licenseCallback='" + this.f62115h + "', securityDeviceId=" + this.f62116i + ", vodConfig=" + this.f62118k + '}';
    }

    private a(b bVar) {
        this.f62108a = bVar.f62120a;
        this.f62109b = bVar.f62121b;
        this.f62110c = bVar.f62122c;
        this.f62111d = bVar.f62123d;
        this.f62112e = bVar.f62124e;
        this.f62113f = bVar.f62125f;
        this.f62114g = bVar.f62126g;
        this.f62115h = bVar.f62127h;
        this.f62116i = bVar.f62128i;
        this.f62117j = bVar.f62129j;
        this.f62118k = bVar.f62130k;
        this.f62119l = bVar.f62131l;
    }
}
