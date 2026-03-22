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
public abstract class FragmentMyListDetailBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final View f39534a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f39535b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f39536c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ViewStubProxy f39537d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TabView f39538e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f39539f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ConstraintLayout f39540g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ViewPager2 f39541h;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentMyListDetailBinding(Object obj, View view, int i10, View view2, BaseTextView baseTextView, ImageView imageView, ViewStubProxy viewStubProxy, TabView tabView, BaseTextView baseTextView2, ConstraintLayout constraintLayout, ViewPager2 viewPager2) {
        super(obj, view, i10);
        this.f39534a = view2;
        this.f39535b = baseTextView;
        this.f39536c = imageView;
        this.f39537d = viewStubProxy;
        this.f39538e = tabView;
        this.f39539f = baseTextView2;
        this.f39540g = constraintLayout;
        this.f39541h = viewPager2;
    }
}
