package com.moloco.sdk.acm.eventprocessing;

import android.util.Log;
import androidx.work.Data;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nDBWorkRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBWorkRequest.kt\ncom/moloco/sdk/acm/eventprocessing/DBWorkRequestKt\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Data.kt\nandroidx/work/DataKt\n*L\n1#1,134:1\n126#2:135\n153#2,3:136\n37#3,2:139\n31#4,5:141\n*S KotlinDebug\n*F\n+ 1 DBWorkRequest.kt\ncom/moloco/sdk/acm/eventprocessing/DBWorkRequestKt\n*L\n128#1:135\n128#1:136,3\n128#1:139,2\n128#1:141,5\n*E\n"})
/* loaded from: classes6.dex */
public final class d {
    @Nullable
    public static final Data a(@NotNull Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        try {
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
                arrayList.add(ms.k.a(entry.getKey(), entry.getValue()));
            }
            Pair[] pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
            Pair[] pairArr2 = (Pair[]) Arrays.copyOf(pairArr, pairArr.length);
            Data.Builder builder = new Data.Builder();
            for (Pair pair : pairArr2) {
                builder.put((String) pair.e(), pair.f());
            }
            Data build = builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "dataBuilder.build()");
            return build;
        } catch (Exception e10) {
            Log.e("DBPeriodicRequest", e10.getMessage() + ". Data: " + map);
            return null;
        }
    }
}
