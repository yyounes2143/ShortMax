package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverModuleTitleMoreBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f40170a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f40171b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f40172c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverModuleTitleMoreBinding(Object obj, View view, int i10, ImageView imageView, ConstraintLayout constraintLayout, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f40170a = imageView;
        this.f40171b = constraintLayout;
        this.f40172c = baseTextView;
    }
}
