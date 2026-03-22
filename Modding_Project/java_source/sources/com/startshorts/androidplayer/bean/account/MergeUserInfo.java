package com.startshorts.androidplayer.bean.account;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MergeUserInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class MergeUserInfo {
    @Nullable
    private List<String> mergeUserList;

    public MergeUserInfo(@Nullable List<String> list) {
        this.mergeUserList = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MergeUserInfo copy$default(MergeUserInfo mergeUserInfo, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = mergeUserInfo.mergeUserList;
        }
        return mergeUserInfo.copy(list);
    }

    @Nullable
    public final List<String> component1() {
        return this.mergeUserList;
    }

    @NotNull
    public final MergeUserInfo copy(@Nullable List<String> list) {
        return new MergeUserInfo(list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof MergeUserInfo) && Intrinsics.areEqual(this.mergeUserList, ((MergeUserInfo) obj).mergeUserList)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<String> getMergeUserList() {
        return this.mergeUserList;
    }

    public int hashCode() {
        List<String> list = this.mergeUserList;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public final void setMergeUserList(@Nullable List<String> list) {
        this.mergeUserList = list;
    }

    @NotNull
    public String toString() {
        return "MergeUserInfo(mergeUserList=" + this.mergeUserList + ')';
    }
}
