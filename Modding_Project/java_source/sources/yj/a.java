package yj;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StateDrawable.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a extends Drawable {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private ColorStateList f70991a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Paint f70992b;

    /* renamed from: c  reason: collision with root package name */
    private int f70993c;

    /* renamed from: d  reason: collision with root package name */
    private int f70994d;

    public a(@NotNull ColorStateList tintStateList) {
        Intrinsics.checkNotNullParameter(tintStateList, "tintStateList");
        this.f70994d = 255;
        c(tintStateList);
        this.f70992b = new Paint(1);
    }

    private final boolean d(int[] iArr) {
        int i10;
        ColorStateList colorStateList = this.f70991a;
        if (colorStateList != null) {
            i10 = colorStateList.getColorForState(iArr, this.f70993c);
        } else {
            i10 = 0;
        }
        if (i10 == this.f70993c) {
            return false;
        }
        this.f70993c = i10;
        invalidateSelf();
        return true;
    }

    public abstract void a(@NotNull Canvas canvas, @NotNull Paint paint);

    public final int b(int i10) {
        int i11 = this.f70994d;
        return (i10 * (i11 + (i11 >> 7))) >> 8;
    }

    public final void c(@NotNull ColorStateList tintStateList) {
        Intrinsics.checkNotNullParameter(tintStateList, "tintStateList");
        this.f70991a = tintStateList;
        this.f70993c = tintStateList.getDefaultColor();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        this.f70992b.setColor(this.f70993c);
        this.f70992b.setAlpha(b(Color.alpha(this.f70993c)));
        a(canvas, this.f70992b);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f70994d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        boolean z10;
        ColorStateList colorStateList = this.f70991a;
        if (colorStateList != null) {
            z10 = colorStateList.isStateful();
        } else {
            z10 = false;
        }
        if (!z10 && !super.isStateful()) {
            return false;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f70994d = i10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f70992b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(@NotNull int[] stateSet) {
        Intrinsics.checkNotNullParameter(stateSet, "stateSet");
        boolean state = super.setState(stateSet);
        if (!d(stateSet) && !state) {
            return false;
        }
        return true;
    }
}
