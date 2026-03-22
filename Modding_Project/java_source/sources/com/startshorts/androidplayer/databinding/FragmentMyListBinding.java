package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class FragmentMyListBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f39525a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f39526b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f39527c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f39528d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ConstraintLayout f39529e;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentMyListBinding(Object obj, View view, int i10, BaseTextView baseTextView, ImageView imageView, FrameLayout frameLayout, BaseTextView baseTextView2, ConstraintLayout constraintLayout) {
        super(obj, view, i10);
        this.f39525a = baseTextView;
        this.f39526b = imageView;
        this.f39527c = frameLayout;
        this.f39528d = baseTextView2;
        this.f39529e = constraintLayout;
    }
}
