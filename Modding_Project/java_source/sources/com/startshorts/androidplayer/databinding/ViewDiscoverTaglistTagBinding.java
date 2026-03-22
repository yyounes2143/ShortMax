package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ViewDiscoverTaglistTagBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f41220a;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewDiscoverTaglistTagBinding(Object obj, View view, int i10, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f41220a = baseTextView;
    }

    @NonNull
    public static ViewDiscoverTaglistTagBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewDiscoverTaglistTagBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewDiscoverTaglistTagBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_discover_taglist_tag, viewGroup, z10, obj);
    }
}
