package com.startshorts.androidplayer.bean.library;

import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LibraryClass.kt */
@Metadata
/* loaded from: classes6.dex */
public final class LoadLibrary {
    private boolean isComplete;
    @Nullable
    private LibraryClass libClass;
    @Nullable
    private List<BaseShorts> list;

    public LoadLibrary() {
        this(null, null, false, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LoadLibrary copy$default(LoadLibrary loadLibrary, LibraryClass libraryClass, List list, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            libraryClass = loadLibrary.libClass;
        }
        if ((i10 & 2) != 0) {
            list = loadLibrary.list;
        }
        if ((i10 & 4) != 0) {
            z10 = loadLibrary.isComplete;
        }
        return loadLibrary.copy(libraryClass, list, z10);
    }

    @Nullable
    public final LibraryClass component1() {
        return this.libClass;
    }

    @Nullable
    public final List<BaseShorts> component2() {
        return this.list;
    }

    public final boolean component3() {
        return this.isComplete;
    }

    @NotNull
    public final LoadLibrary copy(@Nullable LibraryClass libraryClass, @Nullable List<BaseShorts> list, boolean z10) {
        return new LoadLibrary(libraryClass, list, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LoadLibrary)) {
            return false;
        }
        LoadLibrary loadLibrary = (LoadLibrary) obj;
        if (Intrinsics.areEqual(this.libClass, loadLibrary.libClass) && Intrinsics.areEqual(this.list, loadLibrary.list) && this.isComplete == loadLibrary.isComplete) {
            return true;
        }
        return false;
    }

    @Nullable
    public final LibraryClass getLibClass() {
        return this.libClass;
    }

    @Nullable
    public final List<BaseShorts> getList() {
        return this.list;
    }

    public int hashCode() {
        int hashCode;
        LibraryClass libraryClass = this.libClass;
        int i10 = 0;
        if (libraryClass == null) {
            hashCode = 0;
        } else {
            hashCode = libraryClass.hashCode();
        }
        int i11 = hashCode * 31;
        List<BaseShorts> list = this.list;
        if (list != null) {
            i10 = list.hashCode();
        }
        return ((i11 + i10) * 31) + Boolean.hashCode(this.isComplete);
    }

    public final boolean isComplete() {
        return this.isComplete;
    }

    public final boolean loadComplete() {
        if (this.libClass != null && this.list != null) {
            return true;
        }
        return false;
    }

    public final void setComplete(boolean z10) {
        this.isComplete = z10;
    }

    public final void setLibClass(@Nullable LibraryClass libraryClass) {
        this.libClass = libraryClass;
    }

    public final void setList(@Nullable List<BaseShorts> list) {
        this.list = list;
    }

    @NotNull
    public String toString() {
        return "LoadLibrary(libClass=" + this.libClass + ", list=" + this.list + ", isComplete=" + this.isComplete + ')';
    }

    public LoadLibrary(@Nullable LibraryClass libraryClass, @Nullable List<BaseShorts> list, boolean z10) {
        this.libClass = libraryClass;
        this.list = list;
        this.isComplete = z10;
    }

    public /* synthetic */ LoadLibrary(LibraryClass libraryClass, List list, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : libraryClass, (i10 & 2) != 0 ? null : list, (i10 & 4) != 0 ? false : z10);
    }
}
