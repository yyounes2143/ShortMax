package com.startshorts.androidplayer.bean.record;

import jk.v;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WalletRecord.kt */
@Metadata
/* loaded from: classes6.dex */
public final class WalletRecord {
    private static final int AMOUNT_DECREASE = 2;
    private static final int AMOUNT_INCREASE = 1;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int TYPE_BONUS = 2;
    public static final int TYPE_COINS = 1;
    private int bonus;
    @Nullable
    private String content;
    private int goldType;
    private int isAdd;
    @Nullable
    private String showDate;
    @Nullable
    private String title;

    /* compiled from: WalletRecord.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private final boolean isIncrease() {
        if (this.isAdd == 1) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String formatCreateTime() {
        String str = this.showDate;
        if (str != null) {
            return v.a(str);
        }
        return null;
    }

    public final int getBonus() {
        return this.bonus;
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    public final int getContentVisible() {
        String str = this.content;
        if (str != null && str.length() != 0) {
            return 0;
        }
        return 8;
    }

    @NotNull
    public final String getFormatAmount() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        if (isIncrease()) {
            str = "+";
        } else {
            str = "-";
        }
        sb2.append(str);
        sb2.append(this.bonus);
        return v.a(sb2.toString());
    }

    public final int getGoldType() {
        return this.goldType;
    }

    @Nullable
    public final String getShowDate() {
        return this.showDate;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final int isAdd() {
        return this.isAdd;
    }

    public final void setAdd(int i10) {
        this.isAdd = i10;
    }

    public final void setBonus(int i10) {
        this.bonus = i10;
    }

    public final void setContent(@Nullable String str) {
        this.content = str;
    }

    public final void setGoldType(int i10) {
        this.goldType = i10;
    }

    public final void setShowDate(@Nullable String str) {
        this.showDate = str;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    @NotNull
    public String toString() {
        return "WalletRecord(goldType=" + this.goldType + ", bonus=" + this.bonus + ", title=" + this.title + ", content=" + this.content + ", isAdd=" + this.isAdd + ", showDate=" + this.showDate + ')';
    }
}
