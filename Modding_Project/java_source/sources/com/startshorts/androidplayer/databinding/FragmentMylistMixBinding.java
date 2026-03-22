package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import androidx.recyclerview.widget.RecyclerView;
import com.hades.aar.pagestate.StateViewGroup;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes6.dex */
public abstract class FragmentMylistMixBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ViewStubProxy f39554a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final StateViewGroup f39555b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f39556c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TwinklingRefreshLayout f39557d;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentMylistMixBinding(Object obj, View view, int i10, ViewStubProxy viewStubProxy, StateViewGroup stateViewGroup, RecyclerView recyclerView, TwinklingRefreshLayout twinklingRefreshLayout) {
        super(obj, view, i10);
        this.f39554a = viewStubProxy;
        this.f39555b = stateViewGroup;
        this.f39556c = recyclerView;
        this.f39557d = twinklingRefreshLayout;
    }
}
