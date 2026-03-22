package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverCategoryPageItemBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f39988a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final StateViewGroup f39989b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f39990c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f39991d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f39992e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverCategoryPageItemBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, StateViewGroup stateViewGroup, BaseTextView baseTextView, View view2, BaseTextView baseTextView2) {
        super(obj, view, i10);
        this.f39988a = constraintLayout;
        this.f39989b = stateViewGroup;
        this.f39990c = baseTextView;
        this.f39991d = view2;
        this.f39992e = baseTextView2;
    }
}
