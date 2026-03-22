package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverStaggeredRelatedShortListItemBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f40308a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f40309b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final GradientTextView f40310c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverStaggeredRelatedShortListItemBinding(Object obj, View view, int i10, ImageView imageView, LinearLayout linearLayout, GradientTextView gradientTextView) {
        super(obj, view, i10);
        this.f40308a = imageView;
        this.f40309b = linearLayout;
        this.f40310c = gradientTextView;
    }
}
