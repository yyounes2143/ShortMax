package kotlin.text;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.d;
import org.jetbrains.annotations.NotNull;
/* compiled from: HexExtensions.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHexExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,1249:1\n1198#1,7:1251\n1198#1,7:1258\n1198#1,7:1265\n1198#1,7:1272\n1198#1,7:1279\n1198#1,7:1286\n1198#1,7:1293\n1198#1,7:1300\n1209#1,5:1307\n1209#1,5:1312\n1198#1,7:1317\n1198#1,7:1324\n1209#1,5:1331\n1218#1,5:1336\n1#2:1250\n1188#3,3:1341\n1188#3,3:1344\n1188#3,3:1347\n1188#3,3:1350\n*S KotlinDebug\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n*L\n457#1:1251,7\n490#1:1258,7\n494#1:1265,7\n497#1:1272,7\n538#1:1279,7\n541#1:1286,7\n546#1:1293,7\n551#1:1300,7\n558#1:1307,5\n559#1:1312,5\n1153#1:1317,7\n1155#1:1324,7\n1183#1:1331,5\n1191#1:1336,5\n43#1:1341,3\n44#1:1344,3\n55#1:1347,3\n56#1:1350,3\n*E\n"})
/* loaded from: classes8.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f61187a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f61188b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f61189c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final long[] f61190d;

    static {
        int[] iArr = new int[256];
        int i10 = 0;
        for (int i11 = 0; i11 < 256; i11++) {
            iArr[i11] = "0123456789abcdef".charAt(i11 & 15) | ("0123456789abcdef".charAt(i11 >> 4) << '\b');
        }
        f61187a = iArr;
        int[] iArr2 = new int[256];
        for (int i12 = 0; i12 < 256; i12++) {
            iArr2[i12] = "0123456789ABCDEF".charAt(i12 & 15) | ("0123456789ABCDEF".charAt(i12 >> 4) << '\b');
        }
        f61188b = iArr2;
        int[] iArr3 = new int[256];
        for (int i13 = 0; i13 < 256; i13++) {
            iArr3[i13] = -1;
        }
        int i14 = 0;
        int i15 = 0;
        while (i14 < "0123456789abcdef".length()) {
            iArr3["0123456789abcdef".charAt(i14)] = i15;
            i14++;
            i15++;
        }
        int i16 = 0;
        int i17 = 0;
        while (i16 < "0123456789ABCDEF".length()) {
            iArr3["0123456789ABCDEF".charAt(i16)] = i17;
            i16++;
            i17++;
        }
        f61189c = iArr3;
        long[] jArr = new long[256];
        for (int i18 = 0; i18 < 256; i18++) {
            jArr[i18] = -1;
        }
        int i19 = 0;
        int i20 = 0;
        while (i19 < "0123456789abcdef".length()) {
            jArr["0123456789abcdef".charAt(i19)] = i20;
            i19++;
            i20++;
        }
        int i21 = 0;
        while (i10 < "0123456789ABCDEF".length()) {
            jArr["0123456789ABCDEF".charAt(i10)] = i21;
            i10++;
            i21++;
        }
        f61190d = jArr;
    }

    private static final void a(String str, int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if (i13 < 1) {
            j(str, i10, i11, "at least", 1);
        } else if (i13 > i12) {
            c(str, i10, (i13 + i10) - i12);
        }
    }

    private static final void b(String str, int i10, int i11, String str2, String str3, boolean z10, int i12) {
        if ((i11 - i10) - str2.length() <= str3.length()) {
            k(str, i10, i11, str2, str3);
        }
        if (str2.length() != 0) {
            int length = str2.length();
            for (int i13 = 0; i13 < length; i13++) {
                if (!a.g(str2.charAt(i13), str.charAt(i10 + i13), z10)) {
                    l(str, i10, i11, str2, "prefix");
                }
            }
            i10 += str2.length();
        }
        int length2 = i11 - str3.length();
        if (str3.length() != 0) {
            int length3 = str3.length();
            for (int i14 = 0; i14 < length3; i14++) {
                if (!a.g(str3.charAt(i14), str.charAt(length2 + i14), z10)) {
                    l(str, length2, i11, str3, "suffix");
                }
            }
        }
        a(str, i10, length2, i12);
    }

    private static final void c(String str, int i10, int i11) {
        while (i10 < i11) {
            if (str.charAt(i10) == '0') {
                i10++;
            } else {
                throw new NumberFormatException("Expected the hexadecimal digit '0' at index " + i10 + ", but was '" + str.charAt(i10) + "'.\nThe result won't fit the type being parsed.");
            }
        }
    }

    @NotNull
    public static final int[] d() {
        return f61187a;
    }

    public static final long e(@NotNull String str, int i10, int i11, @NotNull d format) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        return g(str, i10, i11, format, 16);
    }

    public static /* synthetic */ long f(String str, int i10, int i11, d dVar, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            dVar = d.f61191d.a();
        }
        return e(str, i10, i11, dVar);
    }

    private static final long g(String str, int i10, int i11, d dVar, int i12) {
        kotlin.collections.d.Companion.a(i10, i11, str.length());
        d.c b10 = dVar.b();
        if (b10.f()) {
            a(str, i10, i11, i12);
            return h(str, i10, i11);
        }
        String d10 = b10.d();
        String e10 = b10.e();
        b(str, i10, i11, d10, e10, b10.c(), i12);
        return h(str, i10 + d10.length(), i11 - e10.length());
    }

    private static final long h(String str, int i10, int i11) {
        long j10 = 0;
        while (i10 < i11) {
            long j11 = j10 << 4;
            char charAt = str.charAt(i10);
            if ((charAt >>> '\b') == 0) {
                long j12 = f61190d[charAt];
                if (j12 >= 0) {
                    j10 = j11 | j12;
                    i10++;
                }
            }
            i(str, i10);
            throw new KotlinNothingValueException();
        }
        return j10;
    }

    private static final Void i(String str, int i10) {
        throw new NumberFormatException("Expected a hexadecimal digit at index " + i10 + ", but was " + str.charAt(i10));
    }

    private static final void j(String str, int i10, int i11, String str2, int i12) {
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(i10, i11);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        throw new NumberFormatException("Expected " + str2 + ' ' + i12 + " hexadecimal digits at index " + i10 + ", but was \"" + substring + "\" of length " + (i11 - i10));
    }

    private static final void k(String str, int i10, int i11, String str2, String str3) {
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(i10, i11);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        throw new NumberFormatException("Expected a hexadecimal number with prefix \"" + str2 + "\" and suffix \"" + str3 + "\", but was " + substring);
    }

    private static final void l(String str, int i10, int i11, String str2, String str3) {
        int j10 = kotlin.ranges.e.j(str2.length() + i10, i11);
        Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(i10, j10);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        throw new NumberFormatException("Expected " + str3 + " \"" + str2 + "\" at index " + i10 + ", but was " + substring);
    }
}
