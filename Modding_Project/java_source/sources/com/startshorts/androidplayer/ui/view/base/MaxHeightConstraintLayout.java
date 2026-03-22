package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.startshorts.androidplayer.R$styleable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MaxHeightConstraintLayout.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MaxHeightConstraintLayout extends ConstraintLayout {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f47096d = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private int f47097a;

    /* renamed from: b  reason: collision with root package name */
    private float f47098b;

    /* renamed from: c  reason: collision with root package name */
    private float f47099c;

    /* compiled from: MaxHeightConstraintLayout.kt */
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
    public MaxHeightConstraintLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void q() {
        if (this.f47097a == 0) {
            float f10 = this.f47098b;
            a aVar = f47096d;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            this.f47099c = f10 * aVar.b(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        float f10 = this.f47099c;
        if (size > f10) {
            size = (int) f10;
        }
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(size, mode));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MaxHeightConstraintLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ MaxHeightConstraintLayout(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaxHeightConstraintLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47098b = 0.6f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MaxHeightLayout);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.f47097a = obtainStyledAttributes.getInteger(R$styleable.MaxHeightLayout_mhl_heightMode, 0);
        this.f47098b = obtainStyledAttributes.getFloat(R$styleable.MaxHeightLayout_mhl_heightRatio, 0.6f);
        this.f47099c = obtainStyledAttributes.getDimension(R$styleable.MaxHeightLayout_mhl_heightDimen, 0.0f);
        obtainStyledAttributes.recycle();
        q();
    }
}
