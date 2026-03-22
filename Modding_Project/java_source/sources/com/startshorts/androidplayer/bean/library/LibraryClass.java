package com.startshorts.androidplayer.bean.library;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LibraryClass.kt */
@Metadata
/* loaded from: classes6.dex */
public final class LibraryClass {
    @Nullable
    private ArrayList<LibraryCategory> classList;
    @Nullable
    private ArrayList<LibraryCategory> contentList;
    @Nullable
    private ArrayList<LibraryCategory> paidTypeList;

    public LibraryClass() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LibraryClass copy$default(LibraryClass libraryClass, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            arrayList = libraryClass.paidTypeList;
        }
        if ((i10 & 2) != 0) {
            arrayList2 = libraryClass.contentList;
        }
        if ((i10 & 4) != 0) {
            arrayList3 = libraryClass.classList;
        }
        return libraryClass.copy(arrayList, arrayList2, arrayList3);
    }

    @Nullable
    public final ArrayList<LibraryCategory> component1() {
        return this.paidTypeList;
    }

    @Nullable
    public final ArrayList<LibraryCategory> component2() {
        return this.contentList;
    }

    @Nullable
    public final ArrayList<LibraryCategory> component3() {
        return this.classList;
    }

    @NotNull
    public final LibraryClass copy(@Nullable ArrayList<LibraryCategory> arrayList, @Nullable ArrayList<LibraryCategory> arrayList2, @Nullable ArrayList<LibraryCategory> arrayList3) {
        return new LibraryClass(arrayList, arrayList2, arrayList3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LibraryClass)) {
            return false;
        }
        LibraryClass libraryClass = (LibraryClass) obj;
        if (Intrinsics.areEqual(this.paidTypeList, libraryClass.paidTypeList) && Intrinsics.areEqual(this.contentList, libraryClass.contentList) && Intrinsics.areEqual(this.classList, libraryClass.classList)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final ArrayList<LibraryCategory> getClassList() {
        return this.classList;
    }

    @Nullable
    public final ArrayList<LibraryCategory> getContentList() {
        return this.contentList;
    }

    @Nullable
    public final ArrayList<LibraryCategory> getPaidTypeList() {
        return this.paidTypeList;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        ArrayList<LibraryCategory> arrayList = this.paidTypeList;
        int i10 = 0;
        if (arrayList == null) {
            hashCode = 0;
        } else {
            hashCode = arrayList.hashCode();
        }
        int i11 = hashCode * 31;
        ArrayList<LibraryCategory> arrayList2 = this.contentList;
        if (arrayList2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = arrayList2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        ArrayList<LibraryCategory> arrayList3 = this.classList;
        if (arrayList3 != null) {
            i10 = arrayList3.hashCode();
        }
        return i12 + i10;
    }

    public final void setClassList(@Nullable ArrayList<LibraryCategory> arrayList) {
        this.classList = arrayList;
    }

    public final void setContentList(@Nullable ArrayList<LibraryCategory> arrayList) {
        this.contentList = arrayList;
    }

    public final void setPaidTypeList(@Nullable ArrayList<LibraryCategory> arrayList) {
        this.paidTypeList = arrayList;
    }

    @NotNull
    public String toString() {
        return "LibraryClass(paidTypeList=" + this.paidTypeList + ", contentList=" + this.contentList + ", classList=" + this.classList + ')';
    }

    public LibraryClass(@Nullable ArrayList<LibraryCategory> arrayList, @Nullable ArrayList<LibraryCategory> arrayList2, @Nullable ArrayList<LibraryCategory> arrayList3) {
        this.paidTypeList = arrayList;
        this.contentList = arrayList2;
        this.classList = arrayList3;
    }

    public /* synthetic */ LibraryClass(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : arrayList, (i10 & 2) != 0 ? null : arrayList2, (i10 & 4) != 0 ? null : arrayList3);
    }
}
