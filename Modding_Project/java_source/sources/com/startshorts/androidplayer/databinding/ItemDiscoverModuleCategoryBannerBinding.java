package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.TabView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverModuleCategoryBannerBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f40100a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final StateViewGroup f40101b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f40102c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f40103d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f40104e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TabView f40105f;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverModuleCategoryBannerBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, StateViewGroup stateViewGroup, BaseTextView baseTextView, View view2, BaseTextView baseTextView2, TabView tabView) {
        super(obj, view, i10);
        this.f40100a = constraintLayout;
        this.f40101b = stateViewGroup;
        this.f40102c = baseTextView;
        this.f40103d = view2;
        this.f40104e = baseTextView2;
        this.f40105f = tabView;
    }
}
