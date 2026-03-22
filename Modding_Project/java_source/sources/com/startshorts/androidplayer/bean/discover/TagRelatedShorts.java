package com.startshorts.androidplayer.bean.discover;

import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TagRelatedShorts.kt */
@Metadata
/* loaded from: classes6.dex */
public final class TagRelatedShorts extends SelectableItem {
    private boolean hasInsert;
    @Nullable
    private final ShortsLabel label;
    private final int position;
    @Nullable
    private List<DiscoverShorts> shortPlayResponseList;

    public /* synthetic */ TagRelatedShorts(int i10, boolean z10, ShortsLabel shortsLabel, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? false : z10, shortsLabel, (i11 & 8) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TagRelatedShorts copy$default(TagRelatedShorts tagRelatedShorts, int i10, boolean z10, ShortsLabel shortsLabel, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = tagRelatedShorts.position;
        }
        if ((i11 & 2) != 0) {
            z10 = tagRelatedShorts.hasInsert;
        }
        if ((i11 & 4) != 0) {
            shortsLabel = tagRelatedShorts.label;
        }
        if ((i11 & 8) != 0) {
            list = tagRelatedShorts.shortPlayResponseList;
        }
        return tagRelatedShorts.copy(i10, z10, shortsLabel, list);
    }

    public final int component1() {
        return this.position;
    }

    public final boolean component2() {
        return this.hasInsert;
    }

    @Nullable
    public final ShortsLabel component3() {
        return this.label;
    }

    @Nullable
    public final List<DiscoverShorts> component4() {
        return this.shortPlayResponseList;
    }

    @NotNull
    public final TagRelatedShorts copy(int i10, boolean z10, @Nullable ShortsLabel shortsLabel, @Nullable List<DiscoverShorts> list) {
        return new TagRelatedShorts(i10, z10, shortsLabel, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TagRelatedShorts)) {
            return false;
        }
        TagRelatedShorts tagRelatedShorts = (TagRelatedShorts) obj;
        if (this.position == tagRelatedShorts.position && this.hasInsert == tagRelatedShorts.hasInsert && Intrinsics.areEqual(this.label, tagRelatedShorts.label) && Intrinsics.areEqual(this.shortPlayResponseList, tagRelatedShorts.shortPlayResponseList)) {
            return true;
        }
        return false;
    }

    public final boolean getHasInsert() {
        return this.hasInsert;
    }

    @Nullable
    public final ShortsLabel getLabel() {
        return this.label;
    }

    public final int getPosition() {
        return this.position;
    }

    @Nullable
    public final List<DiscoverShorts> getShortPlayResponseList() {
        return this.shortPlayResponseList;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((Integer.hashCode(this.position) * 31) + Boolean.hashCode(this.hasInsert)) * 31;
        ShortsLabel shortsLabel = this.label;
        int i10 = 0;
        if (shortsLabel == null) {
            hashCode = 0;
        } else {
            hashCode = shortsLabel.hashCode();
        }
        int i11 = (hashCode2 + hashCode) * 31;
        List<DiscoverShorts> list = this.shortPlayResponseList;
        if (list != null) {
            i10 = list.hashCode();
        }
        return i11 + i10;
    }

    public final void setHasInsert(boolean z10) {
        this.hasInsert = z10;
    }

    public final void setShortPlayResponseList(@Nullable List<DiscoverShorts> list) {
        this.shortPlayResponseList = list;
    }

    @Override // com.startshorts.androidplayer.bean.adapter.SelectableItem
    @NotNull
    public String toString() {
        return "TagRelatedShorts(position=" + this.position + ", hasInsert=" + this.hasInsert + ", label=" + this.label + ", shortPlayResponseList=" + this.shortPlayResponseList + ')';
    }

    public TagRelatedShorts(int i10, boolean z10, @Nullable ShortsLabel shortsLabel, @Nullable List<DiscoverShorts> list) {
        this.position = i10;
        this.hasInsert = z10;
        this.label = shortsLabel;
        this.shortPlayResponseList = list;
    }
}
