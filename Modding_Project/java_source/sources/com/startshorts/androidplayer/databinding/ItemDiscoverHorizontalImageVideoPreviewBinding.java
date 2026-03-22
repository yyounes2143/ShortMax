package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.discover.VideoPreview;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverHorizontalImageVideoPreviewBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final CardView f40041a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CustomFrescoView f40042b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f40043c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f40044d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final CustomFrescoView f40045e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final CardView f40046f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final BaseTextView f40047g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final BaseTextView f40048h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final VideoPreview f40049i;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverHorizontalImageVideoPreviewBinding(Object obj, View view, int i10, CardView cardView, CustomFrescoView customFrescoView, View view2, ConstraintLayout constraintLayout, CustomFrescoView customFrescoView2, CardView cardView2, BaseTextView baseTextView, BaseTextView baseTextView2, VideoPreview videoPreview) {
        super(obj, view, i10);
        this.f40041a = cardView;
        this.f40042b = customFrescoView;
        this.f40043c = view2;
        this.f40044d = constraintLayout;
        this.f40045e = customFrescoView2;
        this.f40046f = cardView2;
        this.f40047g = baseTextView;
        this.f40048h = baseTextView2;
        this.f40049i = videoPreview;
    }
}
