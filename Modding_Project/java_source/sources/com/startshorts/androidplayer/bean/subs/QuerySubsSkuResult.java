package com.startshorts.androidplayer.bean.subs;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QuerySubsSkuResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class QuerySubsSkuResult {
    @Nullable
    private final SubsSku activeSubscribeSku;
    @Nullable
    private final List<SubsSku> productList;

    public QuerySubsSkuResult(@Nullable List<SubsSku> list, @Nullable SubsSku subsSku) {
        this.productList = list;
        this.activeSubscribeSku = subsSku;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ QuerySubsSkuResult copy$default(QuerySubsSkuResult querySubsSkuResult, List list, SubsSku subsSku, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = querySubsSkuResult.productList;
        }
        if ((i10 & 2) != 0) {
            subsSku = querySubsSkuResult.activeSubscribeSku;
        }
        return querySubsSkuResult.copy(list, subsSku);
    }

    @Nullable
    public final List<SubsSku> component1() {
        return this.productList;
    }

    @Nullable
    public final SubsSku component2() {
        return this.activeSubscribeSku;
    }

    @NotNull
    public final QuerySubsSkuResult copy(@Nullable List<SubsSku> list, @Nullable SubsSku subsSku) {
        return new QuerySubsSkuResult(list, subsSku);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QuerySubsSkuResult)) {
            return false;
        }
        QuerySubsSkuResult querySubsSkuResult = (QuerySubsSkuResult) obj;
        if (Intrinsics.areEqual(this.productList, querySubsSkuResult.productList) && Intrinsics.areEqual(this.activeSubscribeSku, querySubsSkuResult.activeSubscribeSku)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final SubsSku getActiveSubscribeSku() {
        return this.activeSubscribeSku;
    }

    @Nullable
    public final List<SubsSku> getProductList() {
        return this.productList;
    }

    public int hashCode() {
        int hashCode;
        List<SubsSku> list = this.productList;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int i11 = hashCode * 31;
        SubsSku subsSku = this.activeSubscribeSku;
        if (subsSku != null) {
            i10 = subsSku.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "QuerySubsSkuResult(productList=" + this.productList + ", activeSubscribeSku=" + this.activeSubscribeSku + ')';
    }
}
