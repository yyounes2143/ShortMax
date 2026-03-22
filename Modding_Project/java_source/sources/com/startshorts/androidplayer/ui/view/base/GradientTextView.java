package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GradientTextView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class GradientTextView extends BaseTextView {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f47088e = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private int f47089b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private int[] f47090c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private float[] f47091d;

    /* compiled from: GradientTextView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GradientTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void d() {
        float width;
        int[] iArr = this.f47090c;
        if (iArr != null && iArr != null) {
            if (this.f47089b != 0) {
                width = 0.0f;
            } else {
                width = getWidth();
            }
            getPaint().setShader(new LinearGradient(0.0f, 0.0f, width, getLineHeight(), iArr, this.f47091d, Shader.TileMode.CLAMP));
            invalidate();
        }
    }

    @Nullable
    public final int[] getColors() {
        return this.f47090c;
    }

    @Nullable
    public final float[] getPositions() {
        return this.f47091d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10) {
            d();
        }
    }

    public final void setColor(@ColorInt int i10, @ColorInt int i11) {
        setColor(i10, i11, 0);
    }

    public final void setColors(@Nullable int[] iArr) {
        this.f47090c = iArr;
    }

    public final void setPositions(@Nullable float[] fArr) {
        this.f47091d = fArr;
    }

    public final void setColor(@ColorInt int i10, @ColorInt int i11, int i12) {
        this.f47090c = new int[]{i10, i11};
        this.f47089b = i12;
        d();
    }

    public final void setColor(@NotNull int[] _colors, @Nullable float[] fArr, int i10) {
        Intrinsics.checkNotNullParameter(_colors, "_colors");
        this.f47090c = _colors;
        this.f47091d = fArr;
        this.f47089b = i10;
        d();
    }
}
