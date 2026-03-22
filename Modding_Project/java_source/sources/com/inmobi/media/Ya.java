package com.inmobi.media;

import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.inmobi.commons.core.configs.SignalsConfig;
import com.inmobi.media.Ya;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Ya {

    /* renamed from: c  reason: collision with root package name */
    public static Sa f24407c;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f24406b = {Reflection.property1(new PropertyReference1Impl(Ya.class, "cachedJson", "getCachedJson()Lorg/json/JSONObject;", 0))};

    /* renamed from: a  reason: collision with root package name */
    public static final Ya f24405a = new Ya();

    /* renamed from: d  reason: collision with root package name */
    public static final C3233x1 f24408d = new C3233x1((Object) new JSONObject(), (Function0) Xa.f24370a, true, true);

    public static void b() {
        final Context d10 = Uc.d();
        if (d10 != null) {
            Uc.a(new Runnable() { // from class: ub.m3
                @Override // java.lang.Runnable
                public final void run() {
                    Ya.a(d10);
                }
            });
        }
    }

    public final LinkedHashMap a() {
        String str;
        Iterator<Map.Entry<String, String>> it;
        JSONObject jSONObject = (JSONObject) f24408d.getValue(this, f24406b[0]);
        LinkedHashMap linkedHashMap = O2.f23923a;
        SignalsConfig.PublisherConfig publisherConfig = ((SignalsConfig) AbstractC3110p5.a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getPublisherConfig();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry<String, String> entry : publisherConfig.getGeneralKeys().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (jSONObject.has(key)) {
                int hashCode = value.hashCode();
                if (hashCode != -1325958191) {
                    if (hashCode != -891985903) {
                        if (hashCode != 104431) {
                            if (hashCode == 3029738 && value.equals("bool")) {
                                linkedHashMap2.put(key, Boolean.valueOf(jSONObject.optBoolean(key)));
                            }
                        } else if (value.equals("int")) {
                            linkedHashMap2.put(key, Integer.valueOf(jSONObject.optInt(key)));
                        }
                    } else if (value.equals(TypedValues.Custom.S_STRING)) {
                        String optString = jSONObject.optString(key);
                        Intrinsics.checkNotNullExpressionValue(optString, "optString(...)");
                        linkedHashMap2.put(key, optString);
                    }
                } else if (value.equals("double")) {
                    linkedHashMap2.put(key, Double.valueOf(jSONObject.optDouble(key)));
                }
            }
        }
        Iterator<Map.Entry<String, String>> it2 = publisherConfig.getAdSpecificKeys().entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<String, String> next = it2.next();
            String key2 = next.getKey();
            String value2 = next.getValue();
            JSONArray optJSONArray = jSONObject.optJSONArray(key2);
            if (optJSONArray != null) {
                int length = optJSONArray.length();
                int i10 = 0;
                while (i10 < length) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(key2);
                    sb2.append('_');
                    if (i10 == 0) {
                        str = "ban";
                    } else if (i10 == 1) {
                        str = "int";
                    } else if (i10 == 2) {
                        str = "rew";
                    } else if (i10 != 3) {
                        it = it2;
                        i10++;
                        it2 = it;
                    } else {
                        str = "nat";
                    }
                    sb2.append(str);
                    String sb3 = sb2.toString();
                    int hashCode2 = value2.hashCode();
                    it = it2;
                    if (hashCode2 != -1325958191) {
                        if (hashCode2 != -891985903) {
                            if (hashCode2 != 104431) {
                                if (hashCode2 == 3029738 && value2.equals("bool")) {
                                    linkedHashMap2.put(sb3, Boolean.valueOf(optJSONArray.optBoolean(i10)));
                                }
                            } else if (value2.equals("int")) {
                                linkedHashMap2.put(sb3, Integer.valueOf(optJSONArray.optInt(i10)));
                            }
                        } else if (value2.equals(TypedValues.Custom.S_STRING)) {
                            String optString2 = optJSONArray.optString(i10);
                            Intrinsics.checkNotNullExpressionValue(optString2, "optString(...)");
                            linkedHashMap2.put(sb3, optString2);
                        }
                    } else if (value2.equals("double")) {
                        linkedHashMap2.put(sb3, Double.valueOf(optJSONArray.optDouble(i10)));
                    }
                    i10++;
                    it2 = it;
                }
            }
        }
        return linkedHashMap2;
    }

    public static final void b(JSONObject this_saveSignalsToPersistentCache) {
        Intrinsics.checkNotNullParameter(this_saveSignalsToPersistentCache, "$this_saveSignalsToPersistentCache");
        Context d10 = Uc.d();
        if (d10 != null) {
            f24405a.getClass();
            if (f24407c == null) {
                f24407c = new Sa(d10, "pub_signals_store");
            }
            Sa sa2 = f24407c;
            if (sa2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("prefDao");
                sa2 = null;
            }
            String jSONObject = this_saveSignalsToPersistentCache.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject, "toString(...)");
            sa2.a("saved_signals", jSONObject);
            f24408d.a();
            AbstractC2984h7.a((byte) 2, "PubSignalsStore", "Publisher Signals saved successfully.");
        }
    }

    public static final void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "$context");
        try {
            f24405a.getClass();
            if (f24407c == null) {
                f24407c = new Sa(context, "pub_signals_store");
            }
            Sa sa2 = f24407c;
            if (sa2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("prefDao");
                sa2 = null;
            }
            sa2.c("saved_signals");
            f24408d.a();
        } catch (Exception e10) {
            AbstractC2984h7.a((byte) 1, "PubSignalsStore", "Publisher signals could not be reset.");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00e7, code lost:
        r1.remove(r4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.LinkedHashMap a(java.util.LinkedHashMap r13, com.inmobi.commons.core.configs.SignalsConfig.PublisherConfig r14) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Ya.a(java.util.LinkedHashMap, com.inmobi.commons.core.configs.SignalsConfig$PublisherConfig):java.util.LinkedHashMap");
    }

    public static Object a(Object obj, String str) {
        int hashCode = str.hashCode();
        if (hashCode != -1325958191) {
            if (hashCode != -891985903) {
                if (hashCode != 104431) {
                    if (hashCode == 3029738 && str.equals("bool") && (obj instanceof Boolean)) {
                        return (Boolean) obj;
                    }
                } else if (str.equals("int") && (obj instanceof Integer)) {
                    return (Integer) obj;
                }
            } else if (str.equals(TypedValues.Custom.S_STRING) && (obj instanceof String)) {
                return (String) obj;
            }
        } else if (str.equals("double")) {
            if (obj instanceof Double) {
                return (Double) obj;
            }
            if (obj instanceof Integer) {
                return Double.valueOf(((Number) obj).intValue());
            }
            if (obj instanceof Float) {
                return Double.valueOf(((Number) obj).floatValue());
            }
        }
        return null;
    }

    public static Object a(String str) {
        int hashCode = str.hashCode();
        if (hashCode == -1325958191) {
            return !str.equals("double") ? "-1" : Double.valueOf(Double.parseDouble("-1"));
        } else if (hashCode == -891985903) {
            str.equals(TypedValues.Custom.S_STRING);
            return "-1";
        } else if (hashCode == 104431) {
            return !str.equals("int") ? "-1" : Integer.valueOf(Integer.parseInt("-1"));
        } else if (hashCode != 3029738) {
            return "-1";
        } else {
            str.equals("bool");
            return "-1";
        }
    }

    public static JSONObject a(LinkedHashMap linkedHashMap) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                jSONObject.put(str, value);
            } else if (value instanceof Integer) {
                jSONObject.put(str, ((Number) value).intValue());
            } else if (value instanceof Boolean) {
                jSONObject.put(str, ((Boolean) value).booleanValue());
            } else if (value instanceof Double) {
                jSONObject.put(str, ((Number) value).doubleValue());
            } else if (value instanceof JSONArray) {
                jSONObject.put(str, value);
            }
        }
        return jSONObject;
    }

    public static void a(final JSONObject jSONObject) {
        Uc.a(new Runnable() { // from class: ub.l3
            @Override // java.lang.Runnable
            public final void run() {
                Ya.b(jSONObject);
            }
        });
    }

    public static JSONObject a(JSONObject jSONObject, SignalsConfig.PublisherConfig publisherConfig) {
        if (jSONObject.toString().length() > publisherConfig.getPayloadSize()) {
            AbstractC2984h7.a((byte) 1, "PubSignalsStore", "Publisher Signal payload size exceeded.");
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(new IllegalStateException("Publisher signals size exceeds the limit"));
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
            return null;
        }
        return jSONObject;
    }
}
