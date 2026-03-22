package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.ui.view.base.TabView;
/* loaded from: classes6.dex */
public abstract class FragmentDiscoverRankingTabBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final StateViewGroup f39468a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TabView f39469b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ViewPager2 f39470c;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentDiscoverRankingTabBinding(Object obj, View view, int i10, StateViewGroup stateViewGroup, TabView tabView, ViewPager2 viewPager2) {
        super(obj, view, i10);
        this.f39468a = stateViewGroup;
        this.f39469b = tabView;
        this.f39470c = viewPager2;
    }
}
