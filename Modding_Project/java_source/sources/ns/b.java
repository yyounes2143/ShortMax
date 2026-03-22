package ns;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ListBuilder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,718:1\n1#2:719\n*E\n"})
/* loaded from: classes8.dex */
public final class b {
    @NotNull
    public static final <E> E[] d(int i10) {
        if (i10 >= 0) {
            return (E[]) new Object[i10];
        }
        throw new IllegalArgumentException("capacity must be non-negative.");
    }

    @NotNull
    public static final <T> T[] e(@NotNull T[] tArr, int i10) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, i10);
        Intrinsics.checkNotNullExpressionValue(tArr2, "copyOf(...)");
        return tArr2;
    }

    public static final <E> void f(@NotNull E[] eArr, int i10) {
        Intrinsics.checkNotNullParameter(eArr, "<this>");
        eArr[i10] = null;
    }

    public static final <E> void g(@NotNull E[] eArr, int i10, int i11) {
        Intrinsics.checkNotNullParameter(eArr, "<this>");
        while (i10 < i11) {
            f(eArr, i10);
            i10++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> boolean h(T[] tArr, int i10, int i11, List<?> list) {
        if (i11 != list.size()) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (!Intrinsics.areEqual(tArr[i10 + i12], list.get(i12))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> int i(T[] tArr, int i10, int i11) {
        int i12;
        int i13 = 1;
        for (int i14 = 0; i14 < i11; i14++) {
            T t10 = tArr[i10 + i14];
            int i15 = i13 * 31;
            if (t10 != null) {
                i12 = t10.hashCode();
            } else {
                i12 = 0;
            }
            i13 = i15 + i12;
        }
        return i13;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> String j(T[] tArr, int i10, int i11, Collection<? extends T> collection) {
        StringBuilder sb2 = new StringBuilder((i11 * 3) + 2);
        sb2.append("[");
        for (int i12 = 0; i12 < i11; i12++) {
            if (i12 > 0) {
                sb2.append(", ");
            }
            T t10 = tArr[i10 + i12];
            if (t10 == collection) {
                sb2.append("(this Collection)");
            } else {
                sb2.append(t10);
            }
        }
        sb2.append("]");
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }
}
