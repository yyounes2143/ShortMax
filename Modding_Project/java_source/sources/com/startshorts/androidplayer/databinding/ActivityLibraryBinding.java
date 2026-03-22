package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.google.android.flexbox.FlexboxLayout;
import com.hades.aar.pagestate.StateViewGroup;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.LoadMoreRecyclerView;
import com.startshorts.androidplayer.ui.view.base.MaxHeightFlexBoxLayout;
/* loaded from: classes6.dex */
public abstract class ActivityLibraryBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final FlexboxLayout f38303a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final MaxHeightFlexBoxLayout f38304b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f38305c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f38306d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final StateViewGroup f38307e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LoadMoreRecyclerView f38308f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TwinklingRefreshLayout f38309g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ConstraintLayout f38310h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final BaseTextView f38311i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final View f38312j;

    /* JADX INFO: Access modifiers changed from: protected */
    public ActivityLibraryBinding(Object obj, View view, int i10, FlexboxLayout flexboxLayout, MaxHeightFlexBoxLayout maxHeightFlexBoxLayout, ImageView imageView, ImageView imageView2, StateViewGroup stateViewGroup, LoadMoreRecyclerView loadMoreRecyclerView, TwinklingRefreshLayout twinklingRefreshLayout, ConstraintLayout constraintLayout, BaseTextView baseTextView, View view2) {
        super(obj, view, i10);
        this.f38303a = flexboxLayout;
        this.f38304b = maxHeightFlexBoxLayout;
        this.f38305c = imageView;
        this.f38306d = imageView2;
        this.f38307e = stateViewGroup;
        this.f38308f = loadMoreRecyclerView;
        this.f38309g = twinklingRefreshLayout;
        this.f38310h = constraintLayout;
        this.f38311i = baseTextView;
        this.f38312j = view2;
    }
}
