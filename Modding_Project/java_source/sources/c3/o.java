package c3;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ScaleTypeDrawable.kt */
@Metadata
/* loaded from: classes3.dex */
public final class o extends g {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private q f3012e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Object f3013f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public PointF f3014g;

    /* renamed from: h  reason: collision with root package name */
    public int f3015h;

    /* renamed from: i  reason: collision with root package name */
    public int f3016i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public Matrix f3017j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final Matrix f3018k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(@Nullable Drawable drawable, @NotNull q scaleType) {
        super(drawable);
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        this.f3018k = new Matrix();
        this.f3012e = scaleType;
    }

    private final void u() {
        boolean z10;
        q qVar = this.f3012e;
        if (qVar instanceof c0) {
            Intrinsics.checkNotNull(qVar, "null cannot be cast to non-null type com.facebook.drawee.drawable.ScalingUtils.StatefulScaleType");
            Object state = ((c0) qVar).getState();
            Intrinsics.checkNotNullExpressionValue(state, "getState(...)");
            z10 = !Intrinsics.areEqual(state, this.f3013f);
            this.f3013f = state;
        } else {
            z10 = false;
        }
        Drawable current = getCurrent();
        if (current == null) {
            return;
        }
        if (this.f3015h != current.getIntrinsicWidth() || this.f3016i != current.getIntrinsicHeight() || z10) {
            t();
        }
    }

    @Override // c3.g, android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        u();
        if (this.f3017j != null) {
            int save = canvas.save();
            canvas.clipRect(getBounds());
            canvas.concat(this.f3017j);
            super.draw(canvas);
            canvas.restoreToCount(save);
            return;
        }
        super.draw(canvas);
    }

    @Override // c3.g, c3.e0
    public void j(@NotNull Matrix transform) {
        Intrinsics.checkNotNullParameter(transform, "transform");
        p(transform);
        u();
        Matrix matrix = this.f3017j;
        if (matrix != null) {
            transform.preConcat(matrix);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // c3.g, android.graphics.drawable.Drawable
    public void onBoundsChange(@NotNull Rect bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        t();
    }

    @Override // c3.g
    @Nullable
    public Drawable q(@Nullable Drawable drawable) {
        Drawable q10 = super.q(drawable);
        t();
        return q10;
    }

    @VisibleForTesting
    public final void t() {
        float f10;
        float f11;
        Drawable current = getCurrent();
        if (current == null) {
            this.f3016i = 0;
            this.f3015h = 0;
            this.f3017j = null;
            return;
        }
        Rect bounds = getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "getBounds(...)");
        int width = bounds.width();
        int height = bounds.height();
        int intrinsicWidth = current.getIntrinsicWidth();
        this.f3015h = intrinsicWidth;
        int intrinsicHeight = current.getIntrinsicHeight();
        this.f3016i = intrinsicHeight;
        if (intrinsicWidth > 0 && intrinsicHeight > 0) {
            if (intrinsicWidth == width && intrinsicHeight == height) {
                current.setBounds(bounds);
                this.f3017j = null;
                return;
            } else if (this.f3012e == q.f3019a) {
                current.setBounds(bounds);
                this.f3017j = null;
                return;
            } else {
                current.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
                this.f3018k.reset();
                q qVar = this.f3012e;
                Matrix matrix = this.f3018k;
                PointF pointF = this.f3014g;
                if (pointF != null) {
                    Intrinsics.checkNotNull(pointF);
                    f10 = pointF.x;
                } else {
                    f10 = 0.5f;
                }
                PointF pointF2 = this.f3014g;
                if (pointF2 != null) {
                    Intrinsics.checkNotNull(pointF2);
                    f11 = pointF2.y;
                } else {
                    f11 = 0.5f;
                }
                qVar.a(matrix, bounds, intrinsicWidth, intrinsicHeight, f10, f11);
                this.f3017j = this.f3018k;
                return;
            }
        }
        current.setBounds(bounds);
        this.f3017j = null;
    }

    @Nullable
    public final PointF v() {
        return this.f3014g;
    }

    @NotNull
    public final q w() {
        return this.f3012e;
    }

    public final void x(@Nullable PointF pointF) {
        if (k2.f.a(this.f3014g, pointF)) {
            return;
        }
        if (pointF == null) {
            this.f3014g = null;
        } else {
            if (this.f3014g == null) {
                this.f3014g = new PointF();
            }
            PointF pointF2 = this.f3014g;
            Intrinsics.checkNotNull(pointF2);
            pointF2.set(pointF);
        }
        t();
        invalidateSelf();
    }

    public final void y(@NotNull q scaleType) {
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        if (k2.f.a(this.f3012e, scaleType)) {
            return;
        }
        this.f3012e = scaleType;
        this.f3013f = null;
        t();
        invalidateSelf();
    }
}
