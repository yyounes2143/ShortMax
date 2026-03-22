package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemLibraryClassifyBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f40473a;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemLibraryClassifyBinding(Object obj, View view, int i10, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f40473a = baseTextView;
    }

    @NonNull
    public static ItemLibraryClassifyBinding b(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemLibraryClassifyBinding d(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemLibraryClassifyBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_library_classify, null, false, obj);
    }
}
