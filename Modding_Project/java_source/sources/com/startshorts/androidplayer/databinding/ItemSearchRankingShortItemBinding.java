package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.exposure.ExposureLayout;
/* loaded from: classes6.dex */
public abstract class ItemSearchRankingShortItemBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final CustomFrescoView f40828a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ExposureLayout f40829b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f40830c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f40831d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f40832e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f40833f;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemSearchRankingShortItemBinding(Object obj, View view, int i10, CustomFrescoView customFrescoView, ExposureLayout exposureLayout, ImageView imageView, ImageView imageView2, BaseTextView baseTextView, BaseTextView baseTextView2) {
        super(obj, view, i10);
        this.f40828a = customFrescoView;
        this.f40829b = exposureLayout;
        this.f40830c = imageView;
        this.f40831d = imageView2;
        this.f40832e = baseTextView;
        this.f40833f = baseTextView2;
    }
}
