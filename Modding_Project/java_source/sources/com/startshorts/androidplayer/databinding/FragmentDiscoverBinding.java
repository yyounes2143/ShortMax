package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.hades.aar.pagestate.StateViewGroup;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.startshorts.androidplayer.ui.view.base.BaseRecyclerView;
/* loaded from: classes6.dex */
public abstract class FragmentDiscoverBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final StateViewGroup f39418a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseRecyclerView f39419b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TwinklingRefreshLayout f39420c;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentDiscoverBinding(Object obj, View view, int i10, StateViewGroup stateViewGroup, BaseRecyclerView baseRecyclerView, TwinklingRefreshLayout twinklingRefreshLayout) {
        super(obj, view, i10);
        this.f39418a = stateViewGroup;
        this.f39419b = baseRecyclerView;
        this.f39420c = twinklingRefreshLayout;
    }
}
