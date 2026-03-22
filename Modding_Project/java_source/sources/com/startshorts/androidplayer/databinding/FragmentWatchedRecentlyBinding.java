package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.TabView;
/* loaded from: classes6.dex */
public abstract class FragmentWatchedRecentlyBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f39693a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f39694b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ViewStubProxy f39695c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TabView f39696d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f39697e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ConstraintLayout f39698f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ViewPager2 f39699g;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentWatchedRecentlyBinding(Object obj, View view, int i10, BaseTextView baseTextView, ImageView imageView, ViewStubProxy viewStubProxy, TabView tabView, BaseTextView baseTextView2, ConstraintLayout constraintLayout, ViewPager2 viewPager2) {
        super(obj, view, i10);
        this.f39693a = baseTextView;
        this.f39694b = imageView;
        this.f39695c = viewStubProxy;
        this.f39696d = tabView;
        this.f39697e = baseTextView2;
        this.f39698f = constraintLayout;
        this.f39699g = viewPager2;
    }
}
