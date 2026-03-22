package coil.drawable;

import android.content.res.ColorStateList;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import coil.size.Scale;
import d0.f;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.e;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CrossfadeDrawable.kt */
@Metadata
/* loaded from: classes2.dex */
public final class CrossfadeDrawable extends Drawable implements Drawable.Callback, Animatable2Compat {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f3938m = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Scale f3939a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3940b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f3941c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f3942d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final List<Animatable2Compat.AnimationCallback> f3943e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private final int f3944f;

    /* renamed from: g  reason: collision with root package name */
    private final int f3945g;

    /* renamed from: h  reason: collision with root package name */
    private long f3946h;

    /* renamed from: i  reason: collision with root package name */
    private int f3947i;

    /* renamed from: j  reason: collision with root package name */
    private int f3948j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private Drawable f3949k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final Drawable f3950l;

    /* compiled from: CrossfadeDrawable.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public CrossfadeDrawable(@Nullable Drawable drawable, @Nullable Drawable drawable2, @NotNull Scale scale, int i10, boolean z10, boolean z11) {
        Integer num;
        Integer num2;
        Integer num3;
        Integer num4;
        Drawable drawable3;
        this.f3939a = scale;
        this.f3940b = i10;
        this.f3941c = z10;
        this.f3942d = z11;
        if (drawable != null) {
            num = Integer.valueOf(drawable.getIntrinsicWidth());
        } else {
            num = null;
        }
        if (drawable2 != null) {
            num2 = Integer.valueOf(drawable2.getIntrinsicWidth());
        } else {
            num2 = null;
        }
        this.f3944f = a(num, num2);
        if (drawable != null) {
            num3 = Integer.valueOf(drawable.getIntrinsicHeight());
        } else {
            num3 = null;
        }
        if (drawable2 != null) {
            num4 = Integer.valueOf(drawable2.getIntrinsicHeight());
        } else {
            num4 = null;
        }
        this.f3945g = a(num3, num4);
        this.f3947i = 255;
        if (drawable != null) {
            drawable3 = drawable.mutate();
        } else {
            drawable3 = null;
        }
        this.f3949k = drawable3;
        Drawable mutate = drawable2 != null ? drawable2.mutate() : null;
        this.f3950l = mutate;
        if (i10 > 0) {
            Drawable drawable4 = this.f3949k;
            if (drawable4 != null) {
                drawable4.setCallback(this);
            }
            if (mutate != null) {
                mutate.setCallback(this);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("durationMillis must be > 0.");
    }

    private final int a(Integer num, Integer num2) {
        int i10;
        int i11 = -1;
        if (!this.f3942d && ((num != null && num.intValue() == -1) || (num2 != null && num2.intValue() == -1))) {
            return -1;
        }
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = -1;
        }
        if (num2 != null) {
            i11 = num2.intValue();
        }
        return Math.max(i10, i11);
    }

    private final void b() {
        this.f3948j = 2;
        this.f3949k = null;
        List<Animatable2Compat.AnimationCallback> list = this.f3943e;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.get(i10).onAnimationEnd(this);
        }
    }

    @VisibleForTesting
    public final void c(@NotNull Drawable drawable, @NotNull Rect rect) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth > 0 && intrinsicHeight > 0) {
            int width = rect.width();
            int height = rect.height();
            double c10 = f.c(intrinsicWidth, intrinsicHeight, width, height, this.f3939a);
            double d10 = 2;
            int b10 = bt.a.b((width - (intrinsicWidth * c10)) / d10);
            int b11 = bt.a.b((height - (c10 * intrinsicHeight)) / d10);
            drawable.setBounds(rect.left + b10, rect.top + b11, rect.right - b10, rect.bottom - b11);
            return;
        }
        drawable.setBounds(rect);
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void clearAnimationCallbacks() {
        this.f3943e.clear();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        boolean z10;
        int save;
        Drawable drawable;
        int i10 = this.f3948j;
        if (i10 == 0) {
            Drawable drawable2 = this.f3949k;
            if (drawable2 != null) {
                drawable2.setAlpha(this.f3947i);
                save = canvas.save();
                try {
                    drawable2.draw(canvas);
                } finally {
                }
            }
        } else if (i10 == 2) {
            Drawable drawable3 = this.f3950l;
            if (drawable3 != null) {
                drawable3.setAlpha(this.f3947i);
                save = canvas.save();
                try {
                    drawable3.draw(canvas);
                } finally {
                }
            }
        } else {
            double uptimeMillis = (SystemClock.uptimeMillis() - this.f3946h) / this.f3940b;
            double l10 = e.l(uptimeMillis, 0.0d, 1.0d);
            int i11 = this.f3947i;
            int i12 = (int) (l10 * i11);
            if (this.f3941c) {
                i11 -= i12;
            }
            if (uptimeMillis >= 1.0d) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10 && (drawable = this.f3949k) != null) {
                drawable.setAlpha(i11);
                save = canvas.save();
                try {
                    drawable.draw(canvas);
                } finally {
                }
            }
            Drawable drawable4 = this.f3950l;
            if (drawable4 != null) {
                drawable4.setAlpha(i12);
                save = canvas.save();
                try {
                    drawable4.draw(canvas);
                } finally {
                }
            }
            if (z10) {
                b();
            } else {
                invalidateSelf();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f3947i;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        ColorFilter colorFilter;
        Drawable drawable;
        int i10 = this.f3948j;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2 || (drawable = this.f3950l) == null) {
                    return null;
                }
                return drawable.getColorFilter();
            }
            Drawable drawable2 = this.f3950l;
            if (drawable2 != null && (colorFilter = drawable2.getColorFilter()) != null) {
                return colorFilter;
            }
            Drawable drawable3 = this.f3949k;
            if (drawable3 == null) {
                return null;
            }
            return drawable3.getColorFilter();
        }
        Drawable drawable4 = this.f3949k;
        if (drawable4 == null) {
            return null;
        }
        return drawable4.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f3945g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f3944f;
    }

    @Override // android.graphics.drawable.Drawable
    @c
    public int getOpacity() {
        Drawable drawable = this.f3949k;
        Drawable drawable2 = this.f3950l;
        int i10 = this.f3948j;
        if (i10 == 0) {
            if (drawable == null) {
                return -2;
            }
            return drawable.getOpacity();
        } else if (i10 == 2) {
            if (drawable2 == null) {
                return -2;
            }
            return drawable2.getOpacity();
        } else if (drawable != null && drawable2 != null) {
            return Drawable.resolveOpacity(drawable.getOpacity(), drawable2.getOpacity());
        } else {
            if (drawable != null) {
                return drawable.getOpacity();
            }
            if (drawable2 == null) {
                return -2;
            }
            return drawable2.getOpacity();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NotNull Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        if (this.f3948j == 1) {
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(@NotNull Rect rect) {
        Drawable drawable = this.f3949k;
        if (drawable != null) {
            c(drawable, rect);
        }
        Drawable drawable2 = this.f3950l;
        if (drawable2 != null) {
            c(drawable2, rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i10) {
        boolean z10;
        boolean z11;
        Drawable drawable = this.f3949k;
        if (drawable != null) {
            z10 = drawable.setLevel(i10);
        } else {
            z10 = false;
        }
        Drawable drawable2 = this.f3950l;
        if (drawable2 != null) {
            z11 = drawable2.setLevel(i10);
        } else {
            z11 = false;
        }
        if (!z10 && !z11) {
            return false;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(@NotNull int[] iArr) {
        boolean z10;
        boolean z11;
        Drawable drawable = this.f3949k;
        if (drawable != null) {
            z10 = drawable.setState(iArr);
        } else {
            z10 = false;
        }
        Drawable drawable2 = this.f3950l;
        if (drawable2 != null) {
            z11 = drawable2.setState(iArr);
        } else {
            z11 = false;
        }
        if (!z10 && !z11) {
            return false;
        }
        return true;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void registerAnimationCallback(@NotNull Animatable2Compat.AnimationCallback animationCallback) {
        this.f3943e.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NotNull Drawable drawable, @NotNull Runnable runnable, long j10) {
        scheduleSelf(runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (i10 >= 0 && i10 < 256) {
            this.f3947i = i10;
            return;
        }
        throw new IllegalArgumentException(("Invalid alpha: " + i10).toString());
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        Drawable drawable = this.f3949k;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        Drawable drawable2 = this.f3950l;
        if (drawable2 != null) {
            drawable2.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i10) {
        Drawable drawable = this.f3949k;
        if (drawable != null) {
            drawable.setTint(i10);
        }
        Drawable drawable2 = this.f3950l;
        if (drawable2 != null) {
            drawable2.setTint(i10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(29)
    public void setTintBlendMode(@Nullable BlendMode blendMode) {
        Drawable drawable = this.f3949k;
        if (drawable != null) {
            drawable.setTintBlendMode(blendMode);
        }
        Drawable drawable2 = this.f3950l;
        if (drawable2 != null) {
            drawable2.setTintBlendMode(blendMode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.f3949k;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
        }
        Drawable drawable2 = this.f3950l;
        if (drawable2 != null) {
            drawable2.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        Drawable drawable = this.f3949k;
        if (drawable != null) {
            drawable.setTintMode(mode);
        }
        Drawable drawable2 = this.f3950l;
        if (drawable2 != null) {
            drawable2.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Animatable animatable;
        Drawable drawable = this.f3949k;
        Animatable animatable2 = null;
        if (drawable instanceof Animatable) {
            animatable = (Animatable) drawable;
        } else {
            animatable = null;
        }
        if (animatable != null) {
            animatable.start();
        }
        Drawable drawable2 = this.f3950l;
        if (drawable2 instanceof Animatable) {
            animatable2 = (Animatable) drawable2;
        }
        if (animatable2 != null) {
            animatable2.start();
        }
        if (this.f3948j != 0) {
            return;
        }
        this.f3948j = 1;
        this.f3946h = SystemClock.uptimeMillis();
        List<Animatable2Compat.AnimationCallback> list = this.f3943e;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.get(i10).onAnimationStart(this);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Animatable animatable;
        Drawable drawable = this.f3949k;
        Animatable animatable2 = null;
        if (drawable instanceof Animatable) {
            animatable = (Animatable) drawable;
        } else {
            animatable = null;
        }
        if (animatable != null) {
            animatable.stop();
        }
        Drawable drawable2 = this.f3950l;
        if (drawable2 instanceof Animatable) {
            animatable2 = (Animatable) drawable2;
        }
        if (animatable2 != null) {
            animatable2.stop();
        }
        if (this.f3948j != 2) {
            b();
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public boolean unregisterAnimationCallback(@NotNull Animatable2Compat.AnimationCallback animationCallback) {
        return this.f3943e.remove(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NotNull Drawable drawable, @NotNull Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
