package com.inmobi.media;

import com.inmobi.media.AbstractC3278ze;
import com.inmobi.unifiedId.InMobiUnifiedIdInterface;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.ze  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3278ze {
    /* JADX WARN: Removed duplicated region for block: B:60:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0144  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.inmobi.media.Ae a() {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC3278ze.a():com.inmobi.media.Ae");
    }

    public static final void b(InMobiUnifiedIdInterface inMobiUnifiedIdInterface, JSONObject jSONObject, Error error) {
        if (inMobiUnifiedIdInterface != null) {
            inMobiUnifiedIdInterface.onFetchCompleted(jSONObject, error);
        }
    }

    public static void a(final InMobiUnifiedIdInterface inMobiUnifiedIdInterface, final JSONObject jSONObject, final Error error) {
        short s10;
        String message = error != null ? error.getMessage() : null;
        if (Intrinsics.areEqual(message, InMobiUnifiedIdInterface.NETWORK_FAILURE_AND_NO_LOCAL_DATA_PRESENT)) {
            s10 = 93;
        } else {
            s10 = Intrinsics.areEqual(message, InMobiUnifiedIdInterface.NO_LOCAL_DATA_PRESENT) ? (short) 94 : (short) -1;
        }
        if (s10 >= 0) {
            Map o10 = kotlin.collections.p0.o(ms.k.a("errorCode", Short.valueOf(s10)));
            Pd pd2 = Pd.f23988a;
            Pd.b("FetchCallbackFailure", o10, Td.f24224a);
        }
        Md.a(new Runnable() { // from class: ub.q8
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3278ze.b(InMobiUnifiedIdInterface.this, jSONObject, error);
            }
        });
    }

    public static JSONObject a(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        if (jSONObject != null) {
            try {
                if (jSONObject.has("ufids")) {
                    JSONArray jSONArray2 = jSONObject.getJSONArray("ufids");
                    int length = jSONArray2.length();
                    for (int i10 = 0; i10 < length; i10++) {
                        JSONObject jSONObject3 = jSONArray2.getJSONObject(i10);
                        if (System.currentTimeMillis() < jSONObject3.getLong("expiry")) {
                            jSONArray.put(jSONObject3);
                        }
                    }
                }
            } catch (JSONException unused) {
                return null;
            }
        }
        if (jSONArray.length() > 0) {
            jSONObject2.put("ufids", jSONArray);
            return jSONObject2;
        }
        return null;
    }

    public static JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        HashMap hashMap = new HashMap();
        JSONObject jSONObject3 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        if (jSONObject2 != null) {
            try {
                if (jSONObject2.has("ufids")) {
                    JSONArray jSONArray2 = jSONObject2.getJSONArray("ufids");
                    int length = jSONArray2.length();
                    for (int i10 = 0; i10 < length; i10++) {
                        String string = jSONArray2.getJSONObject(i10).getString("src");
                        Intrinsics.checkNotNull(string);
                        JSONObject jSONObject4 = jSONArray2.getJSONObject(i10);
                        Intrinsics.checkNotNullExpressionValue(jSONObject4, "getJSONObject(...)");
                        hashMap.put(string, jSONObject4);
                    }
                }
            } catch (JSONException unused) {
                Objects.toString(jSONObject2);
                Objects.toString(jSONObject);
            }
        }
        if (jSONObject != null && jSONObject.has("ufids")) {
            JSONArray jSONArray3 = jSONObject.getJSONArray("ufids");
            int length2 = jSONArray3.length();
            for (int i11 = 0; i11 < length2; i11++) {
                String string2 = jSONArray3.getJSONObject(i11).getString("src");
                Intrinsics.checkNotNull(string2);
                JSONObject jSONObject5 = jSONArray3.getJSONObject(i11);
                Intrinsics.checkNotNullExpressionValue(jSONObject5, "getJSONObject(...)");
                hashMap.put(string2, jSONObject5);
            }
        }
        Collection<JSONObject> values = hashMap.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        for (JSONObject jSONObject6 : values) {
            jSONArray.put(jSONObject6);
        }
        jSONObject3.put("ufids", jSONArray);
        return jSONObject3;
    }
}
