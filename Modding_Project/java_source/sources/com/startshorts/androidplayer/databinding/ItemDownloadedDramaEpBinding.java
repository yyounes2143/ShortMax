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
public abstract class ItemDownloadedDramaEpBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f40366a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CustomFrescoView f40367b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f40368c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f40369d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f40370e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDownloadedDramaEpBinding(Object obj, View view, int i10, ImageView imageView, CustomFrescoView customFrescoView, ImageView imageView2, BaseTextView baseTextView, BaseTextView baseTextView2) {
        super(obj, view, i10);
        this.f40366a = imageView;
        this.f40367b = customFrescoView;
        this.f40368c = imageView2;
        this.f40369d = baseTextView;
        this.f40370e = baseTextView2;
    }

    public static ItemDownloadedDramaEpBinding b(@NonNull View view) {
        return d(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemDownloadedDramaEpBinding d(@NonNull View view, @Nullable Object obj) {
        return (ItemDownloadedDramaEpBinding) ViewDataBinding.bind(obj, view, R$layout.item_downloaded_drama_ep);
    }
}
