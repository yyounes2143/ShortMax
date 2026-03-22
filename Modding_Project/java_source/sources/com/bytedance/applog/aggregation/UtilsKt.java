package com.bytedance.applog.aggregation;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Utils.kt */
@Metadata
/* loaded from: classes3.dex */
public final class UtilsKt {
    @NotNull
    public static final JSONObject copy(@NotNull JSONObject copy) {
        Intrinsics.checkParameterIsNotNull(copy, "$this$copy");
        JSONObject jSONObject = new JSONObject();
        try {
            Iterator<String> keys = copy.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                jSONObject.put(next, copy.opt(next));
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return jSONObject;
    }

    @NotNull
    public static final JSONObject copyFrom(@NotNull JSONObject copyFrom, @Nullable JSONObject jSONObject) {
        Intrinsics.checkParameterIsNotNull(copyFrom, "$this$copyFrom");
        if (jSONObject != null) {
            try {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    copyFrom.put(next, jSONObject.opt(next));
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        return copyFrom;
    }

    @Nullable
    public static final JSONArray toJSONArray(@NotNull String toJSONArray) {
        Intrinsics.checkParameterIsNotNull(toJSONArray, "$this$toJSONArray");
        try {
            return new JSONArray(toJSONArray);
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public static final JSONObject toJSONObject(@NotNull String toJSONObject) {
        Intrinsics.checkParameterIsNotNull(toJSONObject, "$this$toJSONObject");
        try {
            return new JSONObject(toJSONObject);
        } catch (Exception unused) {
            return null;
        }
    }
}
