package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.region.QuickBarView;
/* loaded from: classes6.dex */
public abstract class ActivityRegionSelectBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f38422a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f38423b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final StateViewGroup f38424c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final QuickBarView f38425d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RecyclerView f38426e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f38427f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final BaseTextView f38428g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f38429h;

    /* JADX INFO: Access modifiers changed from: protected */
    public ActivityRegionSelectBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, ImageView imageView, StateViewGroup stateViewGroup, QuickBarView quickBarView, RecyclerView recyclerView, BaseTextView baseTextView, BaseTextView baseTextView2, View view2) {
        super(obj, view, i10);
        this.f38422a = constraintLayout;
        this.f38423b = imageView;
        this.f38424c = stateViewGroup;
        this.f38425d = quickBarView;
        this.f38426e = recyclerView;
        this.f38427f = baseTextView;
        this.f38428g = baseTextView2;
        this.f38429h = view2;
    }
}
