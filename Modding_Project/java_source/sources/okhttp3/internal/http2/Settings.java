package okhttp3.internal.http2;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Settings.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Settings {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final Companion f64091c = new Companion(null);

    /* renamed from: a  reason: collision with root package name */
    private int f64092a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final int[] f64093b = new int[10];

    /* compiled from: Settings.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final int a(int i10) {
        return this.f64093b[i10];
    }

    public final int b() {
        if ((this.f64092a & 2) != 0) {
            return this.f64093b[1];
        }
        return -1;
    }

    public final int c() {
        if ((this.f64092a & 128) != 0) {
            return this.f64093b[7];
        }
        return 65535;
    }

    public final int d() {
        if ((this.f64092a & 16) != 0) {
            return this.f64093b[4];
        }
        return Integer.MAX_VALUE;
    }

    public final int e(int i10) {
        if ((this.f64092a & 32) != 0) {
            return this.f64093b[5];
        }
        return i10;
    }

    public final boolean f(int i10) {
        if (((1 << i10) & this.f64092a) != 0) {
            return true;
        }
        return false;
    }

    public final void g(@NotNull Settings other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (int i10 = 0; i10 < 10; i10++) {
            if (other.f(i10)) {
                h(i10, other.a(i10));
            }
        }
    }

    @NotNull
    public final Settings h(int i10, int i11) {
        if (i10 >= 0) {
            int[] iArr = this.f64093b;
            if (i10 < iArr.length) {
                this.f64092a = (1 << i10) | this.f64092a;
                iArr[i10] = i11;
            }
        }
        return this;
    }

    public final int i() {
        return Integer.bitCount(this.f64092a);
    }
}
