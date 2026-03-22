package com.startshorts.androidplayer.bean.tag;

import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;
/* compiled from: TagFilterShortsListResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class TagFilterShortsListResult {
    @Nullable
    private List<DiscoverShorts> list;

    public TagFilterShortsListResult() {
        this(null, 1, null);
    }

    @Nullable
    public final List<DiscoverShorts> getList() {
        return this.list;
    }

    public final void setList(@Nullable List<DiscoverShorts> list) {
        this.list = list;
    }

    public TagFilterShortsListResult(@Nullable List<DiscoverShorts> list) {
        this.list = list;
    }

    public /* synthetic */ TagFilterShortsListResult(List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : list);
    }
}
