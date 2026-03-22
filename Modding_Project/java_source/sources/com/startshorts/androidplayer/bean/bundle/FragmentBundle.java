package com.startshorts.androidplayer.bean.bundle;

import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FragmentBundle.kt */
@Metadata
/* loaded from: classes6.dex */
public final class FragmentBundle implements Serializable {
    @NotNull
    private List<? extends IFragmentBundle> list;

    public FragmentBundle(@NotNull List<? extends IFragmentBundle> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FragmentBundle copy$default(FragmentBundle fragmentBundle, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = fragmentBundle.list;
        }
        return fragmentBundle.copy(list);
    }

    @NotNull
    public final List<IFragmentBundle> component1() {
        return this.list;
    }

    @NotNull
    public final FragmentBundle copy(@NotNull List<? extends IFragmentBundle> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return new FragmentBundle(list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof FragmentBundle) && Intrinsics.areEqual(this.list, ((FragmentBundle) obj).list)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<IFragmentBundle> getList() {
        return this.list;
    }

    public int hashCode() {
        return this.list.hashCode();
    }

    public final void setList(@NotNull List<? extends IFragmentBundle> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.list = list;
    }

    @NotNull
    public String toString() {
        return "FragmentBundle(list=" + this.list + ')';
    }
}
