package com.startshorts.androidplayer.ui.fragment.mylist;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ContainerRecentlyWatchedFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ContainerRecentlyWatchedFragment$initTabView$itemDecoration$1 extends RecyclerView.ItemDecoration {
    ContainerRecentlyWatchedFragment$initTabView$itemDecoration$1() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(outRect, "outRect");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        jk.r.a(outRect, 0, 0, fk.z.f51786a.g(), 0);
    }
}
