package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.hades.aar.pagestate.StateViewGroup;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes6.dex */
public abstract class FragmentCoinsRecordBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final StateViewGroup f39393a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewStubProxy f39394b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TwinklingRefreshLayout f39395c;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentCoinsRecordBinding(Object obj, View view, int i10, StateViewGroup stateViewGroup, ViewStubProxy viewStubProxy, TwinklingRefreshLayout twinklingRefreshLayout) {
        super(obj, view, i10);
        this.f39393a = stateViewGroup;
        this.f39394b = viewStubProxy;
        this.f39395c = twinklingRefreshLayout;
    }
}
