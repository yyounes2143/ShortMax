package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.flexbox.FlexboxLayout;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemGridTagDrawerBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final FlexboxLayout f40425a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CustomFrescoView f40426b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f40427c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f40428d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f40429e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemGridTagDrawerBinding(Object obj, View view, int i10, FlexboxLayout flexboxLayout, CustomFrescoView customFrescoView, BaseTextView baseTextView, BaseTextView baseTextView2, BaseTextView baseTextView3) {
        super(obj, view, i10);
        this.f40425a = flexboxLayout;
        this.f40426b = customFrescoView;
        this.f40427c = baseTextView;
        this.f40428d = baseTextView2;
        this.f40429e = baseTextView3;
    }

    @NonNull
    public static ItemGridTagDrawerBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemGridTagDrawerBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ItemGridTagDrawerBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_grid_tag_drawer, viewGroup, z10, obj);
    }
}
