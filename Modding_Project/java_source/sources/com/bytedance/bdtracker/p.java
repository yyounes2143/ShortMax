package com.bytedance.bdtracker;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata
/* loaded from: classes3.dex */
public abstract class p {

    /* renamed from: a  reason: collision with root package name */
    public static final a f12300a = new a(null);

    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        }

        @Nullable
        public final <T extends p> T a(@Nullable JSONObject jSONObject, @NotNull Class<T> clazz) {
            Intrinsics.checkParameterIsNotNull(clazz, "clazz");
            if (jSONObject != null) {
                T newInstance = clazz.getConstructor(new Class[0]).newInstance(new Object[0]);
                Intrinsics.checkExpressionValueIsNotNull(newInstance, "clazz.getConstructor().newInstance()");
                T t10 = newInstance;
                t10.a(jSONObject);
                return t10;
            }
            return null;
        }
    }

    @NotNull
    public abstract JSONObject a();

    public abstract void a(@Nullable JSONObject jSONObject);

    @NotNull
    public final Map<String, String> b() {
        HashMap hashMap = new HashMap();
        JSONObject a10 = a();
        Iterator<String> keys = a10.keys();
        Intrinsics.checkExpressionValueIsNotNull(keys, "keys()");
        while (keys.hasNext()) {
            String key = keys.next();
            Intrinsics.checkExpressionValueIsNotNull(key, "key");
            hashMap.put(key, a10.optString(key, null));
        }
        return hashMap;
    }

    @NotNull
    public String toString() {
        String jSONObject = a().toString();
        Intrinsics.checkExpressionValueIsNotNull(jSONObject, "toJson().toString()");
        return jSONObject;
    }
}
