package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ActivityTestBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f38540a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f38541b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final StateViewGroup f38542c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RecyclerView f38543d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f38544e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ActivityTestBinding(Object obj, View view, int i10, ImageView imageView, BaseTextView baseTextView, StateViewGroup stateViewGroup, RecyclerView recyclerView, View view2) {
        super(obj, view, i10);
        this.f38540a = imageView;
        this.f38541b = baseTextView;
        this.f38542c = stateViewGroup;
        this.f38543d = recyclerView;
        this.f38544e = view2;
    }
}
