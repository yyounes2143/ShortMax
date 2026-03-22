package com.startshorts.androidplayer.bean.library;

import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LibraryClass.kt */
@Metadata
/* loaded from: classes6.dex */
public final class LibraryEpisode {
    private boolean isEnd;
    @Nullable
    private ArrayList<BaseShorts> list;

    public LibraryEpisode() {
        this(null, false, 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LibraryEpisode copy$default(LibraryEpisode libraryEpisode, ArrayList arrayList, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            arrayList = libraryEpisode.list;
        }
        if ((i10 & 2) != 0) {
            z10 = libraryEpisode.isEnd;
        }
        return libraryEpisode.copy(arrayList, z10);
    }

    @Nullable
    public final ArrayList<BaseShorts> component1() {
        return this.list;
    }

    public final boolean component2() {
        return this.isEnd;
    }

    @NotNull
    public final LibraryEpisode copy(@Nullable ArrayList<BaseShorts> arrayList, boolean z10) {
        return new LibraryEpisode(arrayList, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LibraryEpisode)) {
            return false;
        }
        LibraryEpisode libraryEpisode = (LibraryEpisode) obj;
        if (Intrinsics.areEqual(this.list, libraryEpisode.list) && this.isEnd == libraryEpisode.isEnd) {
            return true;
        }
        return false;
    }

    @Nullable
    public final ArrayList<BaseShorts> getList() {
        return this.list;
    }

    public int hashCode() {
        int hashCode;
        ArrayList<BaseShorts> arrayList = this.list;
        if (arrayList == null) {
            hashCode = 0;
        } else {
            hashCode = arrayList.hashCode();
        }
        return (hashCode * 31) + Boolean.hashCode(this.isEnd);
    }

    public final boolean isEnd() {
        return this.isEnd;
    }

    public final void setEnd(boolean z10) {
        this.isEnd = z10;
    }

    public final void setList(@Nullable ArrayList<BaseShorts> arrayList) {
        this.list = arrayList;
    }

    @NotNull
    public String toString() {
        return "LibraryEpisode(list=" + this.list + ", isEnd=" + this.isEnd + ')';
    }

    public LibraryEpisode(@Nullable ArrayList<BaseShorts> arrayList, boolean z10) {
        this.list = arrayList;
        this.isEnd = z10;
    }

    public /* synthetic */ LibraryEpisode(ArrayList arrayList, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : arrayList, (i10 & 2) != 0 ? false : z10);
    }
}
