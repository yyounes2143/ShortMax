package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemHomeCheckInDayNormalBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final View f40442a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f40443b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f40444c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f40445d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ConstraintLayout f40446e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemHomeCheckInDayNormalBinding(Object obj, View view, int i10, View view2, BaseTextView baseTextView, BaseTextView baseTextView2, ImageView imageView, ConstraintLayout constraintLayout) {
        super(obj, view, i10);
        this.f40442a = view2;
        this.f40443b = baseTextView;
        this.f40444c = baseTextView2;
        this.f40445d = imageView;
        this.f40446e = constraintLayout;
    }
}
