package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import ms.p;
import org.jetbrains.annotations.NotNull;
/* compiled from: ObjectIntMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nObjectIntMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectIntMap.kt\nandroidx/collection/MutableObjectIntMap\n+ 2 RuntimeHelpers.kt\nandroidx/collection/internal/RuntimeHelpersKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n+ 6 ScatterSet.kt\nandroidx/collection/ScatterSet\n*L\n1#1,1051:1\n59#2,5:1052\n1#3:1057\n1254#4,6:1058\n1399#4:1074\n1270#4:1078\n1399#4:1095\n1270#4:1099\n1399#4:1119\n1270#4:1123\n1230#4:1134\n1254#4,6:1135\n1242#4:1141\n1241#4,4:1142\n1254#4,6:1146\n1165#4,3:1152\n1175#4:1155\n1179#4:1156\n1372#4,3:1157\n1386#4,3:1160\n1312#4:1163\n1303#4:1164\n1297#4:1165\n1309#4:1166\n1393#4:1167\n1265#4:1168\n1220#4:1169\n1262#4:1170\n1220#4:1171\n1230#4:1172\n1254#4,6:1173\n1242#4:1179\n1241#4,4:1180\n1372#4,3:1184\n1399#4:1187\n1297#4:1188\n1144#4,14:1189\n1220#4:1203\n1165#4,3:1204\n1175#4:1207\n1179#4:1208\n1254#4,6:1209\n1220#4:1215\n1179#4:1216\n1254#4,6:1217\n1254#4,6:1223\n1179#4:1229\n1254#4,6:1230\n1268#4:1236\n1220#4:1237\n1165#4,3:1238\n1175#4:1241\n1179#4:1242\n1230#4:1243\n1254#4,6:1244\n1242#4:1250\n1241#4,4:1251\n395#5,4:1064\n367#5,6:1068\n377#5,3:1075\n380#5,9:1079\n399#5:1088\n367#5,6:1089\n377#5,3:1096\n380#5,9:1100\n231#6,3:1109\n200#6,7:1112\n211#6,3:1120\n214#6,9:1124\n234#6:1133\n*S KotlinDebug\n*F\n+ 1 ObjectIntMap.kt\nandroidx/collection/MutableObjectIntMap\n*L\n647#1:1052,5\n675#1:1058,6\n744#1:1074\n744#1:1078\n775#1:1095\n775#1:1099\n811#1:1119\n811#1:1123\n820#1:1134\n820#1:1135,6\n820#1:1141\n820#1:1142,4\n829#1:1146,6\n842#1:1152,3\n843#1:1155\n844#1:1156\n851#1:1157,3\n852#1:1160,3\n853#1:1163\n854#1:1164\n854#1:1165\n858#1:1166\n861#1:1167\n870#1:1168\n870#1:1169\n876#1:1170\n876#1:1171\n877#1:1172\n877#1:1173,6\n877#1:1179\n877#1:1180,4\n892#1:1184,3\n893#1:1187\n895#1:1188\n941#1:1189,14\n947#1:1203\n961#1:1204,3\n962#1:1207\n973#1:1208\n974#1:1209,6\n984#1:1215\n987#1:1216\n988#1:1217,6\n989#1:1223,6\n999#1:1229\n1000#1:1230,6\n1039#1:1236\n1039#1:1237\n1041#1:1238,3\n1042#1:1241\n1044#1:1242\n1044#1:1243\n1044#1:1244,6\n1044#1:1250\n1044#1:1251,4\n744#1:1064,4\n744#1:1068,6\n744#1:1075,3\n744#1:1079,9\n744#1:1088\n775#1:1089,6\n775#1:1096,3\n775#1:1100,9\n811#1:1109,3\n811#1:1112,7\n811#1:1120,3\n811#1:1124,9\n811#1:1133\n*E\n"})
/* loaded from: classes.dex */
public final class MutableObjectIntMap<K> extends ObjectIntMap<K> {
    private int growthLimit;

    public MutableObjectIntMap() {
        this(0, 1, null);
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

    private final int findIndex(K k10) {
        int i10;
        int i11;
        if (k10 != null) {
            i10 = k10.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * ScatterMapKt.MurmurHashC1;
        int i13 = i12 ^ (i12 << 16);
        int i14 = i13 >>> 7;
        int i15 = i13 & 127;
        int i16 = this._capacity;
        int i17 = i14 & i16;
        int i18 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i19 = i17 >> 3;
            int i20 = (i17 & 7) << 3;
            long j10 = ((jArr[i19 + 1] << (64 - i20)) & ((-i20) >> 63)) | (jArr[i19] >>> i20);
            long j11 = i15;
            int i21 = i15;
            long j12 = j10 ^ (j11 * ScatterMapKt.BitmaskLsb);
            for (long j13 = (~j12) & (j12 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                int numberOfTrailingZeros = (i17 + (Long.numberOfTrailingZeros(j13) >> 3)) & i16;
                if (Intrinsics.areEqual(this.keys[numberOfTrailingZeros], k10)) {
                    return numberOfTrailingZeros;
                }
            }
            if ((((~j10) << 6) & j10 & (-9187201950435737472L)) != 0) {
                int findFirstAvailableSlot = findFirstAvailableSlot(i14);
                if (this.growthLimit == 0 && ((this.metadata[findFirstAvailableSlot >> 3] >> ((findFirstAvailableSlot & 7) << 3)) & 255) != 254) {
                    adjustStorage$collection();
                    findFirstAvailableSlot = findFirstAvailableSlot(i14);
                }
                this._size++;
                int i22 = this.growthLimit;
                long[] jArr2 = this.metadata;
                int i23 = findFirstAvailableSlot >> 3;
                long j14 = jArr2[i23];
                int i24 = (findFirstAvailableSlot & 7) << 3;
                if (((j14 >> i24) & 255) == 128) {
                    i11 = 1;
                } else {
                    i11 = 0;
                }
                this.growthLimit = i22 - i11;
                int i25 = this._capacity;
                long j15 = ((~(255 << i24)) & j14) | (j11 << i24);
                jArr2[i23] = j15;
                jArr2[(((findFirstAvailableSlot - 7) & i25) + (i25 & 7)) >> 3] = j15;
                return ~findFirstAvailableSlot;
            }
            i18 += 8;
            i17 = (i17 + i18) & i16;
            i15 = i21;
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
        this.keys = new Object[i11];
        this.values = new int[i11];
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
        n.C(this.keys, null, 0, this._capacity);
        initializeGrowth();
    }

    public final void dropDeletes$collection() {
        int i10;
        int i11;
        long[] jArr = this.metadata;
        int i12 = this._capacity;
        Object[] objArr = this.keys;
        int[] iArr = this.values;
        int i13 = (i12 + 7) >> 3;
        int i14 = 0;
        for (int i15 = 0; i15 < i13; i15++) {
            long j10 = jArr[i15] & (-9187201950435737472L);
            jArr[i15] = (-72340172838076674L) & ((~j10) + (j10 >>> 7));
        }
        int q02 = n.q0(jArr);
        int i16 = q02 - 1;
        long j11 = 72057594037927935L;
        jArr[i16] = (jArr[i16] & 72057594037927935L) | (-72057594037927936L);
        jArr[q02] = jArr[0];
        int i17 = 0;
        while (i17 != i12) {
            int i18 = i17 >> 3;
            int i19 = (i17 & 7) << 3;
            long j12 = (jArr[i18] >> i19) & 255;
            if (j12 != 128 && j12 == 254) {
                Object obj = objArr[i17];
                if (obj != null) {
                    i10 = obj.hashCode();
                } else {
                    i10 = i14;
                }
                int i20 = i10 * ScatterMapKt.MurmurHashC1;
                int i21 = (i20 ^ (i20 << 16)) >>> 7;
                int findFirstAvailableSlot = findFirstAvailableSlot(i21);
                int i22 = i21 & i12;
                if (((findFirstAvailableSlot - i22) & i12) / 8 == ((i17 - i22) & i12) / 8) {
                    jArr[i18] = ((i11 & 127) << i19) | ((~(255 << i19)) & jArr[i18]);
                    jArr[n.q0(jArr)] = (jArr[i14] & j11) | Long.MIN_VALUE;
                } else {
                    int i23 = findFirstAvailableSlot >> 3;
                    long j13 = jArr[i23];
                    int i24 = (findFirstAvailableSlot & 7) << 3;
                    if (((j13 >> i24) & 255) == 128) {
                        jArr[i23] = ((~(255 << i24)) & j13) | ((i11 & 127) << i24);
                        jArr[i18] = (jArr[i18] & (~(255 << i19))) | (128 << i19);
                        objArr[findFirstAvailableSlot] = objArr[i17];
                        objArr[i17] = null;
                        iArr[findFirstAvailableSlot] = iArr[i17];
                        iArr[i17] = 0;
                    } else {
                        jArr[i23] = ((i11 & 127) << i24) | ((~(255 << i24)) & j13);
                        Object obj2 = objArr[findFirstAvailableSlot];
                        objArr[findFirstAvailableSlot] = objArr[i17];
                        objArr[i17] = obj2;
                        int i25 = iArr[findFirstAvailableSlot];
                        iArr[findFirstAvailableSlot] = iArr[i17];
                        iArr[i17] = i25;
                        i17--;
                    }
                    j11 = 72057594037927935L;
                    jArr[n.q0(jArr)] = (jArr[0] & 72057594037927935L) | Long.MIN_VALUE;
                    i17++;
                    i14 = 0;
                }
            }
            i17++;
        }
        initializeGrowth();
    }

    public final int getOrPut(K k10, @NotNull Function0<Integer> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        int findKeyIndex = findKeyIndex(k10);
        if (findKeyIndex >= 0) {
            return this.values[findKeyIndex];
        }
        int intValue = defaultValue.invoke().intValue();
        set(k10, intValue);
        return intValue;
    }

    public final void minusAssign(K k10) {
        remove(k10);
    }

    public final void plusAssign(@NotNull ObjectIntMap<K> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        putAll(from);
    }

    public final void put(K k10, int i10) {
        set(k10, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void putAll(@NotNull ObjectIntMap<K> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        Object[] objArr = from.keys;
        int[] iArr = from.values;
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
                            set(objArr[i13], iArr[i13]);
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

    public final void remove(K k10) {
        int findKeyIndex = findKeyIndex(k10);
        if (findKeyIndex >= 0) {
            removeValueAt(findKeyIndex);
        }
    }

    public final void removeIf(@NotNull Function2<? super K, ? super Integer, Boolean> predicate) {
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
                            if (predicate.invoke(this.keys[i13], Integer.valueOf(this.values[i13])).booleanValue()) {
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

    public final void removeValueAt(int i10) {
        this._size--;
        long[] jArr = this.metadata;
        int i11 = this._capacity;
        int i12 = i10 >> 3;
        int i13 = (i10 & 7) << 3;
        long j10 = (jArr[i12] & (~(255 << i13))) | (254 << i13);
        jArr[i12] = j10;
        jArr[(((i10 - 7) & i11) + (i11 & 7)) >> 3] = j10;
        this.keys[i10] = null;
    }

    public final void resizeStorage$collection(int i10) {
        int i11;
        int i12;
        long[] jArr = this.metadata;
        Object[] objArr = this.keys;
        int[] iArr = this.values;
        int i13 = this._capacity;
        initializeStorage(i10);
        long[] jArr2 = this.metadata;
        Object[] objArr2 = this.keys;
        int[] iArr2 = this.values;
        int i14 = this._capacity;
        int i15 = 0;
        while (i15 < i13) {
            if (((jArr[i15 >> 3] >> ((i15 & 7) << 3)) & 255) < 128) {
                Object obj = objArr[i15];
                if (obj != null) {
                    i12 = obj.hashCode();
                } else {
                    i12 = 0;
                }
                int i16 = i12 * ScatterMapKt.MurmurHashC1;
                int i17 = i16 ^ (i16 << 16);
                int findFirstAvailableSlot = findFirstAvailableSlot(i17 >>> 7);
                i11 = i15;
                long j10 = i17 & 127;
                int i18 = findFirstAvailableSlot >> 3;
                int i19 = (findFirstAvailableSlot & 7) << 3;
                long j11 = (j10 << i19) | (jArr2[i18] & (~(255 << i19)));
                jArr2[i18] = j11;
                jArr2[(((findFirstAvailableSlot - 7) & i14) + (i14 & 7)) >> 3] = j11;
                objArr2[findFirstAvailableSlot] = obj;
                iArr2[findFirstAvailableSlot] = iArr[i11];
            } else {
                i11 = i15;
            }
            i15 = i11 + 1;
        }
    }

    public final void set(K k10, int i10) {
        int findIndex = findIndex(k10);
        if (findIndex < 0) {
            findIndex = ~findIndex;
        }
        this.keys[findIndex] = k10;
        this.values[findIndex] = i10;
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

    public /* synthetic */ MutableObjectIntMap(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 6 : i10);
    }

    public final void minusAssign(@NotNull K[] keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        for (K k10 : keys) {
            remove(k10);
        }
    }

    public final int put(K k10, int i10, int i11) {
        int findIndex = findIndex(k10);
        if (findIndex < 0) {
            findIndex = ~findIndex;
        } else {
            i11 = this.values[findIndex];
        }
        this.keys[findIndex] = k10;
        this.values[findIndex] = i10;
        return i11;
    }

    public MutableObjectIntMap(int i10) {
        super(null);
        if (!(i10 >= 0)) {
            RuntimeHelpersKt.throwIllegalArgumentException("Capacity must be a positive value.");
        }
        initializeStorage(ScatterMapKt.unloadedCapacity(i10));
    }

    public final boolean remove(K k10, int i10) {
        int findKeyIndex = findKeyIndex(k10);
        if (findKeyIndex < 0 || this.values[findKeyIndex] != i10) {
            return false;
        }
        removeValueAt(findKeyIndex);
        return true;
    }

    public final void minusAssign(@NotNull Iterable<? extends K> keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        for (K k10 : keys) {
            remove(k10);
        }
    }

    public final void minusAssign(@NotNull Sequence<? extends K> keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        for (K k10 : keys) {
            remove(k10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(@NotNull ScatterSet<K> keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        Object[] objArr = keys.elements;
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
                        remove(objArr[(i10 << 3) + i12]);
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
}
