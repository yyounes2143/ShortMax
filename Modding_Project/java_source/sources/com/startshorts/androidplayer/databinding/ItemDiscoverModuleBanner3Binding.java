package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.discover.BannerIndicatorCircleView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverModuleBanner3Binding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f40079a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BannerIndicatorCircleView f40080b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CustomFrescoView f40081c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverModuleBanner3Binding(Object obj, View view, int i10, ConstraintLayout constraintLayout, BannerIndicatorCircleView bannerIndicatorCircleView, CustomFrescoView customFrescoView) {
        super(obj, view, i10);
        this.f40079a = constraintLayout;
        this.f40080b = bannerIndicatorCircleView;
        this.f40081c = customFrescoView;
    }
}
