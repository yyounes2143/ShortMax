package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class LayoutToastDelBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final AppCompatImageView f41122a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f41123b;

    /* JADX INFO: Access modifiers changed from: protected */
    public LayoutToastDelBinding(Object obj, View view, int i10, AppCompatImageView appCompatImageView, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f41122a = appCompatImageView;
        this.f41123b = baseTextView;
    }
}
