package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemWatchAdBonusWatchedBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f41068a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f41069b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CustomFrescoView f41070c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f41071d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ConstraintLayout f41072e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemWatchAdBonusWatchedBinding(Object obj, View view, int i10, BaseTextView baseTextView, ImageView imageView, CustomFrescoView customFrescoView, BaseTextView baseTextView2, ConstraintLayout constraintLayout) {
        super(obj, view, i10);
        this.f41068a = baseTextView;
        this.f41069b = imageView;
        this.f41070c = customFrescoView;
        this.f41071d = baseTextView2;
        this.f41072e = constraintLayout;
    }
}
