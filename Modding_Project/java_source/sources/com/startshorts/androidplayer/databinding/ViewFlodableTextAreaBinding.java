package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.InterceptParentTouchScrollView;
/* loaded from: classes6.dex */
public abstract class ViewFlodableTextAreaBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f41224a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f41225b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f41226c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final InterceptParentTouchScrollView f41227d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f41228e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewFlodableTextAreaBinding(Object obj, View view, int i10, BaseTextView baseTextView, TextView textView, ConstraintLayout constraintLayout, InterceptParentTouchScrollView interceptParentTouchScrollView, BaseTextView baseTextView2) {
        super(obj, view, i10);
        this.f41224a = baseTextView;
        this.f41225b = textView;
        this.f41226c = constraintLayout;
        this.f41227d = interceptParentTouchScrollView;
        this.f41228e = baseTextView2;
    }
}
