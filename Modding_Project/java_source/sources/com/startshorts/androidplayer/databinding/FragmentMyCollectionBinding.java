package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.hades.aar.pagestate.StateViewGroup;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes6.dex */
public abstract class FragmentMyCollectionBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final StateViewGroup f39518a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewStubProxy f39519b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TwinklingRefreshLayout f39520c;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentMyCollectionBinding(Object obj, View view, int i10, StateViewGroup stateViewGroup, ViewStubProxy viewStubProxy, TwinklingRefreshLayout twinklingRefreshLayout) {
        super(obj, view, i10);
        this.f39518a = stateViewGroup;
        this.f39519b = viewStubProxy;
        this.f39520c = twinklingRefreshLayout;
    }
}
