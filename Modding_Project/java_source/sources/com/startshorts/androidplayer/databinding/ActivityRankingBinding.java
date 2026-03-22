package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.TabView;
/* loaded from: classes6.dex */
public abstract class ActivityRankingBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f38389a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TabView f38390b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f38391c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f38392d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ViewPager2 f38393e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ActivityRankingBinding(Object obj, View view, int i10, ImageView imageView, TabView tabView, BaseTextView baseTextView, View view2, ViewPager2 viewPager2) {
        super(obj, view, i10);
        this.f38389a = imageView;
        this.f38390b = tabView;
        this.f38391c = baseTextView;
        this.f38392d = view2;
        this.f38393e = viewPager2;
    }
}
