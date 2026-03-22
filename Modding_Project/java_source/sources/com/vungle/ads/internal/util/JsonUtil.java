package com.vungle.ads.internal.util;

import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.h;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JsonUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class JsonUtil {
    @NotNull
    public static final JsonUtil INSTANCE = new JsonUtil();

    private JsonUtil() {
    }

    @Nullable
    public final String getContentStringValue(@NotNull JsonObject json, @NotNull String key) {
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return h.k((JsonElement) p0.j(json, key)).a();
        } catch (Exception unused) {
            return null;
        }
    }
}
