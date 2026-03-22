package com.startshorts.androidplayer.bean.unlock;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RetainConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RetainConfig {
    private int commonStyleTemplate;
    private final boolean isNewUser;
    private boolean retainAdUnlockIsShow;
    private int retainFreeGoldCount;
    @Nullable
    private List<String> retainPageOrder;
    private int retainSkuCount;
    private int retainSubscriptionCount;

    public RetainConfig(boolean z10, int i10, boolean z11, int i11, int i12, @Nullable List<String> list, int i13) {
        this.isNewUser = z10;
        this.retainSubscriptionCount = i10;
        this.retainAdUnlockIsShow = z11;
        this.retainFreeGoldCount = i11;
        this.retainSkuCount = i12;
        this.retainPageOrder = list;
        this.commonStyleTemplate = i13;
    }

    public static /* synthetic */ RetainConfig copy$default(RetainConfig retainConfig, boolean z10, int i10, boolean z11, int i11, int i12, List list, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            z10 = retainConfig.isNewUser;
        }
        if ((i14 & 2) != 0) {
            i10 = retainConfig.retainSubscriptionCount;
        }
        int i15 = i10;
        if ((i14 & 4) != 0) {
            z11 = retainConfig.retainAdUnlockIsShow;
        }
        boolean z12 = z11;
        if ((i14 & 8) != 0) {
            i11 = retainConfig.retainFreeGoldCount;
        }
        int i16 = i11;
        if ((i14 & 16) != 0) {
            i12 = retainConfig.retainSkuCount;
        }
        int i17 = i12;
        List<String> list2 = list;
        if ((i14 & 32) != 0) {
            list2 = retainConfig.retainPageOrder;
        }
        List list3 = list2;
        if ((i14 & 64) != 0) {
            i13 = retainConfig.commonStyleTemplate;
        }
        return retainConfig.copy(z10, i15, z12, i16, i17, list3, i13);
    }

    public final boolean component1() {
        return this.isNewUser;
    }

    public final int component2() {
        return this.retainSubscriptionCount;
    }

    public final boolean component3() {
        return this.retainAdUnlockIsShow;
    }

    public final int component4() {
        return this.retainFreeGoldCount;
    }

    public final int component5() {
        return this.retainSkuCount;
    }

    @Nullable
    public final List<String> component6() {
        return this.retainPageOrder;
    }

    public final int component7() {
        return this.commonStyleTemplate;
    }

    @NotNull
    public final RetainConfig copy(boolean z10, int i10, boolean z11, int i11, int i12, @Nullable List<String> list, int i13) {
        return new RetainConfig(z10, i10, z11, i11, i12, list, i13);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RetainConfig)) {
            return false;
        }
        RetainConfig retainConfig = (RetainConfig) obj;
        if (this.isNewUser == retainConfig.isNewUser && this.retainSubscriptionCount == retainConfig.retainSubscriptionCount && this.retainAdUnlockIsShow == retainConfig.retainAdUnlockIsShow && this.retainFreeGoldCount == retainConfig.retainFreeGoldCount && this.retainSkuCount == retainConfig.retainSkuCount && Intrinsics.areEqual(this.retainPageOrder, retainConfig.retainPageOrder) && this.commonStyleTemplate == retainConfig.commonStyleTemplate) {
            return true;
        }
        return false;
    }

    public final int getCommonStyleTemplate() {
        return this.commonStyleTemplate;
    }

    public final boolean getRetainAdUnlockIsShow() {
        return this.retainAdUnlockIsShow;
    }

    public final int getRetainFreeGoldCount() {
        return this.retainFreeGoldCount;
    }

    @Nullable
    public final List<String> getRetainPageOrder() {
        return this.retainPageOrder;
    }

    public final int getRetainSkuCount() {
        return this.retainSkuCount;
    }

    public final int getRetainSubscriptionCount() {
        return this.retainSubscriptionCount;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((((((((Boolean.hashCode(this.isNewUser) * 31) + Integer.hashCode(this.retainSubscriptionCount)) * 31) + Boolean.hashCode(this.retainAdUnlockIsShow)) * 31) + Integer.hashCode(this.retainFreeGoldCount)) * 31) + Integer.hashCode(this.retainSkuCount)) * 31;
        List<String> list = this.retainPageOrder;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        return ((hashCode2 + hashCode) * 31) + Integer.hashCode(this.commonStyleTemplate);
    }

    public final boolean isNewUser() {
        return this.isNewUser;
    }

    public final void setCommonStyleTemplate(int i10) {
        this.commonStyleTemplate = i10;
    }

    public final void setRetainAdUnlockIsShow(boolean z10) {
        this.retainAdUnlockIsShow = z10;
    }

    public final void setRetainFreeGoldCount(int i10) {
        this.retainFreeGoldCount = i10;
    }

    public final void setRetainPageOrder(@Nullable List<String> list) {
        this.retainPageOrder = list;
    }

    public final void setRetainSkuCount(int i10) {
        this.retainSkuCount = i10;
    }

    public final void setRetainSubscriptionCount(int i10) {
        this.retainSubscriptionCount = i10;
    }

    @NotNull
    public String toString() {
        return "RetainConfig(isNewUser=" + this.isNewUser + ", retainSubscriptionCount=" + this.retainSubscriptionCount + ", retainAdUnlockIsShow=" + this.retainAdUnlockIsShow + ", retainFreeGoldCount=" + this.retainFreeGoldCount + ", retainSkuCount=" + this.retainSkuCount + ", retainPageOrder=" + this.retainPageOrder + ", commonStyleTemplate=" + this.commonStyleTemplate + ')';
    }
}
