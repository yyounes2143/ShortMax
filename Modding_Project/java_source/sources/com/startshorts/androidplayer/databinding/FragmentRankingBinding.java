package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.ui.view.base.LoadMoreRecyclerView;
/* loaded from: classes6.dex */
public abstract class FragmentRankingBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final StateViewGroup f39601a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LoadMoreRecyclerView f39602b;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentRankingBinding(Object obj, View view, int i10, StateViewGroup stateViewGroup, LoadMoreRecyclerView loadMoreRecyclerView) {
        super(obj, view, i10);
        this.f39601a = stateViewGroup;
        this.f39602b = loadMoreRecyclerView;
    }
}
