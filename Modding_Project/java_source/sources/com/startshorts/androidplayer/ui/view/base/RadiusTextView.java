package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import com.startshorts.androidplayer.R$styleable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RadiusTextView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RadiusTextView extends BaseTextView {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f47118d = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private int f47119b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private ColorStateList f47120c;

    /* compiled from: RadiusTextView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RadiusTextView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void d() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(this.f47119b);
        gradientDrawable.setColor(this.f47120c);
        setBackground(gradientDrawable);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RadiusTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RadiusTextView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.RadiusTextView, i10, 0);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.f47119b = obtainStyledAttributes.getDimensionPixelSize(R$styleable.RadiusTextView_radius, 0);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(R$styleable.RadiusTextView_background_color);
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(-1);
            Intrinsics.checkNotNullExpressionValue(colorStateList, "valueOf(...)");
        }
        this.f47120c = colorStateList;
        obtainStyledAttributes.recycle();
        d();
    }
}
