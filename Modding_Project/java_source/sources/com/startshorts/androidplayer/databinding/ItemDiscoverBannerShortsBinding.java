package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverBannerShortsBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f39973a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CustomFrescoView f39974b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f39975c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f39976d;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverBannerShortsBinding(Object obj, View view, int i10, ImageView imageView, CustomFrescoView customFrescoView, ImageView imageView2, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f39973a = imageView;
        this.f39974b = customFrescoView;
        this.f39975c = imageView2;
        this.f39976d = baseTextView;
    }
}
