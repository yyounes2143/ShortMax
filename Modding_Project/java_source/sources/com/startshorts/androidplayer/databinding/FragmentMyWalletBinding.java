package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.ui.view.base.TabView;
/* loaded from: classes6.dex */
public abstract class FragmentMyWalletBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final View f39546a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewStubProxy f39547b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TabView f39548c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ViewPager2 f39549d;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentMyWalletBinding(Object obj, View view, int i10, View view2, ViewStubProxy viewStubProxy, TabView tabView, ViewPager2 viewPager2) {
        super(obj, view, i10);
        this.f39546a = view2;
        this.f39547b = viewStubProxy;
        this.f39548c = tabView;
        this.f39549d = viewPager2;
    }
}
