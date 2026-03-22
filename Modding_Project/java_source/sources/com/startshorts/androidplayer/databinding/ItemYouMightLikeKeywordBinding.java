package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemYouMightLikeKeywordBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f41098a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final AppCompatImageView f41099b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f41100c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemYouMightLikeKeywordBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f41098a = constraintLayout;
        this.f41099b = appCompatImageView;
        this.f41100c = baseTextView;
    }

    @NonNull
    public static ItemYouMightLikeKeywordBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemYouMightLikeKeywordBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ItemYouMightLikeKeywordBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_you_might_like_keyword, viewGroup, z10, obj);
    }
}
