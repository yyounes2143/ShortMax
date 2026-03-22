package androidx.collection;

import androidx.annotation.IntRange;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.collection.internal.RuntimeHelpersKt;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OrderedScatterSet.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOrderedScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OrderedScatterSet.kt\nandroidx/collection/OrderedScatterSet\n+ 2 SieveCache.kt\nandroidx/collection/SieveCacheKt\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1511:1\n301#1,7:1512\n308#1,4:1520\n301#1,7:1524\n308#1,4:1532\n301#1,7:1536\n308#1,4:1544\n321#1,7:1548\n328#1,4:1556\n321#1,7:1560\n328#1,4:1568\n321#1,7:1572\n328#1,4:1580\n269#1,7:1589\n280#1,3:1597\n283#1,9:1601\n301#1,7:1610\n308#1,4:1618\n341#1,3:1622\n269#1,7:1625\n280#1,3:1633\n283#1,9:1637\n344#1:1646\n341#1,3:1647\n269#1,7:1650\n280#1,3:1658\n283#1,9:1662\n344#1:1671\n341#1,3:1672\n269#1,7:1675\n280#1,3:1683\n283#1,9:1687\n344#1:1696\n510#1:1697\n511#1:1701\n513#1,2:1703\n515#1,3:1706\n518#1:1712\n519#1:1716\n520#1:1718\n521#1,4:1721\n527#1:1726\n528#1,8:1728\n301#1,7:1736\n308#1,4:1744\n341#1,3:1748\n269#1,7:1751\n280#1,3:1759\n283#1,9:1763\n344#1:1772\n341#1,3:1773\n269#1,7:1776\n280#1,3:1784\n283#1,9:1788\n344#1:1797\n1123#2:1519\n1123#2:1531\n1123#2:1543\n1127#2:1555\n1127#2:1567\n1127#2:1579\n1123#2:1584\n1123#2:1587\n1127#2:1588\n1123#2:1617\n1123#2:1743\n1399#3:1585\n1270#3:1586\n1399#3:1596\n1270#3:1600\n1399#3:1632\n1270#3:1636\n1399#3:1657\n1270#3:1661\n1399#3:1682\n1270#3:1686\n1165#3,3:1698\n1179#3:1702\n1175#3:1705\n1372#3,3:1709\n1386#3,3:1713\n1312#3:1717\n1303#3:1719\n1297#3:1720\n1309#3:1725\n1393#3:1727\n1399#3:1758\n1270#3:1762\n1399#3:1783\n1270#3:1787\n1165#3,3:1798\n1179#3:1801\n1175#3:1802\n1372#3,3:1803\n1386#3,3:1806\n1312#3:1809\n1303#3:1810\n1297#3:1811\n1309#3:1812\n1393#3:1813\n*S KotlinDebug\n*F\n+ 1 OrderedScatterSet.kt\nandroidx/collection/OrderedScatterSet\n*L\n178#1:1512,7\n178#1:1520,4\n195#1:1524,7\n195#1:1532,4\n209#1:1536,7\n209#1:1544,4\n219#1:1548,7\n219#1:1556,4\n236#1:1560,7\n236#1:1568,4\n250#1:1572,7\n250#1:1580,4\n343#1:1589,7\n343#1:1597,3\n343#1:1601,9\n349#1:1610,7\n349#1:1618,4\n363#1:1622,3\n363#1:1625,7\n363#1:1633,3\n363#1:1637,9\n363#1:1646\n376#1:1647,3\n376#1:1650,7\n376#1:1658,3\n376#1:1662,9\n376#1:1671\n394#1:1672,3\n394#1:1675,7\n394#1:1683,3\n394#1:1687,9\n394#1:1696\n403#1:1697\n403#1:1701\n403#1:1703,2\n403#1:1706,3\n403#1:1712\n403#1:1716\n403#1:1718\n403#1:1721,4\n403#1:1726\n403#1:1728,8\n426#1:1736,7\n426#1:1744,4\n453#1:1748,3\n453#1:1751,7\n453#1:1759,3\n453#1:1763,9\n453#1:1772\n483#1:1773,3\n483#1:1776,7\n483#1:1784,3\n483#1:1788,9\n483#1:1797\n178#1:1519\n195#1:1531\n209#1:1543\n219#1:1555\n236#1:1567\n250#1:1579\n260#1:1584\n307#1:1587\n327#1:1588\n349#1:1617\n426#1:1743\n275#1:1585\n282#1:1586\n343#1:1596\n343#1:1600\n363#1:1632\n363#1:1636\n376#1:1657\n376#1:1661\n394#1:1682\n394#1:1686\n403#1:1698,3\n403#1:1702\n403#1:1705\n403#1:1709,3\n403#1:1713,3\n403#1:1717\n403#1:1719\n403#1:1720\n403#1:1725\n403#1:1727\n453#1:1758\n453#1:1762\n483#1:1783\n483#1:1787\n510#1:1798,3\n511#1:1801\n514#1:1802\n517#1:1803,3\n518#1:1806,3\n519#1:1809\n520#1:1810\n520#1:1811\n524#1:1812\n527#1:1813\n*E\n"})
/* loaded from: classes.dex */
public abstract class OrderedScatterSet<E> {
    public int _capacity;
    public int _size;
    @NotNull
    public Object[] elements;
    public int head;
    @NotNull
    public long[] metadata;
    @NotNull
    public long[] nodes;
    public int tail;

    public /* synthetic */ OrderedScatterSet(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ String joinToString$default(OrderedScatterSet orderedScatterSet, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Function1 function1, int i11, Object obj) {
        CharSequence charSequence5;
        if (obj == null) {
            if ((i11 & 1) != 0) {
                charSequence = ", ";
            }
            CharSequence charSequence6 = "";
            if ((i11 & 2) != 0) {
                charSequence5 = "";
            } else {
                charSequence5 = charSequence2;
            }
            if ((i11 & 4) == 0) {
                charSequence6 = charSequence3;
            }
            if ((i11 & 8) != 0) {
                i10 = -1;
            }
            int i12 = i10;
            if ((i11 & 16) != 0) {
                charSequence4 = "...";
            }
            CharSequence charSequence7 = charSequence4;
            Function1<? super E, ? extends CharSequence> function12 = function1;
            if ((i11 & 32) != 0) {
                function12 = null;
            }
            return orderedScatterSet.joinToString(charSequence, charSequence5, charSequence6, i12, charSequence7, function12);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
    }

    public final boolean all(@NotNull Function1<? super E, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128 && !predicate.invoke(objArr[(i10 << 3) + i12]).booleanValue()) {
                            return false;
                        }
                        j10 >>= 8;
                    }
                    if (i11 != 8) {
                        return true;
                    }
                }
                if (i10 != length) {
                    i10++;
                } else {
                    return true;
                }
            }
        } else {
            return true;
        }
    }

    public final boolean any() {
        return this._size != 0;
    }

    @NotNull
    public final Set<E> asSet() {
        return new OrderedSetWrapper(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x006e, code lost:
        if (((r7 & ((~r7) << 6)) & (-9187201950435737472L)) == 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0070, code lost:
        r11 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean contains(E r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = 0
            if (r1 == 0) goto Lc
            int r3 = r18.hashCode()
            goto Ld
        Lc:
            r3 = r2
        Ld:
            r4 = -862048943(0xffffffffcc9e2d51, float:-8.2930312E7)
            int r3 = r3 * r4
            int r4 = r3 << 16
            r3 = r3 ^ r4
            r4 = r3 & 127(0x7f, float:1.78E-43)
            int r5 = r0._capacity
            int r3 = r3 >>> 7
            r3 = r3 & r5
            r6 = r2
        L1c:
            long[] r7 = r0.metadata
            int r8 = r3 >> 3
            r9 = r3 & 7
            int r9 = r9 << 3
            r10 = r7[r8]
            long r10 = r10 >>> r9
            r12 = 1
            int r8 = r8 + r12
            r13 = r7[r8]
            int r7 = 64 - r9
            long r7 = r13 << r7
            long r13 = (long) r9
            long r13 = -r13
            r9 = 63
            long r13 = r13 >> r9
            long r7 = r7 & r13
            long r7 = r7 | r10
            long r9 = (long) r4
            r13 = 72340172838076673(0x101010101010101, double:7.748604185489348E-304)
            long r9 = r9 * r13
            long r9 = r9 ^ r7
            long r13 = r9 - r13
            long r9 = ~r9
            long r9 = r9 & r13
            r13 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r9 = r9 & r13
        L48:
            r15 = 0
            int r11 = (r9 > r15 ? 1 : (r9 == r15 ? 0 : -1))
            if (r11 == 0) goto L67
            int r11 = java.lang.Long.numberOfTrailingZeros(r9)
            int r11 = r11 >> 3
            int r11 = r11 + r3
            r11 = r11 & r5
            java.lang.Object[] r15 = r0.elements
            r15 = r15[r11]
            boolean r15 = kotlin.jvm.internal.Intrinsics.areEqual(r15, r1)
            if (r15 == 0) goto L61
            goto L71
        L61:
            r15 = 1
            long r15 = r9 - r15
            long r9 = r9 & r15
            goto L48
        L67:
            long r9 = ~r7
            r11 = 6
            long r9 = r9 << r11
            long r7 = r7 & r9
            long r7 = r7 & r13
            int r7 = (r7 > r15 ? 1 : (r7 == r15 ? 0 : -1))
            if (r7 == 0) goto L75
            r11 = -1
        L71:
            if (r11 < 0) goto L74
            r2 = r12
        L74:
            return r2
        L75:
            int r6 = r6 + 8
            int r3 = r3 + r6
            r3 = r3 & r5
            goto L1c
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.OrderedScatterSet.contains(java.lang.Object):boolean");
    }

    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)
    public final int count() {
        return getSize();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof OrderedScatterSet)) {
            return false;
        }
        OrderedScatterSet orderedScatterSet = (OrderedScatterSet) obj;
        if (orderedScatterSet.getSize() != getSize()) {
            return false;
        }
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128 && !orderedScatterSet.contains(objArr[(i10 << 3) + i12])) {
                            return false;
                        }
                        j10 >>= 8;
                    }
                    if (i11 != 8) {
                        break;
                    }
                }
                if (i10 == length) {
                    break;
                }
                i10++;
            }
        }
        return true;
    }

    public final int findElementIndex$collection(E e10) {
        int i10;
        int i11 = 0;
        if (e10 != null) {
            i10 = e10.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * ScatterMapKt.MurmurHashC1;
        int i13 = i12 ^ (i12 << 16);
        int i14 = i13 & 127;
        int i15 = this._capacity;
        int i16 = i13 >>> 7;
        while (true) {
            int i17 = i16 & i15;
            long[] jArr = this.metadata;
            int i18 = i17 >> 3;
            int i19 = (i17 & 7) << 3;
            long j10 = ((jArr[i18 + 1] << (64 - i19)) & ((-i19) >> 63)) | (jArr[i18] >>> i19);
            long j11 = (i14 * ScatterMapKt.BitmaskLsb) ^ j10;
            for (long j12 = (~j11) & (j11 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j12 != 0; j12 &= j12 - 1) {
                int numberOfTrailingZeros = ((Long.numberOfTrailingZeros(j12) >> 3) + i17) & i15;
                if (Intrinsics.areEqual(this.elements[numberOfTrailingZeros], e10)) {
                    return numberOfTrailingZeros;
                }
            }
            if ((j10 & ((~j10) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i11 += 8;
            i16 = i17 + i11;
        }
    }

    public final E first() {
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i10 = this.tail;
        if (i10 != Integer.MAX_VALUE) {
            long j10 = jArr[i10];
            return (E) objArr[i10];
        }
        RuntimeHelpersKt.throwNoSuchElementExceptionForInline("The OrderedScatterSet is empty");
        throw new KotlinNothingValueException();
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [E, java.lang.Object] */
    @Nullable
    public final E firstOrNull(@NotNull Function1<? super E, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i10 = this.tail;
        while (i10 != Integer.MAX_VALUE) {
            int i11 = (int) ((jArr[i10] >> 31) & SieveCacheKt.NodeLinkMask);
            ?? r22 = (Object) objArr[i10];
            if (predicate.invoke(r22).booleanValue()) {
                return r22;
            }
            i10 = i11;
        }
        return null;
    }

    public final void forEach(@NotNull Function1<? super E, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        for (int i10 = this.tail; i10 != Integer.MAX_VALUE; i10 = (int) ((jArr[i10] >> 31) & SieveCacheKt.NodeLinkMask)) {
            block.invoke(objArr[i10]);
        }
    }

    public final void forEachIndex$collection(@NotNull Function1<? super Integer, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        long[] jArr = this.nodes;
        for (int i10 = this.tail; i10 != Integer.MAX_VALUE; i10 = (int) ((jArr[i10] >> 31) & SieveCacheKt.NodeLinkMask)) {
            block.invoke(Integer.valueOf(i10));
        }
    }

    public final void forEachReverse(@NotNull Function1<? super E, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        for (int i10 = this.head; i10 != Integer.MAX_VALUE; i10 = (int) (jArr[i10] & SieveCacheKt.NodeLinkMask)) {
            block.invoke(objArr[i10]);
        }
    }

    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)
    public final int getCapacity() {
        return this._capacity;
    }

    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)
    public final int getSize() {
        return this._size;
    }

    public int hashCode() {
        int i10;
        int i11 = (this._capacity * 31) + this._size;
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i12 = 0;
            while (true) {
                long j10 = jArr[i12];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8 - ((~(i12 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j10) < 128) {
                            Object obj = objArr[(i12 << 3) + i14];
                            if (!Intrinsics.areEqual(obj, this)) {
                                if (obj != null) {
                                    i10 = obj.hashCode();
                                } else {
                                    i10 = 0;
                                }
                                i11 += i10;
                            }
                        }
                        j10 >>= 8;
                    }
                    if (i13 != 8) {
                        break;
                    }
                }
                if (i12 == length) {
                    break;
                }
                i12++;
            }
        }
        return i11;
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
        return joinToString$default(this, null, null, null, 0, null, null, 63, null);
    }

    public final E last() {
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i10 = this.head;
        if (i10 != Integer.MAX_VALUE) {
            long j10 = jArr[i10];
            return (E) objArr[i10];
        }
        RuntimeHelpersKt.throwNoSuchElementExceptionForInline("The OrderedScatterSet is empty");
        throw new KotlinNothingValueException();
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [E, java.lang.Object] */
    @Nullable
    public final E lastOrNull(@NotNull Function1<? super E, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i10 = this.head;
        while (i10 != Integer.MAX_VALUE) {
            int i11 = (int) (jArr[i10] & SieveCacheKt.NodeLinkMask);
            ?? r22 = (Object) objArr[i10];
            if (predicate.invoke(r22).booleanValue()) {
                return r22;
            }
            i10 = i11;
        }
        return null;
    }

    public final boolean none() {
        if (this._size == 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final List<E> toList() {
        ArrayList arrayList = new ArrayList(getSize());
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        for (int i10 = this.tail; i10 != Integer.MAX_VALUE; i10 = (int) ((jArr[i10] >> 31) & SieveCacheKt.NodeLinkMask)) {
            arrayList.add(objArr[i10]);
        }
        return arrayList;
    }

    @NotNull
    public String toString() {
        return joinToString$default(this, null, "[", "]", 0, null, new Function1<E, CharSequence>(this) { // from class: androidx.collection.OrderedScatterSet$toString$1
            final /* synthetic */ OrderedScatterSet<E> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ CharSequence invoke(Object obj) {
                return invoke((OrderedScatterSet$toString$1<E>) obj);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(E e10) {
                if (e10 == this.this$0) {
                    return "(this)";
                }
                return String.valueOf(e10);
            }
        }, 25, null);
    }

    public final void unorderedForEach(@NotNull Function1<? super E, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            block.invoke(objArr[(i10 << 3) + i12]);
                        }
                        j10 >>= 8;
                    }
                    if (i11 != 8) {
                        return;
                    }
                }
                if (i10 != length) {
                    i10++;
                } else {
                    return;
                }
            }
        }
    }

    public final void unorderedForEachIndex(@NotNull Function1<? super Integer, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            block.invoke(Integer.valueOf((i10 << 3) + i12));
                        }
                        j10 >>= 8;
                    }
                    if (i11 != 8) {
                        return;
                    }
                }
                if (i10 != length) {
                    i10++;
                } else {
                    return;
                }
            }
        }
    }

    private OrderedScatterSet() {
        this.metadata = ScatterMapKt.EmptyGroup;
        this.elements = ContainerHelpersKt.EMPTY_OBJECTS;
        this.nodes = SieveCacheKt.getEmptyNodes();
        this.head = Integer.MAX_VALUE;
        this.tail = Integer.MAX_VALUE;
    }

    public final boolean any(@NotNull Function1<? super E, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128 && predicate.invoke(objArr[(i10 << 3) + i12]).booleanValue()) {
                            return true;
                        }
                        j10 >>= 8;
                    }
                    if (i11 != 8) {
                        break;
                    }
                }
                if (i10 == length) {
                    break;
                }
                i10++;
            }
        }
        return false;
    }

    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)
    public final int count(@NotNull Function1<? super E, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        int i10 = 0;
        if (length >= 0) {
            int i11 = 0;
            int i12 = 0;
            while (true) {
                long j10 = jArr[i11];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j10) < 128 && predicate.invoke(objArr[(i11 << 3) + i14]).booleanValue()) {
                            i12++;
                        }
                        j10 >>= 8;
                    }
                    if (i13 != 8) {
                        return i12;
                    }
                }
                if (i11 == length) {
                    i10 = i12;
                    break;
                }
                i11++;
            }
        }
        return i10;
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        return joinToString$default(this, separator, null, null, 0, null, null, 62, null);
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return joinToString$default(this, separator, prefix, null, 0, null, null, 60, null);
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        return joinToString$default(this, separator, prefix, postfix, 0, null, null, 56, null);
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        return joinToString$default(this, separator, prefix, postfix, i10, null, null, 48, null);
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        return joinToString$default(this, separator, prefix, postfix, i10, truncated, null, 32, null);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [E, java.lang.Object] */
    public final E first(@NotNull Function1<? super E, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i10 = this.tail;
        while (i10 != Integer.MAX_VALUE) {
            int i11 = (int) ((jArr[i10] >> 31) & SieveCacheKt.NodeLinkMask);
            ?? r22 = (Object) objArr[i10];
            if (predicate.invoke(r22).booleanValue()) {
                return r22;
            }
            i10 = i11;
        }
        RuntimeHelpersKt.throwNoSuchElementExceptionForInline("Could not find a match");
        throw new KotlinNothingValueException();
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Function1<? super E, ? extends CharSequence> function1) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i11 = this.tail;
        int i12 = 0;
        while (true) {
            if (i11 != Integer.MAX_VALUE) {
                int i13 = (int) ((jArr[i11] >> 31) & SieveCacheKt.NodeLinkMask);
                Object obj = objArr[i11];
                if (i12 == i10) {
                    sb2.append(truncated);
                    break;
                }
                if (i12 != 0) {
                    sb2.append(separator);
                }
                if (function1 == null) {
                    sb2.append(obj);
                } else {
                    sb2.append(function1.invoke(obj));
                }
                i12++;
                i11 = i13;
            } else {
                sb2.append(postfix);
                break;
            }
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [E, java.lang.Object] */
    public final E last(@NotNull Function1<? super E, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i10 = this.head;
        while (i10 != Integer.MAX_VALUE) {
            int i11 = (int) (jArr[i10] & SieveCacheKt.NodeLinkMask);
            ?? r22 = (Object) objArr[i10];
            if (predicate.invoke(r22).booleanValue()) {
                return r22;
            }
            i10 = i11;
        }
        RuntimeHelpersKt.throwNoSuchElementExceptionForInline("Could not find a match");
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ void getElements$annotations() {
    }

    public static /* synthetic */ void getHead$annotations() {
    }

    public static /* synthetic */ void getMetadata$annotations() {
    }

    public static /* synthetic */ void getNodes$annotations() {
    }

    public static /* synthetic */ void getTail$annotations() {
    }
}
