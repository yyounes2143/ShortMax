package c3;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OrientedDrawable.kt */
@Metadata
/* loaded from: classes3.dex */
public final class i extends g {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final Matrix f2966e;

    /* renamed from: f  reason: collision with root package name */
    private final int f2967f;

    /* renamed from: g  reason: collision with root package name */
    private final int f2968g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final Matrix f2969h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final RectF f2970i;

    public i(@Nullable Drawable drawable, int i10, int i11) {
        super(drawable);
        this.f2966e = new Matrix();
        this.f2967f = i10 - (i10 % 90);
        this.f2968g = (i11 < 0 || i11 > 8) ? 0 : 0;
        this.f2969h = new Matrix();
        this.f2970i = new RectF();
    }

    @Override // c3.g, android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        int i10;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.f2967f <= 0 && ((i10 = this.f2968g) == 0 || i10 == 1)) {
            super.draw(canvas);
            return;
        }
        int save = canvas.save();
        canvas.concat(this.f2966e);
        super.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // c3.g, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        int i10 = this.f2968g;
        if (i10 != 5 && i10 != 7 && this.f2967f % 180 == 0) {
            return super.getIntrinsicHeight();
        }
        return super.getIntrinsicWidth();
    }

    @Override // c3.g, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        int i10 = this.f2968g;
        if (i10 != 5 && i10 != 7 && this.f2967f % 180 == 0) {
            return super.getIntrinsicWidth();
        }
        return super.getIntrinsicHeight();
    }

    @Override // c3.g, c3.e0
    public void j(@NotNull Matrix transform) {
        Intrinsics.checkNotNullParameter(transform, "transform");
        p(transform);
        if (!this.f2966e.isIdentity()) {
            transform.preConcat(this.f2966e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // c3.g, android.graphics.drawable.Drawable
    public void onBoundsChange(@NotNull Rect bounds) {
        int i10;
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        Drawable current = getCurrent();
        if (current == null) {
            return;
        }
        int i11 = this.f2967f;
        if (i11 <= 0 && ((i10 = this.f2968g) == 0 || i10 == 1)) {
            current.setBounds(bounds);
            return;
        }
        int i12 = this.f2968g;
        if (i12 != 2) {
            if (i12 != 7) {
                if (i12 != 4) {
                    if (i12 != 5) {
                        this.f2966e.setRotate(i11, bounds.centerX(), bounds.centerY());
                    } else {
                        this.f2966e.setRotate(270.0f, bounds.centerX(), bounds.centerY());
                        this.f2966e.postScale(1.0f, -1.0f);
                    }
                } else {
                    this.f2966e.setScale(1.0f, -1.0f);
                }
            } else {
                this.f2966e.setRotate(270.0f, bounds.centerX(), bounds.centerY());
                this.f2966e.postScale(-1.0f, 1.0f);
            }
        } else {
            this.f2966e.setScale(-1.0f, 1.0f);
        }
        this.f2969h.reset();
        this.f2966e.invert(this.f2969h);
        this.f2970i.set(bounds);
        this.f2969h.mapRect(this.f2970i);
        RectF rectF = this.f2970i;
        current.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }
}
