package kotlin.text;

import java.util.Comparator;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StringsJVM.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStringsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringsJVM.kt\nkotlin/text/StringsKt__StringsJVMKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,817:1\n1179#2,2:818\n1#3:820\n*S KotlinDebug\n*F\n+ 1 StringsJVM.kt\nkotlin/text/StringsKt__StringsJVMKt\n*L\n73#1:818,2\n*E\n"})
/* loaded from: classes8.dex */
public class w extends StringsKt__StringNumberConversionsKt {
    public static boolean A(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2, boolean z10) {
        if (z10) {
            return StringsKt__StringsKt.c0(charSequence, charSequence2);
        }
        return z(charSequence, charSequence2);
    }

    @ms.c
    @NotNull
    public static String B(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.length() > 0 && !Character.isLowerCase(str.charAt(0))) {
            StringBuilder sb2 = new StringBuilder();
            String substring = str.substring(0, 1);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
            Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = substring.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            sb2.append(lowerCase);
            String substring2 = str.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
            sb2.append(substring2);
            return sb2.toString();
        }
        return str;
    }

    @NotNull
    public static String C(@NotNull byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return new String(bArr, Charsets.UTF_8);
    }

    @NotNull
    public static byte[] D(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        return bytes;
    }

    public static boolean E(@NotNull String str, @NotNull String suffix, boolean z10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (!z10) {
            return str.endsWith(suffix);
        }
        return StringsKt.J(str, str.length() - suffix.length(), suffix, 0, suffix.length(), true);
    }

    public static /* synthetic */ boolean F(String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return StringsKt.E(str, str2, z10);
    }

    public static boolean G(@Nullable String str, @Nullable String str2, boolean z10) {
        if (str == null) {
            if (str2 == null) {
                return true;
            }
            return false;
        } else if (!z10) {
            return str.equals(str2);
        } else {
            return str.equalsIgnoreCase(str2);
        }
    }

    public static /* synthetic */ boolean H(String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return StringsKt.G(str, str2, z10);
    }

    @NotNull
    public static Comparator<String> I(@NotNull StringCompanionObject stringCompanionObject) {
        Intrinsics.checkNotNullParameter(stringCompanionObject, "<this>");
        Comparator<String> CASE_INSENSITIVE_ORDER = String.CASE_INSENSITIVE_ORDER;
        Intrinsics.checkNotNullExpressionValue(CASE_INSENSITIVE_ORDER, "CASE_INSENSITIVE_ORDER");
        return CASE_INSENSITIVE_ORDER;
    }

    public static boolean J(@NotNull String str, int i10, @NotNull String other, int i11, int i12, boolean z10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (!z10) {
            return str.regionMatches(i10, other, i11, i12);
        }
        return str.regionMatches(z10, i10, other, i11, i12);
    }

    public static /* synthetic */ boolean K(String str, int i10, String str2, int i11, int i12, boolean z10, int i13, Object obj) {
        if ((i13 & 16) != 0) {
            z10 = false;
        }
        return StringsKt.J(str, i10, str2, i11, i12, z10);
    }

    @NotNull
    public static String L(@NotNull CharSequence charSequence, int i10) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (i10 >= 0) {
            if (i10 == 0) {
                return "";
            }
            int i11 = 1;
            if (i10 != 1) {
                int length = charSequence.length();
                if (length == 0) {
                    return "";
                }
                if (length != 1) {
                    StringBuilder sb2 = new StringBuilder(charSequence.length() * i10);
                    if (1 <= i10) {
                        while (true) {
                            sb2.append(charSequence);
                            if (i11 == i10) {
                                break;
                            }
                            i11++;
                        }
                    }
                    String sb3 = sb2.toString();
                    Intrinsics.checkNotNull(sb3);
                    return sb3;
                }
                char charAt = charSequence.charAt(0);
                char[] cArr = new char[i10];
                for (int i12 = 0; i12 < i10; i12++) {
                    cArr[i12] = charAt;
                }
                return new String(cArr);
            }
            return charSequence.toString();
        }
        throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i10 + '.').toString());
    }

    @NotNull
    public static final String M(@NotNull String str, char c10, char c11, boolean z10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (!z10) {
            String replace = str.replace(c10, c11);
            Intrinsics.checkNotNullExpressionValue(replace, "replace(...)");
            return replace;
        }
        StringBuilder sb2 = new StringBuilder(str.length());
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (a.g(charAt, c10, z10)) {
                charAt = c11;
            }
            sb2.append(charAt);
        }
        return sb2.toString();
    }

    @NotNull
    public static String N(@NotNull String str, @NotNull String oldValue, @NotNull String newValue, boolean z10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(oldValue, "oldValue");
        Intrinsics.checkNotNullParameter(newValue, "newValue");
        int i10 = 0;
        int m02 = StringsKt__StringsKt.m0(str, oldValue, 0, z10);
        if (m02 < 0) {
            return str;
        }
        int length = oldValue.length();
        int e10 = kotlin.ranges.e.e(length, 1);
        int length2 = (str.length() - length) + newValue.length();
        if (length2 >= 0) {
            StringBuilder sb2 = new StringBuilder(length2);
            do {
                sb2.append((CharSequence) str, i10, m02);
                sb2.append(newValue);
                i10 = m02 + length;
                if (m02 >= str.length()) {
                    break;
                }
                m02 = StringsKt__StringsKt.m0(str, oldValue, m02 + e10, z10);
            } while (m02 > 0);
            sb2.append((CharSequence) str, i10, str.length());
            String sb3 = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
            return sb3;
        }
        throw new OutOfMemoryError();
    }

    public static /* synthetic */ String O(String str, char c10, char c11, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return M(str, c10, c11, z10);
    }

    public static /* synthetic */ String P(String str, String str2, String str3, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return StringsKt.N(str, str2, str3, z10);
    }

    @NotNull
    public static final String Q(@NotNull String str, @NotNull String oldValue, @NotNull String newValue, boolean z10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(oldValue, "oldValue");
        Intrinsics.checkNotNullParameter(newValue, "newValue");
        int q02 = StringsKt.q0(str, oldValue, 0, z10, 2, null);
        if (q02 >= 0) {
            return StringsKt__StringsKt.T0(str, q02, oldValue.length() + q02, newValue).toString();
        }
        return str;
    }

    public static /* synthetic */ String R(String str, String str2, String str3, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return Q(str, str2, str3, z10);
    }

    public static boolean S(@NotNull String str, @NotNull String prefix, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (!z10) {
            return str.startsWith(prefix, i10);
        }
        return StringsKt.J(str, i10, prefix, 0, prefix.length(), z10);
    }

    public static boolean T(@NotNull String str, @NotNull String prefix, boolean z10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (!z10) {
            return str.startsWith(prefix);
        }
        return StringsKt.J(str, 0, prefix, 0, prefix.length(), z10);
    }

    public static /* synthetic */ boolean U(String str, String str2, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return StringsKt.S(str, str2, i10, z10);
    }

    public static /* synthetic */ boolean V(String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return StringsKt.T(str, str2, z10);
    }

    @NotNull
    public static String x(@NotNull char[] cArr) {
        Intrinsics.checkNotNullParameter(cArr, "<this>");
        return new String(cArr);
    }

    @NotNull
    public static String y(@NotNull char[] cArr, int i10, int i11) {
        Intrinsics.checkNotNullParameter(cArr, "<this>");
        kotlin.collections.d.Companion.a(i10, i11, cArr.length);
        return new String(cArr, i10, i11 - i10);
    }

    public static final boolean z(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        if ((charSequence instanceof String) && charSequence2 != null) {
            return ((String) charSequence).contentEquals(charSequence2);
        }
        return StringsKt__StringsKt.d0(charSequence, charSequence2);
    }
}
