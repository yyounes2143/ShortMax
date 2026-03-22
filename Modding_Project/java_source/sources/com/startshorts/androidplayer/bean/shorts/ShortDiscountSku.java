package com.startshorts.androidplayer.bean.shorts;

import com.startshorts.androidplayer.bean.purchase.CoinSku;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortDiscountSku.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ShortDiscountSku extends CoinSku {
    @Nullable
    private String coverUrl;
    @Nullable
    private String shortPlayCode;
    private int shortPlayId;
    @Nullable
    private String shortPlayName;
    private long validEndTime;
    private long validStartTime;

    @Nullable
    public final String getCoverUrl() {
        return this.coverUrl;
    }

    @Nullable
    public final String getShortPlayCode() {
        return this.shortPlayCode;
    }

    public final int getShortPlayId() {
        return this.shortPlayId;
    }

    @Nullable
    public final String getShortPlayName() {
        return this.shortPlayName;
    }

    public final long getValidEndTime() {
        return this.validEndTime;
    }

    public final long getValidStartTime() {
        return this.validStartTime;
    }

    public final void setCoverUrl(@Nullable String str) {
        this.coverUrl = str;
    }

    public final void setShortPlayCode(@Nullable String str) {
        this.shortPlayCode = str;
    }

    public final void setShortPlayId(int i10) {
        this.shortPlayId = i10;
    }

    public final void setShortPlayName(@Nullable String str) {
        this.shortPlayName = str;
    }

    public final void setValidEndTime(long j10) {
        this.validEndTime = j10;
    }

    public final void setValidStartTime(long j10) {
        this.validStartTime = j10;
    }
}
