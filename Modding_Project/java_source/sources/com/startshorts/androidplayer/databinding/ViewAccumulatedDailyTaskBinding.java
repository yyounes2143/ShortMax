package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.task.AccumulatedTaskProgressView;
/* loaded from: classes6.dex */
public abstract class ViewAccumulatedDailyTaskBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f41140a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final AccumulatedTaskProgressView f41141b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final HorizontalScrollView f41142c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f41143d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f41144e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f41145f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final BaseTextView f41146g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ConstraintLayout f41147h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ConstraintLayout f41148i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f41149j;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewAccumulatedDailyTaskBinding(Object obj, View view, int i10, BaseTextView baseTextView, AccumulatedTaskProgressView accumulatedTaskProgressView, HorizontalScrollView horizontalScrollView, BaseTextView baseTextView2, BaseTextView baseTextView3, ImageView imageView, BaseTextView baseTextView4, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ImageView imageView2) {
        super(obj, view, i10);
        this.f41140a = baseTextView;
        this.f41141b = accumulatedTaskProgressView;
        this.f41142c = horizontalScrollView;
        this.f41143d = baseTextView2;
        this.f41144e = baseTextView3;
        this.f41145f = imageView;
        this.f41146g = baseTextView4;
        this.f41147h = constraintLayout;
        this.f41148i = constraintLayout2;
        this.f41149j = imageView2;
    }
}
