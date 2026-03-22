package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.ui.view.base.TabView;
/* loaded from: classes6.dex */
public abstract class FragmentTagFilterBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final TabView f39663a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewPager2 f39664b;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentTagFilterBinding(Object obj, View view, int i10, TabView tabView, ViewPager2 viewPager2) {
        super(obj, view, i10);
        this.f39663a = tabView;
        this.f39664b = viewPager2;
    }
}
