package com.startshorts.androidplayer.bean.mylist;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CancelCollectBatchRequest.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CancelCollectBatchRequest {
    @NotNull
    private List<CollectIdRequest> list;

    public CancelCollectBatchRequest(@NotNull List<CollectIdRequest> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CancelCollectBatchRequest copy$default(CancelCollectBatchRequest cancelCollectBatchRequest, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = cancelCollectBatchRequest.list;
        }
        return cancelCollectBatchRequest.copy(list);
    }

    @NotNull
    public final List<CollectIdRequest> component1() {
        return this.list;
    }

    @NotNull
    public final CancelCollectBatchRequest copy(@NotNull List<CollectIdRequest> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return new CancelCollectBatchRequest(list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof CancelCollectBatchRequest) && Intrinsics.areEqual(this.list, ((CancelCollectBatchRequest) obj).list)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<CollectIdRequest> getList() {
        return this.list;
    }

    public int hashCode() {
        return this.list.hashCode();
    }

    public final void setList(@NotNull List<CollectIdRequest> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.list = list;
    }

    @NotNull
    public String toString() {
        return "CancelCollectBatchRequest(list=" + this.list + ')';
    }
}
