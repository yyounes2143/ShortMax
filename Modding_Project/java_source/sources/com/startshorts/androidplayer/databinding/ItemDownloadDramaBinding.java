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
public abstract class ItemDownloadDramaBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f40333a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CustomFrescoView f40334b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f40335c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final GradientProgressBar f40336d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f40337e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f40338f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final BaseTextView f40339g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final BaseTextView f40340h;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDownloadDramaBinding(Object obj, View view, int i10, ImageView imageView, CustomFrescoView customFrescoView, ImageView imageView2, GradientProgressBar gradientProgressBar, BaseTextView baseTextView, BaseTextView baseTextView2, BaseTextView baseTextView3, BaseTextView baseTextView4) {
        super(obj, view, i10);
        this.f40333a = imageView;
        this.f40334b = customFrescoView;
        this.f40335c = imageView2;
        this.f40336d = gradientProgressBar;
        this.f40337e = baseTextView;
        this.f40338f = baseTextView2;
        this.f40339g = baseTextView3;
        this.f40340h = baseTextView4;
    }

    public static ItemDownloadDramaBinding b(@NonNull View view) {
        return d(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemDownloadDramaBinding d(@NonNull View view, @Nullable Object obj) {
        return (ItemDownloadDramaBinding) ViewDataBinding.bind(obj, view, R$layout.item_download_drama);
    }
}
