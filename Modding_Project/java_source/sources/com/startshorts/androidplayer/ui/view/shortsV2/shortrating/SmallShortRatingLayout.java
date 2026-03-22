package com.startshorts.androidplayer.ui.view.shortsV2.shortrating;

import android.content.Context;
import android.util.AttributeSet;
import com.startshorts.androidplayer.R$layout;
import jk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SmallShortRatingLayout.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SmallShortRatingLayout extends ShortRatingLayout {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SmallShortRatingLayout(@NotNull Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingLayout, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_small_short_rating;
    }

    @Override // com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingLayout
    public int getMCompanyNameLineSpacing() {
        return g.a(2.0f);
    }

    @Override // com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingLayout
    public int getMCompanyNameMarginStart() {
        return g.a(5.5f);
    }

    @Override // com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingLayout
    public float getMCompanyNameTextSize() {
        return 6.0f;
    }

    @Override // com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingLayout
    public float getMCornerRadius() {
        return g.b(2.25f);
    }

    @Override // com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingLayout
    public int getMRatingIconSpace() {
        return g.a(2.0f);
    }

    @Override // com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingLayout
    public float getMRatingIconTextSize() {
        return 7.0f;
    }

    @Override // com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingLayout
    public int getMResizeHeight() {
        return g.a(20.0f);
    }

    public /* synthetic */ SmallShortRatingLayout(Context context, AttributeSet attributeSet, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SmallShortRatingLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
