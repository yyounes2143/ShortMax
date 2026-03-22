package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemSelectRegionBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f40837a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f40838b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f40839c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemSelectRegionBinding(Object obj, View view, int i10, BaseTextView baseTextView, ConstraintLayout constraintLayout, BaseTextView baseTextView2) {
        super(obj, view, i10);
        this.f40837a = baseTextView;
        this.f40838b = constraintLayout;
        this.f40839c = baseTextView2;
    }

    @NonNull
    public static ItemSelectRegionBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemSelectRegionBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ItemSelectRegionBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_select_region, viewGroup, z10, obj);
    }
}
