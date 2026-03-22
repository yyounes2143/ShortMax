package com.startshorts.androidplayer.bean.order;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OtherOrderResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class OtherOrderResp {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String STATUS_COMPLETED = "COMPLETED";
    @Nullable
    private final String status;

    /* compiled from: OtherOrderResult.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public OtherOrderResp() {
        this(null, 1, null);
    }

    public static /* synthetic */ OtherOrderResp copy$default(OtherOrderResp otherOrderResp, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = otherOrderResp.status;
        }
        return otherOrderResp.copy(str);
    }

    @Nullable
    public final String component1() {
        return this.status;
    }

    @NotNull
    public final OtherOrderResp copy(@Nullable String str) {
        return new OtherOrderResp(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof OtherOrderResp) && Intrinsics.areEqual(this.status, ((OtherOrderResp) obj).status)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.status;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    @NotNull
    public String toString() {
        return "OtherOrderResp(status=" + this.status + ')';
    }

    public OtherOrderResp(@Nullable String str) {
        this.status = str;
    }

    public /* synthetic */ OtherOrderResp(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str);
    }
}
