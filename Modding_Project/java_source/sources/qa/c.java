package qa;

import android.content.Context;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import oa.f;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class c implements oa.d {

    /* renamed from: a  reason: collision with root package name */
    private final String f65241a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f65242b;

    /* renamed from: c  reason: collision with root package name */
    private final String f65243c;

    /* renamed from: d  reason: collision with root package name */
    private final oa.b f65244d;

    /* renamed from: e  reason: collision with root package name */
    private final pa.c f65245e;

    /* renamed from: f  reason: collision with root package name */
    private final f f65246f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, String> f65247g;

    /* renamed from: h  reason: collision with root package name */
    private final List<ra.a> f65248h;

    /* renamed from: i  reason: collision with root package name */
    private final Map<String, String> f65249i = new HashMap();

    public c(Context context, String str, oa.b bVar, InputStream inputStream, Map<String, String> map, List<ra.a> list, String str2) {
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f65242b = context;
        str = str == null ? context.getPackageName() : str;
        this.f65243c = str;
        if (inputStream != null) {
            this.f65245e = new j(inputStream, str);
            b.a(inputStream);
        } else {
            this.f65245e = new n(context, str);
        }
        this.f65246f = new f(this.f65245e);
        oa.b bVar2 = oa.b.f63155b;
        if (bVar != bVar2 && "1.0".equals(this.f65245e.getString("/configuration_version", null))) {
            throw new RuntimeException("The file version does not match,please download the latest agconnect-services.json from the AGC website.");
        }
        this.f65244d = (bVar == null || bVar == bVar2) ? b.f(this.f65245e.getString("/region", null), this.f65245e.getString("/agcgw/url", null)) : bVar;
        this.f65247g = b.d(map);
        this.f65248h = list;
        this.f65241a = str2 == null ? d() : str2;
    }

    private String b(String str) {
        Map<String, f.a> a10 = oa.f.a();
        if (!a10.containsKey(str)) {
            return null;
        }
        if (this.f65249i.containsKey(str)) {
            return this.f65249i.get(str);
        }
        f.a aVar = a10.get(str);
        if (aVar == null) {
            return null;
        }
        String a11 = aVar.a(this);
        this.f65249i.put(str, a11);
        return a11;
    }

    private String d() {
        return String.valueOf(("{packageName='" + this.f65243c + "', routePolicy=" + this.f65244d + ", reader=" + this.f65245e.toString().hashCode() + ", customConfigMap=" + new JSONObject(this.f65247g).toString().hashCode() + '}').hashCode());
    }

    @Override // oa.d
    public oa.b a() {
        oa.b bVar = this.f65244d;
        if (bVar == null) {
            return oa.b.f63155b;
        }
        return bVar;
    }

    public List<ra.a> c() {
        return this.f65248h;
    }

    public String e(String str, String str2) {
        if (str == null) {
            return str2;
        }
        String e10 = b.e(str);
        String str3 = this.f65247g.get(e10);
        if (str3 != null) {
            return str3;
        }
        String b10 = b(e10);
        if (b10 != null) {
            return b10;
        }
        String string = this.f65245e.getString(e10, str2);
        if (f.c(string)) {
            return this.f65246f.a(string, str2);
        }
        return string;
    }

    @Override // oa.d
    public Context getContext() {
        return this.f65242b;
    }

    @Override // oa.d
    public String getIdentifier() {
        return this.f65241a;
    }

    @Override // oa.d
    public String getString(String str) {
        return e(str, null);
    }
}
