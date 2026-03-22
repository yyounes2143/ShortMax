package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemClarityChooseBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f39809a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f39810b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f39811c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemClarityChooseBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, ImageView imageView, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f39809a = constraintLayout;
        this.f39810b = imageView;
        this.f39811c = baseTextView;
    }

    public static ItemClarityChooseBinding b(@NonNull View view) {
        return d(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemClarityChooseBinding d(@NonNull View view, @Nullable Object obj) {
        return (ItemClarityChooseBinding) ViewDataBinding.bind(obj, view, R$layout.item_clarity_choose);
    }
}
