package com.startshorts.androidplayer.bean.purchase;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BlackFridayCoinSku.kt */
@Metadata
/* loaded from: classes6.dex */
public final class BlackFridayCoinSku extends CoinSku {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int STATUS_NOT_CONSUMED = 0;
    public static final int STATUS_PURCHASED = 2;
    public static final int STATUS_REFUND = 3;
    public static final int STATUS_USED = 1;
    public static final int TYPE_BLACK_FRIDAY = 1;
    public static final int TYPE_DISCOUNT = 2;
    private boolean isConsume;
    private boolean isExpiration;
    private int recordType = 1;
    @Nullable
    private String shortPlayName;
    private int status;
    private long useTime;

    /* compiled from: BlackFridayCoinSku.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final int getRecordType() {
        return this.recordType;
    }

    @Nullable
    public final String getShortPlayName() {
        return this.shortPlayName;
    }

    public final int getStatus() {
        return this.status;
    }

    public final long getUseTime() {
        return this.useTime;
    }

    public final boolean isConsume() {
        return this.isConsume;
    }

    public final boolean isExpiration() {
        return this.isExpiration;
    }

    public final void setConsume(boolean z10) {
        this.isConsume = z10;
    }

    public final void setExpiration(boolean z10) {
        this.isExpiration = z10;
    }

    public final void setRecordType(int i10) {
        this.recordType = i10;
    }

    public final void setShortPlayName(@Nullable String str) {
        this.shortPlayName = str;
    }

    public final void setStatus(int i10) {
        this.status = i10;
    }

    public final void setUseTime(long j10) {
        this.useTime = j10;
    }

    @Override // com.startshorts.androidplayer.bean.purchase.CoinSku, com.startshorts.androidplayer.bean.adapter.SelectableItem
    @NotNull
    public String toString() {
        return "BlackFridayCoinSku(isExpiration=" + this.isExpiration + ", isConsume=" + this.isConsume + ", useTime=" + this.useTime + ", shortPlayName=" + this.shortPlayName + ", recordType=" + this.recordType + ", status=" + this.status + ')';
    }
}
