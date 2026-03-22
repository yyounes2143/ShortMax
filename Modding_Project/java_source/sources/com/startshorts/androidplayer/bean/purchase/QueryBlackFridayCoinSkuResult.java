package com.startshorts.androidplayer.bean.purchase;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryBlackFridayCoinSkuResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class QueryBlackFridayCoinSkuResult {
    @Nullable
    private List<BlackFridayCoinSku> expireList;
    @Nullable
    private List<BlackFridayCoinSku> notUsedList;
    @Nullable
    private List<BlackFridayCoinSku> usedList;

    @Nullable
    public final List<BlackFridayCoinSku> getExpireList() {
        return this.expireList;
    }

    @Nullable
    public final List<BlackFridayCoinSku> getNotUsedList() {
        return this.notUsedList;
    }

    @Nullable
    public final List<BlackFridayCoinSku> getUsedList() {
        return this.usedList;
    }

    public final boolean isEmpty() {
        List<BlackFridayCoinSku> list;
        List<BlackFridayCoinSku> list2;
        List<BlackFridayCoinSku> list3 = this.notUsedList;
        if ((list3 != null && !list3.isEmpty()) || (((list = this.usedList) != null && !list.isEmpty()) || ((list2 = this.expireList) != null && !list2.isEmpty()))) {
            return false;
        }
        return true;
    }

    public final void setExpireList(@Nullable List<BlackFridayCoinSku> list) {
        this.expireList = list;
    }

    public final void setNotUsedList(@Nullable List<BlackFridayCoinSku> list) {
        this.notUsedList = list;
    }

    public final void setUsedList(@Nullable List<BlackFridayCoinSku> list) {
        this.usedList = list;
    }

    @NotNull
    public String toString() {
        return "QueryBlackFridayCoinSkuResult(notUsedList=" + this.notUsedList + ", usedList=" + this.usedList + ", expireList=" + this.expireList + ')';
    }
}
