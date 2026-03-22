package com.applovin.impl;

import android.os.Bundle;
import androidx.arch.core.util.Function;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class h3 {

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.k f8036a;

    /* renamed from: b  reason: collision with root package name */
    private final JSONObject f8037b;

    /* renamed from: d  reason: collision with root package name */
    protected final JSONObject f8039d;

    /* renamed from: f  reason: collision with root package name */
    private final Map f8041f;

    /* renamed from: g  reason: collision with root package name */
    private final f5 f8042g;

    /* renamed from: h  reason: collision with root package name */
    protected final f5 f8043h;

    /* renamed from: i  reason: collision with root package name */
    private String f8044i;

    /* renamed from: j  reason: collision with root package name */
    private String f8045j;

    /* renamed from: c  reason: collision with root package name */
    private final Object f8038c = new Object();

    /* renamed from: e  reason: collision with root package name */
    protected final Object f8040e = new Object();

    public h3(Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
        if (kVar != null) {
            if (jSONObject2 != null) {
                if (jSONObject != null) {
                    this.f8036a = kVar;
                    if (((Boolean) kVar.a(v4.f10336q6)).booleanValue()) {
                        this.f8042g = new f5(jSONObject2);
                        this.f8043h = new f5(jSONObject);
                        this.f8037b = null;
                        this.f8039d = null;
                    } else {
                        this.f8037b = jSONObject2;
                        this.f8039d = jSONObject;
                        this.f8042g = null;
                        this.f8043h = null;
                    }
                    this.f8041f = map;
                    return;
                }
                throw new IllegalArgumentException("No ad object specified");
            }
            throw new IllegalArgumentException("No full response specified");
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    private int j() {
        return a("mute_state", b("mute_state", ((Integer) this.f8036a.a(o3.S7)).intValue()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JSONObject a() {
        JSONObject jSONObject;
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            return f5Var.a();
        }
        synchronized (this.f8040e) {
            jSONObject = this.f8039d;
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Boolean b(String str, Boolean bool) {
        Boolean bool2;
        f5 f5Var = this.f8042g;
        if (f5Var != null) {
            return f5Var.a(str, bool);
        }
        synchronized (this.f8038c) {
            bool2 = JsonUtils.getBoolean(this.f8037b, str, bool);
        }
        return bool2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean c(String str) {
        boolean has;
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            return f5Var.a(str);
        }
        synchronized (this.f8040e) {
            has = this.f8039d.has(str);
        }
        return has;
    }

    protected boolean d(String str) {
        boolean has;
        f5 f5Var = this.f8042g;
        if (f5Var != null) {
            return f5Var.a(str);
        }
        synchronized (this.f8038c) {
            has = this.f8037b.has(str);
        }
        return has;
    }

    protected Object e(String str) {
        Object opt;
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            return f5Var.b(str);
        }
        synchronized (this.f8040e) {
            opt = this.f8039d.opt(str);
        }
        return opt;
    }

    public Bundle f() {
        return BundleUtils.getBundle("custom_parameters", new Bundle(), l());
    }

    public JSONObject g() {
        JSONObject jSONObject;
        f5 f5Var = this.f8042g;
        if (f5Var != null) {
            return f5Var.a();
        }
        synchronized (this.f8038c) {
            jSONObject = this.f8037b;
        }
        return jSONObject;
    }

    public String getAdUnitId() {
        return b("ad_unit_id", "");
    }

    public String getPlacement() {
        return this.f8044i;
    }

    public Map i() {
        return this.f8041f;
    }

    public String k() {
        return c().split("_")[0];
    }

    public Bundle l() {
        Bundle bundle;
        boolean z10;
        if (e("server_parameters") instanceof JSONObject) {
            f5 f5Var = this.f8043h;
            if (f5Var != null) {
                bundle = (Bundle) f5Var.a(new Function() { // from class: com.applovin.impl.oa
                    @Override // androidx.arch.core.util.Function
                    public final Object apply(Object obj) {
                        Bundle a10;
                        a10 = h3.a((f5) obj);
                        return a10;
                    }
                });
            } else {
                bundle = JsonUtils.toBundle(a("server_parameters", (JSONObject) null));
            }
        } else {
            bundle = new Bundle();
        }
        int j10 = j();
        if (j10 != -1) {
            if (j10 == 2) {
                bundle.putBoolean("is_muted", this.f8036a.o0().isMuted());
            } else {
                if (j10 == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                bundle.putBoolean("is_muted", z10);
            }
        }
        if (!bundle.containsKey("amount")) {
            bundle.putLong("amount", b("amount", 0L));
        }
        if (!bundle.containsKey("currency")) {
            bundle.putString("currency", b("currency", ""));
        }
        return bundle;
    }

    public long m() {
        return a("adapter_timeout_ms", ((Long) this.f8036a.a(o3.f9133o7)).longValue());
    }

    public Boolean n() {
        String str = this.f8036a.o0().getExtraParameters().get("huc");
        if (StringUtils.isValidString(str)) {
            return Boolean.valueOf(str);
        }
        if (c("huc")) {
            return a("huc", Boolean.FALSE);
        }
        return b("huc", (Boolean) null);
    }

    public Boolean o() {
        String str = this.f8036a.o0().getExtraParameters().get("dns");
        if (StringUtils.isValidString(str)) {
            return Boolean.valueOf(str);
        }
        if (c("dns")) {
            return a("dns", Boolean.FALSE);
        }
        return b("dns", (Boolean) null);
    }

    public boolean p() {
        return a("is_testing", Boolean.FALSE).booleanValue();
    }

    public boolean q() {
        return a("reinitialize_if_init_fails", Boolean.FALSE).booleanValue();
    }

    public boolean r() {
        return a("run_on_ui_thread", Boolean.TRUE).booleanValue();
    }

    public boolean s() {
        return a("eagerly_initialize", Boolean.TRUE).booleanValue();
    }

    public String toString() {
        return "MediationAdapterSpec{adapterClass='" + b() + "', adapterName='" + c() + "', isTesting=" + p() + '}';
    }

    public void f(String str) {
        this.f8045j = str;
    }

    public long h() {
        return a("init_completion_delay_ms", -1L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Boolean a(String str, Boolean bool) {
        Boolean bool2;
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            return f5Var.a(str, bool);
        }
        synchronized (this.f8040e) {
            bool2 = JsonUtils.getBoolean(this.f8039d, str, bool);
        }
        return bool2;
    }

    protected int b(String str, int i10) {
        int i11;
        f5 f5Var = this.f8042g;
        if (f5Var != null) {
            return f5Var.a(str, i10);
        }
        synchronized (this.f8038c) {
            i11 = JsonUtils.getInt(this.f8037b, str, i10);
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(String str, int i10) {
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            f5Var.b(str, i10);
            return;
        }
        synchronized (this.f8040e) {
            JsonUtils.putInt(this.f8039d, str, i10);
        }
    }

    public String d() {
        if (c("consent_string")) {
            return a("consent_string", (String) null);
        }
        if (d("consent_string")) {
            return b("consent_string", (String) null);
        }
        return this.f8036a.s0().j();
    }

    public String e() {
        return this.f8045j;
    }

    public void g(String str) {
        this.f8044i = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float a(String str, float f10) {
        float f11;
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            return f5Var.a(str, f10);
        }
        synchronized (this.f8040e) {
            f11 = JsonUtils.getFloat(this.f8039d, str, f10);
        }
        return f11;
    }

    protected JSONArray b(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        f5 f5Var = this.f8042g;
        if (f5Var != null) {
            return f5Var.a(str, jSONArray);
        }
        synchronized (this.f8038c) {
            jSONArray2 = JsonUtils.getJSONArray(this.f8037b, str, jSONArray);
        }
        return jSONArray2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(String str, long j10) {
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            f5Var.b(str, j10);
            return;
        }
        synchronized (this.f8040e) {
            JsonUtils.putLong(this.f8039d, str, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int a(String str, int i10) {
        int i11;
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            return f5Var.a(str, i10);
        }
        synchronized (this.f8040e) {
            i11 = JsonUtils.getInt(this.f8039d, str, i10);
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long b(String str, long j10) {
        long j11;
        f5 f5Var = this.f8042g;
        if (f5Var != null) {
            return f5Var.a(str, j10);
        }
        synchronized (this.f8038c) {
            j11 = JsonUtils.getLong(this.f8037b, str, j10);
        }
        return j11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(String str, String str2) {
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            f5Var.b(str, str2);
            return;
        }
        synchronized (this.f8040e) {
            JsonUtils.putString(this.f8039d, str, str2);
        }
    }

    protected JSONArray a(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            return f5Var.a(str, jSONArray);
        }
        synchronized (this.f8040e) {
            jSONArray2 = JsonUtils.getJSONArray(this.f8039d, str, jSONArray);
        }
        return jSONArray2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String b(String str, String str2) {
        String string;
        f5 f5Var = this.f8042g;
        if (f5Var != null) {
            return f5Var.a(str, str2);
        }
        synchronized (this.f8038c) {
            string = JsonUtils.getString(this.f8037b, str, str2);
        }
        return string;
    }

    public String c() {
        return a("name", (String) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JSONObject a(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            return f5Var.a(str, jSONObject);
        }
        synchronized (this.f8040e) {
            jSONObject2 = JsonUtils.getJSONObject(this.f8039d, str, jSONObject);
        }
        return jSONObject2;
    }

    public String b() {
        return a("class", (String) null);
    }

    public List b(String str) {
        List optList;
        List optList2;
        if (str != null) {
            f5 f5Var = this.f8042g;
            if (f5Var != null) {
                optList = f5Var.b(str, Collections.emptyList());
            } else {
                optList = JsonUtils.optList(b(str, new JSONArray()), Collections.emptyList());
            }
            f5 f5Var2 = this.f8043h;
            if (f5Var2 != null) {
                optList2 = f5Var2.b(str, Collections.emptyList());
            } else {
                optList2 = JsonUtils.optList(a(str, new JSONArray()), Collections.emptyList());
            }
            ArrayList arrayList = new ArrayList(optList.size() + optList2.size());
            arrayList.addAll(optList);
            arrayList.addAll(optList2);
            return arrayList;
        }
        throw new IllegalArgumentException("No key specified");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long a(String str, long j10) {
        long j11;
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            return f5Var.a(str, j10);
        }
        synchronized (this.f8040e) {
            j11 = JsonUtils.getLong(this.f8039d, str, j10);
        }
        return j11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(String str, String str2) {
        String string;
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            return f5Var.a(str, str2);
        }
        synchronized (this.f8040e) {
            string = JsonUtils.getString(this.f8039d, str, str2);
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, Object obj) {
        f5 f5Var = this.f8043h;
        if (f5Var != null) {
            f5Var.a(str, obj);
            return;
        }
        synchronized (this.f8040e) {
            JsonUtils.putObject(this.f8039d, str, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Bundle a(f5 f5Var) {
        return JsonUtils.toBundle(f5Var.a("server_parameters", (JSONObject) null));
    }

    public String a(String str) {
        String a10 = a(str, "");
        return StringUtils.isValidString(a10) ? a10 : b(str, "");
    }
}
