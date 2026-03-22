package com.applovin.impl;

import com.applovin.impl.p3;
import com.applovin.impl.q3;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class r3 {

    /* renamed from: d  reason: collision with root package name */
    private static final HashMap f9393d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private static final Object f9394e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private static final HashMap f9395f = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    private static final Object f9396g = new Object();

    /* renamed from: h  reason: collision with root package name */
    private static final HashMap f9397h = new LinkedHashMap();

    /* renamed from: i  reason: collision with root package name */
    private static final Object f9398i = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f9399a;

    /* renamed from: b  reason: collision with root package name */
    private final JSONObject f9400b = a(o3.f9120h8);

    /* renamed from: c  reason: collision with root package name */
    private final JSONObject f9401c = a(o3.f9118g8);

    public r3(com.applovin.impl.sdk.k kVar) {
        this.f9399a = kVar;
        a((String) y4.a(x4.J, (Object) null, com.applovin.impl.sdk.k.o()), q3.a.AD_UNIT_ID);
        a((String) y4.a(x4.K, (Object) null, com.applovin.impl.sdk.k.o()), q3.a.AD_FORMAT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long a(Long l10, Long l11) {
        return l10;
    }

    private JSONObject a(v4 v4Var) {
        return JsonUtils.jsonObjectFromJsonString((String) this.f9399a.a(v4Var), new JSONObject());
    }

    private Map b(p3 p3Var, q3 q3Var, p3.b bVar) {
        if (a(p3Var, q3Var, bVar) && b(p3Var, q3Var)) {
            String b10 = q3Var.b();
            HashMap a10 = a(q3Var.a());
            Object b11 = b(q3Var.a());
            HashMap hashMap = new HashMap();
            synchronized (b11) {
                try {
                    if (q3Var instanceof n3) {
                        a((n3) q3Var, a10);
                    }
                    HashMap hashMap2 = (HashMap) a10.get(b10);
                    if (hashMap2 == null) {
                        hashMap2 = new HashMap();
                        a10.put(b10, hashMap2);
                    }
                    for (p3.a aVar : p3Var.b()) {
                        String b12 = aVar.b();
                        HashMap hashMap3 = (HashMap) hashMap2.get(b12);
                        if (hashMap3 == null) {
                            hashMap3 = new HashMap();
                            hashMap2.put(b12, hashMap3);
                        }
                        Object a11 = bVar.a(hashMap3.get(p3Var));
                        hashMap3.put(p3Var, a11);
                        hashMap.put(b12, a11);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            Boolean bool = (Boolean) this.f9399a.a(o3.f9124j8);
            if (p3Var.a(p3.a.INSTALL) && bool.booleanValue()) {
                b(q3Var);
            }
            return hashMap;
        }
        return null;
    }

    private x4 c(q3.a aVar) {
        if (aVar == q3.a.AD_UNIT_ID) {
            return x4.J;
        }
        if (aVar == q3.a.AD_FORMAT) {
            return x4.K;
        }
        return null;
    }

    public Map a(p3 p3Var, q3 q3Var) {
        return b(p3Var, q3Var, new p3.b() { // from class: com.applovin.impl.xe
            @Override // com.applovin.impl.p3.b
            public final Object a(Object obj) {
                Long a10;
                a10 = r3.a((Long) obj);
                return a10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long a(Long l10) {
        return Long.valueOf(l10 != null ? 1 + l10.longValue() : 1L);
    }

    public void a(p3 p3Var, q3 q3Var, final Long l10) {
        b(p3Var, q3Var, new p3.b() { // from class: com.applovin.impl.ye
            @Override // com.applovin.impl.p3.b
            public final Object a(Object obj) {
                Long a10;
                a10 = r3.a(l10, (Long) obj);
                return a10;
            }
        });
    }

    public Map a(p3 p3Var, q3.a aVar) {
        return a(p3Var, aVar, p3.a.SESSION);
    }

    private Map a(p3 p3Var, q3.a aVar, p3.a aVar2) {
        HashMap a10 = a(aVar);
        Object b10 = b(aVar);
        HashMap hashMap = new HashMap();
        synchronized (b10) {
            try {
                for (String str : a10.keySet()) {
                    HashMap hashMap2 = (HashMap) a10.get(str);
                    String b11 = aVar2.b();
                    if (hashMap2 != null && hashMap2.containsKey(b11)) {
                        HashMap hashMap3 = (HashMap) hashMap2.get(b11);
                        if (aVar == q3.a.AD) {
                            hashMap.put(g3.a(str).b(), hashMap3.get(p3Var));
                        } else {
                            hashMap.put(str, hashMap3.get(p3Var));
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return hashMap;
    }

    private void a(n3 n3Var, Map map) {
        MaxAdFormat a10 = n3Var.c().a();
        Integer integer = JsonUtils.getInteger(this.f9401c, a10.getLabel(), null);
        if (integer == null) {
            return;
        }
        int i10 = 0;
        for (String str : map.keySet()) {
            if (g3.a(str).a().equals(a10)) {
                i10++;
            }
        }
        if (i10 < integer.intValue()) {
            return;
        }
        Iterator it = map.entrySet().iterator();
        while (it.hasNext() && i10 >= integer.intValue()) {
            if (g3.a((String) ((Map.Entry) it.next()).getKey()).a().equals(a10)) {
                it.remove();
                i10--;
            }
        }
    }

    private Object b(q3.a aVar) {
        if (aVar == q3.a.AD_UNIT_ID) {
            return f9394e;
        }
        if (aVar == q3.a.AD_FORMAT) {
            return f9396g;
        }
        return f9398i;
    }

    private boolean b(p3 p3Var, q3 q3Var) {
        Iterator<String> keys = this.f9400b.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (next.equals(q3Var.a().toString().toLowerCase()) && JsonUtils.valueExists(JsonUtils.getJSONArray(this.f9400b, next, new JSONArray()), p3Var.a())) {
                return false;
            }
        }
        return true;
    }

    private HashMap a(q3.a aVar) {
        if (aVar == q3.a.AD_UNIT_ID) {
            return f9393d;
        }
        if (aVar == q3.a.AD_FORMAT) {
            return f9395f;
        }
        return f9397h;
    }

    private void b(q3 q3Var) {
        x4 c10 = c(q3Var.a());
        if (c10 == null) {
            return;
        }
        y4.b(c10, a((Map) a(q3Var)), com.applovin.impl.sdk.k.o());
    }

    private boolean a(p3 p3Var, q3 q3Var, p3.b bVar) {
        if (p3Var == null) {
            this.f9399a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f9399a.O().b("MediationStatsManager", "Failed to update stat, no stat provided");
            }
            return false;
        } else if (q3Var == null) {
            this.f9399a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f9399a.O().b("MediationStatsManager", "Failed to update stat, no dimension key provided");
            }
            return false;
        } else if (bVar == null) {
            this.f9399a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f9399a.O().b("MediationStatsManager", "Failed to update stat, no stat updater provided");
            }
            return false;
        } else {
            return true;
        }
    }

    private HashMap a(q3 q3Var) {
        HashMap hashMap = new HashMap();
        HashMap a10 = a(q3Var.a());
        synchronized (b(q3Var.a())) {
            try {
                for (Map.Entry entry : a10.entrySet()) {
                    String str = (String) entry.getKey();
                    HashMap hashMap2 = (HashMap) entry.getValue();
                    if (!CollectionUtils.isEmpty(hashMap2)) {
                        HashMap hashMap3 = (HashMap) hashMap2.get(p3.a.INSTALL.b());
                        if (!CollectionUtils.isEmpty(hashMap3)) {
                            hashMap.put(str, new HashMap(hashMap3));
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return hashMap;
    }

    private String a(Map map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : map.entrySet()) {
            JSONObject jSONObject2 = new JSONObject();
            for (Map.Entry entry2 : ((HashMap) entry.getValue()).entrySet()) {
                p3 p3Var = (p3) entry2.getKey();
                Object value = entry2.getValue();
                if (value != null) {
                    JsonUtils.putObject(jSONObject2, p3Var.toString(), value);
                }
            }
            JsonUtils.putJSONObject(jSONObject, (String) entry.getKey(), jSONObject2);
        }
        return jSONObject.toString();
    }

    private void a(String str, q3.a aVar) {
        if (StringUtils.isValidString(str)) {
            HashMap a10 = a(aVar);
            Object b10 = b(aVar);
            Map<String, Object> stringObjectMap = JsonUtils.toStringObjectMap(str);
            synchronized (b10) {
                try {
                    for (Map.Entry<String, Object> entry : stringObjectMap.entrySet()) {
                        String key = entry.getKey();
                        HashMap hashMap = new HashMap();
                        for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                            p3 a11 = p3.a((String) entry2.getKey());
                            if (a11 != null) {
                                hashMap.put(a11, a(entry2.getValue()));
                            }
                        }
                        if (!CollectionUtils.isEmpty(hashMap)) {
                            HashMap hashMap2 = new HashMap();
                            hashMap2.put(p3.a.INSTALL.b(), hashMap);
                            a10.put(key, hashMap2);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private Object a(Object obj) {
        return obj instanceof Integer ? Long.valueOf(((Integer) obj).longValue()) : obj;
    }
}
