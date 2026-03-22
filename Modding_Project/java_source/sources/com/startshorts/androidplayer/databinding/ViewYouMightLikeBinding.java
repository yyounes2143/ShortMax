package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.flexbox.FlexboxLayout;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ViewYouMightLikeBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f41442a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FlexboxLayout f41443b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f41444c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f41445d;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewYouMightLikeBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, FlexboxLayout flexboxLayout, ImageView imageView, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f41442a = constraintLayout;
        this.f41443b = flexboxLayout;
        this.f41444c = imageView;
        this.f41445d = baseTextView;
    }

    @NonNull
    public static ViewYouMightLikeBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewYouMightLikeBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewYouMightLikeBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_you_might_like, viewGroup, z10, obj);
    }
}
