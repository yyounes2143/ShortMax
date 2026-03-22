package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.discover.BannerIndicatorView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverModuleCarouselBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f40090a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f40091b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BannerIndicatorView f40092c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f40093d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f40094e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final CustomFrescoView f40095f;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverModuleCarouselBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, ImageView imageView, BannerIndicatorView bannerIndicatorView, ImageView imageView2, ImageView imageView3, CustomFrescoView customFrescoView) {
        super(obj, view, i10);
        this.f40090a = constraintLayout;
        this.f40091b = imageView;
        this.f40092c = bannerIndicatorView;
        this.f40093d = imageView2;
        this.f40094e = imageView3;
        this.f40095f = customFrescoView;
    }
}
