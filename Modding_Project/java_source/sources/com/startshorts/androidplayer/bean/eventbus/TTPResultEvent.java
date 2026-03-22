package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TTPResultEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class TTPResultEvent {
    @Nullable
    private final String orderNo;
    @Nullable
    private final Integer orderType;

    public TTPResultEvent(@Nullable Integer num, @Nullable String str) {
        this.orderType = num;
        this.orderNo = str;
    }

    public static /* synthetic */ TTPResultEvent copy$default(TTPResultEvent tTPResultEvent, Integer num, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = tTPResultEvent.orderType;
        }
        if ((i10 & 2) != 0) {
            str = tTPResultEvent.orderNo;
        }
        return tTPResultEvent.copy(num, str);
    }

    @Nullable
    public final Integer component1() {
        return this.orderType;
    }

    @Nullable
    public final String component2() {
        return this.orderNo;
    }

    @NotNull
    public final TTPResultEvent copy(@Nullable Integer num, @Nullable String str) {
        return new TTPResultEvent(num, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TTPResultEvent)) {
            return false;
        }
        TTPResultEvent tTPResultEvent = (TTPResultEvent) obj;
        if (Intrinsics.areEqual(this.orderType, tTPResultEvent.orderType) && Intrinsics.areEqual(this.orderNo, tTPResultEvent.orderNo)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getOrderNo() {
        return this.orderNo;
    }

    @Nullable
    public final Integer getOrderType() {
        return this.orderType;
    }

    public int hashCode() {
        int hashCode;
        Integer num = this.orderType;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i11 = hashCode * 31;
        String str = this.orderNo;
        if (str != null) {
            i10 = str.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "TTPResultEvent(orderType=" + this.orderType + ", orderNo=" + this.orderNo + ')';
    }
}
