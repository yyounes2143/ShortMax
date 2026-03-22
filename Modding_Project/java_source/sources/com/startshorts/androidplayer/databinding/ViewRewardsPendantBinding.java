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
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ViewRewardsPendantBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final CustomFrescoView f41354a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f41355b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewRewardsPendantBinding(Object obj, View view, int i10, CustomFrescoView customFrescoView, ImageView imageView) {
        super(obj, view, i10);
        this.f41354a = customFrescoView;
        this.f41355b = imageView;
    }

    @NonNull
    public static ViewRewardsPendantBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewRewardsPendantBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewRewardsPendantBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_rewards_pendant, viewGroup, z10, obj);
    }
}
