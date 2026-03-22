package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.hades.aar.pagestate.StateViewGroup;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes6.dex */
public abstract class FragmentTagFilterListBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final StateViewGroup f39669a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewStubProxy f39670b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TwinklingRefreshLayout f39671c;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentTagFilterListBinding(Object obj, View view, int i10, StateViewGroup stateViewGroup, ViewStubProxy viewStubProxy, TwinklingRefreshLayout twinklingRefreshLayout) {
        super(obj, view, i10);
        this.f39669a = stateViewGroup;
        this.f39670b = viewStubProxy;
        this.f39671c = twinklingRefreshLayout;
    }
}
