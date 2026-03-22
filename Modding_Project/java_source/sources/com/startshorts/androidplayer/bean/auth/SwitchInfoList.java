package com.startshorts.androidplayer.bean.auth;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SwitchInfoList.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SwitchInfoList {
    private final int mergeStatus;
    @Nullable
    private final List<SwitchInfo> userList;

    public SwitchInfoList(int i10, @Nullable List<SwitchInfo> list) {
        this.mergeStatus = i10;
        this.userList = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SwitchInfoList copy$default(SwitchInfoList switchInfoList, int i10, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = switchInfoList.mergeStatus;
        }
        if ((i11 & 2) != 0) {
            list = switchInfoList.userList;
        }
        return switchInfoList.copy(i10, list);
    }

    public final int component1() {
        return this.mergeStatus;
    }

    @Nullable
    public final List<SwitchInfo> component2() {
        return this.userList;
    }

    @NotNull
    public final SwitchInfoList copy(int i10, @Nullable List<SwitchInfo> list) {
        return new SwitchInfoList(i10, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SwitchInfoList)) {
            return false;
        }
        SwitchInfoList switchInfoList = (SwitchInfoList) obj;
        if (this.mergeStatus == switchInfoList.mergeStatus && Intrinsics.areEqual(this.userList, switchInfoList.userList)) {
            return true;
        }
        return false;
    }

    public final int getMergeStatus() {
        return this.mergeStatus;
    }

    @Nullable
    public final List<SwitchInfo> getUserList() {
        return this.userList;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = Integer.hashCode(this.mergeStatus) * 31;
        List<SwitchInfo> list = this.userList;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "SwitchInfoList(mergeStatus=" + this.mergeStatus + ", userList=" + this.userList + ')';
    }
}
