package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverModuleBanner2Binding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f40072a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f40073b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CustomFrescoView f40074c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverModuleBanner2Binding(Object obj, View view, int i10, ConstraintLayout constraintLayout, ImageView imageView, CustomFrescoView customFrescoView) {
        super(obj, view, i10);
        this.f40072a = constraintLayout;
        this.f40073b = imageView;
        this.f40074c = customFrescoView;
    }
}
