package wt;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ut.m;
/* compiled from: JsonPath.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private Object[] f70298a = new Object[8];
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private int[] f70299b;

    /* renamed from: c  reason: collision with root package name */
    private int f70300c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JsonPath.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f70301a = new a();

        private a() {
        }
    }

    public e0() {
        int[] iArr = new int[8];
        for (int i10 = 0; i10 < 8; i10++) {
            iArr[i10] = -1;
        }
        this.f70299b = iArr;
        this.f70300c = -1;
    }

    private final void e() {
        int i10 = this.f70300c * 2;
        Object[] copyOf = Arrays.copyOf(this.f70298a, i10);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        this.f70298a = copyOf;
        int[] copyOf2 = Arrays.copyOf(this.f70299b, i10);
        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
        this.f70299b = copyOf2;
    }

    @NotNull
    public final String a() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("$");
        int i10 = this.f70300c + 1;
        for (int i11 = 0; i11 < i10; i11++) {
            Object obj = this.f70298a[i11];
            if (obj instanceof SerialDescriptor) {
                SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
                if (Intrinsics.areEqual(serialDescriptor.getKind(), m.b.f68629a)) {
                    if (this.f70299b[i11] != -1) {
                        sb2.append("[");
                        sb2.append(this.f70299b[i11]);
                        sb2.append("]");
                    }
                } else {
                    int i12 = this.f70299b[i11];
                    if (i12 >= 0) {
                        sb2.append(".");
                        sb2.append(serialDescriptor.f(i12));
                    }
                }
            } else if (obj != a.f70301a) {
                sb2.append("[");
                sb2.append("'");
                sb2.append(obj);
                sb2.append("'");
                sb2.append("]");
            }
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public final void b() {
        int i10 = this.f70300c;
        int[] iArr = this.f70299b;
        if (iArr[i10] == -2) {
            iArr[i10] = -1;
            this.f70300c = i10 - 1;
        }
        int i11 = this.f70300c;
        if (i11 != -1) {
            this.f70300c = i11 - 1;
        }
    }

    public final void c(@NotNull SerialDescriptor sd2) {
        Intrinsics.checkNotNullParameter(sd2, "sd");
        int i10 = this.f70300c + 1;
        this.f70300c = i10;
        if (i10 == this.f70298a.length) {
            e();
        }
        this.f70298a[i10] = sd2;
    }

    public final void d() {
        int[] iArr = this.f70299b;
        int i10 = this.f70300c;
        if (iArr[i10] == -2) {
            this.f70298a[i10] = a.f70301a;
        }
    }

    public final void f(@Nullable Object obj) {
        int[] iArr = this.f70299b;
        int i10 = this.f70300c;
        if (iArr[i10] != -2) {
            int i11 = i10 + 1;
            this.f70300c = i11;
            if (i11 == this.f70298a.length) {
                e();
            }
        }
        Object[] objArr = this.f70298a;
        int i12 = this.f70300c;
        objArr[i12] = obj;
        this.f70299b[i12] = -2;
    }

    public final void g(int i10) {
        this.f70299b[this.f70300c] = i10;
    }

    @NotNull
    public String toString() {
        return a();
    }
}
