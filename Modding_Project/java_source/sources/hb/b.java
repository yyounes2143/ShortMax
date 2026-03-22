package hb;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b implements u {

    /* renamed from: a  reason: collision with root package name */
    private Context f52633a = v0.q();

    /* renamed from: b  reason: collision with root package name */
    private String f52634b;

    /* renamed from: c  reason: collision with root package name */
    private JSONObject f52635c;

    /* renamed from: d  reason: collision with root package name */
    private String f52636d;

    /* renamed from: e  reason: collision with root package name */
    private String f52637e;

    /* renamed from: f  reason: collision with root package name */
    private String f52638f;

    /* renamed from: g  reason: collision with root package name */
    private String f52639g;

    /* renamed from: h  reason: collision with root package name */
    private Boolean f52640h;

    public b(String str, JSONObject jSONObject, String str2, String str3, long j10) {
        this.f52634b = str;
        this.f52635c = jSONObject;
        this.f52636d = str2;
        this.f52637e = str3;
        this.f52638f = String.valueOf(j10);
        if (m1.i(str2, "oper")) {
            s0 b10 = k1.c().b(str2, j10);
            this.f52639g = b10.a();
            this.f52640h = Boolean.valueOf(b10.f());
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        String valueOf;
        JSONArray jSONArray;
        f1.h("hmsSdk", "Begin to run EventRecordTask...");
        int o10 = v0.o();
        int l10 = c.l(this.f52636d, this.f52637e);
        if (h.c(this.f52633a, "stat_v2_1", o10 * 1048576)) {
            f1.h("hmsSdk", "stat sp file reach max limited size, discard new event");
            o.a().f("", "alltype");
            return;
        }
        f fVar = new f();
        fVar.e(this.f52634b);
        fVar.b(this.f52635c.toString());
        fVar.i(this.f52637e);
        fVar.g(this.f52638f);
        fVar.k(this.f52639g);
        Boolean bool = this.f52640h;
        if (bool == null) {
            valueOf = null;
        } else {
            valueOf = String.valueOf(bool);
        }
        fVar.j(valueOf);
        try {
            JSONObject h10 = fVar.h();
            String d10 = o0.d(this.f52636d, this.f52637e);
            String b10 = l.b(this.f52633a, "stat_v2_1", d10, "");
            try {
                if (!TextUtils.isEmpty(b10)) {
                    jSONArray = new JSONArray(b10);
                } else {
                    jSONArray = new JSONArray();
                }
            } catch (JSONException unused) {
                f1.j("hmsSdk", "Cached data corrupted: stat_v2_1");
                jSONArray = new JSONArray();
            }
            jSONArray.put(h10);
            l.g(this.f52633a, "stat_v2_1", d10, jSONArray.toString());
            if (jSONArray.toString().length() > l10 * 1024) {
                o.a().f(this.f52636d, this.f52637e);
            }
        } catch (JSONException unused2) {
            f1.l("hmsSdk", "eventRecord toJson error! The record failed.");
        }
    }
}
