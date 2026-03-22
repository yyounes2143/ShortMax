package com.facebook.internal;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: ProfileInformationCache.kt */
@Metadata
/* loaded from: classes3.dex */
public final class n0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final n0 f16261a = new n0();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ConcurrentHashMap<String, JSONObject> f16262b = new ConcurrentHashMap<>();

    private n0() {
    }

    @Nullable
    public static final JSONObject a(@NotNull String accessToken) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        return f16262b.get(accessToken);
    }

    public static final void b(@NotNull String key, @NotNull JSONObject value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        f16262b.put(key, value);
    }
}
