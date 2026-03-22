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
import com.startshorts.androidplayer.ui.view.progress.GradientProgressBar;
/* loaded from: classes6.dex */
public abstract class ItemDownloadingDramaBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f40375a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CustomFrescoView f40376b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final GradientProgressBar f40377c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f40378d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f40379e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f40380f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final BaseTextView f40381g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final BaseTextView f40382h;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDownloadingDramaBinding(Object obj, View view, int i10, ImageView imageView, CustomFrescoView customFrescoView, GradientProgressBar gradientProgressBar, BaseTextView baseTextView, BaseTextView baseTextView2, BaseTextView baseTextView3, BaseTextView baseTextView4, BaseTextView baseTextView5) {
        super(obj, view, i10);
        this.f40375a = imageView;
        this.f40376b = customFrescoView;
        this.f40377c = gradientProgressBar;
        this.f40378d = baseTextView;
        this.f40379e = baseTextView2;
        this.f40380f = baseTextView3;
        this.f40381g = baseTextView4;
        this.f40382h = baseTextView5;
    }

    public static ItemDownloadingDramaBinding b(@NonNull View view) {
        return d(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemDownloadingDramaBinding d(@NonNull View view, @Nullable Object obj) {
        return (ItemDownloadingDramaBinding) ViewDataBinding.bind(obj, view, R$layout.item_downloading_drama);
    }
}
