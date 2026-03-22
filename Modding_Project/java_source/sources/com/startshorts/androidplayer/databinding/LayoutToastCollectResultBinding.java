package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class LayoutToastCollectResultBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final AppCompatImageView f41116a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f41117b;

    /* JADX INFO: Access modifiers changed from: protected */
    public LayoutToastCollectResultBinding(Object obj, View view, int i10, AppCompatImageView appCompatImageView, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f41116a = appCompatImageView;
        this.f41117b = baseTextView;
    }
}
