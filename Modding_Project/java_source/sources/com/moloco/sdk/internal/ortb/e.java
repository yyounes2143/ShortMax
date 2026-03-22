package com.moloco.sdk.internal.ortb;

import com.moloco.sdk.internal.ortb.model.s;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nSubstituteAuctionPriceMacros.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubstituteAuctionPriceMacros.kt\ncom/moloco/sdk/internal/ortb/SubstituteAuctionPriceMacrosKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,40:1\n1557#2:41\n1628#2,2:42\n1557#2:44\n1628#2,3:45\n1630#2:48\n*S KotlinDebug\n*F\n+ 1 SubstituteAuctionPriceMacros.kt\ncom/moloco/sdk/internal/ortb/SubstituteAuctionPriceMacrosKt\n*L\n14#1:41\n14#1:42,2\n16#1:44\n16#1:45,3\n14#1:48\n*E\n"})
/* loaded from: classes6.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Regex f32334a = new Regex("\\$\\{AUCTION_PRICE\\}");

    @NotNull
    public static final com.moloco.sdk.internal.ortb.model.e a(@NotNull com.moloco.sdk.internal.ortb.model.e eVar) {
        String str;
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        List<s> c10 = eVar.c();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(c10, 10));
        for (s sVar : c10) {
            List<com.moloco.sdk.internal.ortb.model.c> c11 = sVar.c();
            ArrayList arrayList2 = new ArrayList(CollectionsKt.z(c11, 10));
            for (com.moloco.sdk.internal.ortb.model.c cVar : c11) {
                float e10 = cVar.e();
                String b10 = b(cVar.a(), Float.valueOf(e10));
                String c12 = cVar.c();
                if (c12 != null) {
                    str = b(c12, Float.valueOf(e10));
                } else {
                    str = null;
                }
                arrayList2.add(new com.moloco.sdk.internal.ortb.model.c(b10, e10, str, cVar.d()));
            }
            arrayList.add(new s(arrayList2));
        }
        return new com.moloco.sdk.internal.ortb.model.e(arrayList);
    }

    @NotNull
    public static final String b(@NotNull String str, @Nullable Float f10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return f32334a.replace(str, (f10 == null || (r2 = f10.toString()) == null) ? "" : "");
    }
}
