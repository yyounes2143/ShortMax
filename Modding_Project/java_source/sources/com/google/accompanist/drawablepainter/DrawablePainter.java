package com.google.accompanist.drawablepainter;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidColorFilter_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.unit.LayoutDirection;
import com.google.accompanist.drawablepainter.DrawablePainter$callback$2;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DrawablePainter.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes2.dex */
public final class DrawablePainter extends Painter implements RememberObserver {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Drawable f16921a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final MutableState f16922b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final MutableState f16923c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final i f16924d;

    /* compiled from: DrawablePainter.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            iArr[LayoutDirection.Ltr.ordinal()] = 1;
            iArr[LayoutDirection.Rtl.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public DrawablePainter(@NotNull Drawable drawable) {
        MutableState mutableStateOf$default;
        long c10;
        MutableState mutableStateOf$default2;
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        this.f16921a = drawable;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(0, null, 2, null);
        this.f16922b = mutableStateOf$default;
        c10 = DrawablePainterKt.c(drawable);
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Size.m1663boximpl(c10), null, 2, null);
        this.f16923c = mutableStateOf$default2;
        this.f16924d = c.b(new Function0<DrawablePainter$callback$2.a>() { // from class: com.google.accompanist.drawablepainter.DrawablePainter$callback$2

            /* compiled from: DrawablePainter.kt */
            @Metadata
            /* loaded from: classes2.dex */
            public static final class a implements Drawable.Callback {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ DrawablePainter f16926a;

                a(DrawablePainter drawablePainter) {
                    this.f16926a = drawablePainter;
                }

                @Override // android.graphics.drawable.Drawable.Callback
                public void invalidateDrawable(@NotNull Drawable d10) {
                    int e10;
                    long c10;
                    Intrinsics.checkNotNullParameter(d10, "d");
                    DrawablePainter drawablePainter = this.f16926a;
                    e10 = drawablePainter.e();
                    drawablePainter.h(e10 + 1);
                    DrawablePainter drawablePainter2 = this.f16926a;
                    c10 = DrawablePainterKt.c(drawablePainter2.f());
                    drawablePainter2.i(c10);
                }

                @Override // android.graphics.drawable.Drawable.Callback
                public void scheduleDrawable(@NotNull Drawable d10, @NotNull Runnable what, long j10) {
                    Handler d11;
                    Intrinsics.checkNotNullParameter(d10, "d");
                    Intrinsics.checkNotNullParameter(what, "what");
                    d11 = DrawablePainterKt.d();
                    d11.postAtTime(what, j10);
                }

                @Override // android.graphics.drawable.Drawable.Callback
                public void unscheduleDrawable(@NotNull Drawable d10, @NotNull Runnable what) {
                    Handler d11;
                    Intrinsics.checkNotNullParameter(d10, "d");
                    Intrinsics.checkNotNullParameter(what, "what");
                    d11 = DrawablePainterKt.d();
                    d11.removeCallbacks(what);
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: b */
            public final a invoke() {
                return new a(DrawablePainter.this);
            }
        });
        if (drawable.getIntrinsicWidth() >= 0 && drawable.getIntrinsicHeight() >= 0) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
    }

    private final Drawable.Callback d() {
        return (Drawable.Callback) this.f16924d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int e() {
        return ((Number) this.f16922b.getValue()).intValue();
    }

    private final long g() {
        return ((Size) this.f16923c.getValue()).m1680unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(int i10) {
        this.f16922b.setValue(Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(long j10) {
        this.f16923c.setValue(Size.m1663boximpl(j10));
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyAlpha(float f10) {
        this.f16921a.setAlpha(e.n(bt.a.c(f10 * 255), 0, 255));
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyColorFilter(@Nullable ColorFilter colorFilter) {
        android.graphics.ColorFilter colorFilter2;
        Drawable drawable = this.f16921a;
        if (colorFilter != null) {
            colorFilter2 = AndroidColorFilter_androidKt.asAndroidColorFilter(colorFilter);
        } else {
            colorFilter2 = null;
        }
        drawable.setColorFilter(colorFilter2);
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyLayoutDirection(@NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Drawable drawable = this.f16921a;
        int i10 = a.$EnumSwitchMapping$0[layoutDirection.ordinal()];
        int i11 = 1;
        if (i10 != 1) {
            if (i10 != 2) {
                throw new NoWhenBranchMatchedException();
            }
        } else {
            i11 = 0;
        }
        return drawable.setLayoutDirection(i11);
    }

    @NotNull
    public final Drawable f() {
        return this.f16921a;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public long mo2405getIntrinsicSizeNHjbRc() {
        return g();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        onForgotten();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.graphics.painter.Painter
    public void onDraw(@NotNull DrawScope drawScope) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Canvas canvas = drawScope.getDrawContext().getCanvas();
        e();
        this.f16921a.setBounds(0, 0, bt.a.c(Size.m1675getWidthimpl(drawScope.mo2336getSizeNHjbRc())), bt.a.c(Size.m1672getHeightimpl(drawScope.mo2336getSizeNHjbRc())));
        try {
            canvas.save();
            this.f16921a.draw(AndroidCanvas_androidKt.getNativeCanvas(canvas));
        } finally {
            canvas.restore();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        Drawable drawable = this.f16921a;
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        this.f16921a.setVisible(false, false);
        this.f16921a.setCallback(null);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        this.f16921a.setCallback(d());
        this.f16921a.setVisible(true, true);
        Drawable drawable = this.f16921a;
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).start();
        }
    }
}
