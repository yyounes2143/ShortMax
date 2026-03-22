package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ViewSubtitleBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f41422a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f41423b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Guideline f41424c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f41425d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f41426e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewSubtitleBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, View view2, Guideline guideline, View view3, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f41422a = constraintLayout;
        this.f41423b = view2;
        this.f41424c = guideline;
        this.f41425d = view3;
        this.f41426e = baseTextView;
    }

    @NonNull
    public static ViewSubtitleBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewSubtitleBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewSubtitleBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_subtitle, viewGroup, z10, obj);
    }
}
