package b2;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Operator.kt */
@Metadata
/* loaded from: classes3.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g f2171a = new g();

    private g() {
    }

    public static final void a(@NotNull a x10, @NotNull a b10) {
        if (o4.a.d(g.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            Intrinsics.checkNotNullParameter(b10, "b");
            int b11 = x10.b(0);
            int b12 = x10.b(1);
            int b13 = x10.b(2);
            float[] a10 = x10.a();
            float[] a11 = b10.a();
            for (int i10 = 0; i10 < b11; i10++) {
                for (int i11 = 0; i11 < b12; i11++) {
                    for (int i12 = 0; i12 < b13; i12++) {
                        int i13 = (i10 * b12 * b13) + (i11 * b13) + i12;
                        a10[i13] = a10[i13] + a11[i12];
                    }
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
        }
    }

    @NotNull
    public static final a b(@NotNull a[] tensors) {
        if (o4.a.d(g.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(tensors, "tensors");
            int b10 = tensors[0].b(0);
            int i10 = 0;
            for (a aVar : tensors) {
                i10 += aVar.b(1);
            }
            a aVar2 = new a(new int[]{b10, i10});
            float[] a10 = aVar2.a();
            for (int i11 = 0; i11 < b10; i11++) {
                int i12 = i11 * i10;
                int length = tensors.length;
                for (int i13 = 0; i13 < length; i13++) {
                    float[] a11 = tensors[i13].a();
                    int b11 = tensors[i13].b(1);
                    System.arraycopy(a11, i11 * b11, a10, i12, b11);
                    i12 += b11;
                }
            }
            return aVar2;
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
            return null;
        }
    }

    @NotNull
    public static final a c(@NotNull a x10, @NotNull a w10) {
        if (o4.a.d(g.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            Intrinsics.checkNotNullParameter(w10, "w");
            int i10 = 0;
            int b10 = x10.b(0);
            int b11 = x10.b(1);
            int b12 = x10.b(2);
            int b13 = w10.b(0);
            int i11 = (b11 - b13) + 1;
            int b14 = w10.b(2);
            a aVar = new a(new int[]{b10, i11, b14});
            float[] a10 = x10.a();
            float[] a11 = aVar.a();
            float[] a12 = w10.a();
            int i12 = 0;
            while (i12 < b10) {
                int i13 = i10;
                while (i13 < b14) {
                    int i14 = i10;
                    while (i14 < i11) {
                        float f10 = 0.0f;
                        while (i10 < b13) {
                            for (int i15 = 0; i15 < b12; i15++) {
                                f10 += a10[(b11 * b12 * i12) + ((i10 + i14) * b12) + i15] * a12[(((i10 * b12) + i15) * b14) + i13];
                            }
                            i10++;
                        }
                        a11[(i11 * b14 * i12) + (i14 * b14) + i13] = f10;
                        i14++;
                        i10 = 0;
                    }
                    i13++;
                    i10 = 0;
                }
                i12++;
                i10 = 0;
            }
            return aVar;
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
            return null;
        }
    }

    @NotNull
    public static final a d(@NotNull a x10, @NotNull a w10, @NotNull a b10) {
        if (o4.a.d(g.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            Intrinsics.checkNotNullParameter(w10, "w");
            Intrinsics.checkNotNullParameter(b10, "b");
            int b11 = x10.b(0);
            int b12 = b10.b(0);
            a h10 = h(x10, w10);
            float[] a10 = b10.a();
            float[] a11 = h10.a();
            for (int i10 = 0; i10 < b11; i10++) {
                for (int i11 = 0; i11 < b12; i11++) {
                    int i12 = (i10 * b12) + i11;
                    a11[i12] = a11[i12] + a10[i11];
                }
            }
            return h10;
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
            return null;
        }
    }

    @NotNull
    public static final a e(@NotNull String[] texts, int i10, @NotNull a w10) {
        if (o4.a.d(g.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(texts, "texts");
            Intrinsics.checkNotNullParameter(w10, "w");
            int length = texts.length;
            int b10 = w10.b(1);
            a aVar = new a(new int[]{length, i10, b10});
            float[] a10 = aVar.a();
            float[] a11 = w10.a();
            for (int i11 = 0; i11 < length; i11++) {
                int[] d10 = h.f2172a.d(texts[i11], i10);
                for (int i12 = 0; i12 < i10; i12++) {
                    System.arraycopy(a11, d10[i12] * b10, a10, (b10 * i10 * i11) + (b10 * i12), b10);
                }
            }
            return aVar;
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
            return null;
        }
    }

    public static final void f(@NotNull a x10, int i10) {
        if (o4.a.d(g.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            if (i10 >= x10.c()) {
                return;
            }
            int c10 = x10.c();
            int i11 = 1;
            for (int i12 = i10; i12 < c10; i12++) {
                i11 *= x10.b(i12);
            }
            int[] iArr = new int[i10 + 1];
            for (int i13 = 0; i13 < i10; i13++) {
                iArr[i13] = x10.b(i13);
            }
            iArr[i10] = i11;
            x10.d(iArr);
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
        }
    }

    @NotNull
    public static final a g(@NotNull a x10, int i10) {
        if (o4.a.d(g.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            int i11 = 0;
            int b10 = x10.b(0);
            int b11 = x10.b(1);
            int b12 = x10.b(2);
            int i12 = (b11 - i10) + 1;
            a aVar = new a(new int[]{b10, i12, b12});
            float[] a10 = x10.a();
            float[] a11 = aVar.a();
            int i13 = 0;
            while (i13 < b10) {
                int i14 = i11;
                while (i14 < b12) {
                    int i15 = i11;
                    while (i15 < i12) {
                        int i16 = i15 * b12;
                        int i17 = (i13 * i12 * b12) + i16 + i14;
                        int i18 = (i13 * b11 * b12) + i16 + i14;
                        a11[i17] = Float.MIN_VALUE;
                        for (int i19 = i11; i19 < i10; i19++) {
                            a11[i17] = Math.max(a11[i17], a10[i18 + (i19 * b12)]);
                        }
                        i15++;
                        i11 = 0;
                    }
                    i14++;
                    i11 = 0;
                }
                i13++;
                i11 = 0;
            }
            return aVar;
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
            return null;
        }
    }

    @NotNull
    public static final a h(@NotNull a x10, @NotNull a w10) {
        if (o4.a.d(g.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            Intrinsics.checkNotNullParameter(w10, "w");
            int b10 = x10.b(0);
            int b11 = w10.b(0);
            int b12 = w10.b(1);
            a aVar = new a(new int[]{b10, b12});
            float[] a10 = x10.a();
            float[] a11 = w10.a();
            float[] a12 = aVar.a();
            for (int i10 = 0; i10 < b10; i10++) {
                for (int i11 = 0; i11 < b12; i11++) {
                    int i12 = (i10 * b12) + i11;
                    a12[i12] = 0.0f;
                    for (int i13 = 0; i13 < b11; i13++) {
                        a12[i12] = a12[i12] + (a10[(i10 * b11) + i13] * a11[(i13 * b12) + i11]);
                    }
                }
            }
            return aVar;
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
            return null;
        }
    }

    public static final void i(@NotNull a x10) {
        if (o4.a.d(g.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            float[] a10 = x10.a();
            int length = a10.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (a10[i10] < 0.0f) {
                    a10[i10] = 0.0f;
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
        }
    }

    public static final void j(@NotNull a x10) {
        if (o4.a.d(g.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            int b10 = x10.b(0);
            int b11 = x10.b(1);
            float[] a10 = x10.a();
            for (int i10 = 0; i10 < b10; i10++) {
                int i11 = i10 * b11;
                int i12 = i11 + b11;
                float f10 = Float.MIN_VALUE;
                for (int i13 = i11; i13 < i12; i13++) {
                    float f11 = a10[i13];
                    if (f11 > f10) {
                        f10 = f11;
                    }
                }
                float f12 = 0.0f;
                for (int i14 = i11; i14 < i12; i14++) {
                    float exp = (float) Math.exp(a10[i14] - f10);
                    a10[i14] = exp;
                    f12 += exp;
                }
                while (i11 < i12) {
                    a10[i11] = a10[i11] / f12;
                    i11++;
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
        }
    }

    @NotNull
    public static final a k(@NotNull a x10) {
        if (o4.a.d(g.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            int b10 = x10.b(0);
            int b11 = x10.b(1);
            a aVar = new a(new int[]{b11, b10});
            float[] a10 = x10.a();
            float[] a11 = aVar.a();
            for (int i10 = 0; i10 < b10; i10++) {
                for (int i11 = 0; i11 < b11; i11++) {
                    a11[(i11 * b10) + i10] = a10[(i10 * b11) + i11];
                }
            }
            return aVar;
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
            return null;
        }
    }

    @NotNull
    public static final a l(@NotNull a x10) {
        if (o4.a.d(g.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            int b10 = x10.b(0);
            int b11 = x10.b(1);
            int b12 = x10.b(2);
            a aVar = new a(new int[]{b12, b11, b10});
            float[] a10 = x10.a();
            float[] a11 = aVar.a();
            for (int i10 = 0; i10 < b10; i10++) {
                for (int i11 = 0; i11 < b11; i11++) {
                    for (int i12 = 0; i12 < b12; i12++) {
                        a11[(i12 * b10 * b11) + (i11 * b10) + i10] = a10[(i10 * b11 * b12) + (i11 * b12) + i12];
                    }
                }
            }
            return aVar;
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
            return null;
        }
    }
}
