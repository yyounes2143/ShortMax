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
/* compiled from: FloatIntMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFloatIntMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatIntMap.kt\nandroidx/collection/MutableFloatIntMap\n+ 2 RuntimeHelpers.kt\nandroidx/collection/internal/RuntimeHelpersKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 FloatIntMap.kt\nandroidx/collection/FloatIntMap\n+ 6 FloatSet.kt\nandroidx/collection/FloatSet\n+ 7 FloatList.kt\nandroidx/collection/FloatList\n+ 8 FloatSet.kt\nandroidx/collection/FloatSetKt\n*L\n1#1,1034:1\n59#2,5:1035\n1#3:1040\n1254#4,6:1041\n1399#4:1057\n1270#4:1061\n1399#4:1078\n1270#4:1082\n1399#4:1103\n1270#4:1107\n1230#4:1124\n1254#4,6:1125\n1242#4:1131\n1241#4,4:1132\n1254#4,6:1136\n1175#4:1145\n1179#4:1146\n1372#4,3:1147\n1386#4,3:1150\n1312#4:1153\n1303#4:1154\n1297#4:1155\n1309#4:1156\n1393#4:1157\n1265#4:1158\n1220#4:1159\n1262#4:1160\n1220#4:1161\n1230#4:1162\n1254#4,6:1163\n1242#4:1169\n1241#4,4:1170\n1372#4,3:1174\n1399#4:1177\n1297#4:1178\n1144#4,14:1179\n1220#4:1193\n1175#4:1197\n1179#4:1198\n1254#4,6:1199\n1220#4:1205\n1179#4:1206\n1254#4,6:1207\n1254#4,6:1213\n1179#4:1219\n1254#4,6:1220\n1268#4:1226\n1220#4:1227\n1175#4:1231\n1179#4:1232\n1230#4:1233\n1254#4,6:1234\n1242#4:1240\n1241#4,4:1241\n387#5,4:1047\n359#5,6:1051\n369#5,3:1058\n372#5,9:1062\n391#5:1071\n359#5,6:1072\n369#5,3:1079\n372#5,9:1083\n257#6,4:1092\n227#6,7:1096\n238#6,3:1104\n241#6,9:1108\n261#6:1117\n237#7,6:1118\n882#8,3:1142\n882#8,3:1194\n882#8,3:1228\n*S KotlinDebug\n*F\n+ 1 FloatIntMap.kt\nandroidx/collection/MutableFloatIntMap\n*L\n639#1:1035,5\n667#1:1041,6\n739#1:1057\n739#1:1061\n770#1:1078\n770#1:1082\n791#1:1103\n791#1:1107\n805#1:1124\n805#1:1125,6\n805#1:1131\n805#1:1132,4\n813#1:1136,6\n826#1:1145\n827#1:1146\n834#1:1147,3\n835#1:1150,3\n836#1:1153\n837#1:1154\n837#1:1155\n841#1:1156\n844#1:1157\n853#1:1158\n853#1:1159\n859#1:1160\n859#1:1161\n860#1:1162\n860#1:1163,6\n860#1:1169\n860#1:1170,4\n875#1:1174,3\n876#1:1177\n878#1:1178\n924#1:1179,14\n930#1:1193\n945#1:1197\n956#1:1198\n957#1:1199,6\n967#1:1205\n970#1:1206\n971#1:1207,6\n972#1:1213,6\n982#1:1219\n983#1:1220,6\n1022#1:1226\n1022#1:1227\n1025#1:1231\n1027#1:1232\n1027#1:1233\n1027#1:1234,6\n1027#1:1240\n1027#1:1241,4\n739#1:1047,4\n739#1:1051,6\n739#1:1058,3\n739#1:1062,9\n739#1:1071\n770#1:1072,6\n770#1:1079,3\n770#1:1083,9\n791#1:1092,4\n791#1:1096,7\n791#1:1104,3\n791#1:1108,9\n791#1:1117\n796#1:1118,6\n825#1:1142,3\n944#1:1194,3\n1024#1:1228,3\n*E\n"})
/* loaded from: classes.dex */
public final class MutableFloatIntMap extends FloatIntMap {
    private int growthLimit;

    public MutableFloatIntMap() {
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

    private final int findInsertIndex(float f10) {
        int i10;
        int hashCode = Float.hashCode(f10) * ScatterMapKt.MurmurHashC1;
        int i11 = hashCode ^ (hashCode << 16);
        int i12 = i11 >>> 7;
        int i13 = i11 & 127;
        int i14 = this._capacity;
        int i15 = i12 & i14;
        int i16 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i17 = i15 >> 3;
            int i18 = (i15 & 7) << 3;
            long j10 = ((jArr[i17 + 1] << (64 - i18)) & ((-i18) >> 63)) | (jArr[i17] >>> i18);
            long j11 = i13;
            int i19 = i16;
            long j12 = j10 ^ (j11 * ScatterMapKt.BitmaskLsb);
            for (long j13 = (~j12) & (j12 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                int numberOfTrailingZeros = ((Long.numberOfTrailingZeros(j13) >> 3) + i15) & i14;
                if (this.keys[numberOfTrailingZeros] == f10) {
                    return numberOfTrailingZeros;
                }
            }
            if ((((~j10) << 6) & j10 & (-9187201950435737472L)) != 0) {
                int findFirstAvailableSlot = findFirstAvailableSlot(i12);
                if (this.growthLimit == 0 && ((this.metadata[findFirstAvailableSlot >> 3] >> ((findFirstAvailableSlot & 7) << 3)) & 255) != 254) {
                    adjustStorage$collection();
                    findFirstAvailableSlot = findFirstAvailableSlot(i12);
                }
                this._size++;
                int i20 = this.growthLimit;
                long[] jArr2 = this.metadata;
                int i21 = findFirstAvailableSlot >> 3;
                long j14 = jArr2[i21];
                int i22 = (findFirstAvailableSlot & 7) << 3;
                if (((j14 >> i22) & 255) == 128) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                this.growthLimit = i20 - i10;
                int i23 = this._capacity;
                long j15 = ((~(255 << i22)) & j14) | (j11 << i22);
                jArr2[i21] = j15;
                jArr2[(((findFirstAvailableSlot - 7) & i23) + (i23 & 7)) >> 3] = j15;
                return ~findFirstAvailableSlot;
            }
            i16 = i19 + 8;
            i15 = (i15 + i16) & i14;
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
        this.keys = new float[i11];
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
        initializeGrowth();
    }

    public final void dropDeletes$collection() {
        int i10;
        long[] jArr = this.metadata;
        int i11 = this._capacity;
        float[] fArr = this.keys;
        int[] iArr = this.values;
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
                int hashCode = Float.hashCode(fArr[i15]) * ScatterMapKt.MurmurHashC1;
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
                        fArr[findFirstAvailableSlot] = fArr[i15];
                        fArr[i15] = 0.0f;
                        iArr[findFirstAvailableSlot] = iArr[i15];
                        iArr[i15] = 0;
                    } else {
                        jArr[i20] = ((i10 & 127) << i21) | ((~(255 << i21)) & j13);
                        float f10 = fArr[findFirstAvailableSlot];
                        fArr[findFirstAvailableSlot] = fArr[i15];
                        fArr[i15] = f10;
                        int i22 = iArr[findFirstAvailableSlot];
                        iArr[findFirstAvailableSlot] = iArr[i15];
                        iArr[i15] = i22;
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

    public final int getOrPut(float f10, @NotNull Function0<Integer> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        int findKeyIndex = findKeyIndex(f10);
        if (findKeyIndex < 0) {
            int intValue = defaultValue.invoke().intValue();
            put(f10, intValue);
            return intValue;
        }
        return this.values[findKeyIndex];
    }

    public final void minusAssign(float f10) {
        remove(f10);
    }

    public final void plusAssign(@NotNull FloatIntMap from) {
        Intrinsics.checkNotNullParameter(from, "from");
        putAll(from);
    }

    public final void put(float f10, int i10) {
        set(f10, i10);
    }

    public final void putAll(@NotNull FloatIntMap from) {
        Intrinsics.checkNotNullParameter(from, "from");
        float[] fArr = from.keys;
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
                            set(fArr[i13], iArr[i13]);
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

    public final void remove(float f10) {
        int findKeyIndex = findKeyIndex(f10);
        if (findKeyIndex >= 0) {
            removeValueAt(findKeyIndex);
        }
    }

    public final void removeIf(@NotNull Function2<? super Float, ? super Integer, Boolean> predicate) {
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
                            if (predicate.invoke(Float.valueOf(this.keys[i13]), Integer.valueOf(this.values[i13])).booleanValue()) {
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
    }

    public final void resizeStorage$collection(int i10) {
        long[] jArr;
        MutableFloatIntMap mutableFloatIntMap = this;
        long[] jArr2 = mutableFloatIntMap.metadata;
        float[] fArr = mutableFloatIntMap.keys;
        int[] iArr = mutableFloatIntMap.values;
        int i11 = mutableFloatIntMap._capacity;
        initializeStorage(i10);
        long[] jArr3 = mutableFloatIntMap.metadata;
        float[] fArr2 = mutableFloatIntMap.keys;
        int[] iArr2 = mutableFloatIntMap.values;
        int i12 = mutableFloatIntMap._capacity;
        int i13 = 0;
        while (i13 < i11) {
            if (((jArr2[i13 >> 3] >> ((i13 & 7) << 3)) & 255) < 128) {
                float f10 = fArr[i13];
                int hashCode = Float.hashCode(f10) * ScatterMapKt.MurmurHashC1;
                int i14 = hashCode ^ (hashCode << 16);
                int findFirstAvailableSlot = mutableFloatIntMap.findFirstAvailableSlot(i14 >>> 7);
                long j10 = i14 & 127;
                int i15 = findFirstAvailableSlot >> 3;
                int i16 = (findFirstAvailableSlot & 7) << 3;
                jArr = jArr2;
                long j11 = (jArr3[i15] & (~(255 << i16))) | (j10 << i16);
                jArr3[i15] = j11;
                jArr3[(((findFirstAvailableSlot - 7) & i12) + (i12 & 7)) >> 3] = j11;
                fArr2[findFirstAvailableSlot] = f10;
                iArr2[findFirstAvailableSlot] = iArr[i13];
            } else {
                jArr = jArr2;
            }
            i13++;
            mutableFloatIntMap = this;
            jArr2 = jArr;
        }
    }

    public final void set(float f10, int i10) {
        int findInsertIndex = findInsertIndex(f10);
        if (findInsertIndex < 0) {
            findInsertIndex = ~findInsertIndex;
        }
        this.keys[findInsertIndex] = f10;
        this.values[findInsertIndex] = i10;
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

    public MutableFloatIntMap(int i10) {
        super(null);
        if (!(i10 >= 0)) {
            RuntimeHelpersKt.throwIllegalArgumentException("Capacity must be a positive value.");
        }
        initializeStorage(ScatterMapKt.unloadedCapacity(i10));
    }

    public final void minusAssign(@NotNull float[] keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        for (float f10 : keys) {
            remove(f10);
        }
    }

    public final int put(float f10, int i10, int i11) {
        int findInsertIndex = findInsertIndex(f10);
        if (findInsertIndex < 0) {
            findInsertIndex = ~findInsertIndex;
        } else {
            i11 = this.values[findInsertIndex];
        }
        this.keys[findInsertIndex] = f10;
        this.values[findInsertIndex] = i10;
        return i11;
    }

    public final boolean remove(float f10, int i10) {
        int findKeyIndex = findKeyIndex(f10);
        if (findKeyIndex < 0 || this.values[findKeyIndex] != i10) {
            return false;
        }
        removeValueAt(findKeyIndex);
        return true;
    }

    public final void minusAssign(@NotNull FloatSet keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        float[] fArr = keys.elements;
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
                        remove(fArr[(i10 << 3) + i12]);
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

    public /* synthetic */ MutableFloatIntMap(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 6 : i10);
    }

    public final void minusAssign(@NotNull FloatList keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        float[] fArr = keys.content;
        int i10 = keys._size;
        for (int i11 = 0; i11 < i10; i11++) {
            remove(fArr[i11]);
        }
    }
}
