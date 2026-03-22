package com.startshorts.androidplayer.bean.unlock;

import com.startshorts.androidplayer.bean.subs.SubsSku;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QuerySubsFirstDiscountResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class QuerySubsFirstDiscountResult {
    @Nullable
    private final List<SubsSku> subscribeSkuResponses;

    public QuerySubsFirstDiscountResult(@Nullable List<SubsSku> list) {
        this.subscribeSkuResponses = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ QuerySubsFirstDiscountResult copy$default(QuerySubsFirstDiscountResult querySubsFirstDiscountResult, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = querySubsFirstDiscountResult.subscribeSkuResponses;
        }
        return querySubsFirstDiscountResult.copy(list);
    }

    @Nullable
    public final List<SubsSku> component1() {
        return this.subscribeSkuResponses;
    }

    @NotNull
    public final QuerySubsFirstDiscountResult copy(@Nullable List<SubsSku> list) {
        return new QuerySubsFirstDiscountResult(list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof QuerySubsFirstDiscountResult) && Intrinsics.areEqual(this.subscribeSkuResponses, ((QuerySubsFirstDiscountResult) obj).subscribeSkuResponses)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<SubsSku> getSubscribeSkuResponses() {
        return this.subscribeSkuResponses;
    }

    public int hashCode() {
        List<SubsSku> list = this.subscribeSkuResponses;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    @NotNull
    public String toString() {
        return "QuerySubsFirstDiscountResult(subscribeSkuResponses=" + this.subscribeSkuResponses + ')';
    }
}
