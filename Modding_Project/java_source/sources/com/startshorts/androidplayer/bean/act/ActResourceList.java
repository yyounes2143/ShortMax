package com.startshorts.androidplayer.bean.act;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActResourceList.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ActResourceList {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int TYPE_HOME_BOTTOM_FLOAT = 2;
    public static final int TYPE_HOME_POPUP = 1;
    public static final int TYPE_MAIN_CENTER_TAB = 3;
    public static final int TYPE_MY_LIST_BANNER = 5;
    public static final int TYPE_PROFILE_BANNER = 4;
    public static final int TYPE_SEARCH_BANNER = 6;
    public static final int TYPE_SHORTS = 7;
    public static final int TYPE_SPLASH_SCREEN = 0;
    public static final int TYPE_TASK_CENTER_BANNER = 9;
    public static final int TYPE_TASK_CENTER_FLOATING = 8;
    @Nullable
    private final List<ActExtraResource> extraResourceList;
    @Nullable
    private final List<ActResource> homeBottomFloatList;
    @Nullable
    private final List<ActResource> homePopupList;
    @Nullable
    private final List<ActResource> openScreenList;

    /* compiled from: ActResourceList.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ActResourceList(@Nullable List<ActResource> list, @Nullable List<ActResource> list2, @Nullable List<ActResource> list3, @Nullable List<ActExtraResource> list4) {
        this.openScreenList = list;
        this.homePopupList = list2;
        this.homeBottomFloatList = list3;
        this.extraResourceList = list4;
    }

    private final List<ActResource> component1() {
        return this.openScreenList;
    }

    private final List<ActResource> component2() {
        return this.homePopupList;
    }

    private final List<ActResource> component3() {
        return this.homeBottomFloatList;
    }

    private final List<ActExtraResource> component4() {
        return this.extraResourceList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ActResourceList copy$default(ActResourceList actResourceList, List list, List list2, List list3, List list4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = actResourceList.openScreenList;
        }
        if ((i10 & 2) != 0) {
            list2 = actResourceList.homePopupList;
        }
        if ((i10 & 4) != 0) {
            list3 = actResourceList.homeBottomFloatList;
        }
        if ((i10 & 8) != 0) {
            list4 = actResourceList.extraResourceList;
        }
        return actResourceList.copy(list, list2, list3, list4);
    }

    @NotNull
    public final ActResourceList copy(@Nullable List<ActResource> list, @Nullable List<ActResource> list2, @Nullable List<ActResource> list3, @Nullable List<ActExtraResource> list4) {
        return new ActResourceList(list, list2, list3, list4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActResourceList)) {
            return false;
        }
        ActResourceList actResourceList = (ActResourceList) obj;
        if (Intrinsics.areEqual(this.openScreenList, actResourceList.openScreenList) && Intrinsics.areEqual(this.homePopupList, actResourceList.homePopupList) && Intrinsics.areEqual(this.homeBottomFloatList, actResourceList.homeBottomFloatList) && Intrinsics.areEqual(this.extraResourceList, actResourceList.extraResourceList)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<ActResource> get(int i10) {
        Object obj;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    List<ActExtraResource> list = this.extraResourceList;
                    if (list == null) {
                        return null;
                    }
                    Iterator<T> it = list.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            obj = it.next();
                            if (((ActExtraResource) obj).getType() == i10) {
                                break;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                    ActExtraResource actExtraResource = (ActExtraResource) obj;
                    if (actExtraResource == null) {
                        return null;
                    }
                    return actExtraResource.getResourceList();
                }
                return this.homeBottomFloatList;
            }
            return this.homePopupList;
        }
        return this.openScreenList;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        List<ActResource> list = this.openScreenList;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int i11 = hashCode * 31;
        List<ActResource> list2 = this.homePopupList;
        if (list2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = list2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        List<ActResource> list3 = this.homeBottomFloatList;
        if (list3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = list3.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        List<ActExtraResource> list4 = this.extraResourceList;
        if (list4 != null) {
            i10 = list4.hashCode();
        }
        return i13 + i10;
    }

    @NotNull
    public String toString() {
        return "ActResourceList(openScreenList=" + this.openScreenList + ", homePopupList=" + this.homePopupList + ", homeBottomFloatList=" + this.homeBottomFloatList + ", extraResourceList=" + this.extraResourceList + ')';
    }
}
