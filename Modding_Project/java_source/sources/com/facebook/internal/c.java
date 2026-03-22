package com.facebook.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: BundleJSONConverter.kt */
@Metadata
/* loaded from: classes3.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c f16177a = new c();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Map<Class<?>, h> f16178b;

    /* compiled from: BundleJSONConverter.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements h {
        a() {
        }

        @Override // com.facebook.internal.c.h
        public void a(@NotNull Bundle bundle, @NotNull String key, @NotNull Object value) throws JSONException {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            bundle.putBoolean(key, ((Boolean) value).booleanValue());
        }
    }

    /* compiled from: BundleJSONConverter.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b implements h {
        b() {
        }

        @Override // com.facebook.internal.c.h
        public void a(@NotNull Bundle bundle, @NotNull String key, @NotNull Object value) throws JSONException {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            bundle.putInt(key, ((Integer) value).intValue());
        }
    }

    /* compiled from: BundleJSONConverter.kt */
    @Metadata
    /* renamed from: com.facebook.internal.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0272c implements h {
        C0272c() {
        }

        @Override // com.facebook.internal.c.h
        public void a(@NotNull Bundle bundle, @NotNull String key, @NotNull Object value) throws JSONException {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            bundle.putLong(key, ((Long) value).longValue());
        }
    }

    /* compiled from: BundleJSONConverter.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class d implements h {
        d() {
        }

        @Override // com.facebook.internal.c.h
        public void a(@NotNull Bundle bundle, @NotNull String key, @NotNull Object value) throws JSONException {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            bundle.putDouble(key, ((Double) value).doubleValue());
        }
    }

    /* compiled from: BundleJSONConverter.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class e implements h {
        e() {
        }

        @Override // com.facebook.internal.c.h
        public void a(@NotNull Bundle bundle, @NotNull String key, @NotNull Object value) throws JSONException {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            bundle.putString(key, (String) value);
        }
    }

    /* compiled from: BundleJSONConverter.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class f implements h {
        f() {
        }

        @Override // com.facebook.internal.c.h
        public void a(@NotNull Bundle bundle, @NotNull String key, @NotNull Object value) throws JSONException {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            throw new IllegalArgumentException("Unexpected type from JSON");
        }
    }

    /* compiled from: BundleJSONConverter.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class g implements h {
        g() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.facebook.internal.c.h
        public void a(@NotNull Bundle bundle, @NotNull String key, @NotNull Object value) throws JSONException {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            JSONArray jSONArray = (JSONArray) value;
            ArrayList arrayList = new ArrayList();
            if (jSONArray.length() == 0) {
                bundle.putStringArrayList(key, arrayList);
                return;
            }
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                Object obj = jSONArray.get(i10);
                if (obj instanceof String) {
                    arrayList.add(obj);
                } else {
                    throw new IllegalArgumentException("Unexpected type in an array: " + obj.getClass());
                }
            }
            bundle.putStringArrayList(key, arrayList);
        }
    }

    /* compiled from: BundleJSONConverter.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface h {
        void a(@NotNull Bundle bundle, @NotNull String str, @NotNull Object obj) throws JSONException;
    }

    static {
        HashMap hashMap = new HashMap();
        f16178b = hashMap;
        hashMap.put(Boolean.class, new a());
        hashMap.put(Integer.class, new b());
        hashMap.put(Long.class, new C0272c());
        hashMap.put(Double.class, new d());
        hashMap.put(String.class, new e());
        hashMap.put(String[].class, new f());
        hashMap.put(JSONArray.class, new g());
    }

    private c() {
    }

    @NotNull
    public static final Bundle a(@NotNull JSONObject jsonObject) throws JSONException {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Bundle bundle = new Bundle();
        Iterator<String> keys = jsonObject.keys();
        while (keys.hasNext()) {
            String key = keys.next();
            Object value = jsonObject.get(key);
            if (value != JSONObject.NULL) {
                if (value instanceof JSONObject) {
                    bundle.putBundle(key, a((JSONObject) value));
                } else {
                    h hVar = f16178b.get(value.getClass());
                    if (hVar != null) {
                        Intrinsics.checkNotNullExpressionValue(key, "key");
                        Intrinsics.checkNotNullExpressionValue(value, "value");
                        hVar.a(bundle, key, value);
                    } else {
                        throw new IllegalArgumentException("Unsupported type: " + value.getClass());
                    }
                }
            }
        }
        return bundle;
    }
}
