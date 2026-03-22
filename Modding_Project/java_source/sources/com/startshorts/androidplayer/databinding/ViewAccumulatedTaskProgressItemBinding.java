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
public abstract class ViewAccumulatedTaskProgressItemBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f41172a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f41173b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f41174c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f41175d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f41176e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewAccumulatedTaskProgressItemBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, BaseTextView baseTextView, ImageView imageView, BaseTextView baseTextView2, ImageView imageView2) {
        super(obj, view, i10);
        this.f41172a = constraintLayout;
        this.f41173b = baseTextView;
        this.f41174c = imageView;
        this.f41175d = baseTextView2;
        this.f41176e = imageView2;
    }

    @NonNull
    public static ViewAccumulatedTaskProgressItemBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewAccumulatedTaskProgressItemBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewAccumulatedTaskProgressItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_accumulated_task_progress_item, viewGroup, z10, obj);
    }
}
