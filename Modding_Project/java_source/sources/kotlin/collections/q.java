package kotlin.collections;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: _ArraysJvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\n_ArraysJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,3105:1\n13989#2,14:3106\n14012#2,14:3120\n14035#2,14:3134\n14058#2,14:3148\n14081#2,14:3162\n14104#2,14:3176\n14127#2,14:3190\n14150#2,14:3204\n14173#2,14:3218\n16575#2,14:3232\n16598#2,14:3246\n16621#2,14:3260\n16644#2,14:3274\n16667#2,14:3288\n16690#2,14:3302\n16713#2,14:3316\n16736#2,14:3330\n16759#2,14:3344\n*S KotlinDebug\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt\n*L\n2497#1:3106,14\n2504#1:3120,14\n2511#1:3134,14\n2518#1:3148,14\n2525#1:3162,14\n2532#1:3176,14\n2539#1:3190,14\n2546#1:3204,14\n2553#1:3218,14\n2695#1:3232,14\n2702#1:3246,14\n2709#1:3260,14\n2716#1:3274,14\n2723#1:3288,14\n2730#1:3302,14\n2737#1:3316,14\n2744#1:3330,14\n2751#1:3344,14\n*E\n"})
/* loaded from: classes8.dex */
public class q extends p {
    public static final void A(@NotNull int[] iArr, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        Arrays.fill(iArr, i11, i12, i10);
    }

    public static void B(@NotNull long[] jArr, long j10, int i10, int i11) {
        Intrinsics.checkNotNullParameter(jArr, "<this>");
        Arrays.fill(jArr, i10, i11, j10);
    }

    public static <T> void C(@NotNull T[] tArr, T t10, int i10, int i11) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        Arrays.fill(tArr, i10, i11, t10);
    }

    public static final void D(@NotNull boolean[] zArr, boolean z10, int i10, int i11) {
        Intrinsics.checkNotNullParameter(zArr, "<this>");
        Arrays.fill(zArr, i10, i11, z10);
    }

    public static /* synthetic */ void E(float[] fArr, float f10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = fArr.length;
        }
        z(fArr, f10, i10, i11);
    }

    public static /* synthetic */ void F(int[] iArr, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if ((i13 & 4) != 0) {
            i12 = iArr.length;
        }
        A(iArr, i10, i11, i12);
    }

    public static /* synthetic */ void G(long[] jArr, long j10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = jArr.length;
        }
        n.B(jArr, j10, i10, i11);
    }

    public static /* synthetic */ void H(Object[] objArr, Object obj, int i10, int i11, int i12, Object obj2) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = objArr.length;
        }
        n.C(objArr, obj, i10, i11);
    }

    public static /* synthetic */ void I(boolean[] zArr, boolean z10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = zArr.length;
        }
        D(zArr, z10, i10, i11);
    }

    @NotNull
    public static byte[] J(@NotNull byte[] bArr, @NotNull byte[] elements) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        int length = bArr.length;
        int length2 = elements.length;
        byte[] copyOf = Arrays.copyOf(bArr, length + length2);
        System.arraycopy(elements, 0, copyOf, length, length2);
        Intrinsics.checkNotNull(copyOf);
        return copyOf;
    }

    @NotNull
    public static int[] K(@NotNull int[] iArr, int i10) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        int length = iArr.length;
        int[] copyOf = Arrays.copyOf(iArr, length + 1);
        copyOf[length] = i10;
        Intrinsics.checkNotNull(copyOf);
        return copyOf;
    }

    @NotNull
    public static int[] L(@NotNull int[] iArr, @NotNull int[] elements) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        int length = iArr.length;
        int length2 = elements.length;
        int[] copyOf = Arrays.copyOf(iArr, length + length2);
        System.arraycopy(elements, 0, copyOf, length, length2);
        Intrinsics.checkNotNull(copyOf);
        return copyOf;
    }

    @NotNull
    public static <T> T[] M(@NotNull T[] tArr, T t10) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        int length = tArr.length;
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, length + 1);
        tArr2[length] = t10;
        Intrinsics.checkNotNull(tArr2);
        return tArr2;
    }

    public static void N(@NotNull double[] dArr, int i10, int i11) {
        Intrinsics.checkNotNullParameter(dArr, "<this>");
        Arrays.sort(dArr, i10, i11);
    }

    public static void O(@NotNull float[] fArr, int i10, int i11) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        Arrays.sort(fArr, i10, i11);
    }

    public static void P(@NotNull int[] iArr, int i10, int i11) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        Arrays.sort(iArr, i10, i11);
    }

    public static void Q(@NotNull long[] jArr, int i10, int i11) {
        Intrinsics.checkNotNullParameter(jArr, "<this>");
        Arrays.sort(jArr, i10, i11);
    }

    public static <T> void R(@NotNull T[] tArr) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        if (tArr.length > 1) {
            Arrays.sort(tArr);
        }
    }

    public static final <T> void S(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (tArr.length > 1) {
            Arrays.sort(tArr, comparator);
        }
    }

    public static <T> void T(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator, int i10, int i11) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        Arrays.sort(tArr, i10, i11, comparator);
    }

    @NotNull
    public static <T> List<T> g(@NotNull T[] tArr) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        List<T> a10 = t.a(tArr);
        Intrinsics.checkNotNullExpressionValue(a10, "asList(...)");
        return a10;
    }

    @NotNull
    public static byte[] h(@NotNull byte[] bArr, @NotNull byte[] destination, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        System.arraycopy(bArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @NotNull
    public static char[] i(@NotNull char[] cArr, @NotNull char[] destination, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(cArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        System.arraycopy(cArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @NotNull
    public static double[] j(@NotNull double[] dArr, @NotNull double[] destination, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(dArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        System.arraycopy(dArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @NotNull
    public static float[] k(@NotNull float[] fArr, @NotNull float[] destination, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        System.arraycopy(fArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @NotNull
    public static int[] l(@NotNull int[] iArr, @NotNull int[] destination, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        System.arraycopy(iArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @NotNull
    public static long[] m(@NotNull long[] jArr, @NotNull long[] destination, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(jArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        System.arraycopy(jArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @NotNull
    public static <T> T[] n(@NotNull T[] tArr, @NotNull T[] destination, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        System.arraycopy(tArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @NotNull
    public static final boolean[] o(@NotNull boolean[] zArr, @NotNull boolean[] destination, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(zArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        System.arraycopy(zArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    public static /* synthetic */ byte[] p(byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = bArr.length;
        }
        return n.h(bArr, bArr2, i10, i11, i12);
    }

    public static /* synthetic */ double[] q(double[] dArr, double[] dArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = dArr.length;
        }
        return n.j(dArr, dArr2, i10, i11, i12);
    }

    public static /* synthetic */ float[] r(float[] fArr, float[] fArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = fArr.length;
        }
        return n.k(fArr, fArr2, i10, i11, i12);
    }

    public static /* synthetic */ int[] s(int[] iArr, int[] iArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = iArr.length;
        }
        return n.l(iArr, iArr2, i10, i11, i12);
    }

    public static /* synthetic */ long[] t(long[] jArr, long[] jArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = jArr.length;
        }
        return n.m(jArr, jArr2, i10, i11, i12);
    }

    public static /* synthetic */ Object[] u(Object[] objArr, Object[] objArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = objArr.length;
        }
        return n.n(objArr, objArr2, i10, i11, i12);
    }

    public static /* synthetic */ boolean[] v(boolean[] zArr, boolean[] zArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = zArr.length;
        }
        return o(zArr, zArr2, i10, i11, i12);
    }

    @NotNull
    public static byte[] w(@NotNull byte[] bArr, int i10, int i11) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        o.c(i11, bArr.length);
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i10, i11);
        Intrinsics.checkNotNullExpressionValue(copyOfRange, "copyOfRange(...)");
        return copyOfRange;
    }

    @NotNull
    public static float[] x(@NotNull float[] fArr, int i10, int i11) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        o.c(i11, fArr.length);
        float[] copyOfRange = Arrays.copyOfRange(fArr, i10, i11);
        Intrinsics.checkNotNullExpressionValue(copyOfRange, "copyOfRange(...)");
        return copyOfRange;
    }

    @NotNull
    public static <T> T[] y(@NotNull T[] tArr, int i10, int i11) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        o.c(i11, tArr.length);
        T[] tArr2 = (T[]) Arrays.copyOfRange(tArr, i10, i11);
        Intrinsics.checkNotNullExpressionValue(tArr2, "copyOfRange(...)");
        return tArr2;
    }

    public static final void z(@NotNull float[] fArr, float f10, int i10, int i11) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        Arrays.fill(fArr, i10, i11, f10);
    }
}
