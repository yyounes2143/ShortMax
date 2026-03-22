package com.unity3d.ads.core.extensions;

import com.unity3d.services.store.JsonSerializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
/* compiled from: JsonSerializableExtensions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class JsonSerializableExtensionsKt {
    @NotNull
    public static final JSONArray toJsonArray(@NotNull List<? extends JsonSerializable> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        JSONArray jSONArray = new JSONArray();
        for (JsonSerializable jsonSerializable : list) {
            jSONArray.put(jsonSerializable.toJson());
        }
        return jSONArray;
    }
}
