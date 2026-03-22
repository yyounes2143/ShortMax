package com.appsflyer.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;
@SourceDebugExtension({"SMAP\nJsonUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonUtils.kt\ncom/appsflyer/internal/util/JsonUtils\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,61:1\n759#2,2:62\n775#2,4:64\n759#2,2:68\n775#2,4:70\n1549#3:74\n1620#3,3:75\n*S KotlinDebug\n*F\n+ 1 JsonUtils.kt\ncom/appsflyer/internal/util/JsonUtils\n*L\n16#1:62,2\n16#1:64,4\n28#1:68,2\n28#1:70,4\n44#1:74\n44#1:75,3\n*E\n"})
/* loaded from: classes2.dex */
public final class AFj1bSDK {
    private static final List<Object> getMediationNetwork(JSONArray jSONArray) {
        IntRange v10 = kotlin.ranges.e.v(0, jSONArray.length());
        ArrayList arrayList = new ArrayList(CollectionsKt.z(v10, 10));
        Iterator<Integer> it = v10.iterator();
        while (it.hasNext()) {
            Object obj = jSONArray.get(((kotlin.collections.m0) it).nextInt());
            Intrinsics.checkNotNullExpressionValue(obj, "");
            arrayList.add(getMediationNetwork(obj));
        }
        return arrayList;
    }

    @NotNull
    public static final Map<String, Object> getMonetizationNetwork(@NotNull JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "");
        Iterator<String> keys = jSONObject.keys();
        Intrinsics.checkNotNullExpressionValue(keys, "");
        Sequence e10 = kotlin.sequences.j.e(keys);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : e10) {
            Object obj2 = jSONObject.get((String) obj);
            Intrinsics.checkNotNullExpressionValue(obj2, "");
            linkedHashMap.put(obj, getMediationNetwork(obj2));
        }
        return linkedHashMap;
    }

    private static final Object getMediationNetwork(Object obj) {
        if (obj instanceof JSONArray) {
            return getMediationNetwork((JSONArray) obj);
        }
        if (obj instanceof JSONObject) {
            return getMonetizationNetwork((JSONObject) obj);
        }
        if (Intrinsics.areEqual(obj, JSONObject.NULL)) {
            return null;
        }
        return obj;
    }
}
