package com.startshorts.androidplayer.bean.configure;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BlackDeviceController.kt */
@Metadata
/* loaded from: classes6.dex */
public final class BlackDeviceController {
    @Nullable
    private List<String> push;

    public BlackDeviceController(@Nullable List<String> list) {
        this.push = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BlackDeviceController copy$default(BlackDeviceController blackDeviceController, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = blackDeviceController.push;
        }
        return blackDeviceController.copy(list);
    }

    @Nullable
    public final List<String> component1() {
        return this.push;
    }

    @NotNull
    public final BlackDeviceController copy(@Nullable List<String> list) {
        return new BlackDeviceController(list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof BlackDeviceController) && Intrinsics.areEqual(this.push, ((BlackDeviceController) obj).push)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<String> getPush() {
        return this.push;
    }

    public int hashCode() {
        List<String> list = this.push;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public final void setPush(@Nullable List<String> list) {
        this.push = list;
    }

    @NotNull
    public String toString() {
        return "BlackDeviceController(push=" + this.push + ')';
    }
}
