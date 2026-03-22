package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
/* loaded from: classes6.dex */
public abstract class ViewAccumulatedTaskProgressBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ProgressBar f41166a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f41167b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewAccumulatedTaskProgressBinding(Object obj, View view, int i10, ProgressBar progressBar, FrameLayout frameLayout) {
        super(obj, view, i10);
        this.f41166a = progressBar;
        this.f41167b = frameLayout;
    }
}
