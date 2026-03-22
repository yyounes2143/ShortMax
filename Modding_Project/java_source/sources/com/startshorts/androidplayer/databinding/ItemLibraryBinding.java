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
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemLibraryBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f40465a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f40466b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CustomFrescoView f40467c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f40468d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f40469e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemLibraryBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, BaseTextView baseTextView, CustomFrescoView customFrescoView, BaseTextView baseTextView2, BaseTextView baseTextView3) {
        super(obj, view, i10);
        this.f40465a = constraintLayout;
        this.f40466b = baseTextView;
        this.f40467c = customFrescoView;
        this.f40468d = baseTextView2;
        this.f40469e = baseTextView3;
    }

    @NonNull
    public static ItemLibraryBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemLibraryBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ItemLibraryBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_library, viewGroup, z10, obj);
    }
}
