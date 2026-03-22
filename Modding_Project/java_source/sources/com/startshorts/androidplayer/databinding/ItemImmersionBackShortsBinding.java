package com.startshorts.androidplayer.databinding;

import android.view.TextureView;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.shortsV2.shortrating.SmallShortRatingLayout;
/* loaded from: classes6.dex */
public abstract class ItemImmersionBackShortsBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final CustomFrescoView f40450a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SmallShortRatingLayout f40451b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CardView f40452c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextureView f40453d;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemImmersionBackShortsBinding(Object obj, View view, int i10, CustomFrescoView customFrescoView, SmallShortRatingLayout smallShortRatingLayout, CardView cardView, TextureView textureView) {
        super(obj, view, i10);
        this.f40450a = customFrescoView;
        this.f40451b = smallShortRatingLayout;
        this.f40452c = cardView;
        this.f40453d = textureView;
    }
}
