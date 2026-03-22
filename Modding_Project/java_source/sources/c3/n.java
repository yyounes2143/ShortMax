package c3;

import android.graphics.Canvas;
import android.graphics.drawable.NinePatchDrawable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RoundedNinePatchDrawable.kt */
@Metadata
/* loaded from: classes3.dex */
public final class n extends m {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(@NotNull NinePatchDrawable ninePatchDrawable) {
        super(ninePatchDrawable);
        Intrinsics.checkNotNullParameter(ninePatchDrawable, "ninePatchDrawable");
    }

    @Override // c3.m, android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (f4.b.d()) {
            f4.b.a("RoundedNinePatchDrawable#draw");
        }
        if (!j()) {
            super.draw(canvas);
            if (f4.b.d()) {
                f4.b.b();
                return;
            }
            return;
        }
        n();
        k();
        canvas.clipPath(this.f2990e);
        super.draw(canvas);
        if (f4.b.d()) {
            f4.b.b();
        }
    }
}
