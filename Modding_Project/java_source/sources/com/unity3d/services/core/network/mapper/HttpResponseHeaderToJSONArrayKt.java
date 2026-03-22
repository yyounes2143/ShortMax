package com.unity3d.services.core.network.mapper;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
/* compiled from: HttpResponseHeaderToJSONArray.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpResponseHeaderToJSONArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpResponseHeaderToJSONArray.kt\ncom/unity3d/services/core/network/mapper/HttpResponseHeaderToJSONArrayKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,7:1\n1789#2,3:8\n*S KotlinDebug\n*F\n+ 1 HttpResponseHeaderToJSONArray.kt\ncom/unity3d/services/core/network/mapper/HttpResponseHeaderToJSONArrayKt\n*L\n5#1:8,3\n*E\n"})
/* loaded from: classes7.dex */
public final class HttpResponseHeaderToJSONArrayKt {
    @NotNull
    public static final JSONArray toResponseHeadersMap(@Nullable Map<String, ? extends List<String>> map) {
        Set<Map.Entry<String, ? extends List<String>>> entrySet;
        if (map != null && (entrySet = map.entrySet()) != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator<T> it = entrySet.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                jSONArray = jSONArray.put(new JSONArray((Collection) CollectionsKt.q((String) entry.getKey(), (List) entry.getValue())));
                Intrinsics.checkNotNullExpressionValue(jSONArray, "acc.put(JSONArray(listOf(key, value)))");
            }
            if (jSONArray != null) {
                return jSONArray;
            }
        }
        return new JSONArray();
    }
}
