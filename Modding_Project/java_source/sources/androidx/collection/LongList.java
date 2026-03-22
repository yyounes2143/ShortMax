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
/* compiled from: LongList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLongList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongList.kt\nandroidx/collection/LongList\n*L\n1#1,972:1\n364#1:973\n367#1:974\n237#1,6:975\n265#1,6:981\n237#1,6:987\n74#1:993\n237#1,6:994\n364#1:1000\n237#1,6:1001\n237#1,6:1007\n251#1,6:1013\n265#1,6:1019\n279#1,6:1025\n251#1,6:1031\n251#1,6:1037\n279#1,6:1043\n364#1:1049\n70#1:1050\n265#1,6:1051\n279#1,6:1057\n65#1:1063\n251#1,6:1064\n251#1,6:1070\n237#1,6:1076\n74#1:1082\n485#1,10:1083\n251#1,4:1093\n495#1,9:1097\n256#1:1106\n504#1,2:1107\n485#1,10:1109\n251#1,4:1119\n495#1,9:1123\n256#1:1132\n504#1,2:1133\n485#1,10:1135\n251#1,4:1145\n495#1,9:1149\n256#1:1158\n504#1,2:1159\n485#1,10:1161\n251#1,4:1171\n495#1,9:1175\n256#1:1184\n504#1,2:1185\n485#1,10:1187\n251#1,4:1197\n495#1,9:1201\n256#1:1210\n504#1,2:1211\n*S KotlinDebug\n*F\n+ 1 LongList.kt\nandroidx/collection/LongList\n*L\n78#1:973\n83#1:974\n89#1:975,6\n103#1:981,6\n113#1:987,6\n126#1:993\n143#1:994,6\n152#1:1000\n166#1:1001,6\n182#1:1007,6\n196#1:1013,6\n212#1:1019,6\n226#1:1025,6\n328#1:1031,6\n342#1:1037,6\n355#1:1043,6\n374#1:1049\n377#1:1050\n388#1:1051,6\n401#1:1057,6\n423#1:1063\n463#1:1064,6\n494#1:1070,6\n510#1:1076,6\n523#1:1082\n-1#1:1083,10\n-1#1:1093,4\n-1#1:1097,9\n-1#1:1106\n-1#1:1107,2\n-1#1:1109,10\n-1#1:1119,4\n-1#1:1123,9\n-1#1:1132\n-1#1:1133,2\n-1#1:1135,10\n-1#1:1145,4\n-1#1:1149,9\n-1#1:1158\n-1#1:1159,2\n-1#1:1161,10\n-1#1:1171,4\n-1#1:1175,9\n-1#1:1184\n-1#1:1185,2\n-1#1:1187,10\n-1#1:1197,4\n-1#1:1201,9\n-1#1:1210\n-1#1:1211,2\n*E\n"})
/* loaded from: classes.dex */
public abstract class LongList {
    public int _size;
    @NotNull
    public long[] content;

    public /* synthetic */ LongList(int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10);
    }

    public static /* synthetic */ int binarySearch$default(LongList longList, int i10, int i11, int i12, int i13, Object obj) {
        if (obj == null) {
            if ((i13 & 2) != 0) {
                i11 = 0;
            }
            if ((i13 & 4) != 0) {
                i12 = longList._size;
            }
            return longList.binarySearch(i10, i11, i12);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: binarySearch");
    }

    public static /* synthetic */ String joinToString$default(LongList longList, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, int i11, Object obj) {
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
            return longList.joinToString(charSequence, str, str2, i12, charSequence4);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
    }

    public final boolean any() {
        return this._size != 0;
    }

    public final int binarySearch(int i10) {
        return binarySearch$default(this, i10, 0, 0, 6, null);
    }

    public final boolean contains(long j10) {
        long[] jArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (jArr[i11] == j10) {
                return true;
            }
        }
        return false;
    }

    public final boolean containsAll(@NotNull LongList elements) {
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

    public final long elementAt(@androidx.annotation.IntRange(from = 0) int i10) {
        if (i10 < 0 || i10 >= this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        return this.content[i10];
    }

    public final long elementAtOrElse(@androidx.annotation.IntRange(from = 0) int i10, @NotNull Function1<? super Integer, Long> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        if (i10 >= 0 && i10 < this._size) {
            return this.content[i10];
        }
        return defaultValue.invoke(Integer.valueOf(i10)).longValue();
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof LongList) {
            LongList longList = (LongList) obj;
            int i10 = longList._size;
            int i11 = this._size;
            if (i10 == i11) {
                long[] jArr = this.content;
                long[] jArr2 = longList.content;
                IntRange v10 = e.v(0, i11);
                int c10 = v10.c();
                int d10 = v10.d();
                if (c10 <= d10) {
                    while (jArr[c10] == jArr2[c10]) {
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

    public final long first() {
        if (this._size == 0) {
            RuntimeHelpersKt.throwNoSuchElementException("LongList is empty.");
        }
        return this.content[0];
    }

    public final <R> R fold(R r10, @NotNull Function2<? super R, ? super Long, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        long[] jArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            r10 = operation.invoke(r10, Long.valueOf(jArr[i11]));
        }
        return r10;
    }

    public final <R> R foldIndexed(R r10, @NotNull n<? super Integer, ? super R, ? super Long, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        long[] jArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            R r11 = r10;
            r10 = operation.invoke(Integer.valueOf(i11), r11, Long.valueOf(jArr[i11]));
        }
        return r10;
    }

    public final <R> R foldRight(R r10, @NotNull Function2<? super Long, ? super R, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        long[] jArr = this.content;
        int i10 = this._size;
        while (true) {
            i10--;
            if (-1 >= i10) {
                return r10;
            }
            r10 = operation.invoke(Long.valueOf(jArr[i10]), r10);
        }
    }

    public final <R> R foldRightIndexed(R r10, @NotNull n<? super Integer, ? super Long, ? super R, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        long[] jArr = this.content;
        int i10 = this._size;
        while (true) {
            i10--;
            if (-1 >= i10) {
                return r10;
            }
            r10 = operation.invoke(Integer.valueOf(i10), Long.valueOf(jArr[i10]), r10);
        }
    }

    public final void forEach(@NotNull Function1<? super Long, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        long[] jArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            block.invoke(Long.valueOf(jArr[i11]));
        }
    }

    public final void forEachIndexed(@NotNull Function2<? super Integer, ? super Long, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        long[] jArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            block.invoke(Integer.valueOf(i11), Long.valueOf(jArr[i11]));
        }
    }

    public final void forEachReversed(@NotNull Function1<? super Long, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        long[] jArr = this.content;
        int i10 = this._size;
        while (true) {
            i10--;
            if (-1 < i10) {
                block.invoke(Long.valueOf(jArr[i10]));
            } else {
                return;
            }
        }
    }

    public final void forEachReversedIndexed(@NotNull Function2<? super Integer, ? super Long, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        long[] jArr = this.content;
        int i10 = this._size;
        while (true) {
            i10--;
            if (-1 < i10) {
                block.invoke(Integer.valueOf(i10), Long.valueOf(jArr[i10]));
            } else {
                return;
            }
        }
    }

    public final long get(@androidx.annotation.IntRange(from = 0) int i10) {
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
        long[] jArr = this.content;
        int i10 = this._size;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += Long.hashCode(jArr[i12]) * 31;
        }
        return i11;
    }

    public final int indexOf(long j10) {
        long[] jArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (j10 == jArr[i11]) {
                return i11;
            }
        }
        return -1;
    }

    public final int indexOfFirst(@NotNull Function1<? super Long, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        long[] jArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (predicate.invoke(Long.valueOf(jArr[i11])).booleanValue()) {
                return i11;
            }
        }
        return -1;
    }

    public final int indexOfLast(@NotNull Function1<? super Long, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        long[] jArr = this.content;
        int i10 = this._size;
        while (true) {
            i10--;
            if (-1 >= i10) {
                return -1;
            }
            if (predicate.invoke(Long.valueOf(jArr[i10])).booleanValue()) {
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

    public final long last() {
        if (this._size == 0) {
            RuntimeHelpersKt.throwNoSuchElementException("LongList is empty.");
        }
        return this.content[this._size - 1];
    }

    public final int lastIndexOf(long j10) {
        long[] jArr = this.content;
        int i10 = this._size;
        while (true) {
            i10--;
            if (-1 >= i10) {
                return -1;
            }
            if (jArr[i10] == j10) {
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

    public final boolean reversedAny(@NotNull Function1<? super Long, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        long[] jArr = this.content;
        for (int i10 = this._size - 1; -1 < i10; i10--) {
            if (predicate.invoke(Long.valueOf(jArr[i10])).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public String toString() {
        return joinToString$default(this, null, "[", "]", 0, null, 25, null);
    }

    private LongList(int i10) {
        long[] jArr;
        if (i10 == 0) {
            jArr = LongSetKt.getEmptyLongArray();
        } else {
            jArr = new long[i10];
        }
        this.content = jArr;
    }

    public final boolean any(@NotNull Function1<? super Long, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        long[] jArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (predicate.invoke(Long.valueOf(jArr[i11])).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public final int binarySearch(int i10, int i11) {
        return binarySearch$default(this, i10, i11, 0, 4, null);
    }

    public final int count(@NotNull Function1<? super Long, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        long[] jArr = this.content;
        int i10 = this._size;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            if (predicate.invoke(Long.valueOf(jArr[i12])).booleanValue()) {
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
            int i15 = (this.content[i14] > i10 ? 1 : (this.content[i14] == i10 ? 0 : -1));
            if (i15 < 0) {
                i11 = i14 + 1;
            } else if (i15 <= 0) {
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

    public final long first(@NotNull Function1<? super Long, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        long[] jArr = this.content;
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            long j10 = jArr[i11];
            if (predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                return j10;
            }
        }
        throw new NoSuchElementException("LongList contains no element matching the predicate.");
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        return joinToString$default(this, separator, prefix, postfix, 0, null, 24, null);
    }

    public static /* synthetic */ String joinToString$default(LongList longList, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, Function1 transform, int i11, Object obj) {
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
            long[] jArr = longList.content;
            int i12 = longList._size;
            int i13 = 0;
            while (true) {
                if (i13 < i12) {
                    long j10 = jArr[i13];
                    if (i13 == i10) {
                        sb2.append(truncated);
                        break;
                    }
                    if (i13 != 0) {
                        sb2.append(separator);
                    }
                    sb2.append((CharSequence) transform.invoke(Long.valueOf(j10)));
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

    public final long last(@NotNull Function1<? super Long, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        long[] jArr = this.content;
        int i10 = this._size;
        while (true) {
            i10--;
            if (-1 < i10) {
                long j10 = jArr[i10];
                if (predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                    return j10;
                }
            } else {
                throw new NoSuchElementException("LongList contains no element matching the predicate.");
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
        long[] jArr = this.content;
        int i11 = this._size;
        int i12 = 0;
        while (true) {
            if (i12 < i11) {
                long j10 = jArr[i12];
                if (i12 == i10) {
                    sb2.append(truncated);
                    break;
                }
                if (i12 != 0) {
                    sb2.append(separator);
                }
                sb2.append(j10);
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
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @NotNull Function1<? super Long, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        long[] jArr = this.content;
        int i11 = this._size;
        int i12 = 0;
        while (true) {
            if (i12 < i11) {
                long j10 = jArr[i12];
                if (i12 == i10) {
                    sb2.append(truncated);
                    break;
                }
                if (i12 != 0) {
                    sb2.append(separator);
                }
                sb2.append(transform.invoke(Long.valueOf(j10)));
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
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull Function1<? super Long, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        long[] jArr = this.content;
        int i11 = this._size;
        int i12 = 0;
        while (true) {
            if (i12 < i11) {
                long j10 = jArr[i12];
                if (i12 == i10) {
                    sb2.append((CharSequence) "...");
                    break;
                }
                if (i12 != 0) {
                    sb2.append(separator);
                }
                sb2.append(transform.invoke(Long.valueOf(j10)));
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
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, @NotNull Function1<? super Long, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        long[] jArr = this.content;
        int i10 = this._size;
        int i11 = 0;
        while (true) {
            if (i11 < i10) {
                long j10 = jArr[i11];
                if (i11 == -1) {
                    sb2.append((CharSequence) "...");
                    break;
                }
                if (i11 != 0) {
                    sb2.append(separator);
                }
                sb2.append(transform.invoke(Long.valueOf(j10)));
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
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull Function1<? super Long, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        long[] jArr = this.content;
        int i10 = this._size;
        int i11 = 0;
        while (true) {
            if (i11 < i10) {
                long j10 = jArr[i11];
                if (i11 == -1) {
                    sb2.append((CharSequence) "...");
                    break;
                }
                if (i11 != 0) {
                    sb2.append(separator);
                }
                sb2.append(transform.invoke(Long.valueOf(j10)));
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
    public final String joinToString(@NotNull CharSequence separator, @NotNull Function1<? super Long, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        long[] jArr = this.content;
        int i10 = this._size;
        int i11 = 0;
        while (true) {
            if (i11 < i10) {
                long j10 = jArr[i11];
                if (i11 == -1) {
                    sb2.append((CharSequence) "...");
                    break;
                }
                if (i11 != 0) {
                    sb2.append(separator);
                }
                sb2.append(transform.invoke(Long.valueOf(j10)));
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
    public final String joinToString(@NotNull Function1<? super Long, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        long[] jArr = this.content;
        int i10 = this._size;
        int i11 = 0;
        while (true) {
            if (i11 < i10) {
                long j10 = jArr[i11];
                if (i11 == -1) {
                    sb2.append((CharSequence) "...");
                    break;
                }
                if (i11 != 0) {
                    sb2.append((CharSequence) ", ");
                }
                sb2.append(transform.invoke(Long.valueOf(j10)));
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
