package com.startshorts.androidplayer.bean.discover;

import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TagListInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class TagListInfo extends SelectableItem {
    private boolean hasInsert;
    @Nullable
    private final List<ShortsLabel> labelList;
    private final int position;

    public /* synthetic */ TagListInfo(int i10, boolean z10, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? false : z10, (i11 & 4) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TagListInfo copy$default(TagListInfo tagListInfo, int i10, boolean z10, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = tagListInfo.position;
        }
        if ((i11 & 2) != 0) {
            z10 = tagListInfo.hasInsert;
        }
        if ((i11 & 4) != 0) {
            list = tagListInfo.labelList;
        }
        return tagListInfo.copy(i10, z10, list);
    }

    public final int component1() {
        return this.position;
    }

    public final boolean component2() {
        return this.hasInsert;
    }

    @Nullable
    public final List<ShortsLabel> component3() {
        return this.labelList;
    }

    @NotNull
    public final TagListInfo copy(int i10, boolean z10, @Nullable List<ShortsLabel> list) {
        return new TagListInfo(i10, z10, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TagListInfo)) {
            return false;
        }
        TagListInfo tagListInfo = (TagListInfo) obj;
        if (this.position == tagListInfo.position && this.hasInsert == tagListInfo.hasInsert && Intrinsics.areEqual(this.labelList, tagListInfo.labelList)) {
            return true;
        }
        return false;
    }

    public final boolean getHasInsert() {
        return this.hasInsert;
    }

    @Nullable
    public final List<ShortsLabel> getLabelList() {
        return this.labelList;
    }

    public final int getPosition() {
        return this.position;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((Integer.hashCode(this.position) * 31) + Boolean.hashCode(this.hasInsert)) * 31;
        List<ShortsLabel> list = this.labelList;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final void setHasInsert(boolean z10) {
        this.hasInsert = z10;
    }

    @Override // com.startshorts.androidplayer.bean.adapter.SelectableItem
    @NotNull
    public String toString() {
        return "TagListInfo(position=" + this.position + ", hasInsert=" + this.hasInsert + ", labelList=" + this.labelList + ')';
    }

    public TagListInfo(int i10, boolean z10, @Nullable List<ShortsLabel> list) {
        this.position = i10;
        this.hasInsert = z10;
        this.labelList = list;
    }
}
