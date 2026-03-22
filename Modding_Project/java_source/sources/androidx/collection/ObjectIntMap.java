package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.collection.internal.RuntimeHelpersKt;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ObjectIntMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nObjectIntMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1051:1\n367#1,6:1054\n377#1,3:1061\n380#1,9:1065\n367#1,6:1074\n377#1,3:1081\n380#1,9:1085\n367#1,6:1094\n377#1,3:1101\n380#1,9:1105\n395#1,4:1114\n367#1,6:1118\n377#1,3:1125\n380#1,9:1129\n399#1:1138\n395#1,4:1139\n367#1,6:1143\n377#1,3:1150\n380#1,9:1154\n399#1:1163\n395#1,4:1164\n367#1,6:1168\n377#1,3:1175\n380#1,9:1179\n399#1:1188\n410#1,3:1189\n367#1,6:1192\n377#1,3:1199\n380#1,9:1203\n413#1:1212\n395#1,4:1213\n367#1,6:1217\n377#1,3:1224\n380#1,9:1228\n399#1:1237\n395#1,4:1238\n367#1,6:1242\n377#1,3:1249\n380#1,9:1253\n399#1:1262\n395#1,4:1263\n367#1,6:1267\n377#1,3:1274\n380#1,9:1278\n399#1:1287\n395#1,4:1288\n367#1,6:1292\n377#1,3:1299\n380#1,9:1303\n399#1:1312\n395#1,4:1313\n367#1,6:1317\n377#1,3:1324\n380#1,9:1328\n399#1:1337\n395#1,4:1338\n367#1,6:1342\n377#1,3:1349\n380#1,9:1353\n399#1:1362\n492#1,11:1379\n395#1,4:1390\n367#1,6:1394\n377#1,3:1401\n380#1,2:1405\n503#1,10:1407\n383#1,6:1417\n399#1:1423\n513#1,2:1424\n492#1,11:1426\n395#1,4:1437\n367#1,6:1441\n377#1,3:1448\n380#1,2:1452\n503#1,10:1454\n383#1,6:1464\n399#1:1470\n513#1,2:1471\n492#1,11:1473\n395#1,4:1484\n367#1,6:1488\n377#1,3:1495\n380#1,2:1499\n503#1,10:1501\n383#1,6:1511\n399#1:1517\n513#1,2:1518\n492#1,11:1520\n395#1,4:1531\n367#1,6:1535\n377#1,3:1542\n380#1,2:1546\n503#1,10:1548\n383#1,6:1558\n399#1:1564\n513#1,2:1565\n492#1,11:1567\n395#1,4:1578\n367#1,6:1582\n377#1,3:1589\n380#1,2:1593\n503#1,10:1595\n383#1,6:1605\n399#1:1611\n513#1,2:1612\n1399#2:1052\n1270#2:1053\n1399#2:1060\n1270#2:1064\n1399#2:1080\n1270#2:1084\n1399#2:1100\n1270#2:1104\n1399#2:1124\n1270#2:1128\n1399#2:1149\n1270#2:1153\n1399#2:1174\n1270#2:1178\n1399#2:1198\n1270#2:1202\n1399#2:1223\n1270#2:1227\n1399#2:1248\n1270#2:1252\n1399#2:1273\n1270#2:1277\n1399#2:1298\n1270#2:1302\n1399#2:1323\n1270#2:1327\n1399#2:1348\n1270#2:1352\n1165#2,3:1363\n1179#2:1366\n1175#2:1367\n1372#2,3:1368\n1386#2,3:1371\n1312#2:1374\n1303#2:1375\n1297#2:1376\n1309#2:1377\n1393#2:1378\n1399#2:1400\n1270#2:1404\n1399#2:1447\n1270#2:1451\n1399#2:1494\n1270#2:1498\n1399#2:1541\n1270#2:1545\n1399#2:1588\n1270#2:1592\n*S KotlinDebug\n*F\n+ 1 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n*L\n398#1:1054,6\n398#1:1061,3\n398#1:1065,9\n405#1:1074,6\n405#1:1081,3\n405#1:1085,9\n412#1:1094,6\n412#1:1101,3\n412#1:1105,9\n417#1:1114,4\n417#1:1118,6\n417#1:1125,3\n417#1:1129,9\n417#1:1138\n423#1:1139,4\n423#1:1143,6\n423#1:1150,3\n423#1:1154,9\n423#1:1163\n433#1:1164,4\n433#1:1168,6\n433#1:1175,3\n433#1:1179,9\n433#1:1188\n445#1:1189,3\n445#1:1192,6\n445#1:1199,3\n445#1:1203,9\n445#1:1212\n467#1:1213,4\n467#1:1217,6\n467#1:1224,3\n467#1:1228,9\n467#1:1237\n502#1:1238,4\n502#1:1242,6\n502#1:1249,3\n502#1:1253,9\n502#1:1262\n502#1:1263,4\n502#1:1267,6\n502#1:1274,3\n502#1:1278,9\n502#1:1287\n523#1:1288,4\n523#1:1292,6\n523#1:1299,3\n523#1:1303,9\n523#1:1312\n549#1:1313,4\n549#1:1317,6\n549#1:1324,3\n549#1:1328,9\n549#1:1337\n571#1:1338,4\n571#1:1342,6\n571#1:1349,3\n571#1:1353,9\n571#1:1362\n-1#1:1379,11\n-1#1:1390,4\n-1#1:1394,6\n-1#1:1401,3\n-1#1:1405,2\n-1#1:1407,10\n-1#1:1417,6\n-1#1:1423\n-1#1:1424,2\n-1#1:1426,11\n-1#1:1437,4\n-1#1:1441,6\n-1#1:1448,3\n-1#1:1452,2\n-1#1:1454,10\n-1#1:1464,6\n-1#1:1470\n-1#1:1471,2\n-1#1:1473,11\n-1#1:1484,4\n-1#1:1488,6\n-1#1:1495,3\n-1#1:1499,2\n-1#1:1501,10\n-1#1:1511,6\n-1#1:1517\n-1#1:1518,2\n-1#1:1520,11\n-1#1:1531,4\n-1#1:1535,6\n-1#1:1542,3\n-1#1:1546,2\n-1#1:1548,10\n-1#1:1558,6\n-1#1:1564\n-1#1:1565,2\n-1#1:1567,11\n-1#1:1578,4\n-1#1:1582,6\n-1#1:1589,3\n-1#1:1593,2\n-1#1:1595,10\n-1#1:1605,6\n-1#1:1611\n-1#1:1612,2\n372#1:1052\n379#1:1053\n398#1:1060\n398#1:1064\n405#1:1080\n405#1:1084\n412#1:1100\n412#1:1104\n417#1:1124\n417#1:1128\n423#1:1149\n423#1:1153\n433#1:1174\n433#1:1178\n445#1:1198\n445#1:1202\n467#1:1223\n467#1:1227\n502#1:1248\n502#1:1252\n502#1:1273\n502#1:1277\n523#1:1298\n523#1:1302\n549#1:1323\n549#1:1327\n571#1:1348\n571#1:1352\n590#1:1363,3\n591#1:1366\n594#1:1367\n598#1:1368,3\n599#1:1371,3\n600#1:1374\n601#1:1375\n601#1:1376\n605#1:1377\n608#1:1378\n-1#1:1400\n-1#1:1404\n-1#1:1447\n-1#1:1451\n-1#1:1494\n-1#1:1498\n-1#1:1541\n-1#1:1545\n-1#1:1588\n-1#1:1592\n*E\n"})
/* loaded from: classes.dex */
public abstract class ObjectIntMap<K> {
    public int _capacity;
    public int _size;
    @NotNull
    public Object[] keys;
    @NotNull
    public long[] metadata;
    @NotNull
    public int[] values;

    public /* synthetic */ ObjectIntMap(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ String joinToString$default(ObjectIntMap objectIntMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, int i11, Object obj) {
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
            return objectIntMap.joinToString(charSequence, str, str2, i12, charSequence4);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
    }

    public final boolean all(@NotNull Function2<? super K, ? super Integer, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] objArr = this.keys;
        int[] iArr = this.values;
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
                            if (!predicate.invoke(objArr[i13], Integer.valueOf(iArr[i13])).booleanValue()) {
                                return false;
                            }
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

    public final boolean contains(K k10) {
        return containsKey(k10);
    }

    public final boolean containsKey(K k10) {
        if (findKeyIndex(k10) >= 0) {
            return true;
        }
        return false;
    }

    public final boolean containsValue(int i10) {
        int[] iArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i11 = 0;
            while (true) {
                long j10 = jArr[i11];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j10) < 128 && i10 == iArr[(i11 << 3) + i13]) {
                            return true;
                        }
                        j10 >>= 8;
                    }
                    if (i12 != 8) {
                        break;
                    }
                }
                if (i11 == length) {
                    break;
                }
                i11++;
            }
        }
        return false;
    }

    public final int count() {
        return getSize();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ObjectIntMap)) {
            return false;
        }
        ObjectIntMap objectIntMap = (ObjectIntMap) obj;
        if (objectIntMap.getSize() != getSize()) {
            return false;
        }
        Object[] objArr = this.keys;
        int[] iArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            loop0: while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            int i13 = (i10 << 3) + i12;
                            Object obj2 = objArr[i13];
                            int i14 = iArr[i13];
                            int findKeyIndex = objectIntMap.findKeyIndex(obj2);
                            if (findKeyIndex < 0 || i14 != objectIntMap.values[findKeyIndex]) {
                                break loop0;
                            }
                        }
                        j10 >>= 8;
                    }
                    if (i11 != 8) {
                        return true;
                    }
                }
                if (i10 == length) {
                    return true;
                }
                i10++;
            }
            return false;
        }
        return true;
    }

    public final int findKeyIndex(K k10) {
        int i10;
        int i11 = 0;
        if (k10 != null) {
            i10 = k10.hashCode();
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
                if (Intrinsics.areEqual(this.keys[numberOfTrailingZeros], k10)) {
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

    public final void forEach(@NotNull Function2<? super K, ? super Integer, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Object[] objArr = this.keys;
        int[] iArr = this.values;
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
                            block.invoke(objArr[i13], Integer.valueOf(iArr[i13]));
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

    public final void forEachIndexed(@NotNull Function1<? super Integer, Unit> block) {
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

    public final void forEachKey(@NotNull Function1<? super K, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Object[] objArr = this.keys;
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

    public final void forEachValue(@NotNull Function1<? super Integer, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        int[] iArr = this.values;
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
                            block.invoke(Integer.valueOf(iArr[(i10 << 3) + i12]));
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

    public final int get(K k10) {
        int findKeyIndex = findKeyIndex(k10);
        if (findKeyIndex < 0) {
            RuntimeHelpersKt.throwNoSuchElementException("There is no key " + k10 + " in the map");
        }
        return this.values[findKeyIndex];
    }

    public final int getCapacity() {
        return this._capacity;
    }

    public final int getOrDefault(K k10, int i10) {
        int findKeyIndex = findKeyIndex(k10);
        if (findKeyIndex >= 0) {
            return this.values[findKeyIndex];
        }
        return i10;
    }

    public final int getOrElse(K k10, @NotNull Function0<Integer> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        int findKeyIndex = findKeyIndex(k10);
        if (findKeyIndex >= 0) {
            return this.values[findKeyIndex];
        }
        return defaultValue.invoke().intValue();
    }

    public final int getSize() {
        return this._size;
    }

    public int hashCode() {
        int i10;
        Object[] objArr = this.keys;
        int[] iArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        int i11 = 0;
        if (length >= 0) {
            int i12 = 0;
            int i13 = 0;
            while (true) {
                long j10 = jArr[i12];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i14 = 8 - ((~(i12 - length)) >>> 31);
                    for (int i15 = 0; i15 < i14; i15++) {
                        if ((255 & j10) < 128) {
                            int i16 = (i12 << 3) + i15;
                            Object obj = objArr[i16];
                            int i17 = iArr[i16];
                            if (obj != null) {
                                i10 = obj.hashCode();
                            } else {
                                i10 = 0;
                            }
                            i13 += Integer.hashCode(i17) ^ i10;
                        }
                        j10 >>= 8;
                    }
                    if (i14 != 8) {
                        return i13;
                    }
                }
                if (i12 != length) {
                    i12++;
                } else {
                    i11 = i13;
                    break;
                }
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
        if (isEmpty()) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('{');
        Object[] objArr = this.keys;
        int[] iArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j10) < 128) {
                            int i14 = (i10 << 3) + i13;
                            Object obj = objArr[i14];
                            int i15 = iArr[i14];
                            if (obj == this) {
                                obj = "(this)";
                            }
                            sb2.append(obj);
                            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                            sb2.append(i15);
                            i11++;
                            if (i11 < this._size) {
                                sb2.append(',');
                                sb2.append(' ');
                            }
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
        sb2.append('}');
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    private ObjectIntMap() {
        this.metadata = ScatterMapKt.EmptyGroup;
        this.keys = ContainerHelpersKt.EMPTY_OBJECTS;
        this.values = IntSetKt.getEmptyIntArray();
    }

    public final boolean any(@NotNull Function2<? super K, ? super Integer, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] objArr = this.keys;
        int[] iArr = this.values;
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
                            if (predicate.invoke(objArr[i13], Integer.valueOf(iArr[i13])).booleanValue()) {
                                return true;
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
        return false;
    }

    public final int count(@NotNull Function2<? super K, ? super Integer, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] objArr = this.keys;
        int[] iArr = this.values;
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
                        if ((255 & j10) < 128) {
                            int i15 = (i11 << 3) + i14;
                            if (predicate.invoke(objArr[i15], Integer.valueOf(iArr[i15])).booleanValue()) {
                                i12++;
                            }
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

    public static /* synthetic */ String joinToString$default(ObjectIntMap objectIntMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Function2 transform, int i11, Object obj) {
        long[] jArr;
        long[] jArr2;
        int i12;
        if (obj == null) {
            String separator = (i11 & 1) != 0 ? ", " : charSequence;
            String prefix = (i11 & 2) != 0 ? "" : charSequence2;
            String postfix = (i11 & 4) == 0 ? charSequence3 : "";
            int i13 = (i11 & 8) != 0 ? -1 : i10;
            String truncated = (i11 & 16) != 0 ? "..." : charSequence4;
            Intrinsics.checkNotNullParameter(separator, "separator");
            Intrinsics.checkNotNullParameter(prefix, "prefix");
            Intrinsics.checkNotNullParameter(postfix, "postfix");
            Intrinsics.checkNotNullParameter(truncated, "truncated");
            Intrinsics.checkNotNullParameter(transform, "transform");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(prefix);
            Object[] objArr = objectIntMap.keys;
            int[] iArr = objectIntMap.values;
            long[] jArr3 = objectIntMap.metadata;
            int length = jArr3.length - 2;
            if (length >= 0) {
                int i14 = 0;
                int i15 = 0;
                loop0: while (true) {
                    long j10 = jArr3[i14];
                    int i16 = i14;
                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i17 = 8;
                        int i18 = 8 - ((~(i16 - length)) >>> 31);
                        int i19 = 0;
                        while (i19 < i18) {
                            if ((j10 & 255) < 128) {
                                int i20 = (i16 << 3) + i19;
                                Object obj2 = objArr[i20];
                                int i21 = iArr[i20];
                                if (i15 == i13) {
                                    sb2.append(truncated);
                                    break loop0;
                                }
                                if (i15 != 0) {
                                    sb2.append(separator);
                                }
                                jArr2 = jArr3;
                                sb2.append((CharSequence) transform.invoke(obj2, Integer.valueOf(i21)));
                                i15++;
                                i12 = 8;
                            } else {
                                jArr2 = jArr3;
                                i12 = i17;
                            }
                            j10 >>= i12;
                            i19++;
                            i17 = i12;
                            jArr3 = jArr2;
                        }
                        jArr = jArr3;
                        if (i18 != i17) {
                            break;
                        }
                    } else {
                        jArr = jArr3;
                    }
                    if (i16 == length) {
                        break;
                    }
                    i14 = i16 + 1;
                    jArr3 = jArr;
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
        Object[] objArr;
        Object[] objArr2;
        int i11;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        Object[] objArr3 = this.keys;
        int[] iArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i12 = 0;
            int i13 = 0;
            loop0: while (true) {
                long j10 = jArr[i12];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i14 = 8;
                    int i15 = 8 - ((~(i12 - length)) >>> 31);
                    int i16 = 0;
                    while (i16 < i15) {
                        if ((j10 & 255) < 128) {
                            int i17 = (i12 << 3) + i16;
                            Object obj = objArr3[i17];
                            int i18 = iArr[i17];
                            objArr2 = objArr3;
                            if (i13 == i10) {
                                sb2.append(truncated);
                                break loop0;
                            }
                            if (i13 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(obj);
                            sb2.append('=');
                            sb2.append(i18);
                            i13++;
                            i11 = 8;
                        } else {
                            objArr2 = objArr3;
                            i11 = i14;
                        }
                        j10 >>= i11;
                        i16++;
                        i14 = i11;
                        objArr3 = objArr2;
                    }
                    objArr = objArr3;
                    if (i15 != i14) {
                        break;
                    }
                } else {
                    objArr = objArr3;
                }
                if (i12 == length) {
                    break;
                }
                i12++;
                objArr3 = objArr;
            }
        }
        sb2.append(postfix);
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public static /* synthetic */ void getKeys$annotations() {
    }

    public static /* synthetic */ void getMetadata$annotations() {
    }

    public static /* synthetic */ void getValues$annotations() {
    }

    public static /* synthetic */ void get_capacity$collection$annotations() {
    }

    public static /* synthetic */ void get_size$collection$annotations() {
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence charSequence, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @NotNull Function2<? super K, ? super Integer, ? extends CharSequence> transform) {
        Object[] objArr;
        Object[] objArr2;
        CharSequence separator = charSequence;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        Object[] objArr3 = this.keys;
        int[] iArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i11 = 0;
            int i12 = 0;
            loop0: while (true) {
                long j10 = jArr[i11];
                int i13 = i11;
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i14 = 8 - ((~(i13 - length)) >>> 31);
                    int i15 = 0;
                    while (i15 < i14) {
                        if ((j10 & 255) < 128) {
                            int i16 = (i13 << 3) + i15;
                            Object obj = objArr3[i16];
                            int i17 = iArr[i16];
                            objArr2 = objArr3;
                            if (i12 == i10) {
                                sb2.append(truncated);
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(obj, Integer.valueOf(i17)));
                            i12++;
                        } else {
                            objArr2 = objArr3;
                        }
                        j10 >>= 8;
                        i15++;
                        separator = charSequence;
                        objArr3 = objArr2;
                    }
                    objArr = objArr3;
                    if (i14 != 8) {
                        break;
                    }
                } else {
                    objArr = objArr3;
                }
                if (i13 == length) {
                    break;
                }
                i11 = i13 + 1;
                separator = charSequence;
                objArr3 = objArr;
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
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull Function2<? super K, ? super Integer, ? extends CharSequence> transform) {
        int i11;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        Object[] objArr = this.keys;
        int[] iArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i12 = 0;
            int i13 = 0;
            loop0: while (true) {
                long j10 = jArr[i12];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i14 = 8;
                    int i15 = 8 - ((~(i12 - length)) >>> 31);
                    int i16 = 0;
                    while (i16 < i15) {
                        if ((j10 & 255) < 128) {
                            int i17 = (i12 << 3) + i16;
                            Object obj = objArr[i17];
                            int i18 = iArr[i17];
                            if (i13 == i10) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i13 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(obj, Integer.valueOf(i18)));
                            i13++;
                            i11 = 8;
                        } else {
                            i11 = i14;
                        }
                        j10 >>= i11;
                        i16++;
                        i14 = i11;
                    }
                    if (i15 != i14) {
                        break;
                    }
                }
                if (i12 == length) {
                    break;
                }
                i12++;
            }
        }
        sb2.append(postfix);
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, @NotNull Function2<? super K, ? super Integer, ? extends CharSequence> transform) {
        int i10;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        Object[] objArr = this.keys;
        int[] iArr = this.values;
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
                    int i15 = 0;
                    while (i15 < i14) {
                        if ((j10 & 255) < 128) {
                            int i16 = (i11 << 3) + i15;
                            Object obj = objArr[i16];
                            int i17 = iArr[i16];
                            if (i12 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(obj, Integer.valueOf(i17)));
                            i12++;
                            i10 = 8;
                        } else {
                            i10 = i13;
                        }
                        j10 >>= i10;
                        i15++;
                        i13 = i10;
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
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull Function2<? super K, ? super Integer, ? extends CharSequence> transform) {
        int i10;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        Object[] objArr = this.keys;
        int[] iArr = this.values;
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
                    int i15 = 0;
                    while (i15 < i14) {
                        if ((j10 & 255) < 128) {
                            int i16 = (i11 << 3) + i15;
                            Object obj = objArr[i16];
                            int i17 = iArr[i16];
                            if (i12 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(obj, Integer.valueOf(i17)));
                            i12++;
                            i10 = 8;
                        } else {
                            i10 = i13;
                        }
                        j10 >>= i10;
                        i15++;
                        i13 = i10;
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
        sb2.append((CharSequence) "");
        String sb32 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb32, "toString(...)");
        return sb32;
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull Function2<? super K, ? super Integer, ? extends CharSequence> transform) {
        int i10;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        Object[] objArr = this.keys;
        int[] iArr = this.values;
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
                    int i15 = 0;
                    while (i15 < i14) {
                        if ((j10 & 255) < 128) {
                            int i16 = (i11 << 3) + i15;
                            Object obj = objArr[i16];
                            int i17 = iArr[i16];
                            if (i12 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(obj, Integer.valueOf(i17)));
                            i12++;
                            i10 = 8;
                        } else {
                            i10 = i13;
                        }
                        j10 >>= i10;
                        i15++;
                        i13 = i10;
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
        sb2.append((CharSequence) "");
        String sb32 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb32, "toString(...)");
        return sb32;
    }

    @NotNull
    public final String joinToString(@NotNull Function2<? super K, ? super Integer, ? extends CharSequence> transform) {
        int i10;
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        Object[] objArr = this.keys;
        int[] iArr = this.values;
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
                    int i15 = 0;
                    while (i15 < i14) {
                        if ((j10 & 255) < 128) {
                            int i16 = (i11 << 3) + i15;
                            Object obj = objArr[i16];
                            int i17 = iArr[i16];
                            if (i12 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append((CharSequence) ", ");
                            }
                            sb2.append(transform.invoke(obj, Integer.valueOf(i17)));
                            i12++;
                            i10 = 8;
                        } else {
                            i10 = i13;
                        }
                        j10 >>= i10;
                        i15++;
                        i13 = i10;
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
        sb2.append((CharSequence) "");
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }
}
