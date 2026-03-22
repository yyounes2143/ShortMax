package kotlin.collections;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Arrays.kt */
@Metadata
@SourceDebugExtension({"SMAP\nArrays.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Arrays.kt\nkotlin/collections/ArraysKt__ArraysKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n1#2:166\n*E\n"})
/* loaded from: classes8.dex */
public class p extends o {
    public static <T> boolean d(@Nullable T[] tArr, @Nullable T[] tArr2) {
        if (tArr == tArr2) {
            return true;
        }
        if (tArr == null || tArr2 == null || tArr.length != tArr2.length) {
            return false;
        }
        int length = tArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            T t10 = tArr[i10];
            T t11 = tArr2[i10];
            if (t10 != t11) {
                if (t10 == null || t11 == null) {
                    return false;
                }
                if ((t10 instanceof Object[]) && (t11 instanceof Object[])) {
                    if (!n.d((Object[]) t10, (Object[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof byte[]) && (t11 instanceof byte[])) {
                    if (!Arrays.equals((byte[]) t10, (byte[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof short[]) && (t11 instanceof short[])) {
                    if (!Arrays.equals((short[]) t10, (short[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof int[]) && (t11 instanceof int[])) {
                    if (!Arrays.equals((int[]) t10, (int[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof long[]) && (t11 instanceof long[])) {
                    if (!Arrays.equals((long[]) t10, (long[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof float[]) && (t11 instanceof float[])) {
                    if (!Arrays.equals((float[]) t10, (float[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof double[]) && (t11 instanceof double[])) {
                    if (!Arrays.equals((double[]) t10, (double[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof char[]) && (t11 instanceof char[])) {
                    if (!Arrays.equals((char[]) t10, (char[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof boolean[]) && (t11 instanceof boolean[])) {
                    if (!Arrays.equals((boolean[]) t10, (boolean[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof ms.m) && (t11 instanceof ms.m)) {
                    if (!os.a.c(((ms.m) t10).s(), ((ms.m) t11).s())) {
                        return false;
                    }
                } else if ((t10 instanceof ms.t) && (t11 instanceof ms.t)) {
                    if (!os.a.a(((ms.t) t10).s(), ((ms.t) t11).s())) {
                        return false;
                    }
                } else if ((t10 instanceof ms.o) && (t11 instanceof ms.o)) {
                    if (!os.a.b(((ms.o) t10).s(), ((ms.o) t11).s())) {
                        return false;
                    }
                } else if ((t10 instanceof ms.q) && (t11 instanceof ms.q)) {
                    if (!os.a.d(((ms.q) t10).s(), ((ms.q) t11).s())) {
                        return false;
                    }
                } else if (!Intrinsics.areEqual(t10, t11)) {
                    return false;
                }
            }
        }
        return true;
    }

    @NotNull
    public static <T> String e(@Nullable T[] tArr) {
        if (tArr == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder((kotlin.ranges.e.j(tArr.length, 429496729) * 5) + 2);
        f(tArr, sb2, new ArrayList());
        return sb2.toString();
    }

    private static final <T> void f(T[] tArr, StringBuilder sb2, List<Object[]> list) {
        if (list.contains(tArr)) {
            sb2.append("[...]");
            return;
        }
        list.add(tArr);
        sb2.append('[');
        int length = tArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb2.append(", ");
            }
            T t10 = tArr[i10];
            if (t10 == null) {
                sb2.append("null");
            } else if (t10 instanceof Object[]) {
                f((Object[]) t10, sb2, list);
                Unit unit = Unit.f60915a;
            } else if (t10 instanceof byte[]) {
                String arrays = Arrays.toString((byte[]) t10);
                Intrinsics.checkNotNullExpressionValue(arrays, "toString(...)");
                sb2.append(arrays);
            } else if (t10 instanceof short[]) {
                String arrays2 = Arrays.toString((short[]) t10);
                Intrinsics.checkNotNullExpressionValue(arrays2, "toString(...)");
                sb2.append(arrays2);
            } else if (t10 instanceof int[]) {
                String arrays3 = Arrays.toString((int[]) t10);
                Intrinsics.checkNotNullExpressionValue(arrays3, "toString(...)");
                sb2.append(arrays3);
            } else if (t10 instanceof long[]) {
                String arrays4 = Arrays.toString((long[]) t10);
                Intrinsics.checkNotNullExpressionValue(arrays4, "toString(...)");
                sb2.append(arrays4);
            } else if (t10 instanceof float[]) {
                String arrays5 = Arrays.toString((float[]) t10);
                Intrinsics.checkNotNullExpressionValue(arrays5, "toString(...)");
                sb2.append(arrays5);
            } else if (t10 instanceof double[]) {
                String arrays6 = Arrays.toString((double[]) t10);
                Intrinsics.checkNotNullExpressionValue(arrays6, "toString(...)");
                sb2.append(arrays6);
            } else if (t10 instanceof char[]) {
                String arrays7 = Arrays.toString((char[]) t10);
                Intrinsics.checkNotNullExpressionValue(arrays7, "toString(...)");
                sb2.append(arrays7);
            } else if (t10 instanceof boolean[]) {
                String arrays8 = Arrays.toString((boolean[]) t10);
                Intrinsics.checkNotNullExpressionValue(arrays8, "toString(...)");
                sb2.append(arrays8);
            } else if (t10 instanceof ms.m) {
                sb2.append(os.a.e(((ms.m) t10).s()));
            } else if (t10 instanceof ms.t) {
                sb2.append(os.a.g(((ms.t) t10).s()));
            } else if (t10 instanceof ms.o) {
                sb2.append(os.a.f(((ms.o) t10).s()));
            } else if (t10 instanceof ms.q) {
                sb2.append(os.a.h(((ms.q) t10).s()));
            } else {
                sb2.append(t10.toString());
            }
        }
        sb2.append(']');
        list.remove(CollectionsKt.p(list));
    }
}
