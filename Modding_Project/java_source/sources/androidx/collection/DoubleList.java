package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import at.n;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DoubleList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDoubleList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DoubleList.kt\nandroidx/collection/DoubleList\n*L\n1#1,983:1\n367#1:984\n370#1:985\n239#1,6:986\n267#1,6:992\n239#1,6:998\n76#1:1004\n239#1,6:1005\n367#1:1011\n239#1,6:1012\n239#1,6:1018\n253#1,6:1024\n267#1,6:1030\n281#1,6:1036\n253#1,6:1042\n253#1,6:1048\n281#1,6:1054\n367#1:1060\n72#1:1061\n267#1,6:1062\n281#1,6:1068\n65#1:1074\n253#1,6:1075\n253#1,6:1081\n239#1,6:1087\n76#1:1093\n488#1,10:1094\n253#1,4:1104\n498#1,9:1108\n258#1:1117\n507#1,2:1118\n488#1,10:1120\n253#1,4:1130\n498#1,9:1134\n258#1:1143\n507#1,2:1144\n488#1,10:1146\n253#1,4:1156\n498#1,9:1160\n258#1:1169\n507#1,2:1170\n488#1,10:1172\n253#1,4:1182\n498#1,9:1186\n258#1:1195\n507#1,2:1196\n488#1,10:1198\n253#1,4:1208\n498#1,9:1212\n258#1:1221\n507#1,2:1222\n*S KotlinDebug\n*F\n+ 1 DoubleList.kt\nandroidx/collection/DoubleList\n*L\n80#1:984\n85#1:985\n91#1:986,6\n105#1:992,6\n115#1:998,6\n128#1:1004\n145#1:1005,6\n154#1:1011\n168#1:1012,6\n184#1:1018,6\n198#1:1024,6\n214#1:1030,6\n228#1:1036,6\n330#1:1042,6\n344#1:1048,6\n358#1:1054,6\n377#1:1060\n380#1:1061\n391#1:1062,6\n404#1:1068,6\n426#1:1074\n466#1:1075,6\n497#1:1081,6\n513#1:1087,6\n527#1:1093\n-1#1:1094,10\n-1#1:1104,4\n-1#1:1108,9\n-1#1:1117\n-1#1:1118,2\n-1#1:1120,10\n-1#1:1130,4\n-1#1:1134,9\n-1#1:1143\n-1#1:1144,2\n-1#1:1146,10\n-1#1:1156,4\n-1#1:1160,9\n-1#1:1169\n-1#1:1170,2\n-1#1:1172,10\n-1#1:1182,4\n-1#1:1186,9\n-1#1:1195\n-1#1:1196,2\n-1#1:1198,10\n-1#1:1208,4\n-1#1:1212,9\n-1#1:1221\n-1#1:1222,2\n*E\n"})
/* loaded from: classes.dex */
public abstract class DoubleList {
    public int _size;
    @NotNull
    public double[] content;

    public /* synthetic */ DoubleList(int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10);
    }

    public static /* synthetic */ int binarySearch$default(DoubleList doubleList, int i10, int i11, int i12, int i13, Object obj) {
        if (obj == null) {
            if ((i13 & 2) != 0) {
                i11 = 0;
            }
            if ((i13 & 4) != 0) {
                i12 = doubleList._size;
            }
            return doubleList.binarySearch(i10, i11, i12);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: binarySearch");
    }

    public static /* synthetic */ String joinToString$default(DoubleList doubleList, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 1) != 0) {
                charSequence = ", ";
            }
            String str = (i11 & 2) != 0 ? "" : charSequence2;
            String str2 = (i11 & 4) == 0 ? charSequence3 : "";
            if ((i11 & 8) != 0) {
                i10 = -1;
            }
            int i12 = i10;
            if ((i11 & 16) != 0) {
                charSequence4 = "...";
            }
            return doubleList.joinToString(charSequence, str, str2, i12, charSequence4);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
    }

    public final boolean any() {
        return this._size != 0;
    }

    public final int binarySearch(int i10) {
        return binarySearch$default(this, i10, 0, 0, 6, null);
    }

    public final boolean contains(double d10) {
        double[] dArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (dArr[i11] == d10) {
                return true;
            }
        }
        return false;
    }

    public final boolean containsAll(@NotNull DoubleList elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        IntRange v10 = e.v(0, elements._size);
        int c10 = v10.c();
        int d10 = v10.d();
        if (c10 <= d10) {
            while (contains(elements.get(c10))) {
                if (c10 != d10) {
                    c10++;
                } else {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int count() {
        return this._size;
    }

    public final double elementAt(@androidx.annotation.IntRange(from = 0) int i10) {
        if (i10 < 0 || i10 >= this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        return this.content[i10];
    }

    public final double elementAtOrElse(@androidx.annotation.IntRange(from = 0) int i10, @NotNull Function1<? super Integer, Double> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        if (i10 >= 0 && i10 < this._size) {
            return this.content[i10];
        }
        return defaultValue.invoke(Integer.valueOf(i10)).doubleValue();
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof DoubleList) {
            DoubleList doubleList = (DoubleList) obj;
            int i10 = doubleList._size;
            int i11 = this._size;
            if (i10 == i11) {
                double[] dArr = this.content;
                double[] dArr2 = doubleList.content;
                IntRange v10 = e.v(0, i11);
                int c10 = v10.c();
                int d10 = v10.d();
                if (c10 <= d10) {
                    while (dArr[c10] == dArr2[c10]) {
                        if (c10 != d10) {
                            c10++;
                        } else {
                            return true;
                        }
                    }
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    public final double first() {
        if (this._size == 0) {
            RuntimeHelpersKt.throwNoSuchElementException("DoubleList is empty.");
        }
        return this.content[0];
    }

    public final <R> R fold(R r10, @NotNull Function2<? super R, ? super Double, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        double[] dArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            r10 = operation.invoke(r10, Double.valueOf(dArr[i11]));
        }
        return r10;
    }

    public final <R> R foldIndexed(R r10, @NotNull n<? super Integer, ? super R, ? super Double, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        double[] dArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            R r11 = r10;
            r10 = operation.invoke(Integer.valueOf(i11), r11, Double.valueOf(dArr[i11]));
        }
        return r10;
    }

    public final <R> R foldRight(R r10, @NotNull Function2<? super Double, ? super R, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        double[] dArr = this.content;
        int i10 = this._size;
        while (true) {
            i10--;
            if (-1 >= i10) {
                return r10;
            }
            r10 = operation.invoke(Double.valueOf(dArr[i10]), r10);
        }
    }

    public final <R> R foldRightIndexed(R r10, @NotNull n<? super Integer, ? super Double, ? super R, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        double[] dArr = this.content;
        int i10 = this._size;
        while (true) {
            i10--;
            if (-1 >= i10) {
                return r10;
            }
            r10 = operation.invoke(Integer.valueOf(i10), Double.valueOf(dArr[i10]), r10);
        }
    }

    public final void forEach(@NotNull Function1<? super Double, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        double[] dArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            block.invoke(Double.valueOf(dArr[i11]));
        }
    }

    public final void forEachIndexed(@NotNull Function2<? super Integer, ? super Double, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        double[] dArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            block.invoke(Integer.valueOf(i11), Double.valueOf(dArr[i11]));
        }
    }

    public final void forEachReversed(@NotNull Function1<? super Double, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        double[] dArr = this.content;
        int i10 = this._size;
        while (true) {
            i10--;
            if (-1 < i10) {
                block.invoke(Double.valueOf(dArr[i10]));
            } else {
                return;
            }
        }
    }

    public final void forEachReversedIndexed(@NotNull Function2<? super Integer, ? super Double, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        double[] dArr = this.content;
        int i10 = this._size;
        while (true) {
            i10--;
            if (-1 < i10) {
                block.invoke(Integer.valueOf(i10), Double.valueOf(dArr[i10]));
            } else {
                return;
            }
        }
    }

    public final double get(@androidx.annotation.IntRange(from = 0) int i10) {
        if (i10 < 0 || i10 >= this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        return this.content[i10];
    }

    @NotNull
    public final IntRange getIndices() {
        return e.v(0, this._size);
    }

    @androidx.annotation.IntRange(from = -1)
    public final int getLastIndex() {
        return this._size - 1;
    }

    @androidx.annotation.IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)
    public final int getSize() {
        return this._size;
    }

    public int hashCode() {
        double[] dArr = this.content;
        int i10 = this._size;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += Double.hashCode(dArr[i12]) * 31;
        }
        return i11;
    }

    public final int indexOf(double d10) {
        double[] dArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (d10 == dArr[i11]) {
                return i11;
            }
        }
        return -1;
    }

    public final int indexOfFirst(@NotNull Function1<? super Double, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        double[] dArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (predicate.invoke(Double.valueOf(dArr[i11])).booleanValue()) {
                return i11;
            }
        }
        return -1;
    }

    public final int indexOfLast(@NotNull Function1<? super Double, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        double[] dArr = this.content;
        int i10 = this._size;
        while (true) {
            i10--;
            if (-1 >= i10) {
                return -1;
            }
            if (predicate.invoke(Double.valueOf(dArr[i10])).booleanValue()) {
                return i10;
            }
        }
    }

    public final boolean isEmpty() {
        if (this._size == 0) {
            return true;
        }
        return false;
    }

    public final boolean isNotEmpty() {
        if (this._size != 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String joinToString() {
        return joinToString$default(this, null, null, null, 0, null, 31, null);
    }

    public final double last() {
        if (this._size == 0) {
            RuntimeHelpersKt.throwNoSuchElementException("DoubleList is empty.");
        }
        return this.content[this._size - 1];
    }

    public final int lastIndexOf(double d10) {
        double[] dArr = this.content;
        int i10 = this._size;
        while (true) {
            i10--;
            if (-1 >= i10) {
                return -1;
            }
            if (dArr[i10] == d10) {
                return i10;
            }
        }
    }

    public final boolean none() {
        if (this._size == 0) {
            return true;
        }
        return false;
    }

    public final boolean reversedAny(@NotNull Function1<? super Double, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        double[] dArr = this.content;
        for (int i10 = this._size - 1; -1 < i10; i10--) {
            if (predicate.invoke(Double.valueOf(dArr[i10])).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public String toString() {
        return joinToString$default(this, null, "[", "]", 0, null, 25, null);
    }

    private DoubleList(int i10) {
        double[] dArr;
        if (i10 == 0) {
            dArr = DoubleSetKt.getEmptyDoubleArray();
        } else {
            dArr = new double[i10];
        }
        this.content = dArr;
    }

    public final boolean any(@NotNull Function1<? super Double, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        double[] dArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (predicate.invoke(Double.valueOf(dArr[i11])).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public final int binarySearch(int i10, int i11) {
        return binarySearch$default(this, i10, i11, 0, 4, null);
    }

    public final int count(@NotNull Function1<? super Double, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        double[] dArr = this.content;
        int i10 = this._size;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            if (predicate.invoke(Double.valueOf(dArr[i12])).booleanValue()) {
                i11++;
            }
        }
        return i11;
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        return joinToString$default(this, separator, null, null, 0, null, 30, null);
    }

    public final int binarySearch(int i10, int i11, int i12) {
        if (i11 < 0 || i11 >= i12 || i12 > this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("");
        }
        int i13 = i12 - 1;
        while (i11 <= i13) {
            int i14 = (i11 + i13) >>> 1;
            double d10 = this.content[i14];
            double d11 = i10;
            if (d10 < d11) {
                i11 = i14 + 1;
            } else if (d10 <= d11) {
                return i14;
            } else {
                i13 = i14 - 1;
            }
        }
        return -(i11 + 1);
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return joinToString$default(this, separator, prefix, null, 0, null, 28, null);
    }

    public final double first(@NotNull Function1<? super Double, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        double[] dArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            double d10 = dArr[i11];
            if (predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                return d10;
            }
        }
        throw new NoSuchElementException("DoubleList contains no element matching the predicate.");
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        return joinToString$default(this, separator, prefix, postfix, 0, null, 24, null);
    }

    public static /* synthetic */ String joinToString$default(DoubleList doubleList, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, Function1 transform, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 1) != 0) {
                separator = ", ";
            }
            if ((i11 & 2) != 0) {
                prefix = "";
            }
            if ((i11 & 4) != 0) {
                postfix = "";
            }
            if ((i11 & 8) != 0) {
                i10 = -1;
            }
            if ((i11 & 16) != 0) {
                truncated = "...";
            }
            Intrinsics.checkNotNullParameter(separator, "separator");
            Intrinsics.checkNotNullParameter(prefix, "prefix");
            Intrinsics.checkNotNullParameter(postfix, "postfix");
            Intrinsics.checkNotNullParameter(truncated, "truncated");
            Intrinsics.checkNotNullParameter(transform, "transform");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(prefix);
            double[] dArr = doubleList.content;
            int i12 = doubleList._size;
            int i13 = 0;
            while (true) {
                if (i13 < i12) {
                    double d10 = dArr[i13];
                    if (i13 == i10) {
                        sb2.append(truncated);
                        break;
                    }
                    if (i13 != 0) {
                        sb2.append(separator);
                    }
                    sb2.append((CharSequence) transform.invoke(Double.valueOf(d10)));
                    i13++;
                } else {
                    sb2.append(postfix);
                    break;
                }
            }
            String sb3 = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
            return sb3;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        return joinToString$default(this, separator, prefix, postfix, i10, null, 16, null);
    }

    public final double last(@NotNull Function1<? super Double, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        double[] dArr = this.content;
        int i10 = this._size;
        while (true) {
            i10--;
            if (-1 < i10) {
                double d10 = dArr[i10];
                if (predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                    return d10;
                }
            } else {
                throw new NoSuchElementException("DoubleList contains no element matching the predicate.");
            }
        }
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        double[] dArr = this.content;
        int i11 = this._size;
        int i12 = 0;
        while (true) {
            if (i12 < i11) {
                double d10 = dArr[i12];
                if (i12 == i10) {
                    sb2.append(truncated);
                    break;
                }
                if (i12 != 0) {
                    sb2.append(separator);
                }
                sb2.append(d10);
                i12++;
            } else {
                sb2.append(postfix);
                break;
            }
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public static /* synthetic */ void getContent$annotations() {
    }

    public static /* synthetic */ void get_size$annotations() {
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @NotNull Function1<? super Double, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        double[] dArr = this.content;
        int i11 = this._size;
        int i12 = 0;
        while (true) {
            if (i12 < i11) {
                double d10 = dArr[i12];
                if (i12 == i10) {
                    sb2.append(truncated);
                    break;
                }
                if (i12 != 0) {
                    sb2.append(separator);
                }
                sb2.append(transform.invoke(Double.valueOf(d10)));
                i12++;
            } else {
                sb2.append(postfix);
                break;
            }
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull Function1<? super Double, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        double[] dArr = this.content;
        int i11 = this._size;
        int i12 = 0;
        while (true) {
            if (i12 < i11) {
                double d10 = dArr[i12];
                if (i12 == i10) {
                    sb2.append((CharSequence) "...");
                    break;
                }
                if (i12 != 0) {
                    sb2.append(separator);
                }
                sb2.append(transform.invoke(Double.valueOf(d10)));
                i12++;
            } else {
                sb2.append(postfix);
                break;
            }
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, @NotNull Function1<? super Double, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        double[] dArr = this.content;
        int i10 = this._size;
        int i11 = 0;
        while (true) {
            if (i11 < i10) {
                double d10 = dArr[i11];
                if (i11 == -1) {
                    sb2.append((CharSequence) "...");
                    break;
                }
                if (i11 != 0) {
                    sb2.append(separator);
                }
                sb2.append(transform.invoke(Double.valueOf(d10)));
                i11++;
            } else {
                sb2.append(postfix);
                break;
            }
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull Function1<? super Double, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        double[] dArr = this.content;
        int i10 = this._size;
        int i11 = 0;
        while (true) {
            if (i11 < i10) {
                double d10 = dArr[i11];
                if (i11 == -1) {
                    sb2.append((CharSequence) "...");
                    break;
                }
                if (i11 != 0) {
                    sb2.append(separator);
                }
                sb2.append(transform.invoke(Double.valueOf(d10)));
                i11++;
            } else {
                sb2.append((CharSequence) "");
                break;
            }
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull Function1<? super Double, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        double[] dArr = this.content;
        int i10 = this._size;
        int i11 = 0;
        while (true) {
            if (i11 < i10) {
                double d10 = dArr[i11];
                if (i11 == -1) {
                    sb2.append((CharSequence) "...");
                    break;
                }
                if (i11 != 0) {
                    sb2.append(separator);
                }
                sb2.append(transform.invoke(Double.valueOf(d10)));
                i11++;
            } else {
                sb2.append((CharSequence) "");
                break;
            }
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    @NotNull
    public final String joinToString(@NotNull Function1<? super Double, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        double[] dArr = this.content;
        int i10 = this._size;
        int i11 = 0;
        while (true) {
            if (i11 < i10) {
                double d10 = dArr[i11];
                if (i11 == -1) {
                    sb2.append((CharSequence) "...");
                    break;
                }
                if (i11 != 0) {
                    sb2.append((CharSequence) ", ");
                }
                sb2.append(transform.invoke(Double.valueOf(d10)));
                i11++;
            } else {
                sb2.append((CharSequence) "");
                break;
            }
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }
}
