package androidx.collection;

import androidx.annotation.IntRange;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LongSet.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLongSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongSet.kt\nandroidx/collection/LongSet\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 3 LongSet.kt\nandroidx/collection/LongSetKt\n*L\n1#1,885:1\n256#1,4:886\n226#1,7:890\n237#1,3:898\n240#1,9:902\n260#1:911\n256#1,4:912\n226#1,7:916\n237#1,3:924\n240#1,9:928\n260#1:937\n226#1,7:940\n237#1,3:948\n240#1,9:952\n256#1,4:961\n226#1,7:965\n237#1,3:973\n240#1,9:977\n260#1:986\n256#1,4:987\n226#1,7:991\n237#1,3:999\n240#1,9:1003\n260#1:1012\n256#1,4:1013\n226#1,7:1017\n237#1,3:1025\n240#1,9:1029\n260#1:1038\n426#1:1039\n427#1:1043\n429#1,2:1045\n431#1,3:1048\n434#1:1054\n435#1:1058\n436#1:1060\n437#1,4:1063\n443#1:1068\n444#1,8:1070\n256#1,4:1078\n226#1,7:1082\n237#1,3:1090\n240#1,9:1094\n260#1:1103\n256#1,4:1104\n226#1,7:1108\n237#1,3:1116\n240#1,9:1120\n260#1:1129\n256#1,4:1130\n226#1,7:1134\n237#1,3:1142\n240#1,9:1146\n260#1:1155\n256#1,4:1156\n226#1,7:1160\n237#1,3:1168\n240#1,9:1172\n260#1:1181\n256#1,4:1182\n226#1,7:1186\n237#1,3:1194\n240#1,9:1198\n260#1:1207\n351#1,11:1224\n256#1,4:1235\n226#1,7:1239\n237#1,3:1247\n240#1,2:1251\n362#1,10:1253\n243#1,6:1263\n260#1:1269\n372#1,2:1270\n351#1,11:1272\n256#1,4:1283\n226#1,7:1287\n237#1,3:1295\n240#1,2:1299\n362#1,10:1301\n243#1,6:1311\n260#1:1317\n372#1,2:1318\n351#1,11:1320\n256#1,4:1331\n226#1,7:1335\n237#1,3:1343\n240#1,2:1347\n362#1,10:1349\n243#1,6:1359\n260#1:1365\n372#1,2:1366\n351#1,11:1368\n256#1,4:1379\n226#1,7:1383\n237#1,3:1391\n240#1,2:1395\n362#1,10:1397\n243#1,6:1407\n260#1:1413\n372#1,2:1414\n351#1,11:1416\n256#1,4:1427\n226#1,7:1431\n237#1,3:1439\n240#1,2:1443\n362#1,10:1445\n243#1,6:1455\n260#1:1461\n372#1,2:1462\n1399#2:897\n1270#2:901\n1399#2:923\n1270#2:927\n1399#2:938\n1270#2:939\n1399#2:947\n1270#2:951\n1399#2:972\n1270#2:976\n1399#2:998\n1270#2:1002\n1399#2:1024\n1270#2:1028\n1179#2:1044\n1175#2:1047\n1372#2,3:1051\n1386#2,3:1055\n1312#2:1059\n1303#2:1061\n1297#2:1062\n1309#2:1067\n1393#2:1069\n1399#2:1089\n1270#2:1093\n1399#2:1115\n1270#2:1119\n1399#2:1141\n1270#2:1145\n1399#2:1167\n1270#2:1171\n1399#2:1193\n1270#2:1197\n1179#2:1211\n1175#2:1212\n1372#2,3:1213\n1386#2,3:1216\n1312#2:1219\n1303#2:1220\n1297#2:1221\n1309#2:1222\n1393#2:1223\n1399#2:1246\n1270#2:1250\n1399#2:1294\n1270#2:1298\n1399#2:1342\n1270#2:1346\n1399#2:1390\n1270#2:1394\n1399#2:1438\n1270#2:1442\n881#3,3:1040\n881#3,3:1208\n*S KotlinDebug\n*F\n+ 1 LongSet.kt\nandroidx/collection/LongSet\n*L\n198#1:886,4\n198#1:890,7\n198#1:898,3\n198#1:902,9\n198#1:911\n219#1:912,4\n219#1:916,7\n219#1:924,3\n219#1:928,9\n219#1:937\n259#1:940,7\n259#1:948,3\n259#1:952,9\n270#1:961,4\n270#1:965,7\n270#1:973,3\n270#1:977,9\n270#1:986\n282#1:987,4\n282#1:991,7\n282#1:999,3\n282#1:1003,9\n282#1:1012\n299#1:1013,4\n299#1:1017,7\n299#1:1025,3\n299#1:1029,9\n299#1:1038\n308#1:1039\n308#1:1043\n308#1:1045,2\n308#1:1048,3\n308#1:1054\n308#1:1058\n308#1:1060\n308#1:1063,4\n308#1:1068\n308#1:1070,8\n328#1:1078,4\n328#1:1082,7\n328#1:1090,3\n328#1:1094,9\n328#1:1103\n361#1:1104,4\n361#1:1108,7\n361#1:1116,3\n361#1:1120,9\n361#1:1129\n361#1:1130,4\n361#1:1134,7\n361#1:1142,3\n361#1:1146,9\n361#1:1155\n382#1:1156,4\n382#1:1160,7\n382#1:1168,3\n382#1:1172,9\n382#1:1181\n406#1:1182,4\n406#1:1186,7\n406#1:1194,3\n406#1:1198,9\n406#1:1207\n-1#1:1224,11\n-1#1:1235,4\n-1#1:1239,7\n-1#1:1247,3\n-1#1:1251,2\n-1#1:1253,10\n-1#1:1263,6\n-1#1:1269\n-1#1:1270,2\n-1#1:1272,11\n-1#1:1283,4\n-1#1:1287,7\n-1#1:1295,3\n-1#1:1299,2\n-1#1:1301,10\n-1#1:1311,6\n-1#1:1317\n-1#1:1318,2\n-1#1:1320,11\n-1#1:1331,4\n-1#1:1335,7\n-1#1:1343,3\n-1#1:1347,2\n-1#1:1349,10\n-1#1:1359,6\n-1#1:1365\n-1#1:1366,2\n-1#1:1368,11\n-1#1:1379,4\n-1#1:1383,7\n-1#1:1391,3\n-1#1:1395,2\n-1#1:1397,10\n-1#1:1407,6\n-1#1:1413\n-1#1:1414,2\n-1#1:1416,11\n-1#1:1427,4\n-1#1:1431,7\n-1#1:1439,3\n-1#1:1443,2\n-1#1:1445,10\n-1#1:1455,6\n-1#1:1461\n-1#1:1462,2\n198#1:897\n198#1:901\n219#1:923\n219#1:927\n232#1:938\n239#1:939\n259#1:947\n259#1:951\n270#1:972\n270#1:976\n282#1:998\n282#1:1002\n299#1:1024\n299#1:1028\n308#1:1044\n308#1:1047\n308#1:1051,3\n308#1:1055,3\n308#1:1059\n308#1:1061\n308#1:1062\n308#1:1067\n308#1:1069\n328#1:1089\n328#1:1093\n361#1:1115\n361#1:1119\n361#1:1141\n361#1:1145\n382#1:1167\n382#1:1171\n406#1:1193\n406#1:1197\n427#1:1211\n430#1:1212\n433#1:1213,3\n434#1:1216,3\n435#1:1219\n436#1:1220\n436#1:1221\n440#1:1222\n443#1:1223\n-1#1:1246\n-1#1:1250\n-1#1:1294\n-1#1:1298\n-1#1:1342\n-1#1:1346\n-1#1:1390\n-1#1:1394\n-1#1:1438\n-1#1:1442\n308#1:1040,3\n426#1:1208,3\n*E\n"})
/* loaded from: classes.dex */
public abstract class LongSet {
    public int _capacity;
    public int _size;
    @NotNull
    public long[] elements;
    @NotNull
    public long[] metadata;

    public /* synthetic */ LongSet(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ String joinToString$default(LongSet longSet, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, int i11, Object obj) {
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
            return longSet.joinToString(charSequence, str, str2, i12, charSequence4);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
    }

    public final boolean all(@NotNull Function1<? super Long, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        long[] jArr = this.elements;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr2[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128 && !predicate.invoke(Long.valueOf(jArr[(i10 << 3) + i12])).booleanValue()) {
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

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0066, code lost:
        if (((r6 & ((~r6) << 6)) & (-9187201950435737472L)) == 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0068, code lost:
        r10 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean contains(long r18) {
        /*
            r17 = this;
            r0 = r17
            int r1 = java.lang.Long.hashCode(r18)
            r2 = -862048943(0xffffffffcc9e2d51, float:-8.2930312E7)
            int r1 = r1 * r2
            int r2 = r1 << 16
            r1 = r1 ^ r2
            r2 = r1 & 127(0x7f, float:1.78E-43)
            int r3 = r0._capacity
            int r1 = r1 >>> 7
            r1 = r1 & r3
            r4 = 0
            r5 = r4
        L16:
            long[] r6 = r0.metadata
            int r7 = r1 >> 3
            r8 = r1 & 7
            int r8 = r8 << 3
            r9 = r6[r7]
            long r9 = r9 >>> r8
            r11 = 1
            int r7 = r7 + r11
            r12 = r6[r7]
            int r6 = 64 - r8
            long r6 = r12 << r6
            long r12 = (long) r8
            long r12 = -r12
            r8 = 63
            long r12 = r12 >> r8
            long r6 = r6 & r12
            long r6 = r6 | r9
            long r8 = (long) r2
            r12 = 72340172838076673(0x101010101010101, double:7.748604185489348E-304)
            long r8 = r8 * r12
            long r8 = r8 ^ r6
            long r12 = r8 - r12
            long r8 = ~r8
            long r8 = r8 & r12
            r12 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r8 = r8 & r12
        L42:
            r14 = 0
            int r10 = (r8 > r14 ? 1 : (r8 == r14 ? 0 : -1))
            if (r10 == 0) goto L5f
            int r10 = java.lang.Long.numberOfTrailingZeros(r8)
            int r10 = r10 >> 3
            int r10 = r10 + r1
            r10 = r10 & r3
            long[] r14 = r0.elements
            r15 = r14[r10]
            int r14 = (r15 > r18 ? 1 : (r15 == r18 ? 0 : -1))
            if (r14 != 0) goto L59
            goto L69
        L59:
            r14 = 1
            long r14 = r8 - r14
            long r8 = r8 & r14
            goto L42
        L5f:
            long r8 = ~r6
            r10 = 6
            long r8 = r8 << r10
            long r6 = r6 & r8
            long r6 = r6 & r12
            int r6 = (r6 > r14 ? 1 : (r6 == r14 ? 0 : -1))
            if (r6 == 0) goto L6d
            r10 = -1
        L69:
            if (r10 < 0) goto L6c
            r4 = r11
        L6c:
            return r4
        L6d:
            int r5 = r5 + 8
            int r1 = r1 + r5
            r1 = r1 & r3
            goto L16
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.LongSet.contains(long):boolean");
    }

    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)
    public final int count() {
        return this._size;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LongSet)) {
            return false;
        }
        LongSet longSet = (LongSet) obj;
        if (longSet._size != this._size) {
            return false;
        }
        long[] jArr = this.elements;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr2[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128 && !longSet.contains(jArr[(i10 << 3) + i12])) {
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

    public final int findElementIndex$collection(long j10) {
        int hashCode = Long.hashCode(j10) * ScatterMapKt.MurmurHashC1;
        int i10 = hashCode ^ (hashCode << 16);
        int i11 = i10 & 127;
        int i12 = this._capacity;
        int i13 = (i10 >>> 7) & i12;
        int i14 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i15 = i13 >> 3;
            int i16 = (i13 & 7) << 3;
            long j11 = ((jArr[i15 + 1] << (64 - i16)) & ((-i16) >> 63)) | (jArr[i15] >>> i16);
            long j12 = (i11 * ScatterMapKt.BitmaskLsb) ^ j11;
            for (long j13 = (~j12) & (j12 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                int numberOfTrailingZeros = ((Long.numberOfTrailingZeros(j13) >> 3) + i13) & i12;
                if (this.elements[numberOfTrailingZeros] == j10) {
                    return numberOfTrailingZeros;
                }
            }
            if ((j11 & ((~j11) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i14 += 8;
            i13 = (i13 + i14) & i12;
        }
    }

    public final long first() {
        long[] jArr = this.elements;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr2[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            return jArr[(i10 << 3) + i12];
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
        throw new NoSuchElementException("The LongSet is empty");
    }

    public final void forEach(@NotNull Function1<? super Long, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        long[] jArr = this.elements;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr2[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            block.invoke(Long.valueOf(jArr[(i10 << 3) + i12]));
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
        long[] jArr = this.elements;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        int i10 = 0;
        if (length >= 0) {
            int i11 = 0;
            int i12 = 0;
            while (true) {
                long j10 = jArr2[i11];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j10) < 128) {
                            i12 += Long.hashCode(jArr[(i11 << 3) + i14]);
                        }
                        j10 >>= 8;
                    }
                    if (i13 != 8) {
                        return i12;
                    }
                }
                if (i11 != length) {
                    i11++;
                } else {
                    i10 = i12;
                    break;
                }
            }
        }
        return i10;
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

    public final boolean none() {
        if (this._size == 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        return joinToString$default(this, null, "[", "]", 0, null, 25, null);
    }

    private LongSet() {
        this.metadata = ScatterMapKt.EmptyGroup;
        this.elements = LongSetKt.getEmptyLongArray();
    }

    public final boolean any(@NotNull Function1<? super Long, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        long[] jArr = this.elements;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr2[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128 && predicate.invoke(Long.valueOf(jArr[(i10 << 3) + i12])).booleanValue()) {
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
    public final int count(@NotNull Function1<? super Long, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        long[] jArr = this.elements;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        int i10 = 0;
        if (length >= 0) {
            int i11 = 0;
            int i12 = 0;
            while (true) {
                long j10 = jArr2[i11];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j10) < 128 && predicate.invoke(Long.valueOf(jArr[(i11 << 3) + i14])).booleanValue()) {
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
        return joinToString$default(this, separator, null, null, 0, null, 30, null);
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return joinToString$default(this, separator, prefix, null, 0, null, 28, null);
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        return joinToString$default(this, separator, prefix, postfix, 0, null, 24, null);
    }

    public static /* synthetic */ String joinToString$default(LongSet longSet, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Function1 transform, int i11, Object obj) {
        if (obj == null) {
            String separator = (i11 & 1) != 0 ? ", " : charSequence;
            String prefix = (i11 & 2) != 0 ? "" : charSequence2;
            String postfix = (i11 & 4) == 0 ? charSequence3 : "";
            int i12 = (i11 & 8) != 0 ? -1 : i10;
            String truncated = (i11 & 16) != 0 ? "..." : charSequence4;
            Intrinsics.checkNotNullParameter(separator, "separator");
            Intrinsics.checkNotNullParameter(prefix, "prefix");
            Intrinsics.checkNotNullParameter(postfix, "postfix");
            Intrinsics.checkNotNullParameter(truncated, "truncated");
            Intrinsics.checkNotNullParameter(transform, "transform");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(prefix);
            long[] jArr = longSet.elements;
            long[] jArr2 = longSet.metadata;
            int length = jArr2.length - 2;
            if (length >= 0) {
                int i13 = 0;
                int i14 = 0;
                loop0: while (true) {
                    long j10 = jArr2[i13];
                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i15 = 8;
                        int i16 = 8 - ((~(i13 - length)) >>> 31);
                        for (int i17 = 0; i17 < i16; i17++) {
                            if ((j10 & 255) < 128) {
                                long j11 = jArr[(i13 << 3) + i17];
                                if (i14 == i12) {
                                    sb2.append(truncated);
                                    break loop0;
                                }
                                if (i14 != 0) {
                                    sb2.append(separator);
                                }
                                sb2.append((CharSequence) transform.invoke(Long.valueOf(j11)));
                                i14++;
                                i15 = 8;
                            }
                            j10 >>= i15;
                        }
                        if (i16 != i15) {
                            break;
                        }
                    }
                    if (i13 == length) {
                        break;
                    }
                    i13++;
                }
            }
            sb2.append(postfix);
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

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated) {
        int i11;
        int i12;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        long[] jArr = this.elements;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i13 = 0;
            int i14 = 0;
            loop0: while (true) {
                long j10 = jArr2[i13];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i15 = 8;
                    int i16 = 8 - ((~(i13 - length)) >>> 31);
                    int i17 = 0;
                    while (i17 < i16) {
                        if ((j10 & 255) < 128) {
                            i12 = i13;
                            long j11 = jArr[(i13 << 3) + i17];
                            if (i14 == i10) {
                                sb2.append(truncated);
                                break loop0;
                            }
                            if (i14 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(j11);
                            i14++;
                        } else {
                            i12 = i13;
                        }
                        j10 >>= 8;
                        i17++;
                        i15 = 8;
                        i13 = i12;
                    }
                    int i18 = i13;
                    if (i16 != i15) {
                        break;
                    }
                    i11 = i18;
                } else {
                    i11 = i13;
                }
                if (i11 == length) {
                    break;
                }
                i13 = i11 + 1;
            }
        }
        sb2.append(postfix);
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public final long first(@NotNull Function1<? super Long, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        long[] jArr = this.elements;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr2[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            long j11 = jArr[(i10 << 3) + i12];
                            if (predicate.invoke(Long.valueOf(j11)).booleanValue()) {
                                return j11;
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
        throw new NoSuchElementException("Could not find a match");
    }

    public static /* synthetic */ void getElements$annotations() {
    }

    public static /* synthetic */ void getMetadata$annotations() {
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
        long[] jArr = this.elements;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i11 = 0;
            int i12 = 0;
            loop0: while (true) {
                long j10 = jArr2[i11];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8;
                    int i14 = 8 - ((~(i11 - length)) >>> 31);
                    int i15 = 0;
                    while (i15 < i14) {
                        if ((j10 & 255) < 128) {
                            long j11 = jArr[(i11 << 3) + i15];
                            if (i12 == i10) {
                                sb2.append(truncated);
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(Long.valueOf(j11)));
                            i12++;
                        }
                        j10 >>= 8;
                        i15++;
                        i13 = 8;
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

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull Function1<? super Long, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        long[] jArr = this.elements;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i11 = 0;
            int i12 = 0;
            loop0: while (true) {
                long j10 = jArr2[i11];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8;
                    int i14 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i15 = 0; i15 < i14; i15++) {
                        if ((j10 & 255) < 128) {
                            long j11 = jArr[(i11 << 3) + i15];
                            if (i12 == i10) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(Long.valueOf(j11)));
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
            String sb3 = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
            return sb3;
        }
        sb2.append(postfix);
        String sb32 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb32, "toString(...)");
        return sb32;
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, @NotNull Function1<? super Long, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        long[] jArr = this.elements;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            int i11 = 0;
            loop0: while (true) {
                long j10 = jArr2[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((j10 & 255) < 128) {
                            long j11 = jArr[(i10 << 3) + i13];
                            if (i11 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i11 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(Long.valueOf(j11)));
                            i11++;
                        }
                        j10 >>= 8;
                    }
                    if (i12 != 8) {
                        break;
                    }
                }
                if (i10 == length) {
                    break;
                }
                i10++;
            }
            String sb3 = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
            return sb3;
        }
        sb2.append(postfix);
        String sb32 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb32, "toString(...)");
        return sb32;
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull Function1<? super Long, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        long[] jArr = this.elements;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            int i11 = 0;
            loop0: while (true) {
                long j10 = jArr2[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j10) < 128) {
                            long j11 = jArr[(i10 << 3) + i13];
                            if (i11 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i11 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(Long.valueOf(j11)));
                            i11++;
                        }
                        j10 >>= 8;
                    }
                    if (i12 != 8) {
                        break;
                    }
                }
                if (i10 == length) {
                    break;
                }
                i10++;
            }
        }
        sb2.append((CharSequence) "");
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
        long[] jArr = this.elements;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            int i11 = 0;
            loop0: while (true) {
                long j10 = jArr2[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((j10 & 255) < 128) {
                            long j11 = jArr[(i10 << 3) + i13];
                            if (i11 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i11 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(Long.valueOf(j11)));
                            i11++;
                        }
                        j10 >>= 8;
                    }
                    if (i12 != 8) {
                        break;
                    }
                }
                if (i10 == length) {
                    break;
                }
                i10++;
            }
        }
        sb2.append((CharSequence) "");
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    @NotNull
    public final String joinToString(@NotNull Function1<? super Long, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        long[] jArr = this.elements;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            int i11 = 0;
            loop0: while (true) {
                long j10 = jArr2[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j10) < 128) {
                            long j11 = jArr[(i10 << 3) + i13];
                            if (i11 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i11 != 0) {
                                sb2.append((CharSequence) ", ");
                            }
                            sb2.append(transform.invoke(Long.valueOf(j11)));
                            i11++;
                        }
                        j10 >>= 8;
                    }
                    if (i12 != 8) {
                        break;
                    }
                }
                if (i10 == length) {
                    break;
                }
                i10++;
            }
        }
        sb2.append((CharSequence) "");
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }
}
