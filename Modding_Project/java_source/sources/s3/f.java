package s3;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ResizeOptions.kt */
@Metadata
/* loaded from: classes3.dex */
public final class f {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f66290e = new a(null);

    /* renamed from: a  reason: collision with root package name */
    public final int f66291a;

    /* renamed from: b  reason: collision with root package name */
    public final int f66292b;

    /* renamed from: c  reason: collision with root package name */
    public final float f66293c;

    /* renamed from: d  reason: collision with root package name */
    public final float f66294d;

    /* compiled from: ResizeOptions.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public f(int i10, int i11, float f10, float f11) {
        this.f66291a = i10;
        this.f66292b = i11;
        this.f66293c = f10;
        this.f66294d = f11;
        if (i10 <= 0) {
            throw new IllegalStateException("Check failed.");
        }
        if (i11 <= 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (this.f66291a == fVar.f66291a && this.f66292b == fVar.f66292b) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return r2.a.a(this.f66291a, this.f66292b);
    }

    @NotNull
    public String toString() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(null, "%dx%d", Arrays.copyOf(new Object[]{Integer.valueOf(this.f66291a), Integer.valueOf(this.f66292b)}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    public /* synthetic */ f(int i10, int i11, float f10, float f11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, (i12 & 4) != 0 ? 2048.0f : f10, (i12 & 8) != 0 ? 0.6666667f : f11);
    }
}
