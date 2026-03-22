package qa;

import android.content.Context;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import oa.f;
/* loaded from: classes5.dex */
public class d extends pa.a {

    /* renamed from: c  reason: collision with root package name */
    private final Context f65250c;

    /* renamed from: d  reason: collision with root package name */
    private final String f65251d;

    /* renamed from: e  reason: collision with root package name */
    private volatile pa.c f65252e;

    /* renamed from: f  reason: collision with root package name */
    private final Object f65253f = new Object();

    /* renamed from: g  reason: collision with root package name */
    private oa.b f65254g = oa.b.f63155b;

    /* renamed from: h  reason: collision with root package name */
    private final Map<String, String> f65255h = new HashMap();

    /* renamed from: i  reason: collision with root package name */
    private volatile f f65256i;

    public d(Context context, String str) {
        this.f65250c = context;
        this.f65251d = str;
    }

    private static String d(String str) {
        int i10 = 0;
        if (str.length() > 0) {
            while (str.charAt(i10) == '/') {
                i10++;
            }
        }
        return '/' + str.substring(i10);
    }

    private void e() {
        Log.d("AGC_ConfigImpl", "initConfigReader");
        if (this.f65252e == null) {
            synchronized (this.f65253f) {
                try {
                    if (this.f65252e == null) {
                        this.f65252e = new n(this.f65250c, this.f65251d);
                        this.f65256i = new f(this.f65252e);
                    }
                    g();
                } finally {
                }
            }
        }
    }

    private String f(String str) {
        f.a aVar;
        Map<String, f.a> a10 = oa.f.a();
        if (!a10.containsKey(str) || (aVar = a10.get(str)) == null) {
            return null;
        }
        return aVar.a(this);
    }

    private void g() {
        if (this.f65254g == oa.b.f63155b) {
            if (this.f65252e != null) {
                this.f65254g = b.f(this.f65252e.getString("/region", null), this.f65252e.getString("/agcgw/url", null));
            } else {
                Log.w("AGConnectServiceConfig", "get route fail , config not ready");
            }
        }
    }

    @Override // oa.d
    public oa.b a() {
        Log.d("AGC_ConfigImpl", "getRoutePolicy");
        if (this.f65254g == null) {
            this.f65254g = oa.b.f63155b;
        }
        oa.b bVar = this.f65254g;
        oa.b bVar2 = oa.b.f63155b;
        if (bVar == bVar2 && this.f65252e == null) {
            e();
        }
        oa.b bVar3 = this.f65254g;
        if (bVar3 != null) {
            return bVar3;
        }
        return bVar2;
    }

    @Override // oa.d
    public Context getContext() {
        return this.f65250c;
    }

    @Override // oa.d
    public String getIdentifier() {
        return "DEFAULT_INSTANCE";
    }

    @Override // oa.d
    public String getString(String str) {
        return h(str, null);
    }

    public String h(String str, String str2) {
        if (str != null) {
            if (this.f65252e == null) {
                e();
            }
            String d10 = d(str);
            String str3 = this.f65255h.get(d10);
            if (str3 != null) {
                return str3;
            }
            String f10 = f(d10);
            if (f10 != null) {
                return f10;
            }
            String string = this.f65252e.getString(d10, str2);
            if (f.c(string)) {
                return this.f65256i.a(string, str2);
            }
            return string;
        }
        throw new NullPointerException("path must not be null.");
    }
}
