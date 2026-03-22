package com.startshorts.androidplayer.bean.purchase;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PendingBillingOp.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PendingBillingOp {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int OP_CONSUME = 2;
    public static final int OP_QUERY_PRODUCT_DETAILS = 1;
    private boolean consumed;
    @Nullable
    private Object extra;
    private int type;

    /* compiled from: PendingBillingOp.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public PendingBillingOp() {
        this(0, null, false, 7, null);
    }

    public static /* synthetic */ PendingBillingOp copy$default(PendingBillingOp pendingBillingOp, int i10, Object obj, boolean z10, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            i10 = pendingBillingOp.type;
        }
        if ((i11 & 2) != 0) {
            obj = pendingBillingOp.extra;
        }
        if ((i11 & 4) != 0) {
            z10 = pendingBillingOp.consumed;
        }
        return pendingBillingOp.copy(i10, obj, z10);
    }

    public final int component1() {
        return this.type;
    }

    @Nullable
    public final Object component2() {
        return this.extra;
    }

    public final boolean component3() {
        return this.consumed;
    }

    @NotNull
    public final PendingBillingOp copy(int i10, @Nullable Object obj, boolean z10) {
        return new PendingBillingOp(i10, obj, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PendingBillingOp)) {
            return false;
        }
        PendingBillingOp pendingBillingOp = (PendingBillingOp) obj;
        if (this.type == pendingBillingOp.type && Intrinsics.areEqual(this.extra, pendingBillingOp.extra) && this.consumed == pendingBillingOp.consumed) {
            return true;
        }
        return false;
    }

    public final boolean getConsumed() {
        return this.consumed;
    }

    @Nullable
    public final Object getExtra() {
        return this.extra;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = Integer.hashCode(this.type) * 31;
        Object obj = this.extra;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        return ((hashCode2 + hashCode) * 31) + Boolean.hashCode(this.consumed);
    }

    public final void setConsumed(boolean z10) {
        this.consumed = z10;
    }

    public final void setExtra(@Nullable Object obj) {
        this.extra = obj;
    }

    public final void setType(int i10) {
        this.type = i10;
    }

    @NotNull
    public String toString() {
        return "PendingBillingOp(type=" + this.type + ", extra=" + this.extra + ", consumed=" + this.consumed + ')';
    }

    public PendingBillingOp(int i10, @Nullable Object obj, boolean z10) {
        this.type = i10;
        this.extra = obj;
        this.consumed = z10;
    }

    public /* synthetic */ PendingBillingOp(int i10, Object obj, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? -1 : i10, (i11 & 2) != 0 ? null : obj, (i11 & 4) != 0 ? false : z10);
    }
}
