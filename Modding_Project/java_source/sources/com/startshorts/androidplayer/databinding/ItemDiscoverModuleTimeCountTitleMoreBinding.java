package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverModuleTimeCountTitleMoreBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final Barrier f40162a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewDiscoverModuleTitleMoreCountDownBinding f40163b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f40164c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f40165d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f40166e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverModuleTimeCountTitleMoreBinding(Object obj, View view, int i10, Barrier barrier, ViewDiscoverModuleTitleMoreCountDownBinding viewDiscoverModuleTitleMoreCountDownBinding, ImageView imageView, ConstraintLayout constraintLayout, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f40162a = barrier;
        this.f40163b = viewDiscoverModuleTitleMoreCountDownBinding;
        this.f40164c = imageView;
        this.f40165d = constraintLayout;
        this.f40166e = baseTextView;
    }
}
