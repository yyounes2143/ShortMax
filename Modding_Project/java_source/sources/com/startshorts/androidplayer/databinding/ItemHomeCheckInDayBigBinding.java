package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemHomeCheckInDayBigBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final View f40434a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f40435b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f40436c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f40437d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ConstraintLayout f40438e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemHomeCheckInDayBigBinding(Object obj, View view, int i10, View view2, BaseTextView baseTextView, BaseTextView baseTextView2, ImageView imageView, ConstraintLayout constraintLayout) {
        super(obj, view, i10);
        this.f40434a = view2;
        this.f40435b = baseTextView;
        this.f40436c = baseTextView2;
        this.f40437d = imageView;
        this.f40438e = constraintLayout;
    }
}
