package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemTestTextItemBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f41018a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f41019b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemTestTextItemBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f41018a = constraintLayout;
        this.f41019b = baseTextView;
    }

    public static ItemTestTextItemBinding b(@NonNull View view) {
        return d(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemTestTextItemBinding d(@NonNull View view, @Nullable Object obj) {
        return (ItemTestTextItemBinding) ViewDataBinding.bind(obj, view, R$layout.item_test_text_item);
    }
}
