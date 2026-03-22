package com.unity3d.ads.core.extensions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.m0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
/* compiled from: JSONArrayExtensions.kt */
@Metadata
@SourceDebugExtension({"SMAP\nJSONArrayExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JSONArrayExtensions.kt\ncom/unity3d/ads/core/extensions/JSONArrayExtensionsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,20:1\n1549#2:21\n1620#2,3:22\n37#3,2:25\n*S KotlinDebug\n*F\n+ 1 JSONArrayExtensions.kt\ncom/unity3d/ads/core/extensions/JSONArrayExtensionsKt\n*L\n5#1:21\n5#1:22,3\n5#1:25,2\n*E\n"})
/* loaded from: classes7.dex */
public final class JSONArrayExtensionsKt {
    @NotNull
    public static final Map<String, List<String>> getHeadersMap(@NotNull JSONArray jSONArray) {
        Intrinsics.checkNotNullParameter(jSONArray, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            Object obj = jSONArray.get(i10);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONArray");
            JSONArray jSONArray2 = (JSONArray) obj;
            List list = (List) linkedHashMap.get(jSONArray2.getString(0));
            if (list == null) {
                list = new ArrayList();
            }
            String string = jSONArray2.getString(1);
            Intrinsics.checkNotNullExpressionValue(string, "header.getString(1)");
            list.add(string);
            String string2 = jSONArray2.getString(0);
            Intrinsics.checkNotNullExpressionValue(string2, "header.getString(0)");
            linkedHashMap.put(string2, list);
        }
        return linkedHashMap;
    }

    @NotNull
    public static final Object[] toTypedArray(@NotNull JSONArray jSONArray) {
        Intrinsics.checkNotNullParameter(jSONArray, "<this>");
        IntRange v10 = e.v(0, jSONArray.length());
        ArrayList arrayList = new ArrayList(CollectionsKt.z(v10, 10));
        Iterator<Integer> it = v10.iterator();
        while (it.hasNext()) {
            arrayList.add(jSONArray.get(((m0) it).nextInt()));
        }
        return arrayList.toArray(new Object[0]);
    }
}
