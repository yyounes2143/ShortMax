package com.google.firebase.auth.internal;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.p003firebaseauthapi.zzaao;
import com.google.android.gms.internal.p003firebaseauthapi.zzt;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f20488a = new Logger("JSONParser", new String[0]);

    @VisibleForTesting
    private static List<Object> a(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            Object obj = jSONArray.get(i10);
            if (obj instanceof JSONArray) {
                obj = a((JSONArray) obj);
            } else if (obj instanceof JSONObject) {
                obj = c((JSONObject) obj);
            }
            arrayList.add(obj);
        }
        return arrayList;
    }

    @NonNull
    public static Map<String, Object> b(String str) {
        Preconditions.checkNotEmpty(str);
        List<String> zza = zzt.zza('.').zza((CharSequence) str);
        if (zza.size() < 2) {
            Logger logger = f20488a;
            logger.e("Invalid idToken " + str, new Object[0]);
            return new HashMap();
        }
        try {
            Map<String, Object> d10 = d(new String(Base64Utils.decodeUrlSafeNoPadding(zza.get(1)), "UTF-8"));
            if (d10 == null) {
                return new HashMap();
            }
            return d10;
        } catch (UnsupportedEncodingException e10) {
            f20488a.e("Unable to decode token", e10, new Object[0]);
            return new HashMap();
        }
    }

    @VisibleForTesting
    private static Map<String, Object> c(JSONObject jSONObject) throws JSONException {
        ArrayMap arrayMap = new ArrayMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONArray) {
                obj = a((JSONArray) obj);
            } else if (obj instanceof JSONObject) {
                obj = c((JSONObject) obj);
            }
            arrayMap.put(next, obj);
        }
        return arrayMap;
    }

    @Nullable
    public static Map<String, Object> d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject == JSONObject.NULL) {
                return null;
            }
            return c(jSONObject);
        } catch (Exception e10) {
            Log.d("JSONParser", "Failed to parse JSONObject into Map.");
            throw new zzaao(e10);
        }
    }
}
