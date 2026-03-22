package com.applovin.impl.mediation;

import android.text.TextUtils;
import com.applovin.impl.h3;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.v2;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapters.MediationAdapterBase;
import com.applovin.sdk.AppLovinSdk;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class g {

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f8834b;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f8835c;

    /* renamed from: a  reason: collision with root package name */
    private final Map f8833a = Collections.synchronizedMap(new HashMap(16));

    /* renamed from: d  reason: collision with root package name */
    private final Object f8836d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private final Map f8837e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private final Set f8838f = new HashSet();

    /* renamed from: g  reason: collision with root package name */
    private final Object f8839g = new Object();

    /* renamed from: h  reason: collision with root package name */
    private final Set f8840h = new HashSet();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f8841a;

        /* renamed from: b  reason: collision with root package name */
        private final String f8842b;

        /* renamed from: c  reason: collision with root package name */
        private final MaxAdFormat f8843c;

        /* renamed from: d  reason: collision with root package name */
        private final JSONObject f8844d;

        a(String str, String str2, v2 v2Var, com.applovin.impl.sdk.k kVar) {
            this.f8841a = str;
            this.f8842b = str2;
            JSONObject jSONObject = new JSONObject();
            this.f8844d = jSONObject;
            JsonUtils.putString(jSONObject, "class", str);
            JsonUtils.putString(jSONObject, "operation", str2);
            if (v2Var != null) {
                this.f8843c = v2Var.getFormat();
                JsonUtils.putString(jSONObject, "format", v2Var.getFormat().getLabel());
                return;
            }
            this.f8843c = null;
        }

        JSONObject a() {
            return this.f8844d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (!this.f8841a.equals(aVar.f8841a) || !this.f8842b.equals(aVar.f8842b)) {
                return false;
            }
            MaxAdFormat maxAdFormat = this.f8843c;
            MaxAdFormat maxAdFormat2 = aVar.f8843c;
            if (maxAdFormat == null ? maxAdFormat2 == null : maxAdFormat.equals(maxAdFormat2)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            int hashCode = ((this.f8841a.hashCode() * 31) + this.f8842b.hashCode()) * 31;
            MaxAdFormat maxAdFormat = this.f8843c;
            if (maxAdFormat != null) {
                i10 = maxAdFormat.hashCode();
            } else {
                i10 = 0;
            }
            return hashCode + i10;
        }

        public String toString() {
            return "DisabledAdapterInfo{className='" + this.f8841a + "', operationTag='" + this.f8842b + "', format=" + this.f8843c + '}';
        }
    }

    public g(com.applovin.impl.sdk.k kVar) {
        if (kVar != null) {
            this.f8834b = kVar;
            this.f8835c = kVar.O();
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    public Collection a() {
        ArrayList arrayList;
        synchronized (this.f8839g) {
            try {
                arrayList = new ArrayList(this.f8840h.size());
                for (a aVar : this.f8840h) {
                    arrayList.add(aVar.a());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return arrayList;
    }

    public Collection b() {
        Set unmodifiableSet;
        synchronized (this.f8836d) {
            unmodifiableSet = Collections.unmodifiableSet(this.f8838f);
        }
        return unmodifiableSet;
    }

    public Collection c() {
        Set unmodifiableSet;
        synchronized (this.f8836d) {
            try {
                HashSet hashSet = new HashSet(this.f8837e.size());
                for (Class cls : this.f8837e.values()) {
                    hashSet.add(cls.getName());
                }
                unmodifiableSet = Collections.unmodifiableSet(hashSet);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return unmodifiableSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h a(h3 h3Var) {
        return a(h3Var, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h a(h3 h3Var, boolean z10) {
        Class a10;
        h hVar;
        if (h3Var != null) {
            String c10 = h3Var.c();
            String b10 = h3Var.b();
            if (TextUtils.isEmpty(c10)) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.f8835c;
                    oVar.b("MediationAdapterManager", "No adapter name provided for " + b10 + ", not loading the adapter ");
                }
                return null;
            } else if (TextUtils.isEmpty(b10)) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar2 = this.f8835c;
                    oVar2.b("MediationAdapterManager", "Unable to find default className for '" + c10 + "'");
                }
                return null;
            } else if (!z10 || (hVar = (h) this.f8833a.get(b10)) == null) {
                synchronized (this.f8836d) {
                    try {
                        if (!this.f8838f.contains(b10)) {
                            if (this.f8837e.containsKey(b10)) {
                                a10 = (Class) this.f8837e.get(b10);
                            } else {
                                a10 = a(b10);
                                if (a10 == null) {
                                    if (com.applovin.impl.sdk.o.a()) {
                                        com.applovin.impl.sdk.o oVar3 = this.f8835c;
                                        oVar3.k("MediationAdapterManager", "Adapter " + c10 + " could not be loaded, class " + b10 + " not found");
                                    }
                                    this.f8838f.add(b10);
                                    return null;
                                }
                            }
                            h a11 = a(h3Var, a10, z10);
                            if (a11 != null) {
                                if (com.applovin.impl.sdk.o.a()) {
                                    com.applovin.impl.sdk.o oVar4 = this.f8835c;
                                    oVar4.a("MediationAdapterManager", "Loaded " + c10);
                                }
                                this.f8837e.put(b10, a10);
                                if (z10) {
                                    this.f8833a.put(h3Var.b(), a11);
                                }
                                return a11;
                            }
                            if (com.applovin.impl.sdk.o.a()) {
                                com.applovin.impl.sdk.o oVar5 = this.f8835c;
                                oVar5.b("MediationAdapterManager", "Failed to load " + c10);
                            }
                            this.f8838f.add(b10);
                            return null;
                        }
                        if (com.applovin.impl.sdk.o.a()) {
                            com.applovin.impl.sdk.o oVar6 = this.f8835c;
                            oVar6.a("MediationAdapterManager", "Not attempting to load " + c10 + " due to prior errors");
                        }
                        return null;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } else {
                return hVar;
            }
        }
        throw new IllegalArgumentException("No adapter spec specified");
    }

    public void a(String str, String str2, v2 v2Var) {
        synchronized (this.f8839g) {
            try {
                this.f8834b.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = this.f8834b.O();
                    O.b("MediationAdapterManager", "Adding " + str + " to list of disabled adapters.");
                }
                this.f8840h.add(new a(str, str2, v2Var, this.f8834b));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private h a(h3 h3Var, Class cls, boolean z10) {
        try {
            return new h(h3Var, (MediationAdapterBase) cls.getConstructor(AppLovinSdk.class).newInstance(this.f8834b.z0()), z10, this.f8834b);
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.c("MediationAdapterManager", "Failed to load adapter: " + h3Var, th2);
            return null;
        }
    }

    private Class a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (MaxAdapter.class.isAssignableFrom(cls)) {
                return cls.asSubclass(MaxAdapter.class);
            }
            com.applovin.impl.sdk.o.h("MediationAdapterManager", str + " error: not an instance of '" + MaxAdapter.class.getName() + "'.");
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
