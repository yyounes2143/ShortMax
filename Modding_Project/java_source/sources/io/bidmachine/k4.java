package io.bidmachine;

import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* compiled from: NetworkAssetManager.java */
/* loaded from: classes7.dex */
class k4 {
    @NonNull
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    static final Map<String, l4> f55042a = new ConcurrentHashMap();

    @Nullable
    private static l4 a(@NonNull AssetManager assetManager, @NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String f10 = f(assetManager, str);
        if (TextUtils.isEmpty(f10)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(f10);
        String optString = jSONObject.optString("name");
        String optString2 = jSONObject.optString("version");
        String optString3 = jSONObject.optString("classpath");
        String optString4 = jSONObject.optString("sdk_version");
        if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2) && !TextUtils.isEmpty(optString3) && !TextUtils.isEmpty(optString4)) {
            return new l4(optString, optString2, optString3, optString4);
        }
        return null;
    }

    @Nullable
    private static l4 b(@NonNull AssetManager assetManager, @NonNull String str) {
        l4 a10 = a(assetManager, str);
        if (a10 != null) {
            f55042a.put(a10.c(), a10);
        }
        return a10;
    }

    static void c(@NonNull Context context) {
        String[] list;
        if (!f55042a.isEmpty()) {
            return;
        }
        try {
            AssetManager assets = context.getAssets();
            if (assets == null || (list = assets.list("bm_networks")) == null) {
                return;
            }
            for (String str : list) {
                b(assets, str);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static l4 d(@NonNull Context context, @NonNull String str) {
        Map<String, l4> map = f55042a;
        if (map.containsKey(str)) {
            return map.get(str);
        }
        try {
            AssetManager assets = context.getAssets();
            if (assets == null) {
                return null;
            }
            return b(assets, str + ".bmnetwork");
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static Map<String, l4> e(@NonNull Context context) {
        Map<String, l4> map = f55042a;
        if (!map.isEmpty()) {
            return map;
        }
        c(context);
        return map;
    }

    @Nullable
    private static String f(@NonNull AssetManager assetManager, @NonNull String str) {
        try {
            return io.bidmachine.core.g.p0(assetManager.open("bm_networks/" + str));
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
            return null;
        }
    }
}
