package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemGridLibraryBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f40414a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CustomFrescoView f40415b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f40416c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f40417d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f40418e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f40419f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final BaseTextView f40420g;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemGridLibraryBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, CustomFrescoView customFrescoView, ImageView imageView, TextView textView, BaseTextView baseTextView, BaseTextView baseTextView2, BaseTextView baseTextView3) {
        super(obj, view, i10);
        this.f40414a = constraintLayout;
        this.f40415b = customFrescoView;
        this.f40416c = imageView;
        this.f40417d = textView;
        this.f40418e = baseTextView;
        this.f40419f = baseTextView2;
        this.f40420g = baseTextView3;
    }

    @NonNull
    public static ItemGridLibraryBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemGridLibraryBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ItemGridLibraryBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_grid_library, viewGroup, z10, obj);
    }
}
