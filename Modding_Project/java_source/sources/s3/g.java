package s3;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RotationOptions.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRotationOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RotationOptions.kt\ncom/facebook/imagepipeline/common/RotationOptions\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1#2:134\n*E\n"})
/* loaded from: classes3.dex */
public final class g {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f66295c = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final g f66296d = new g(-1, false);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final g f66297e = new g(-2, false);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final g f66298f = new g(-1, true);

    /* renamed from: a  reason: collision with root package name */
    private final int f66299a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f66300b;

    /* compiled from: RotationOptions.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final g a() {
            return g.f66296d;
        }

        @NotNull
        public final g b() {
            return g.f66298f;
        }

        private a() {
        }
    }

    private g(int i10, boolean z10) {
        this.f66299a = i10;
        this.f66300b = z10;
    }

    @NotNull
    public static final g c() {
        return f66295c.a();
    }

    @NotNull
    public static final g d() {
        return f66295c.b();
    }

    public final boolean e() {
        return this.f66300b;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f66299a == gVar.f66299a && this.f66300b == gVar.f66300b) {
            return true;
        }
        return false;
    }

    public final int f() {
        if (!h()) {
            return this.f66299a;
        }
        throw new IllegalStateException("Rotation is set to use EXIF");
    }

    public final boolean g() {
        if (this.f66299a != -2) {
            return true;
        }
        return false;
    }

    public final boolean h() {
        if (this.f66299a == -1) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return r2.a.b(Integer.valueOf(this.f66299a), Boolean.valueOf(this.f66300b));
    }

    @NotNull
    public String toString() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(null, "%d defer:%b", Arrays.copyOf(new Object[]{Integer.valueOf(this.f66299a), Boolean.valueOf(this.f66300b)}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }
}
