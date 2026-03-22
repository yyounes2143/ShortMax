package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemDownloadedDramaBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f40356a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CustomFrescoView f40357b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f40358c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f40359d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f40360e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f40361f;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDownloadedDramaBinding(Object obj, View view, int i10, ImageView imageView, CustomFrescoView customFrescoView, BaseTextView baseTextView, BaseTextView baseTextView2, BaseTextView baseTextView3, BaseTextView baseTextView4) {
        super(obj, view, i10);
        this.f40356a = imageView;
        this.f40357b = customFrescoView;
        this.f40358c = baseTextView;
        this.f40359d = baseTextView2;
        this.f40360e = baseTextView3;
        this.f40361f = baseTextView4;
    }

    public static ItemDownloadedDramaBinding b(@NonNull View view) {
        return d(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemDownloadedDramaBinding d(@NonNull View view, @Nullable Object obj) {
        return (ItemDownloadedDramaBinding) ViewDataBinding.bind(obj, view, R$layout.item_downloaded_drama);
    }
}
