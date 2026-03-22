package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.hades.aar.pagestate.StateViewGroup;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes6.dex */
public abstract class FragmentRecentlyWatchedBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ViewStubProxy f39607a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final StateViewGroup f39608b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ViewStubProxy f39609c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TwinklingRefreshLayout f39610d;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentRecentlyWatchedBinding(Object obj, View view, int i10, ViewStubProxy viewStubProxy, StateViewGroup stateViewGroup, ViewStubProxy viewStubProxy2, TwinklingRefreshLayout twinklingRefreshLayout) {
        super(obj, view, i10);
        this.f39607a = viewStubProxy;
        this.f39608b = stateViewGroup;
        this.f39609c = viewStubProxy2;
        this.f39610d = twinklingRefreshLayout;
    }
}
