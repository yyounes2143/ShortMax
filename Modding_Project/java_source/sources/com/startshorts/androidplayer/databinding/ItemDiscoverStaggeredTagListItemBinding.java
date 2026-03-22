package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverStaggeredTagListItemBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final LinearLayout f40320a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final GradientTextView f40321b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverStaggeredTagListItemBinding(Object obj, View view, int i10, LinearLayout linearLayout, GradientTextView gradientTextView) {
        super(obj, view, i10);
        this.f40320a = linearLayout;
        this.f40321b = gradientTextView;
    }
}
