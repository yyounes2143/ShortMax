package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.ui.view.base.TabView;
import com.startshorts.androidplayer.utils.scroll.NestedScrollableHost;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverModuleCategoryPageBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final NestedScrollableHost f40110a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final NestedScrollableHost f40111b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TabView f40112c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ViewPager2 f40113d;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverModuleCategoryPageBinding(Object obj, View view, int i10, NestedScrollableHost nestedScrollableHost, NestedScrollableHost nestedScrollableHost2, TabView tabView, ViewPager2 viewPager2) {
        super(obj, view, i10);
        this.f40110a = nestedScrollableHost;
        this.f40111b = nestedScrollableHost2;
        this.f40112c = tabView;
        this.f40113d = viewPager2;
    }
}
