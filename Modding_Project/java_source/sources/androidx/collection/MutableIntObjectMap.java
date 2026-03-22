package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IntObjectMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nIntObjectMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntObjectMap.kt\nandroidx/collection/MutableIntObjectMap\n+ 2 RuntimeHelpers.kt\nandroidx/collection/internal/RuntimeHelpersKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 IntObjectMap.kt\nandroidx/collection/IntObjectMap\n+ 6 IntSet.kt\nandroidx/collection/IntSetKt\n+ 7 IntSet.kt\nandroidx/collection/IntSet\n+ 8 IntList.kt\nandroidx/collection/IntList\n*L\n1#1,1017:1\n757#1,2:1173\n757#1,2:1186\n59#2,5:1018\n1#3:1023\n1254#4,6:1024\n1399#4:1040\n1270#4:1044\n1179#4:1060\n1175#4:1063\n1372#4,3:1068\n1386#4,3:1072\n1312#4:1076\n1303#4:1078\n1297#4:1079\n1309#4:1084\n1393#4:1086\n1179#4:1100\n1175#4:1103\n1372#4,3:1108\n1386#4,3:1112\n1312#4:1116\n1303#4:1118\n1297#4:1119\n1309#4:1124\n1393#4:1126\n1399#4:1141\n1270#4:1145\n1399#4:1166\n1270#4:1170\n1230#4:1189\n1254#4,6:1190\n1242#4:1196\n1241#4,4:1197\n1254#4,6:1201\n1175#4:1210\n1179#4:1211\n1372#4,3:1212\n1386#4,3:1215\n1312#4:1218\n1303#4:1219\n1297#4:1220\n1309#4:1221\n1393#4:1222\n1265#4:1223\n1220#4:1224\n1262#4:1225\n1220#4:1226\n1230#4:1227\n1254#4,6:1228\n1242#4:1234\n1241#4,4:1235\n1372#4,3:1239\n1399#4:1242\n1297#4:1243\n1144#4,14:1244\n1220#4:1258\n1175#4:1262\n1179#4:1263\n1254#4,6:1264\n1220#4:1270\n1179#4:1271\n1254#4,6:1272\n1254#4,6:1278\n1179#4:1284\n1254#4,6:1285\n1268#4:1291\n1220#4:1292\n1175#4:1296\n1179#4:1297\n1230#4:1298\n1254#4,6:1299\n1242#4:1305\n1241#4,4:1306\n382#5,4:1030\n354#5,6:1034\n364#5,3:1041\n367#5,9:1045\n386#5:1054\n577#5:1055\n578#5:1059\n580#5,2:1061\n582#5,4:1064\n586#5:1071\n587#5:1075\n588#5:1077\n589#5,4:1080\n595#5:1085\n596#5,8:1087\n577#5:1095\n578#5:1099\n580#5,2:1101\n582#5,4:1104\n586#5:1111\n587#5:1115\n588#5:1117\n589#5,4:1120\n595#5:1125\n596#5,8:1127\n354#5,6:1135\n364#5,3:1142\n367#5,9:1146\n880#6,3:1056\n880#6,3:1096\n880#6,3:1207\n880#6,3:1259\n880#6,3:1293\n255#7,4:1155\n225#7,7:1159\n236#7,3:1167\n239#7,2:1171\n242#7,6:1175\n259#7:1181\n237#8,4:1182\n242#8:1188\n*S KotlinDebug\n*F\n+ 1 IntObjectMap.kt\nandroidx/collection/MutableIntObjectMap\n*L\n769#1:1173,2\n774#1:1186,2\n637#1:1018,5\n665#1:1024,6\n712#1:1040\n712#1:1044\n723#1:1060\n723#1:1063\n723#1:1068,3\n723#1:1072,3\n723#1:1076\n723#1:1078\n723#1:1079\n723#1:1084\n723#1:1086\n735#1:1100\n735#1:1103\n735#1:1108,3\n735#1:1112,3\n735#1:1116\n735#1:1118\n735#1:1119\n735#1:1124\n735#1:1126\n747#1:1141\n747#1:1145\n769#1:1166\n769#1:1170\n783#1:1189\n783#1:1190,6\n783#1:1196\n783#1:1197,4\n795#1:1201,6\n809#1:1210\n810#1:1211\n817#1:1212,3\n818#1:1215,3\n819#1:1218\n820#1:1219\n820#1:1220\n824#1:1221\n827#1:1222\n836#1:1223\n836#1:1224\n842#1:1225\n842#1:1226\n843#1:1227\n843#1:1228,6\n843#1:1234\n843#1:1235,4\n858#1:1239,3\n859#1:1242\n861#1:1243\n907#1:1244,14\n913#1:1258\n928#1:1262\n939#1:1263\n940#1:1264,6\n950#1:1270\n953#1:1271\n954#1:1272,6\n955#1:1278,6\n965#1:1284\n966#1:1285,6\n1005#1:1291\n1005#1:1292\n1008#1:1296\n1010#1:1297\n1010#1:1298\n1010#1:1299,6\n1010#1:1305\n1010#1:1306,4\n712#1:1030,4\n712#1:1034,6\n712#1:1041,3\n712#1:1045,9\n712#1:1054\n723#1:1055\n723#1:1059\n723#1:1061,2\n723#1:1064,4\n723#1:1071\n723#1:1075\n723#1:1077\n723#1:1080,4\n723#1:1085\n723#1:1087,8\n735#1:1095\n735#1:1099\n735#1:1101,2\n735#1:1104,4\n735#1:1111\n735#1:1115\n735#1:1117\n735#1:1120,4\n735#1:1125\n735#1:1127,8\n747#1:1135,6\n747#1:1142,3\n747#1:1146,9\n723#1:1056,3\n735#1:1096,3\n808#1:1207,3\n927#1:1259,3\n1007#1:1293,3\n769#1:1155,4\n769#1:1159,7\n769#1:1167,3\n769#1:1171,2\n769#1:1175,6\n769#1:1181\n774#1:1182,4\n774#1:1188\n*E\n"})
/* loaded from: classes.dex */
public final class MutableIntObjectMap<V> extends IntObjectMap<V> {
    private int growthLimit;

    public MutableIntObjectMap() {
        this(0, 1, null);
    }

    private final int findAbsoluteInsertIndex(int i10) {
        int i11;
        int hashCode = Integer.hashCode(i10) * ScatterMapKt.MurmurHashC1;
        int i12 = hashCode ^ (hashCode << 16);
        int i13 = i12 >>> 7;
        int i14 = i12 & 127;
        int i15 = this._capacity;
        int i16 = i13 & i15;
        int i17 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i18 = i16 >> 3;
            int i19 = (i16 & 7) << 3;
            long j10 = ((jArr[i18 + 1] << (64 - i19)) & ((-i19) >> 63)) | (jArr[i18] >>> i19);
            long j11 = i14;
            int i20 = i17;
            long j12 = j10 ^ (j11 * ScatterMapKt.BitmaskLsb);
            for (long j13 = (~j12) & (j12 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                int numberOfTrailingZeros = ((Long.numberOfTrailingZeros(j13) >> 3) + i16) & i15;
                if (this.keys[numberOfTrailingZeros] == i10) {
                    return numberOfTrailingZeros;
                }
            }
            if ((((~j10) << 6) & j10 & (-9187201950435737472L)) != 0) {
                int findFirstAvailableSlot = findFirstAvailableSlot(i13);
                if (this.growthLimit == 0 && ((this.metadata[findFirstAvailableSlot >> 3] >> ((findFirstAvailableSlot & 7) << 3)) & 255) != 254) {
                    adjustStorage$collection();
                    findFirstAvailableSlot = findFirstAvailableSlot(i13);
                }
                this._size++;
                int i21 = this.growthLimit;
                long[] jArr2 = this.metadata;
                int i22 = findFirstAvailableSlot >> 3;
                long j14 = jArr2[i22];
                int i23 = (findFirstAvailableSlot & 7) << 3;
                if (((j14 >> i23) & 255) == 128) {
                    i11 = 1;
                } else {
                    i11 = 0;
                }
                this.growthLimit = i21 - i11;
                int i24 = this._capacity;
                long j15 = ((~(255 << i23)) & j14) | (j11 << i23);
                jArr2[i22] = j15;
                jArr2[(((findFirstAvailableSlot - 7) & i24) + (i24 & 7)) >> 3] = j15;
                return findFirstAvailableSlot;
            }
            i17 = i20 + 8;
            i16 = (i16 + i17) & i15;
        }
    }

    private final int findFirstAvailableSlot(int i10) {
        int i11 = this._capacity;
        int i12 = i10 & i11;
        int i13 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i14 = i12 >> 3;
            int i15 = (i12 & 7) << 3;
            long j10 = ((jArr[i14 + 1] << (64 - i15)) & ((-i15) >> 63)) | (jArr[i14] >>> i15);
            long j11 = j10 & ((~j10) << 7) & (-9187201950435737472L);
            if (j11 != 0) {
                return (i12 + (Long.numberOfTrailingZeros(j11) >> 3)) & i11;
            }
            i13 += 8;
            i12 = (i12 + i13) & i11;
        }
    }

    private final void initializeGrowth() {
        this.growthLimit = ScatterMapKt.loadedCapacity(getCapacity()) - this._size;
    }

    private final void initializeMetadata(int i10) {
        long[] jArr;
        if (i10 == 0) {
            jArr = ScatterMapKt.EmptyGroup;
        } else {
            jArr = new long[((i10 + 15) & (-8)) >> 3];
            n.G(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.metadata = jArr;
        int i11 = i10 >> 3;
        long j10 = 255 << ((i10 & 7) << 3);
        jArr[i11] = (jArr[i11] & (~j10)) | j10;
        initializeGrowth();
    }

    private final void initializeStorage(int i10) {
        int i11;
        if (i10 > 0) {
            i11 = Math.max(7, ScatterMapKt.normalizeCapacity(i10));
        } else {
            i11 = 0;
        }
        this._capacity = i11;
        initializeMetadata(i11);
        this.keys = new int[i11];
        this.values = new Object[i11];
    }

    public final void adjustStorage$collection() {
        int compare;
        if (this._capacity > 8) {
            compare = Long.compare(p.b(p.b(this._size) * 32) ^ Long.MIN_VALUE, p.b(p.b(this._capacity) * 25) ^ Long.MIN_VALUE);
            if (compare <= 0) {
                dropDeletes$collection();
                return;
            }
        }
        resizeStorage$collection(ScatterMapKt.nextCapacity(this._capacity));
    }

    public final void clear() {
        this._size = 0;
        long[] jArr = this.metadata;
        if (jArr != ScatterMapKt.EmptyGroup) {
            n.G(jArr, -9187201950435737472L, 0, 0, 6, null);
            long[] jArr2 = this.metadata;
            int i10 = this._capacity;
            int i11 = i10 >> 3;
            long j10 = 255 << ((i10 & 7) << 3);
            jArr2[i11] = (jArr2[i11] & (~j10)) | j10;
        }
        n.C(this.values, null, 0, this._capacity);
        initializeGrowth();
    }

    public final void dropDeletes$collection() {
        int i10;
        long[] jArr = this.metadata;
        int i11 = this._capacity;
        int[] iArr = this.keys;
        Object[] objArr = this.values;
        int i12 = (i11 + 7) >> 3;
        char c10 = 0;
        for (int i13 = 0; i13 < i12; i13++) {
            long j10 = jArr[i13] & (-9187201950435737472L);
            jArr[i13] = (-72340172838076674L) & ((~j10) + (j10 >>> 7));
        }
        int q02 = n.q0(jArr);
        int i14 = q02 - 1;
        long j11 = 72057594037927935L;
        jArr[i14] = (jArr[i14] & 72057594037927935L) | (-72057594037927936L);
        jArr[q02] = jArr[0];
        int i15 = 0;
        while (i15 != i11) {
            int i16 = i15 >> 3;
            int i17 = (i15 & 7) << 3;
            long j12 = (jArr[i16] >> i17) & 255;
            if (j12 != 128 && j12 == 254) {
                int hashCode = Integer.hashCode(iArr[i15]) * ScatterMapKt.MurmurHashC1;
                int i18 = (hashCode ^ (hashCode << 16)) >>> 7;
                int findFirstAvailableSlot = findFirstAvailableSlot(i18);
                int i19 = i18 & i11;
                if (((findFirstAvailableSlot - i19) & i11) / 8 == ((i15 - i19) & i11) / 8) {
                    jArr[i16] = ((i10 & 127) << i17) | ((~(255 << i17)) & jArr[i16]);
                    jArr[n.q0(jArr)] = (jArr[c10] & j11) | Long.MIN_VALUE;
                } else {
                    int i20 = findFirstAvailableSlot >> 3;
                    long j13 = jArr[i20];
                    int i21 = (findFirstAvailableSlot & 7) << 3;
                    if (((j13 >> i21) & 255) == 128) {
                        jArr[i20] = ((~(255 << i21)) & j13) | ((i10 & 127) << i21);
                        jArr[i16] = (jArr[i16] & (~(255 << i17))) | (128 << i17);
                        iArr[findFirstAvailableSlot] = iArr[i15];
                        iArr[i15] = 0;
                        objArr[findFirstAvailableSlot] = objArr[i15];
                        objArr[i15] = null;
                    } else {
                        jArr[i20] = ((i10 & 127) << i21) | ((~(255 << i21)) & j13);
                        int i22 = iArr[findFirstAvailableSlot];
                        iArr[findFirstAvailableSlot] = iArr[i15];
                        iArr[i15] = i22;
                        Object obj = objArr[findFirstAvailableSlot];
                        objArr[findFirstAvailableSlot] = objArr[i15];
                        objArr[i15] = obj;
                        i15--;
                    }
                    j11 = 72057594037927935L;
                    jArr[n.q0(jArr)] = (jArr[0] & 72057594037927935L) | Long.MIN_VALUE;
                    i15++;
                    c10 = 0;
                }
            }
            i15++;
        }
        initializeGrowth();
    }

    public final V getOrPut(int i10, @NotNull Function0<? extends V> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        V v10 = get(i10);
        if (v10 == null) {
            V invoke = defaultValue.invoke();
            set(i10, invoke);
            return invoke;
        }
        return v10;
    }

    public final void minusAssign(int i10) {
        remove(i10);
    }

    public final void plusAssign(@NotNull IntObjectMap<V> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        putAll(from);
    }

    @Nullable
    public final V put(int i10, V v10) {
        int findAbsoluteInsertIndex = findAbsoluteInsertIndex(i10);
        Object[] objArr = this.values;
        V v11 = (V) objArr[findAbsoluteInsertIndex];
        this.keys[findAbsoluteInsertIndex] = i10;
        objArr[findAbsoluteInsertIndex] = v10;
        return v11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void putAll(@NotNull IntObjectMap<V> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        int[] iArr = from.keys;
        Object[] objArr = from.values;
        long[] jArr = from.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            int i13 = (i10 << 3) + i12;
                            set(iArr[i13], objArr[i13]);
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

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0061, code lost:
        if (((r4 & ((~r4) << 6)) & (-9187201950435737472L)) == 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0063, code lost:
        r10 = -1;
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V remove(int r14) {
        /*
            r13 = this;
            int r0 = java.lang.Integer.hashCode(r14)
            r1 = -862048943(0xffffffffcc9e2d51, float:-8.2930312E7)
            int r0 = r0 * r1
            int r1 = r0 << 16
            r0 = r0 ^ r1
            r1 = r0 & 127(0x7f, float:1.78E-43)
            int r2 = r13._capacity
            int r0 = r0 >>> 7
            r0 = r0 & r2
            r3 = 0
        L13:
            long[] r4 = r13.metadata
            int r5 = r0 >> 3
            r6 = r0 & 7
            int r6 = r6 << 3
            r7 = r4[r5]
            long r7 = r7 >>> r6
            int r5 = r5 + 1
            r9 = r4[r5]
            int r4 = 64 - r6
            long r4 = r9 << r4
            long r9 = (long) r6
            long r9 = -r9
            r6 = 63
            long r9 = r9 >> r6
            long r4 = r4 & r9
            long r4 = r4 | r7
            long r6 = (long) r1
            r8 = 72340172838076673(0x101010101010101, double:7.748604185489348E-304)
            long r6 = r6 * r8
            long r6 = r6 ^ r4
            long r8 = r6 - r8
            long r6 = ~r6
            long r6 = r6 & r8
            r8 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r6 = r6 & r8
        L3f:
            r10 = 0
            int r12 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r12 == 0) goto L5a
            int r10 = java.lang.Long.numberOfTrailingZeros(r6)
            int r10 = r10 >> 3
            int r10 = r10 + r0
            r10 = r10 & r2
            int[] r11 = r13.keys
            r11 = r11[r10]
            if (r11 != r14) goto L54
            goto L64
        L54:
            r10 = 1
            long r10 = r6 - r10
            long r6 = r6 & r10
            goto L3f
        L5a:
            long r6 = ~r4
            r12 = 6
            long r6 = r6 << r12
            long r4 = r4 & r6
            long r4 = r4 & r8
            int r4 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r4 == 0) goto L6d
            r10 = -1
        L64:
            if (r10 < 0) goto L6b
            java.lang.Object r14 = r13.removeValueAt(r10)
            return r14
        L6b:
            r14 = 0
            return r14
        L6d:
            int r3 = r3 + 8
            int r0 = r0 + r3
            r0 = r0 & r2
            goto L13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.MutableIntObjectMap.remove(int):java.lang.Object");
    }

    public final void removeIf(@NotNull Function2<? super Integer, ? super V, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
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
                            int i13 = (i10 << 3) + i12;
                            if (predicate.invoke(Integer.valueOf(this.keys[i13]), this.values[i13]).booleanValue()) {
                                removeValueAt(i13);
                            }
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

    @Nullable
    public final V removeValueAt(int i10) {
        this._size--;
        long[] jArr = this.metadata;
        int i11 = this._capacity;
        int i12 = i10 >> 3;
        int i13 = (i10 & 7) << 3;
        long j10 = (jArr[i12] & (~(255 << i13))) | (254 << i13);
        jArr[i12] = j10;
        jArr[(((i10 - 7) & i11) + (i11 & 7)) >> 3] = j10;
        Object[] objArr = this.values;
        V v10 = (V) objArr[i10];
        objArr[i10] = null;
        return v10;
    }

    public final void resizeStorage$collection(int i10) {
        long[] jArr;
        MutableIntObjectMap<V> mutableIntObjectMap = this;
        long[] jArr2 = mutableIntObjectMap.metadata;
        int[] iArr = mutableIntObjectMap.keys;
        Object[] objArr = mutableIntObjectMap.values;
        int i11 = mutableIntObjectMap._capacity;
        initializeStorage(i10);
        long[] jArr3 = mutableIntObjectMap.metadata;
        int[] iArr2 = mutableIntObjectMap.keys;
        Object[] objArr2 = mutableIntObjectMap.values;
        int i12 = mutableIntObjectMap._capacity;
        int i13 = 0;
        while (i13 < i11) {
            if (((jArr2[i13 >> 3] >> ((i13 & 7) << 3)) & 255) < 128) {
                int i14 = iArr[i13];
                int hashCode = Integer.hashCode(i14) * ScatterMapKt.MurmurHashC1;
                int i15 = hashCode ^ (hashCode << 16);
                int findFirstAvailableSlot = mutableIntObjectMap.findFirstAvailableSlot(i15 >>> 7);
                long j10 = i15 & 127;
                int i16 = findFirstAvailableSlot >> 3;
                int i17 = (findFirstAvailableSlot & 7) << 3;
                jArr = jArr2;
                long j11 = (jArr3[i16] & (~(255 << i17))) | (j10 << i17);
                jArr3[i16] = j11;
                jArr3[(((findFirstAvailableSlot - 7) & i12) + (i12 & 7)) >> 3] = j11;
                iArr2[findFirstAvailableSlot] = i14;
                objArr2[findFirstAvailableSlot] = objArr[i13];
            } else {
                jArr = jArr2;
            }
            i13++;
            mutableIntObjectMap = this;
            jArr2 = jArr;
        }
    }

    public final void set(int i10, V v10) {
        int findAbsoluteInsertIndex = findAbsoluteInsertIndex(i10);
        this.keys[findAbsoluteInsertIndex] = i10;
        this.values[findAbsoluteInsertIndex] = v10;
    }

    public final int trim() {
        int i10 = this._capacity;
        int normalizeCapacity = ScatterMapKt.normalizeCapacity(ScatterMapKt.unloadedCapacity(this._size));
        if (normalizeCapacity < i10) {
            resizeStorage$collection(normalizeCapacity);
            return i10 - this._capacity;
        }
        return 0;
    }

    public /* synthetic */ MutableIntObjectMap(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 6 : i10);
    }

    public final void minusAssign(@NotNull int[] keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        for (int i10 : keys) {
            remove(i10);
        }
    }

    public MutableIntObjectMap(int i10) {
        super(null);
        if (!(i10 >= 0)) {
            RuntimeHelpersKt.throwIllegalArgumentException("Capacity must be a positive value.");
        }
        initializeStorage(ScatterMapKt.unloadedCapacity(i10));
    }

    public final void minusAssign(@NotNull IntSet keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        int[] iArr = keys.elements;
        long[] jArr = keys.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            long j10 = jArr[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i10 - length)) >>> 31);
                for (int i12 = 0; i12 < i11; i12++) {
                    if ((255 & j10) < 128) {
                        remove(iArr[(i10 << 3) + i12]);
                    }
                    j10 >>= 8;
                }
                if (i11 != 8) {
                    return;
                }
            }
            if (i10 == length) {
                return;
            }
            i10++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0067, code lost:
        if (((r6 & ((~r6) << 6)) & (-9187201950435737472L)) == 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0069, code lost:
        r10 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean remove(int r19, V r20) {
        /*
            r18 = this;
            r0 = r18
            int r1 = java.lang.Integer.hashCode(r19)
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
            if (r10 == 0) goto L60
            int r10 = java.lang.Long.numberOfTrailingZeros(r8)
            int r10 = r10 >> 3
            int r10 = r10 + r1
            r10 = r10 & r3
            int[] r14 = r0.keys
            r14 = r14[r10]
            r15 = r19
            if (r14 != r15) goto L59
            goto L6a
        L59:
            r16 = 1
            long r16 = r8 - r16
            long r8 = r8 & r16
            goto L42
        L60:
            long r8 = ~r6
            r10 = 6
            long r8 = r8 << r10
            long r6 = r6 & r8
            long r6 = r6 & r12
            int r6 = (r6 > r14 ? 1 : (r6 == r14 ? 0 : -1))
            if (r6 == 0) goto L7d
            r10 = -1
        L6a:
            if (r10 < 0) goto L7c
            java.lang.Object[] r1 = r0.values
            r1 = r1[r10]
            r6 = r20
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r6)
            if (r1 == 0) goto L7c
            r0.removeValueAt(r10)
            return r11
        L7c:
            return r4
        L7d:
            r6 = r20
            int r5 = r5 + 8
            int r1 = r1 + r5
            r1 = r1 & r3
            goto L16
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.MutableIntObjectMap.remove(int, java.lang.Object):boolean");
    }

    public final void minusAssign(@NotNull IntList keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        int[] iArr = keys.content;
        int i10 = keys._size;
        for (int i11 = 0; i11 < i10; i11++) {
            remove(iArr[i11]);
        }
    }
}
