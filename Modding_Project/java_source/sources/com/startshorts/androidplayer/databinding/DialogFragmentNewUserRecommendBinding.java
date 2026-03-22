package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.hades.aar.pagestate.StateViewGroup;
/* loaded from: classes6.dex */
public abstract class DialogFragmentNewUserRecommendBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f38942a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final StateViewGroup f38943b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f38944c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f38945d;

    /* JADX INFO: Access modifiers changed from: protected */
    public DialogFragmentNewUserRecommendBinding(Object obj, View view, int i10, ImageView imageView, StateViewGroup stateViewGroup, RecyclerView recyclerView, View view2) {
        super(obj, view, i10);
        this.f38942a = imageView;
        this.f38943b = stateViewGroup;
        this.f38944c = recyclerView;
        this.f38945d = view2;
    }
}
