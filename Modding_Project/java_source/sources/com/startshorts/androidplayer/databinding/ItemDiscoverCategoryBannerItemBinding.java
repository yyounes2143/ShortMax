package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.discover.VideoPreview;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.exposure.ExposureLayout;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverCategoryBannerItemBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final CustomFrescoView f39981a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ExposureLayout f39982b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f39983c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final VideoPreview f39984d;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverCategoryBannerItemBinding(Object obj, View view, int i10, CustomFrescoView customFrescoView, ExposureLayout exposureLayout, BaseTextView baseTextView, VideoPreview videoPreview) {
        super(obj, view, i10);
        this.f39981a = customFrescoView;
        this.f39982b = exposureLayout;
        this.f39983c = baseTextView;
        this.f39984d = videoPreview;
    }
}
