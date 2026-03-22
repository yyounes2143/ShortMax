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
/* compiled from: FloatLongMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFloatLongMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatLongMap.kt\nandroidx/collection/MutableFloatLongMap\n+ 2 RuntimeHelpers.kt\nandroidx/collection/internal/RuntimeHelpersKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 FloatLongMap.kt\nandroidx/collection/FloatLongMap\n+ 6 FloatSet.kt\nandroidx/collection/FloatSet\n+ 7 FloatList.kt\nandroidx/collection/FloatList\n+ 8 FloatSet.kt\nandroidx/collection/FloatSetKt\n*L\n1#1,1036:1\n59#2,5:1037\n1#3:1042\n1254#4,6:1043\n1399#4:1059\n1270#4:1063\n1399#4:1080\n1270#4:1084\n1399#4:1105\n1270#4:1109\n1230#4:1126\n1254#4,6:1127\n1242#4:1133\n1241#4,4:1134\n1254#4,6:1138\n1175#4:1147\n1179#4:1148\n1372#4,3:1149\n1386#4,3:1152\n1312#4:1155\n1303#4:1156\n1297#4:1157\n1309#4:1158\n1393#4:1159\n1265#4:1160\n1220#4:1161\n1262#4:1162\n1220#4:1163\n1230#4:1164\n1254#4,6:1165\n1242#4:1171\n1241#4,4:1172\n1372#4,3:1176\n1399#4:1179\n1297#4:1180\n1144#4,14:1181\n1220#4:1195\n1175#4:1199\n1179#4:1200\n1254#4,6:1201\n1220#4:1207\n1179#4:1208\n1254#4,6:1209\n1254#4,6:1215\n1179#4:1221\n1254#4,6:1222\n1268#4:1228\n1220#4:1229\n1175#4:1233\n1179#4:1234\n1230#4:1235\n1254#4,6:1236\n1242#4:1242\n1241#4,4:1243\n389#5,4:1049\n361#5,6:1053\n371#5,3:1060\n374#5,9:1064\n393#5:1073\n361#5,6:1074\n371#5,3:1081\n374#5,9:1085\n257#6,4:1094\n227#6,7:1098\n238#6,3:1106\n241#6,9:1110\n261#6:1119\n237#7,6:1120\n882#8,3:1144\n882#8,3:1196\n882#8,3:1230\n*S KotlinDebug\n*F\n+ 1 FloatLongMap.kt\nandroidx/collection/MutableFloatLongMap\n*L\n641#1:1037,5\n669#1:1043,6\n741#1:1059\n741#1:1063\n772#1:1080\n772#1:1084\n793#1:1105\n793#1:1109\n807#1:1126\n807#1:1127,6\n807#1:1133\n807#1:1134,4\n815#1:1138,6\n828#1:1147\n829#1:1148\n836#1:1149,3\n837#1:1152,3\n838#1:1155\n839#1:1156\n839#1:1157\n843#1:1158\n846#1:1159\n855#1:1160\n855#1:1161\n861#1:1162\n861#1:1163\n862#1:1164\n862#1:1165,6\n862#1:1171\n862#1:1172,4\n877#1:1176,3\n878#1:1179\n880#1:1180\n926#1:1181,14\n932#1:1195\n947#1:1199\n958#1:1200\n959#1:1201,6\n969#1:1207\n972#1:1208\n973#1:1209,6\n974#1:1215,6\n984#1:1221\n985#1:1222,6\n1024#1:1228\n1024#1:1229\n1027#1:1233\n1029#1:1234\n1029#1:1235\n1029#1:1236,6\n1029#1:1242\n1029#1:1243,4\n741#1:1049,4\n741#1:1053,6\n741#1:1060,3\n741#1:1064,9\n741#1:1073\n772#1:1074,6\n772#1:1081,3\n772#1:1085,9\n793#1:1094,4\n793#1:1098,7\n793#1:1106,3\n793#1:1110,9\n793#1:1119\n798#1:1120,6\n827#1:1144,3\n946#1:1196,3\n1026#1:1230,3\n*E\n"})
/* loaded from: classes.dex */
public final class MutableFloatLongMap extends FloatLongMap {
    private int growthLimit;

    public MutableFloatLongMap() {
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
        this.values = new long[i11];
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
        long[] jArr2 = this.values;
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
                        jArr2[findFirstAvailableSlot] = jArr2[i15];
                        jArr2[i15] = 0;
                    } else {
                        jArr[i20] = ((i10 & 127) << i21) | ((~(255 << i21)) & j13);
                        float f10 = fArr[findFirstAvailableSlot];
                        fArr[findFirstAvailableSlot] = fArr[i15];
                        fArr[i15] = f10;
                        long j14 = jArr2[findFirstAvailableSlot];
                        jArr2[findFirstAvailableSlot] = jArr2[i15];
                        jArr2[i15] = j14;
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

    public final long getOrPut(float f10, @NotNull Function0<Long> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        int findKeyIndex = findKeyIndex(f10);
        if (findKeyIndex < 0) {
            long longValue = defaultValue.invoke().longValue();
            put(f10, longValue);
            return longValue;
        }
        return this.values[findKeyIndex];
    }

    public final void minusAssign(float f10) {
        remove(f10);
    }

    public final void plusAssign(@NotNull FloatLongMap from) {
        Intrinsics.checkNotNullParameter(from, "from");
        putAll(from);
    }

    public final void put(float f10, long j10) {
        set(f10, j10);
    }

    public final void putAll(@NotNull FloatLongMap from) {
        Intrinsics.checkNotNullParameter(from, "from");
        float[] fArr = from.keys;
        long[] jArr = from.values;
        long[] jArr2 = from.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr2[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            int i13 = (i10 << 3) + i12;
                            set(fArr[i13], jArr[i13]);
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

    public final void removeIf(@NotNull Function2<? super Float, ? super Long, Boolean> predicate) {
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
                            if (predicate.invoke(Float.valueOf(this.keys[i13]), Long.valueOf(this.values[i13])).booleanValue()) {
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
        MutableFloatLongMap mutableFloatLongMap = this;
        long[] jArr2 = mutableFloatLongMap.metadata;
        float[] fArr = mutableFloatLongMap.keys;
        long[] jArr3 = mutableFloatLongMap.values;
        int i11 = mutableFloatLongMap._capacity;
        initializeStorage(i10);
        long[] jArr4 = mutableFloatLongMap.metadata;
        float[] fArr2 = mutableFloatLongMap.keys;
        long[] jArr5 = mutableFloatLongMap.values;
        int i12 = mutableFloatLongMap._capacity;
        int i13 = 0;
        while (i13 < i11) {
            if (((jArr2[i13 >> 3] >> ((i13 & 7) << 3)) & 255) < 128) {
                float f10 = fArr[i13];
                int hashCode = Float.hashCode(f10) * ScatterMapKt.MurmurHashC1;
                int i14 = hashCode ^ (hashCode << 16);
                int findFirstAvailableSlot = mutableFloatLongMap.findFirstAvailableSlot(i14 >>> 7);
                long j10 = i14 & 127;
                int i15 = findFirstAvailableSlot >> 3;
                int i16 = (findFirstAvailableSlot & 7) << 3;
                jArr = jArr2;
                long j11 = (jArr4[i15] & (~(255 << i16))) | (j10 << i16);
                jArr4[i15] = j11;
                jArr4[(((findFirstAvailableSlot - 7) & i12) + (i12 & 7)) >> 3] = j11;
                fArr2[findFirstAvailableSlot] = f10;
                jArr5[findFirstAvailableSlot] = jArr3[i13];
            } else {
                jArr = jArr2;
            }
            i13++;
            mutableFloatLongMap = this;
            jArr2 = jArr;
        }
    }

    public final void set(float f10, long j10) {
        int findInsertIndex = findInsertIndex(f10);
        if (findInsertIndex < 0) {
            findInsertIndex = ~findInsertIndex;
        }
        this.keys[findInsertIndex] = f10;
        this.values[findInsertIndex] = j10;
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

    public MutableFloatLongMap(int i10) {
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

    public final long put(float f10, long j10, long j11) {
        int findInsertIndex = findInsertIndex(f10);
        if (findInsertIndex < 0) {
            findInsertIndex = ~findInsertIndex;
        } else {
            j11 = this.values[findInsertIndex];
        }
        this.keys[findInsertIndex] = f10;
        this.values[findInsertIndex] = j10;
        return j11;
    }

    public final boolean remove(float f10, long j10) {
        int findKeyIndex = findKeyIndex(f10);
        if (findKeyIndex < 0 || this.values[findKeyIndex] != j10) {
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

    public /* synthetic */ MutableFloatLongMap(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
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
