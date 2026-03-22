package androidx.collection;

import androidx.annotation.IntRange;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.collection.internal.RuntimeHelpersKt;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
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
/* compiled from: ScatterSet.kt */
@Metadata
@SourceDebugExtension({"SMAP\nScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1210:1\n231#1,3:1211\n200#1,7:1214\n211#1,3:1222\n214#1,9:1226\n234#1:1235\n231#1,3:1236\n200#1,7:1239\n211#1,3:1247\n214#1,9:1251\n234#1:1260\n231#1,3:1261\n200#1,7:1264\n211#1,3:1272\n214#1,9:1276\n234#1:1285\n200#1,7:1288\n211#1,3:1296\n214#1,9:1300\n231#1,3:1309\n200#1,7:1312\n211#1,3:1320\n214#1,9:1324\n234#1:1333\n231#1,3:1334\n200#1,7:1337\n211#1,3:1345\n214#1,9:1349\n234#1:1358\n231#1,3:1359\n200#1,7:1362\n211#1,3:1370\n214#1,9:1374\n234#1:1383\n390#1:1384\n391#1:1388\n393#1,2:1390\n395#1,3:1393\n398#1:1399\n399#1:1403\n400#1:1405\n401#1,4:1408\n407#1:1413\n408#1,8:1415\n231#1,3:1423\n200#1,7:1426\n211#1,3:1434\n214#1,9:1438\n234#1:1447\n231#1,3:1448\n200#1,7:1451\n211#1,3:1459\n214#1,9:1463\n234#1:1472\n231#1,3:1473\n200#1,7:1476\n211#1,3:1484\n214#1,9:1488\n234#1:1497\n1399#2:1221\n1270#2:1225\n1399#2:1246\n1270#2:1250\n1399#2:1271\n1270#2:1275\n1399#2:1286\n1270#2:1287\n1399#2:1295\n1270#2:1299\n1399#2:1319\n1270#2:1323\n1399#2:1344\n1270#2:1348\n1399#2:1369\n1270#2:1373\n1165#2,3:1385\n1179#2:1389\n1175#2:1392\n1372#2,3:1396\n1386#2,3:1400\n1312#2:1404\n1303#2:1406\n1297#2:1407\n1309#2:1412\n1393#2:1414\n1399#2:1433\n1270#2:1437\n1399#2:1458\n1270#2:1462\n1399#2:1483\n1270#2:1487\n1165#2,3:1498\n1179#2:1501\n1175#2:1502\n1372#2,3:1503\n1386#2,3:1506\n1312#2:1509\n1303#2:1510\n1297#2:1511\n1309#2:1512\n1393#2:1513\n*S KotlinDebug\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/ScatterSet\n*L\n163#1:1211,3\n163#1:1214,7\n163#1:1222,3\n163#1:1226,9\n163#1:1235\n179#1:1236,3\n179#1:1239,7\n179#1:1247,3\n179#1:1251,9\n179#1:1260\n193#1:1261,3\n193#1:1264,7\n193#1:1272,3\n193#1:1276,9\n193#1:1285\n233#1:1288,7\n233#1:1296,3\n233#1:1300,9\n245#1:1309,3\n245#1:1312,7\n245#1:1320,3\n245#1:1324,9\n245#1:1333\n257#1:1334,3\n257#1:1337,7\n257#1:1345,3\n257#1:1349,9\n257#1:1358\n274#1:1359,3\n274#1:1362,7\n274#1:1370,3\n274#1:1374,9\n274#1:1383\n283#1:1384\n283#1:1388\n283#1:1390,2\n283#1:1393,3\n283#1:1399\n283#1:1403\n283#1:1405\n283#1:1408,4\n283#1:1413\n283#1:1415,8\n306#1:1423,3\n306#1:1426,7\n306#1:1434,3\n306#1:1438,9\n306#1:1447\n333#1:1448,3\n333#1:1451,7\n333#1:1459,3\n333#1:1463,9\n333#1:1472\n363#1:1473,3\n363#1:1476,7\n363#1:1484,3\n363#1:1488,9\n363#1:1497\n163#1:1221\n163#1:1225\n179#1:1246\n179#1:1250\n193#1:1271\n193#1:1275\n206#1:1286\n213#1:1287\n233#1:1295\n233#1:1299\n245#1:1319\n245#1:1323\n257#1:1344\n257#1:1348\n274#1:1369\n274#1:1373\n283#1:1385,3\n283#1:1389\n283#1:1392\n283#1:1396,3\n283#1:1400,3\n283#1:1404\n283#1:1406\n283#1:1407\n283#1:1412\n283#1:1414\n306#1:1433\n306#1:1437\n333#1:1458\n333#1:1462\n363#1:1483\n363#1:1487\n390#1:1498,3\n391#1:1501\n394#1:1502\n397#1:1503,3\n398#1:1506,3\n399#1:1509\n400#1:1510\n400#1:1511\n404#1:1512\n407#1:1513\n*E\n"})
/* loaded from: classes.dex */
public abstract class ScatterSet<E> {
    public int _capacity;
    public int _size;
    @NotNull
    public Object[] elements;
    @NotNull
    public long[] metadata;

    public /* synthetic */ ScatterSet(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ String joinToString$default(ScatterSet scatterSet, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Function1 function1, int i11, Object obj) {
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
            return scatterSet.joinToString(charSequence, charSequence5, charSequence6, i12, charSequence7, function12);
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
        return new SetWrapper(this);
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ScatterSet.contains(java.lang.Object):boolean");
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
        if (!(obj instanceof ScatterSet)) {
            return false;
        }
        ScatterSet scatterSet = (ScatterSet) obj;
        if (scatterSet.getSize() != getSize()) {
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
                        if ((255 & j10) < 128 && !scatterSet.contains(objArr[(i10 << 3) + i12])) {
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
                            return (E) objArr[(i10 << 3) + i12];
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
        RuntimeHelpersKt.throwNoSuchElementExceptionForInline("The ScatterSet is empty");
        throw new KotlinNothingValueException();
    }

    /* JADX WARN: Type inference failed for: r10v5, types: [E, java.lang.Object] */
    @Nullable
    public final E firstOrNull(@NotNull Function1<? super E, Boolean> predicate) {
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
                        if ((255 & j10) < 128) {
                            ?? r10 = (Object) objArr[(i10 << 3) + i12];
                            if (predicate.invoke(r10).booleanValue()) {
                                return r10;
                            }
                        }
                        j10 >>= 8;
                    }
                    if (i11 != 8) {
                        return null;
                    }
                }
                if (i10 != length) {
                    i10++;
                } else {
                    return null;
                }
            }
        } else {
            return null;
        }
    }

    public final void forEach(@NotNull Function1<? super E, Unit> block) {
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

    public final void forEachIndex(@NotNull Function1<? super Integer, Unit> block) {
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

    public final boolean none() {
        if (this._size == 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        return joinToString$default(this, null, "[", "]", 0, null, new Function1<E, CharSequence>(this) { // from class: androidx.collection.ScatterSet$toString$1
            final /* synthetic */ ScatterSet<E> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ CharSequence invoke(Object obj) {
                return invoke((ScatterSet$toString$1<E>) obj);
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

    private ScatterSet() {
        this.metadata = ScatterMapKt.EmptyGroup;
        this.elements = ContainerHelpersKt.EMPTY_OBJECTS;
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

    /* JADX WARN: Type inference failed for: r10v5, types: [E, java.lang.Object] */
    public final E first(@NotNull Function1<? super E, Boolean> predicate) {
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
                        if ((255 & j10) < 128) {
                            ?? r10 = (Object) objArr[(i10 << 3) + i12];
                            if (predicate.invoke(r10).booleanValue()) {
                                return r10;
                            }
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
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i11 = 0;
            int i12 = 0;
            loop0: while (true) {
                long j10 = jArr[i11];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8;
                    int i14 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i15 = 0; i15 < i14; i15++) {
                        if ((j10 & 255) < 128) {
                            Object obj = objArr[(i11 << 3) + i15];
                            if (i12 == i10) {
                                sb2.append(truncated);
                                break loop0;
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
                            i13 = 8;
                        }
                        j10 >>= i13;
                    }
                    if (i14 != i13) {
                        break;
                    }
                }
                if (i11 == length) {
                    break;
                }
                i11++;
            }
        }
        sb2.append(postfix);
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public static /* synthetic */ void getElements$annotations() {
    }

    public static /* synthetic */ void getMetadata$annotations() {
    }
}
