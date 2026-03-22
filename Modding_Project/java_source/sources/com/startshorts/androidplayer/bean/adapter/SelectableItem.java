package com.startshorts.androidplayer.bean.adapter;

import androidx.databinding.BaseObservable;
import androidx.databinding.Bindable;
import kotlin.Metadata;
import lk.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SelectableItem.kt */
@Metadata
/* loaded from: classes6.dex */
public class SelectableItem extends BaseObservable {
    @c
    private boolean isSelected;
    @Nullable
    private Integer itemStyle;
    private int sort;
    private final int TYPE_COIN = 1;
    private final int CARD_SMALL = 1;
    private final int CARD_BIG = 2;
    private final int TYPE_SUB;
    private int dataType = this.TYPE_SUB;
    private boolean clickable = true;

    public final int getCARD_BIG() {
        return this.CARD_BIG;
    }

    public final int getCARD_SMALL() {
        return this.CARD_SMALL;
    }

    public final boolean getClickable() {
        return this.clickable;
    }

    public final int getDataType() {
        return this.dataType;
    }

    @NotNull
    public String getItemId() {
        return "";
    }

    @Nullable
    public final Integer getItemStyle() {
        return this.itemStyle;
    }

    public final int getSort() {
        return this.sort;
    }

    public final int getTYPE_COIN() {
        return this.TYPE_COIN;
    }

    public final int getTYPE_SUB() {
        return this.TYPE_SUB;
    }

    public final boolean isBigCard() {
        Integer num = this.itemStyle;
        int i10 = this.CARD_BIG;
        if (num != null && num.intValue() == i10) {
            return true;
        }
        return false;
    }

    @Bindable
    public final boolean isSelected() {
        return this.isSelected;
    }

    public final boolean isSmallCard() {
        Integer num = this.itemStyle;
        int i10 = this.CARD_SMALL;
        if (num != null && num.intValue() == i10) {
            return true;
        }
        return false;
    }

    public final void setClickable(boolean z10) {
        this.clickable = z10;
    }

    public final void setDataType(int i10) {
        this.dataType = i10;
    }

    public final void setItemStyle(@Nullable Integer num) {
        this.itemStyle = num;
    }

    public final void setSelected(boolean z10) {
        this.isSelected = z10;
        notifyPropertyChanged(6);
    }

    public final void setSort(int i10) {
        this.sort = i10;
    }

    @NotNull
    public String toString() {
        return "SelectableItem(isSelected=" + this.isSelected + ", clickable=" + this.clickable + ')';
    }
}
