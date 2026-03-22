package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.flexbox.FlexboxLayout;
import com.startshorts.androidplayer.R$styleable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MaxHeightFlexBoxLayout.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MaxHeightFlexBoxLayout extends FlexboxLayout {
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    public static final a f47100u = new a(null);

    /* renamed from: r  reason: collision with root package name */
    private int f47101r;

    /* renamed from: s  reason: collision with root package name */
    private float f47102s;

    /* renamed from: t  reason: collision with root package name */
    private float f47103t;

    /* compiled from: MaxHeightFlexBoxLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int b(Context context) {
            return context.getResources().getDisplayMetrics().heightPixels;
        }

        private a() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MaxHeightFlexBoxLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void B() {
        if (this.f47101r == 0) {
            float f10 = this.f47102s;
            a aVar = f47100u;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            this.f47103t = f10 * aVar.b(context);
        }
    }

    public final void C(int i10) {
        this.f47101r = 1;
        float f10 = i10;
        if (this.f47103t != f10) {
            this.f47103t = f10;
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.flexbox.FlexboxLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int i12 = (int) this.f47103t;
        if (mode != Integer.MIN_VALUE) {
            if (mode == 1073741824) {
                i12 = Math.min(size, i12);
            }
        } else {
            i12 = Math.min(size, i12);
        }
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(i12, Integer.MIN_VALUE));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MaxHeightFlexBoxLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ MaxHeightFlexBoxLayout(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaxHeightFlexBoxLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47102s = 0.6f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MaxHeightLayout);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.f47101r = obtainStyledAttributes.getInteger(R$styleable.MaxHeightLayout_mhl_heightMode, 0);
        this.f47102s = obtainStyledAttributes.getFloat(R$styleable.MaxHeightLayout_mhl_heightRatio, 0.6f);
        this.f47103t = obtainStyledAttributes.getDimension(R$styleable.MaxHeightLayout_mhl_heightDimen, 0.0f);
        obtainStyledAttributes.recycle();
        B();
    }
}
