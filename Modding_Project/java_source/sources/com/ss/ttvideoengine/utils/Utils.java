package com.ss.ttvideoengine.utils;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
/* loaded from: classes6.dex */
public final class Utils {
    private static Object sGson;
    private static boolean sGsonNotFound;

    private Utils() {
    }

    @Nullable
    public static String toJson(Object obj) {
        if (obj == null || sGsonNotFound) {
            return null;
        }
        if (sGson == null) {
            try {
                int i10 = Gson.f21687a;
                sGson = Gson.class.newInstance();
                sGsonNotFound = false;
            } catch (Throwable unused) {
                sGsonNotFound = true;
            }
        }
        Object obj2 = sGson;
        if (obj2 != null) {
            try {
                Object invoke = obj2.getClass().getDeclaredMethod("toJson", Object.class).invoke(sGson, obj);
                if (invoke instanceof String) {
                    return String.valueOf(invoke);
                }
            } catch (Throwable unused2) {
            }
        }
        return null;
    }

    public static String toString(Object obj) {
        String json = toJson(obj);
        if (!TextUtils.isEmpty(json)) {
            return json;
        }
        return String.valueOf(obj);
    }
}
