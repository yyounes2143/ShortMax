package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.StrokeTextView;
/* loaded from: classes6.dex */
public abstract class DialogAdFreeDramaBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final StrokeTextView f38619a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f38620b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f38621c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final StrokeTextView f38622d;

    /* JADX INFO: Access modifiers changed from: protected */
    public DialogAdFreeDramaBinding(Object obj, View view, int i10, StrokeTextView strokeTextView, ConstraintLayout constraintLayout, ImageView imageView, StrokeTextView strokeTextView2) {
        super(obj, view, i10);
        this.f38619a = strokeTextView;
        this.f38620b = constraintLayout;
        this.f38621c = imageView;
        this.f38622d = strokeTextView2;
    }
}
