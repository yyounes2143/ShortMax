package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemNewUserRecommendBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f40513a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f40514b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemNewUserRecommendBinding(Object obj, View view, int i10, ImageView imageView, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f40513a = imageView;
        this.f40514b = baseTextView;
    }

    @NonNull
    public static ItemNewUserRecommendBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemNewUserRecommendBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ItemNewUserRecommendBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_new_user_recommend, viewGroup, z10, obj);
    }
}
