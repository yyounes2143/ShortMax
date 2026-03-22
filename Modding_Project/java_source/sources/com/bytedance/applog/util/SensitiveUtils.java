package com.bytedance.applog.util;

import android.content.Context;
import androidx.annotation.Nullable;
import com.bytedance.applog.Level;
import com.bytedance.bdtracker.r3;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class SensitiveUtils {
    public static final String CHANNEL_APP_KEY = "";

    public static String getMacAddress(Context context) {
        return "02:00:00:00:00:00";
    }

    public static String getMacAddressFromSystem(Context context) {
        return "02:00:00:00:00:00";
    }

    public static JSONArray getMultiImeiFallback(Context context) {
        return new JSONArray();
    }

    public static JSONArray getMultiImeiFromSystem(Context context) {
        return new JSONArray();
    }

    public static String getSerialNumber(Context context) {
        return null;
    }

    public static String[] getSimSerialNumbers(Context context) {
        return null;
    }

    public static boolean validMultiImei(@Nullable String str) {
        return false;
    }

    public static boolean validMultiImei(@Nullable JSONArray jSONArray) {
        return false;
    }

    public static void addSensitiveParamsForUrlQuery(r3 r3Var, StringBuilder sb2, JSONObject jSONObject) {
    }

    public static void appendSensitiveParams(r3 r3Var, JSONObject jSONObject, Map<String, String> map, boolean z10, Level level) {
    }
}
