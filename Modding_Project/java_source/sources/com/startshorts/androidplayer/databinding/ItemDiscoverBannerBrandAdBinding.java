package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverBannerBrandAdBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f39938a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CustomFrescoView f39939b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f39940c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverBannerBrandAdBinding(Object obj, View view, int i10, ImageView imageView, CustomFrescoView customFrescoView, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f39938a = imageView;
        this.f39939b = customFrescoView;
        this.f39940c = baseTextView;
    }
}
