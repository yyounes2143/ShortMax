package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.hades.aar.pagestate.StateViewGroup;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes6.dex */
public abstract class FragmentBonusRecordBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final StateViewGroup f39387a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewStubProxy f39388b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TwinklingRefreshLayout f39389c;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentBonusRecordBinding(Object obj, View view, int i10, StateViewGroup stateViewGroup, ViewStubProxy viewStubProxy, TwinklingRefreshLayout twinklingRefreshLayout) {
        super(obj, view, i10);
        this.f39387a = stateViewGroup;
        this.f39388b = viewStubProxy;
        this.f39389c = twinklingRefreshLayout;
    }
}
