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
public abstract class FragmentCollectionListBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f39399a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f39400b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ViewStubProxy f39401c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TabView f39402d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f39403e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ConstraintLayout f39404f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ViewPager2 f39405g;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentCollectionListBinding(Object obj, View view, int i10, BaseTextView baseTextView, ImageView imageView, ViewStubProxy viewStubProxy, TabView tabView, BaseTextView baseTextView2, ConstraintLayout constraintLayout, ViewPager2 viewPager2) {
        super(obj, view, i10);
        this.f39399a = baseTextView;
        this.f39400b = imageView;
        this.f39401c = viewStubProxy;
        this.f39402d = tabView;
        this.f39403e = baseTextView2;
        this.f39404f = constraintLayout;
        this.f39405g = viewPager2;
    }
}
