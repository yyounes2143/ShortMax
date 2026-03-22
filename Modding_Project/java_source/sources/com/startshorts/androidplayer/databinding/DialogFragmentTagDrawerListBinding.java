package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.LoadMoreRecyclerView;
/* loaded from: classes6.dex */
public abstract class DialogFragmentTagDrawerListBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f39082a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final StateViewGroup f39083b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LoadMoreRecyclerView f39084c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f39085d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f39086e;

    /* JADX INFO: Access modifiers changed from: protected */
    public DialogFragmentTagDrawerListBinding(Object obj, View view, int i10, ImageView imageView, StateViewGroup stateViewGroup, LoadMoreRecyclerView loadMoreRecyclerView, View view2, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f39082a = imageView;
        this.f39083b = stateViewGroup;
        this.f39084c = loadMoreRecyclerView;
        this.f39085d = view2;
        this.f39086e = baseTextView;
    }
}
