package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.flexbox.FlexboxLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MaxLinesFlexBoxLayout.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MaxLinesFlexboxLayout extends FlexboxLayout {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MaxLinesFlexboxLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void B(int i10) {
        if (i10 == 1) {
            getLayoutParams().height = jk.g.a(36.0f);
        } else {
            getLayoutParams().height = -2;
        }
        requestLayout();
    }

    public final boolean C() {
        if (getChildCount() == 0) {
            return true;
        }
        float y10 = getChildAt(0).getY();
        int childCount = getChildCount();
        for (int i10 = 1; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8 && childAt.getY() != y10) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MaxLinesFlexboxLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ MaxLinesFlexboxLayout(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaxLinesFlexboxLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
