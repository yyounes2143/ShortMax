package com.startshorts.androidplayer.bean.push;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CustomPushList.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CustomPushList {
    @Nullable
    private final List<CustomPush> pushList;

    public CustomPushList(@Nullable List<CustomPush> list) {
        this.pushList = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CustomPushList copy$default(CustomPushList customPushList, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = customPushList.pushList;
        }
        return customPushList.copy(list);
    }

    @Nullable
    public final List<CustomPush> component1() {
        return this.pushList;
    }

    @NotNull
    public final CustomPushList copy(@Nullable List<CustomPush> list) {
        return new CustomPushList(list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof CustomPushList) && Intrinsics.areEqual(this.pushList, ((CustomPushList) obj).pushList)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<CustomPush> getPushList() {
        return this.pushList;
    }

    public int hashCode() {
        List<CustomPush> list = this.pushList;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    @NotNull
    public String toString() {
        return "CustomPushList(pushList=" + this.pushList + ')';
    }
}
