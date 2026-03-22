package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.ui.activity.subs.HomeDiscountSubsFloatView;
import com.startshorts.androidplayer.ui.activity.subs.HomeTurboLinkFloatView;
import com.startshorts.androidplayer.ui.view.main.ContinuePlayLayout;
import com.startshorts.androidplayer.ui.view.main.tab.MainTabLayout;
/* loaded from: classes6.dex */
public abstract class ActivityMainBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ContinuePlayLayout f38363a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final HomeDiscountSubsFloatView f38364b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final HomeTurboLinkFloatView f38365c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f38366d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final MainTabLayout f38367e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f38368f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ViewPager2 f38369g;

    /* JADX INFO: Access modifiers changed from: protected */
    public ActivityMainBinding(Object obj, View view, int i10, ContinuePlayLayout continuePlayLayout, HomeDiscountSubsFloatView homeDiscountSubsFloatView, HomeTurboLinkFloatView homeTurboLinkFloatView, ConstraintLayout constraintLayout, MainTabLayout mainTabLayout, View view2, ViewPager2 viewPager2) {
        super(obj, view, i10);
        this.f38363a = continuePlayLayout;
        this.f38364b = homeDiscountSubsFloatView;
        this.f38365c = homeTurboLinkFloatView;
        this.f38366d = constraintLayout;
        this.f38367e = mainTabLayout;
        this.f38368f = view2;
        this.f38369g = viewPager2;
    }
}
