package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverBannerH5Binding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f39951a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CustomFrescoView f39952b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f39953c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverBannerH5Binding(Object obj, View view, int i10, ImageView imageView, CustomFrescoView customFrescoView, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f39951a = imageView;
        this.f39952b = customFrescoView;
        this.f39953c = baseTextView;
    }
}
