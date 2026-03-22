package kotlin.text;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Strings.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1560:1\n80#1,22:1561\n114#1,5:1583\n131#1,5:1588\n80#1,22:1593\n108#1:1615\n80#1,22:1616\n114#1,5:1638\n125#1:1643\n114#1,5:1644\n131#1,5:1649\n142#1:1654\n131#1,5:1655\n80#1,22:1660\n114#1,5:1682\n131#1,5:1687\n1069#2,2:1692\n12647#3,2:1694\n12647#3,2:1696\n295#4,2:1698\n295#4,2:1700\n1557#4:1703\n1628#4,3:1704\n1557#4:1707\n1628#4,3:1708\n1#5:1702\n*S KotlinDebug\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n108#1:1561,22\n125#1:1583,5\n142#1:1588,5\n147#1:1593,22\n152#1:1615\n152#1:1616,22\n157#1:1638,5\n162#1:1643\n162#1:1644,5\n167#1:1649,5\n172#1:1654\n172#1:1655,5\n177#1:1660,22\n188#1:1682,5\n199#1:1687,5\n312#1:1692,2\n952#1:1694,2\n976#1:1696,2\n1015#1:1698,2\n1021#1:1700,2\n1382#1:1703\n1382#1:1704,3\n1407#1:1707\n1407#1:1708,3\n*E\n"})
/* loaded from: classes8.dex */
public class StringsKt__StringsKt extends w {

    /* compiled from: Strings.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends kotlin.collections.w {

        /* renamed from: a */
        private int f61173a;

        /* renamed from: b */
        final /* synthetic */ CharSequence f61174b;

        a(CharSequence charSequence) {
            this.f61174b = charSequence;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f61173a < this.f61174b.length()) {
                return true;
            }
            return false;
        }

        @Override // kotlin.collections.w
        public char nextChar() {
            CharSequence charSequence = this.f61174b;
            int i10 = this.f61173a;
            this.f61173a = i10 + 1;
            return charSequence.charAt(i10);
        }
    }

    /* compiled from: Sequences.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,22:1\n1467#2:23\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class b implements Sequence<String> {

        /* renamed from: a */
        final /* synthetic */ CharSequence f61175a;

        public b(CharSequence charSequence) {
            this.f61175a = charSequence;
        }

        @Override // kotlin.sequences.Sequence
        public Iterator<String> iterator() {
            return new f(this.f61175a);
        }
    }

    @NotNull
    public static Sequence<String> A0(@NotNull CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return new b(charSequence);
    }

    @NotNull
    public static List<String> B0(@NotNull CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return kotlin.sequences.j.P(StringsKt.A0(charSequence));
    }

    @NotNull
    public static final CharSequence C0(@NotNull CharSequence charSequence, int i10, char c10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (i10 >= 0) {
            if (i10 <= charSequence.length()) {
                return charSequence.subSequence(0, charSequence.length());
            }
            StringBuilder sb2 = new StringBuilder(i10);
            sb2.append(charSequence);
            int length = i10 - charSequence.length();
            int i11 = 1;
            if (1 <= length) {
                while (true) {
                    sb2.append(c10);
                    if (i11 == length) {
                        break;
                    }
                    i11++;
                }
            }
            return sb2;
        }
        throw new IllegalArgumentException("Desired length " + i10 + " is less than zero.");
    }

    @NotNull
    public static final String D0(@NotNull String str, int i10, char c10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return C0(str, i10, c10).toString();
    }

    public static /* synthetic */ String E0(String str, int i10, char c10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            c10 = ' ';
        }
        return D0(str, i10, c10);
    }

    @NotNull
    public static final CharSequence F0(@NotNull CharSequence charSequence, int i10, char c10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (i10 >= 0) {
            if (i10 <= charSequence.length()) {
                return charSequence.subSequence(0, charSequence.length());
            }
            StringBuilder sb2 = new StringBuilder(i10);
            int length = i10 - charSequence.length();
            int i11 = 1;
            if (1 <= length) {
                while (true) {
                    sb2.append(c10);
                    if (i11 == length) {
                        break;
                    }
                    i11++;
                }
            }
            sb2.append(charSequence);
            return sb2;
        }
        throw new IllegalArgumentException("Desired length " + i10 + " is less than zero.");
    }

    @NotNull
    public static String G0(@NotNull String str, int i10, char c10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return F0(str, i10, c10).toString();
    }

    private static final Sequence<IntRange> H0(CharSequence charSequence, final char[] cArr, int i10, final boolean z10, int i11) {
        U0(i11);
        return new kotlin.text.b(charSequence, i10, i11, new Function2() { // from class: kotlin.text.x
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Pair L0;
                L0 = StringsKt__StringsKt.L0(cArr, z10, (CharSequence) obj, ((Integer) obj2).intValue());
                return L0;
            }
        });
    }

    private static final Sequence<IntRange> I0(CharSequence charSequence, String[] strArr, int i10, final boolean z10, int i11) {
        U0(i11);
        final List g10 = kotlin.collections.n.g(strArr);
        return new kotlin.text.b(charSequence, i10, i11, new Function2() { // from class: kotlin.text.y
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Pair M0;
                M0 = StringsKt__StringsKt.M0(g10, z10, (CharSequence) obj, ((Integer) obj2).intValue());
                return M0;
            }
        });
    }

    static /* synthetic */ Sequence J0(CharSequence charSequence, char[] cArr, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        return H0(charSequence, cArr, i10, z10, i11);
    }

    static /* synthetic */ Sequence K0(CharSequence charSequence, String[] strArr, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        return I0(charSequence, strArr, i10, z10, i11);
    }

    public static final Pair L0(char[] cArr, boolean z10, CharSequence DelimitedRangesSequence, int i10) {
        Intrinsics.checkNotNullParameter(DelimitedRangesSequence, "$this$DelimitedRangesSequence");
        int r02 = r0(DelimitedRangesSequence, cArr, i10, z10);
        if (r02 < 0) {
            return null;
        }
        return ms.k.a(Integer.valueOf(r02), 1);
    }

    public static final Pair M0(List list, boolean z10, CharSequence DelimitedRangesSequence, int i10) {
        Intrinsics.checkNotNullParameter(DelimitedRangesSequence, "$this$DelimitedRangesSequence");
        Pair<Integer, String> i02 = i0(DelimitedRangesSequence, list, i10, z10, false);
        if (i02 != null) {
            return ms.k.a(i02.e(), Integer.valueOf(i02.f().length()));
        }
        return null;
    }

    public static final boolean N0(@NotNull CharSequence charSequence, int i10, @NotNull CharSequence other, int i11, int i12, boolean z10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i11 < 0 || i10 < 0 || i10 > charSequence.length() - i12 || i11 > other.length() - i12) {
            return false;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            if (!kotlin.text.a.g(charSequence.charAt(i10 + i13), other.charAt(i11 + i13), z10)) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static String O0(@NotNull String str, @NotNull CharSequence prefix) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (c1(str, prefix, false, 2, null)) {
            String substring = str.substring(prefix.length());
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return substring;
        }
        return str;
    }

    @NotNull
    public static CharSequence P0(@NotNull CharSequence charSequence, int i10, int i11) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (i11 >= i10) {
            if (i11 == i10) {
                return charSequence.subSequence(0, charSequence.length());
            }
            StringBuilder sb2 = new StringBuilder(charSequence.length() - (i11 - i10));
            sb2.append(charSequence, 0, i10);
            Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
            sb2.append(charSequence, i11, charSequence.length());
            Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
            return sb2;
        }
        throw new IndexOutOfBoundsException("End index (" + i11 + ") is less than start index (" + i10 + ").");
    }

    @NotNull
    public static String Q0(@NotNull String str, @NotNull CharSequence suffix) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (StringsKt.h0(str, suffix, false, 2, null)) {
            String substring = str.substring(0, str.length() - suffix.length());
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return substring;
        }
        return str;
    }

    @NotNull
    public static String R0(@NotNull String str, @NotNull CharSequence delimiter) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        return StringsKt.S0(str, delimiter, delimiter);
    }

    @NotNull
    public static String S0(@NotNull String str, @NotNull CharSequence prefix, @NotNull CharSequence suffix) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (str.length() >= prefix.length() + suffix.length() && c1(str, prefix, false, 2, null) && StringsKt.h0(str, suffix, false, 2, null)) {
            String substring = str.substring(prefix.length(), str.length() - suffix.length());
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return substring;
        }
        return str;
    }

    @NotNull
    public static final CharSequence T0(@NotNull CharSequence charSequence, int i10, int i11, @NotNull CharSequence replacement) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        if (i11 >= i10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(charSequence, 0, i10);
            Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
            sb2.append(replacement);
            sb2.append(charSequence, i11, charSequence.length());
            Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
            return sb2;
        }
        throw new IndexOutOfBoundsException("End index (" + i11 + ") is less than start index (" + i10 + ").");
    }

    public static final void U0(int i10) {
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i10).toString());
    }

    @NotNull
    public static final List<String> V0(@NotNull CharSequence charSequence, @NotNull char[] delimiters, boolean z10, int i10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(delimiters, "delimiters");
        if (delimiters.length == 1) {
            return X0(charSequence, String.valueOf(delimiters[0]), z10, i10);
        }
        Iterable<IntRange> p10 = kotlin.sequences.j.p(J0(charSequence, delimiters, 0, z10, i10, 2, null));
        ArrayList arrayList = new ArrayList(CollectionsKt.z(p10, 10));
        for (IntRange intRange : p10) {
            arrayList.add(d1(charSequence, intRange));
        }
        return arrayList;
    }

    @NotNull
    public static final List<String> W0(@NotNull CharSequence charSequence, @NotNull String[] delimiters, boolean z10, int i10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(delimiters, "delimiters");
        if (delimiters.length == 1) {
            String str = delimiters[0];
            if (str.length() != 0) {
                return X0(charSequence, str, z10, i10);
            }
        }
        Iterable<IntRange> p10 = kotlin.sequences.j.p(K0(charSequence, delimiters, 0, z10, i10, 2, null));
        ArrayList arrayList = new ArrayList(CollectionsKt.z(p10, 10));
        for (IntRange intRange : p10) {
            arrayList.add(d1(charSequence, intRange));
        }
        return arrayList;
    }

    private static final List<String> X0(CharSequence charSequence, String str, boolean z10, int i10) {
        boolean z11;
        U0(i10);
        int i11 = 0;
        int m02 = m0(charSequence, str, 0, z10);
        if (m02 != -1 && i10 != 1) {
            if (i10 > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            int i12 = 10;
            if (z11) {
                i12 = kotlin.ranges.e.j(i10, 10);
            }
            ArrayList arrayList = new ArrayList(i12);
            do {
                arrayList.add(charSequence.subSequence(i11, m02).toString());
                i11 = str.length() + m02;
                if (z11 && arrayList.size() == i10 - 1) {
                    break;
                }
                m02 = m0(charSequence, str, i11, z10);
            } while (m02 != -1);
            arrayList.add(charSequence.subSequence(i11, charSequence.length()).toString());
            return arrayList;
        }
        return CollectionsKt.e(charSequence.toString());
    }

    public static final boolean Y(@NotNull CharSequence charSequence, char c10, boolean z10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (StringsKt.p0(charSequence, c10, 0, z10, 2, null) >= 0) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ List Y0(CharSequence charSequence, char[] cArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return V0(charSequence, cArr, z10, i10);
    }

    public static boolean Z(@NotNull CharSequence charSequence, @NotNull CharSequence other, boolean z10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (other instanceof String) {
            if (StringsKt.q0(charSequence, (String) other, 0, z10, 2, null) < 0) {
                return false;
            }
        } else if (o0(charSequence, other, 0, charSequence.length(), z10, false, 16, null) < 0) {
            return false;
        }
        return true;
    }

    public static final boolean Z0(@NotNull CharSequence charSequence, char c10, boolean z10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (charSequence.length() <= 0 || !kotlin.text.a.g(charSequence.charAt(0), c10, z10)) {
            return false;
        }
        return true;
    }

    public static /* synthetic */ boolean a0(CharSequence charSequence, char c10, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return Y(charSequence, c10, z10);
    }

    public static final boolean a1(@NotNull CharSequence charSequence, @NotNull CharSequence prefix, boolean z10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (!z10 && (charSequence instanceof String) && (prefix instanceof String)) {
            return StringsKt.V((String) charSequence, (String) prefix, false, 2, null);
        }
        return N0(charSequence, 0, prefix, 0, prefix.length(), z10);
    }

    public static /* synthetic */ boolean b0(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return StringsKt.Z(charSequence, charSequence2, z10);
    }

    public static /* synthetic */ boolean b1(CharSequence charSequence, char c10, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return Z0(charSequence, c10, z10);
    }

    public static final boolean c0(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return StringsKt.G((String) charSequence, (String) charSequence2, true);
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!kotlin.text.a.g(charSequence.charAt(i10), charSequence2.charAt(i10), true)) {
                return false;
            }
        }
        return true;
    }

    public static /* synthetic */ boolean c1(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return a1(charSequence, charSequence2, z10);
    }

    public static final boolean d0(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return Intrinsics.areEqual(charSequence, charSequence2);
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (charSequence.charAt(i10) != charSequence2.charAt(i10)) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final String d1(@NotNull CharSequence charSequence, @NotNull IntRange range) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        return charSequence.subSequence(range.getStart().intValue(), range.getEndInclusive().intValue() + 1).toString();
    }

    public static final boolean e0(@NotNull CharSequence charSequence, char c10, boolean z10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (charSequence.length() > 0 && kotlin.text.a.g(charSequence.charAt(StringsKt.k0(charSequence)), c10, z10)) {
            return true;
        }
        return false;
    }

    @NotNull
    public static String e1(@NotNull String str, char c10, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int p02 = StringsKt.p0(str, c10, 0, false, 6, null);
        if (p02 != -1) {
            String substring = str.substring(p02 + 1, str.length());
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return substring;
        }
        return missingDelimiterValue;
    }

    public static final boolean f0(@NotNull CharSequence charSequence, @NotNull CharSequence suffix, boolean z10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (!z10 && (charSequence instanceof String) && (suffix instanceof String)) {
            return StringsKt.F((String) charSequence, (String) suffix, false, 2, null);
        }
        return N0(charSequence, charSequence.length() - suffix.length(), suffix, 0, suffix.length(), z10);
    }

    @NotNull
    public static String f1(@NotNull String str, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int q02 = StringsKt.q0(str, delimiter, 0, false, 6, null);
        if (q02 != -1) {
            String substring = str.substring(q02 + delimiter.length(), str.length());
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return substring;
        }
        return missingDelimiterValue;
    }

    public static /* synthetic */ boolean g0(CharSequence charSequence, char c10, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return e0(charSequence, c10, z10);
    }

    public static /* synthetic */ String g1(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return StringsKt.e1(str, c10, str2);
    }

    public static /* synthetic */ boolean h0(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return f0(charSequence, charSequence2, z10);
    }

    public static /* synthetic */ String h1(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return StringsKt.f1(str, str2, str3);
    }

    private static final Pair<Integer, String> i0(CharSequence charSequence, Collection<String> collection, int i10, boolean z10, boolean z11) {
        kotlin.ranges.d r10;
        Object obj;
        Object obj2;
        int y02;
        if (!z10 && collection.size() == 1) {
            String str = (String) CollectionsKt.P0(collection);
            if (!z11) {
                y02 = StringsKt.q0(charSequence, str, i10, false, 4, null);
            } else {
                y02 = StringsKt.y0(charSequence, str, i10, false, 4, null);
            }
            if (y02 < 0) {
                return null;
            }
            return ms.k.a(Integer.valueOf(y02), str);
        }
        if (!z11) {
            r10 = new IntRange(kotlin.ranges.e.e(i10, 0), charSequence.length());
        } else {
            r10 = kotlin.ranges.e.r(kotlin.ranges.e.j(i10, StringsKt.k0(charSequence)), 0);
        }
        if (charSequence instanceof String) {
            int c10 = r10.c();
            int d10 = r10.d();
            int e10 = r10.e();
            if ((e10 > 0 && c10 <= d10) || (e10 < 0 && d10 <= c10)) {
                while (true) {
                    Iterator<T> it = collection.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            obj2 = it.next();
                            String str2 = (String) obj2;
                            if (StringsKt.J(str2, 0, (String) charSequence, c10, str2.length(), z10)) {
                                break;
                            }
                        } else {
                            obj2 = null;
                            break;
                        }
                    }
                    String str3 = (String) obj2;
                    if (str3 != null) {
                        return ms.k.a(Integer.valueOf(c10), str3);
                    }
                    if (c10 == d10) {
                        break;
                    }
                    c10 += e10;
                }
            }
        } else {
            int c11 = r10.c();
            int d11 = r10.d();
            int e11 = r10.e();
            if ((e11 > 0 && c11 <= d11) || (e11 < 0 && d11 <= c11)) {
                while (true) {
                    Iterator<T> it2 = collection.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            obj = it2.next();
                            String str4 = (String) obj;
                            if (N0(str4, 0, charSequence, c11, str4.length(), z10)) {
                                break;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                    String str5 = (String) obj;
                    if (str5 != null) {
                        return ms.k.a(Integer.valueOf(c11), str5);
                    }
                    if (c11 == d11) {
                        break;
                    }
                    c11 += e11;
                }
            }
        }
        return null;
    }

    @NotNull
    public static String i1(@NotNull String str, char c10, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int x02 = StringsKt.x0(str, c10, 0, false, 6, null);
        if (x02 != -1) {
            String substring = str.substring(x02 + 1, str.length());
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return substring;
        }
        return missingDelimiterValue;
    }

    @NotNull
    public static IntRange j0(@NotNull CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return new IntRange(0, charSequence.length() - 1);
    }

    @NotNull
    public static final String j1(@NotNull String str, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int y02 = StringsKt.y0(str, delimiter, 0, false, 6, null);
        if (y02 != -1) {
            String substring = str.substring(y02 + delimiter.length(), str.length());
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return substring;
        }
        return missingDelimiterValue;
    }

    public static int k0(@NotNull CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static /* synthetic */ String k1(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return StringsKt.i1(str, c10, str2);
    }

    public static final int l0(@NotNull CharSequence charSequence, char c10, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (!z10 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(c10, i10);
        }
        return r0(charSequence, new char[]{c10}, i10, z10);
    }

    public static /* synthetic */ String l1(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return j1(str, str2, str3);
    }

    public static final int m0(@NotNull CharSequence charSequence, @NotNull String string, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(string, "string");
        if (!z10 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(string, i10);
        }
        return o0(charSequence, string, i10, charSequence.length(), z10, false, 16, null);
    }

    @NotNull
    public static final String m1(@NotNull String str, char c10, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int p02 = StringsKt.p0(str, c10, 0, false, 6, null);
        if (p02 != -1) {
            String substring = str.substring(0, p02);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return substring;
        }
        return missingDelimiterValue;
    }

    private static final int n0(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z10, boolean z11) {
        kotlin.ranges.d r10;
        if (!z11) {
            r10 = new IntRange(kotlin.ranges.e.e(i10, 0), kotlin.ranges.e.j(i11, charSequence.length()));
        } else {
            r10 = kotlin.ranges.e.r(kotlin.ranges.e.j(i10, StringsKt.k0(charSequence)), kotlin.ranges.e.e(i11, 0));
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int c10 = r10.c();
            int d10 = r10.d();
            int e10 = r10.e();
            if ((e10 <= 0 || c10 > d10) && (e10 >= 0 || d10 > c10)) {
                return -1;
            }
            while (true) {
                String str = (String) charSequence2;
                if (StringsKt.J(str, 0, (String) charSequence, c10, str.length(), z10)) {
                    return c10;
                }
                if (c10 != d10) {
                    c10 += e10;
                } else {
                    return -1;
                }
            }
        } else {
            int c11 = r10.c();
            int d11 = r10.d();
            int e11 = r10.e();
            if ((e11 > 0 && c11 <= d11) || (e11 < 0 && d11 <= c11)) {
                while (!N0(charSequence2, 0, charSequence, c11, charSequence2.length(), z10)) {
                    if (c11 != d11) {
                        c11 += e11;
                    } else {
                        return -1;
                    }
                }
                return c11;
            }
            return -1;
        }
    }

    @NotNull
    public static final String n1(@NotNull String str, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int q02 = StringsKt.q0(str, delimiter, 0, false, 6, null);
        if (q02 != -1) {
            String substring = str.substring(0, q02);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return substring;
        }
        return missingDelimiterValue;
    }

    static /* synthetic */ int o0(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z10, boolean z11, int i12, Object obj) {
        if ((i12 & 16) != 0) {
            z11 = false;
        }
        return n0(charSequence, charSequence2, i10, i11, z10, z11);
    }

    public static /* synthetic */ String o1(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return m1(str, c10, str2);
    }

    public static /* synthetic */ int p0(CharSequence charSequence, char c10, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return l0(charSequence, c10, i10, z10);
    }

    public static /* synthetic */ String p1(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return n1(str, str2, str3);
    }

    public static /* synthetic */ int q0(CharSequence charSequence, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return m0(charSequence, str, i10, z10);
    }

    @NotNull
    public static final String q1(@NotNull String str, char c10, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int x02 = StringsKt.x0(str, c10, 0, false, 6, null);
        if (x02 != -1) {
            String substring = str.substring(0, x02);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return substring;
        }
        return missingDelimiterValue;
    }

    public static final int r0(@NotNull CharSequence charSequence, @NotNull char[] chars, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(chars, "chars");
        if (!z10 && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(kotlin.collections.n.f1(chars), i10);
        }
        int e10 = kotlin.ranges.e.e(i10, 0);
        int k02 = StringsKt.k0(charSequence);
        if (e10 > k02) {
            return -1;
        }
        while (true) {
            char charAt = charSequence.charAt(e10);
            for (char c10 : chars) {
                if (kotlin.text.a.g(c10, charAt, z10)) {
                    return e10;
                }
            }
            if (e10 != k02) {
                e10++;
            } else {
                return -1;
            }
        }
    }

    @NotNull
    public static final String r1(@NotNull String str, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        Intrinsics.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int y02 = StringsKt.y0(str, delimiter, 0, false, 6, null);
        if (y02 != -1) {
            String substring = str.substring(0, y02);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return substring;
        }
        return missingDelimiterValue;
    }

    public static /* synthetic */ int s0(CharSequence charSequence, char[] cArr, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return r0(charSequence, cArr, i10, z10);
    }

    public static /* synthetic */ String s1(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return q1(str, c10, str2);
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, String[] strArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return W0(charSequence, strArr, z10, i10);
    }

    public static boolean t0(@NotNull CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            if (!CharsKt.b(charSequence.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public static /* synthetic */ String t1(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return r1(str, str2, str3);
    }

    @NotNull
    public static final kotlin.collections.w u0(@NotNull CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return new a(charSequence);
    }

    @Nullable
    public static Boolean u1(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (Intrinsics.areEqual(str, "true")) {
            return Boolean.TRUE;
        }
        if (Intrinsics.areEqual(str, "false")) {
            return Boolean.FALSE;
        }
        return null;
    }

    public static final int v0(@NotNull CharSequence charSequence, char c10, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (!z10 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(c10, i10);
        }
        return z0(charSequence, new char[]{c10}, i10, z10);
    }

    @NotNull
    public static CharSequence v1(@NotNull CharSequence charSequence) {
        int i10;
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i11 = 0;
        boolean z10 = false;
        while (i11 <= length) {
            if (!z10) {
                i10 = i11;
            } else {
                i10 = length;
            }
            boolean b10 = CharsKt.b(charSequence.charAt(i10));
            if (!z10) {
                if (!b10) {
                    z10 = true;
                } else {
                    i11++;
                }
            } else if (!b10) {
                break;
            } else {
                length--;
            }
        }
        return charSequence.subSequence(i11, length + 1);
    }

    public static final int w0(@NotNull CharSequence charSequence, @NotNull String string, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(string, "string");
        if (!z10 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(string, i10);
        }
        return n0(charSequence, string, i10, 0, z10, true);
    }

    @NotNull
    public static String w1(@NotNull String str, @NotNull char... chars) {
        int i10;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(chars, "chars");
        int length = str.length() - 1;
        int i11 = 0;
        boolean z10 = false;
        while (i11 <= length) {
            if (!z10) {
                i10 = i11;
            } else {
                i10 = length;
            }
            boolean c02 = kotlin.collections.n.c0(chars, str.charAt(i10));
            if (!z10) {
                if (!c02) {
                    z10 = true;
                } else {
                    i11++;
                }
            } else if (!c02) {
                break;
            } else {
                length--;
            }
        }
        return str.subSequence(i11, length + 1).toString();
    }

    public static /* synthetic */ int x0(CharSequence charSequence, char c10, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = StringsKt.k0(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return v0(charSequence, c10, i10, z10);
    }

    @NotNull
    public static String x1(@NotNull String str, @NotNull char... chars) {
        CharSequence charSequence;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(chars, "chars");
        int length = str.length() - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (!kotlin.collections.n.c0(chars, str.charAt(length))) {
                    charSequence = str.subSequence(0, length + 1);
                    break;
                } else if (i10 < 0) {
                    break;
                } else {
                    length = i10;
                }
            }
            return charSequence.toString();
        }
        charSequence = "";
        return charSequence.toString();
    }

    public static /* synthetic */ int y0(CharSequence charSequence, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = StringsKt.k0(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return w0(charSequence, str, i10, z10);
    }

    public static final int z0(@NotNull CharSequence charSequence, @NotNull char[] chars, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(chars, "chars");
        if (!z10 && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(kotlin.collections.n.f1(chars), i10);
        }
        for (int j10 = kotlin.ranges.e.j(i10, StringsKt.k0(charSequence)); -1 < j10; j10--) {
            char charAt = charSequence.charAt(j10);
            for (char c10 : chars) {
                if (kotlin.text.a.g(c10, charAt, z10)) {
                    return j10;
                }
            }
        }
        return -1;
    }
}
