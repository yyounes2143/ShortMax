package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ActivityFragmentContainerBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final FrameLayout f38256a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewStubProxy f38257b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f38258c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f38259d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f38260e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f38261f;

    /* JADX INFO: Access modifiers changed from: protected */
    public ActivityFragmentContainerBinding(Object obj, View view, int i10, FrameLayout frameLayout, ViewStubProxy viewStubProxy, ImageView imageView, ConstraintLayout constraintLayout, BaseTextView baseTextView, View view2) {
        super(obj, view, i10);
        this.f38256a = frameLayout;
        this.f38257b = viewStubProxy;
        this.f38258c = imageView;
        this.f38259d = constraintLayout;
        this.f38260e = baseTextView;
        this.f38261f = view2;
    }
}
