package yj;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ThumbDrawable.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b extends yj.a implements Animatable {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final a f70995j = new a(null);

    /* renamed from: e  reason: collision with root package name */
    private int f70996e;

    /* renamed from: f  reason: collision with root package name */
    private int f70997f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f70998g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f70999h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private Bitmap f71000i;

    /* compiled from: ThumbDrawable.kt */
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
    public b(@NotNull ColorStateList tintStateList, int i10, int i11, @NotNull Bitmap bitmap) {
        super(tintStateList);
        Intrinsics.checkNotNullParameter(tintStateList, "tintStateList");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        this.f70996e = i10;
        this.f70997f = i11;
        this.f71000i = bitmap;
    }

    @Override // yj.a
    public void a(@NotNull Canvas canvas, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Rect bounds = getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "getBounds(...)");
        if (this.f70998g) {
            canvas.drawBitmap(this.f71000i, (Rect) null, bounds, (Paint) null);
            return;
        }
        paint.setColor(-7829368);
        canvas.drawCircle(bounds.centerX(), bounds.centerY(), this.f70997f / 2.0f, paint);
    }

    public final void e() {
        this.f70999h = false;
    }

    public final void f(boolean z10) {
        this.f70998g = z10;
    }

    public final void g(int i10, int i11) {
        this.f70996e = i10;
        this.f70997f = i11;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f70996e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f70996e;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f70999h;
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        e();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
    }
}
