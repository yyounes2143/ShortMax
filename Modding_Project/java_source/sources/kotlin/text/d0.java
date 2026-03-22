package kotlin.text;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UStrings.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d0 {
    public static final byte a(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ms.l b10 = b(str);
        if (b10 != null) {
            return b10.g();
        }
        StringsKt__StringNumberConversionsKt.t(str);
        throw new KotlinNothingValueException();
    }

    @Nullable
    public static final ms.l b(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return c(str, 10);
    }

    @Nullable
    public static final ms.l c(@NotNull String str, int i10) {
        int compare;
        Intrinsics.checkNotNullParameter(str, "<this>");
        ms.n f10 = f(str, i10);
        if (f10 == null) {
            return null;
        }
        int g10 = f10.g();
        compare = Integer.compare(g10 ^ Integer.MIN_VALUE, ms.n.b(255) ^ Integer.MIN_VALUE);
        if (compare > 0) {
            return null;
        }
        return ms.l.a(ms.l.b((byte) g10));
    }

    public static final int d(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ms.n e10 = e(str);
        if (e10 != null) {
            return e10.g();
        }
        StringsKt__StringNumberConversionsKt.t(str);
        throw new KotlinNothingValueException();
    }

    @Nullable
    public static final ms.n e(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return f(str, 10);
    }

    @Nullable
    public static final ms.n f(@NotNull String str, int i10) {
        int i11;
        int compare;
        int compare2;
        int compare3;
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt.checkRadix(i10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i12 = 0;
        char charAt = str.charAt(0);
        if (Intrinsics.compare((int) charAt, 48) < 0) {
            i11 = 1;
            if (length == 1 || charAt != '+') {
                return null;
            }
        } else {
            i11 = 0;
        }
        int b10 = ms.n.b(i10);
        int i13 = 119304647;
        while (i11 < length) {
            int a10 = CharsKt__CharJVMKt.a(str.charAt(i11), i10);
            if (a10 >= 0) {
                compare = Integer.compare(i12 ^ Integer.MIN_VALUE, i13 ^ Integer.MIN_VALUE);
                if (compare > 0) {
                    if (i13 == 119304647) {
                        i13 = c0.a(-1, b10);
                        compare3 = Integer.compare(i12 ^ Integer.MIN_VALUE, i13 ^ Integer.MIN_VALUE);
                        if (compare3 > 0) {
                        }
                    }
                    return null;
                }
                int b11 = ms.n.b(i12 * b10);
                int b12 = ms.n.b(ms.n.b(a10) + b11);
                compare2 = Integer.compare(b12 ^ Integer.MIN_VALUE, b11 ^ Integer.MIN_VALUE);
                if (compare2 < 0) {
                    return null;
                }
                i11++;
                i12 = b12;
            } else {
                return null;
            }
        }
        return ms.n.a(i12);
    }

    public static final long g(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ms.p h10 = h(str);
        if (h10 != null) {
            return h10.g();
        }
        StringsKt__StringNumberConversionsKt.t(str);
        throw new KotlinNothingValueException();
    }

    @Nullable
    public static final ms.p h(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return i(str, 10);
    }

    @Nullable
    public static final ms.p i(@NotNull String str, int i10) {
        int a10;
        int compare;
        int compare2;
        int compare3;
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt.checkRadix(i10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i11 = 0;
        char charAt = str.charAt(0);
        if (Intrinsics.compare((int) charAt, 48) < 0) {
            i11 = 1;
            if (length == 1 || charAt != '+') {
                return null;
            }
        }
        long b10 = ms.p.b(i10);
        long j10 = 0;
        long j11 = 512409557603043100L;
        while (i11 < length) {
            if (CharsKt__CharJVMKt.a(str.charAt(i11), i10) >= 0) {
                compare = Long.compare(j10 ^ Long.MIN_VALUE, j11 ^ Long.MIN_VALUE);
                if (compare > 0) {
                    if (j11 == 512409557603043100L) {
                        j11 = b0.a(-1L, b10);
                        compare3 = Long.compare(j10 ^ Long.MIN_VALUE, j11 ^ Long.MIN_VALUE);
                        if (compare3 > 0) {
                        }
                    }
                    return null;
                }
                long b11 = ms.p.b(j10 * b10);
                long b12 = ms.p.b(ms.p.b(ms.n.b(a10) & 4294967295L) + b11);
                compare2 = Long.compare(b12 ^ Long.MIN_VALUE, b11 ^ Long.MIN_VALUE);
                if (compare2 < 0) {
                    return null;
                }
                i11++;
                j10 = b12;
            } else {
                return null;
            }
        }
        return ms.p.a(j10);
    }

    public static final short j(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ms.s k10 = k(str);
        if (k10 != null) {
            return k10.g();
        }
        StringsKt__StringNumberConversionsKt.t(str);
        throw new KotlinNothingValueException();
    }

    @Nullable
    public static final ms.s k(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return l(str, 10);
    }

    @Nullable
    public static final ms.s l(@NotNull String str, int i10) {
        int compare;
        Intrinsics.checkNotNullParameter(str, "<this>");
        ms.n f10 = f(str, i10);
        if (f10 == null) {
            return null;
        }
        int g10 = f10.g();
        compare = Integer.compare(g10 ^ Integer.MIN_VALUE, ms.n.b(65535) ^ Integer.MIN_VALUE);
        if (compare > 0) {
            return null;
        }
        return ms.s.a(ms.s.b((short) g10));
    }
}
