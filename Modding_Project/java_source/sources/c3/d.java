package c3;

import android.annotation.SuppressLint;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import com.mbridge.msdk.foundation.download.Command;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DrawableProperties.kt */
@Metadata
/* loaded from: classes3.dex */
public final class d {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f2935f = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private boolean f2937b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ColorFilter f2938c;

    /* renamed from: a  reason: collision with root package name */
    private int f2936a = -1;

    /* renamed from: d  reason: collision with root package name */
    private int f2939d = -1;

    /* renamed from: e  reason: collision with root package name */
    private int f2940e = -1;

    /* compiled from: DrawableProperties.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @SuppressLint({Command.HTTP_HEADER_RANGE})
    public final void a(@Nullable Drawable drawable) {
        boolean z10;
        if (drawable == null) {
            return;
        }
        int i10 = this.f2936a;
        if (i10 != -1) {
            drawable.setAlpha(i10);
        }
        if (this.f2937b) {
            drawable.setColorFilter(this.f2938c);
        }
        int i11 = this.f2939d;
        boolean z11 = false;
        if (i11 != -1) {
            if (i11 != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            drawable.setDither(z10);
        }
        int i12 = this.f2940e;
        if (i12 != -1) {
            if (i12 != 0) {
                z11 = true;
            }
            drawable.setFilterBitmap(z11);
        }
    }

    public final void b(int i10) {
        this.f2936a = i10;
    }

    public final void c(@Nullable ColorFilter colorFilter) {
        boolean z10;
        this.f2938c = colorFilter;
        if (colorFilter != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f2937b = z10;
    }

    public final void d(boolean z10) {
        this.f2939d = z10 ? 1 : 0;
    }

    public final void e(boolean z10) {
        this.f2940e = z10 ? 1 : 0;
    }
}
