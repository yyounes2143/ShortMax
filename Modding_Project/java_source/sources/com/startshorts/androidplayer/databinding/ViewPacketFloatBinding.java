package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ViewPacketFloatBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f41276a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f41277b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f41278c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewPacketFloatBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, ImageView imageView, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f41276a = constraintLayout;
        this.f41277b = imageView;
        this.f41278c = baseTextView;
    }

    @NonNull
    public static ViewPacketFloatBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewPacketFloatBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewPacketFloatBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_packet_float, viewGroup, z10, obj);
    }
}
