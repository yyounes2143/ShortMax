package androidx.collection;

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
/* compiled from: FloatLongMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFloatLongMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatLongMap.kt\nandroidx/collection/FloatLongMap\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 3 FloatSet.kt\nandroidx/collection/FloatSetKt\n*L\n1#1,1036:1\n361#1,6:1039\n371#1,3:1046\n374#1,9:1050\n361#1,6:1059\n371#1,3:1066\n374#1,9:1070\n361#1,6:1079\n371#1,3:1086\n374#1,9:1090\n389#1,4:1099\n361#1,6:1103\n371#1,3:1110\n374#1,9:1114\n393#1:1123\n389#1,4:1124\n361#1,6:1128\n371#1,3:1135\n374#1,9:1139\n393#1:1148\n389#1,4:1149\n361#1,6:1153\n371#1,3:1160\n374#1,9:1164\n393#1:1173\n404#1,3:1174\n361#1,6:1177\n371#1,3:1184\n374#1,9:1188\n407#1:1197\n389#1,4:1198\n361#1,6:1202\n371#1,3:1209\n374#1,9:1213\n393#1:1222\n389#1,4:1223\n361#1,6:1227\n371#1,3:1234\n374#1,9:1238\n393#1:1247\n389#1,4:1248\n361#1,6:1252\n371#1,3:1259\n374#1,9:1263\n393#1:1272\n389#1,4:1273\n361#1,6:1277\n371#1,3:1284\n374#1,9:1288\n393#1:1297\n389#1,4:1298\n361#1,6:1302\n371#1,3:1309\n374#1,9:1313\n393#1:1322\n389#1,4:1323\n361#1,6:1327\n371#1,3:1334\n374#1,9:1338\n393#1:1347\n486#1,11:1364\n389#1,4:1375\n361#1,6:1379\n371#1,3:1386\n374#1,2:1390\n497#1,10:1392\n377#1,6:1402\n393#1:1408\n507#1,2:1409\n486#1,11:1411\n389#1,4:1422\n361#1,6:1426\n371#1,3:1433\n374#1,2:1437\n497#1,10:1439\n377#1,6:1449\n393#1:1455\n507#1,2:1456\n486#1,11:1458\n389#1,4:1469\n361#1,6:1473\n371#1,3:1480\n374#1,2:1484\n497#1,10:1486\n377#1,6:1496\n393#1:1502\n507#1,2:1503\n486#1,11:1505\n389#1,4:1516\n361#1,6:1520\n371#1,3:1527\n374#1,2:1531\n497#1,10:1533\n377#1,6:1543\n393#1:1549\n507#1,2:1550\n486#1,11:1552\n389#1,4:1563\n361#1,6:1567\n371#1,3:1574\n374#1,2:1578\n497#1,10:1580\n377#1,6:1590\n393#1:1596\n507#1,2:1597\n1399#2:1037\n1270#2:1038\n1399#2:1045\n1270#2:1049\n1399#2:1065\n1270#2:1069\n1399#2:1085\n1270#2:1089\n1399#2:1109\n1270#2:1113\n1399#2:1134\n1270#2:1138\n1399#2:1159\n1270#2:1163\n1399#2:1183\n1270#2:1187\n1399#2:1208\n1270#2:1212\n1399#2:1233\n1270#2:1237\n1399#2:1258\n1270#2:1262\n1399#2:1283\n1270#2:1287\n1399#2:1308\n1270#2:1312\n1399#2:1333\n1270#2:1337\n1179#2:1351\n1175#2:1352\n1372#2,3:1353\n1386#2,3:1356\n1312#2:1359\n1303#2:1360\n1297#2:1361\n1309#2:1362\n1393#2:1363\n1399#2:1385\n1270#2:1389\n1399#2:1432\n1270#2:1436\n1399#2:1479\n1270#2:1483\n1399#2:1526\n1270#2:1530\n1399#2:1573\n1270#2:1577\n882#3,3:1348\n*S KotlinDebug\n*F\n+ 1 FloatLongMap.kt\nandroidx/collection/FloatLongMap\n*L\n392#1:1039,6\n392#1:1046,3\n392#1:1050,9\n399#1:1059,6\n399#1:1066,3\n399#1:1070,9\n406#1:1079,6\n406#1:1086,3\n406#1:1090,9\n411#1:1099,4\n411#1:1103,6\n411#1:1110,3\n411#1:1114,9\n411#1:1123\n417#1:1124,4\n417#1:1128,6\n417#1:1135,3\n417#1:1139,9\n417#1:1148\n427#1:1149,4\n427#1:1153,6\n427#1:1160,3\n427#1:1164,9\n427#1:1173\n439#1:1174,3\n439#1:1177,6\n439#1:1184,3\n439#1:1188,9\n439#1:1197\n461#1:1198,4\n461#1:1202,6\n461#1:1209,3\n461#1:1213,9\n461#1:1222\n496#1:1223,4\n496#1:1227,6\n496#1:1234,3\n496#1:1238,9\n496#1:1247\n496#1:1248,4\n496#1:1252,6\n496#1:1259,3\n496#1:1263,9\n496#1:1272\n517#1:1273,4\n517#1:1277,6\n517#1:1284,3\n517#1:1288,9\n517#1:1297\n541#1:1298,4\n541#1:1302,6\n541#1:1309,3\n541#1:1313,9\n541#1:1322\n563#1:1323,4\n563#1:1327,6\n563#1:1334,3\n563#1:1338,9\n563#1:1347\n-1#1:1364,11\n-1#1:1375,4\n-1#1:1379,6\n-1#1:1386,3\n-1#1:1390,2\n-1#1:1392,10\n-1#1:1402,6\n-1#1:1408\n-1#1:1409,2\n-1#1:1411,11\n-1#1:1422,4\n-1#1:1426,6\n-1#1:1433,3\n-1#1:1437,2\n-1#1:1439,10\n-1#1:1449,6\n-1#1:1455\n-1#1:1456,2\n-1#1:1458,11\n-1#1:1469,4\n-1#1:1473,6\n-1#1:1480,3\n-1#1:1484,2\n-1#1:1486,10\n-1#1:1496,6\n-1#1:1502\n-1#1:1503,2\n-1#1:1505,11\n-1#1:1516,4\n-1#1:1520,6\n-1#1:1527,3\n-1#1:1531,2\n-1#1:1533,10\n-1#1:1543,6\n-1#1:1549\n-1#1:1550,2\n-1#1:1552,11\n-1#1:1563,4\n-1#1:1567,6\n-1#1:1574,3\n-1#1:1578,2\n-1#1:1580,10\n-1#1:1590,6\n-1#1:1596\n-1#1:1597,2\n366#1:1037\n373#1:1038\n392#1:1045\n392#1:1049\n399#1:1065\n399#1:1069\n406#1:1085\n406#1:1089\n411#1:1109\n411#1:1113\n417#1:1134\n417#1:1138\n427#1:1159\n427#1:1163\n439#1:1183\n439#1:1187\n461#1:1208\n461#1:1212\n496#1:1233\n496#1:1237\n496#1:1258\n496#1:1262\n517#1:1283\n517#1:1287\n541#1:1308\n541#1:1312\n563#1:1333\n563#1:1337\n583#1:1351\n586#1:1352\n590#1:1353,3\n591#1:1356,3\n592#1:1359\n593#1:1360\n593#1:1361\n597#1:1362\n600#1:1363\n-1#1:1385\n-1#1:1389\n-1#1:1432\n-1#1:1436\n-1#1:1479\n-1#1:1483\n-1#1:1526\n-1#1:1530\n-1#1:1573\n-1#1:1577\n582#1:1348,3\n*E\n"})
/* loaded from: classes.dex */
public abstract class FloatLongMap {
    public int _capacity;
    public int _size;
    @NotNull
    public float[] keys;
    @NotNull
    public long[] metadata;
    @NotNull
    public long[] values;

    public /* synthetic */ FloatLongMap(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ String joinToString$default(FloatLongMap floatLongMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, int i11, Object obj) {
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
            return floatLongMap.joinToString(charSequence, str, str2, i12, charSequence4);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
    }

    public final boolean all(@NotNull Function2<? super Float, ? super Long, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        float[] fArr = this.keys;
        long[] jArr = this.values;
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
                            int i13 = (i10 << 3) + i12;
                            if (!predicate.invoke(Float.valueOf(fArr[i13]), Long.valueOf(jArr[i13])).booleanValue()) {
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

    public final boolean contains(float f10) {
        return containsKey(f10);
    }

    public final boolean containsKey(float f10) {
        if (findKeyIndex(f10) >= 0) {
            return true;
        }
        return false;
    }

    public final boolean containsValue(long j10) {
        long[] jArr = this.values;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j11 = jArr2[i10];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j11) < 128 && j10 == jArr[(i10 << 3) + i12]) {
                            return true;
                        }
                        j11 >>= 8;
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

    public final int count() {
        return getSize();
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FloatLongMap)) {
            return false;
        }
        FloatLongMap floatLongMap = (FloatLongMap) obj;
        if (floatLongMap.getSize() != getSize()) {
            return false;
        }
        float[] fArr = this.keys;
        long[] jArr = this.values;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            loop0: while (true) {
                long j10 = jArr2[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            int i13 = (i10 << 3) + i12;
                            float f10 = fArr[i13];
                            long j11 = jArr[i13];
                            int findKeyIndex = floatLongMap.findKeyIndex(f10);
                            if (findKeyIndex < 0 || j11 != floatLongMap.values[findKeyIndex]) {
                                break loop0;
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
            return false;
        }
        return true;
    }

    public final int findKeyIndex(float f10) {
        int hashCode = Float.hashCode(f10) * ScatterMapKt.MurmurHashC1;
        int i10 = hashCode ^ (hashCode << 16);
        int i11 = i10 & 127;
        int i12 = this._capacity;
        int i13 = (i10 >>> 7) & i12;
        int i14 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i15 = i13 >> 3;
            int i16 = (i13 & 7) << 3;
            long j10 = ((jArr[i15 + 1] << (64 - i16)) & ((-i16) >> 63)) | (jArr[i15] >>> i16);
            long j11 = (i11 * ScatterMapKt.BitmaskLsb) ^ j10;
            for (long j12 = (~j11) & (j11 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j12 != 0; j12 &= j12 - 1) {
                int numberOfTrailingZeros = ((Long.numberOfTrailingZeros(j12) >> 3) + i13) & i12;
                if (this.keys[numberOfTrailingZeros] == f10) {
                    return numberOfTrailingZeros;
                }
            }
            if ((j10 & ((~j10) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i14 += 8;
            i13 = (i13 + i14) & i12;
        }
    }

    public final void forEach(@NotNull Function2<? super Float, ? super Long, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        float[] fArr = this.keys;
        long[] jArr = this.values;
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
                            int i13 = (i10 << 3) + i12;
                            block.invoke(Float.valueOf(fArr[i13]), Long.valueOf(jArr[i13]));
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

    public final void forEachKey(@NotNull Function1<? super Float, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        float[] fArr = this.keys;
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
                            block.invoke(Float.valueOf(fArr[(i10 << 3) + i12]));
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

    public final void forEachValue(@NotNull Function1<? super Long, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        long[] jArr = this.values;
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

    public final long get(float f10) {
        int findKeyIndex = findKeyIndex(f10);
        if (findKeyIndex < 0) {
            RuntimeHelpersKt.throwNoSuchElementException("Cannot find value for key " + f10);
        }
        return this.values[findKeyIndex];
    }

    public final int getCapacity() {
        return this._capacity;
    }

    public final long getOrDefault(float f10, long j10) {
        int findKeyIndex = findKeyIndex(f10);
        if (findKeyIndex >= 0) {
            return this.values[findKeyIndex];
        }
        return j10;
    }

    public final long getOrElse(float f10, @NotNull Function0<Long> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        int findKeyIndex = findKeyIndex(f10);
        if (findKeyIndex < 0) {
            return defaultValue.invoke().longValue();
        }
        return this.values[findKeyIndex];
    }

    public final int getSize() {
        return this._size;
    }

    public int hashCode() {
        float[] fArr = this.keys;
        long[] jArr = this.values;
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
                            int i15 = (i11 << 3) + i14;
                            i12 += Float.hashCode(fArr[i15]) ^ Long.hashCode(jArr[i15]);
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
        int i10;
        int i11;
        if (isEmpty()) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('{');
        float[] fArr = this.keys;
        long[] jArr = this.values;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i12 = 0;
            int i13 = 0;
            while (true) {
                long j10 = jArr2[i12];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i14 = 8 - ((~(i12 - length)) >>> 31);
                    int i15 = 0;
                    while (i15 < i14) {
                        if ((255 & j10) < 128) {
                            int i16 = (i12 << 3) + i15;
                            float f10 = fArr[i16];
                            i11 = i12;
                            long j11 = jArr[i16];
                            sb2.append(f10);
                            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                            sb2.append(j11);
                            i13++;
                            if (i13 < this._size) {
                                sb2.append(',');
                                sb2.append(' ');
                            }
                        } else {
                            i11 = i12;
                        }
                        j10 >>= 8;
                        i15++;
                        i12 = i11;
                    }
                    int i17 = i12;
                    if (i14 != 8) {
                        break;
                    }
                    i10 = i17;
                } else {
                    i10 = i12;
                }
                if (i10 == length) {
                    break;
                }
                i12 = i10 + 1;
            }
        }
        sb2.append('}');
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    private FloatLongMap() {
        this.metadata = ScatterMapKt.EmptyGroup;
        this.keys = FloatSetKt.getEmptyFloatArray();
        this.values = LongSetKt.getEmptyLongArray();
    }

    public final boolean any(@NotNull Function2<? super Float, ? super Long, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        float[] fArr = this.keys;
        long[] jArr = this.values;
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
                            int i13 = (i10 << 3) + i12;
                            if (predicate.invoke(Float.valueOf(fArr[i13]), Long.valueOf(jArr[i13])).booleanValue()) {
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

    public final int count(@NotNull Function2<? super Float, ? super Long, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        float[] fArr = this.keys;
        long[] jArr = this.values;
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
                            int i15 = (i11 << 3) + i14;
                            if (predicate.invoke(Float.valueOf(fArr[i15]), Long.valueOf(jArr[i15])).booleanValue()) {
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

    public static /* synthetic */ String joinToString$default(FloatLongMap floatLongMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Function2 transform, int i11, Object obj) {
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
            float[] fArr = floatLongMap.keys;
            long[] jArr3 = floatLongMap.values;
            long[] jArr4 = floatLongMap.metadata;
            int length = jArr4.length - 2;
            if (length >= 0) {
                int i14 = 0;
                int i15 = 0;
                loop0: while (true) {
                    long j10 = jArr4[i14];
                    int i16 = i14;
                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i17 = 8;
                        int i18 = 8 - ((~(i16 - length)) >>> 31);
                        int i19 = 0;
                        while (i19 < i18) {
                            if ((j10 & 255) < 128) {
                                int i20 = (i16 << 3) + i19;
                                float f10 = fArr[i20];
                                long j11 = jArr3[i20];
                                if (i15 == i13) {
                                    sb2.append(truncated);
                                    break loop0;
                                }
                                if (i15 != 0) {
                                    sb2.append(separator);
                                }
                                jArr2 = jArr4;
                                sb2.append((CharSequence) transform.invoke(Float.valueOf(f10), Long.valueOf(j11)));
                                i15++;
                                i12 = 8;
                            } else {
                                jArr2 = jArr4;
                                i12 = i17;
                            }
                            j10 >>= i12;
                            i19++;
                            i17 = i12;
                            jArr4 = jArr2;
                        }
                        jArr = jArr4;
                        if (i18 != i17) {
                            break;
                        }
                    } else {
                        jArr = jArr4;
                    }
                    if (i16 == length) {
                        break;
                    }
                    i14 = i16 + 1;
                    jArr4 = jArr;
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
        float[] fArr;
        float[] fArr2;
        int i11;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        float[] fArr3 = this.keys;
        long[] jArr = this.values;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i12 = 0;
            int i13 = 0;
            loop0: while (true) {
                long j10 = jArr2[i12];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i14 = 8;
                    int i15 = 8 - ((~(i12 - length)) >>> 31);
                    int i16 = 0;
                    while (i16 < i15) {
                        if ((j10 & 255) < 128) {
                            int i17 = (i12 << 3) + i16;
                            float f10 = fArr3[i17];
                            fArr2 = fArr3;
                            long j11 = jArr[i17];
                            if (i13 == i10) {
                                sb2.append(truncated);
                                break loop0;
                            }
                            if (i13 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(f10);
                            sb2.append('=');
                            sb2.append(j11);
                            i13++;
                            i11 = 8;
                        } else {
                            fArr2 = fArr3;
                            i11 = i14;
                        }
                        j10 >>= i11;
                        i16++;
                        i14 = i11;
                        fArr3 = fArr2;
                    }
                    fArr = fArr3;
                    if (i15 != i14) {
                        break;
                    }
                } else {
                    fArr = fArr3;
                }
                if (i12 == length) {
                    break;
                }
                i12++;
                fArr3 = fArr;
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
    public final String joinToString(@NotNull CharSequence charSequence, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @NotNull Function2<? super Float, ? super Long, ? extends CharSequence> transform) {
        CharSequence separator = charSequence;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        float[] fArr = this.keys;
        long[] jArr = this.values;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i11 = 0;
            int i12 = 0;
            loop0: while (true) {
                long j10 = jArr2[i11];
                int i13 = i11;
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i14 = 8 - ((~(i13 - length)) >>> 31);
                    int i15 = 0;
                    while (i15 < i14) {
                        if ((j10 & 255) < 128) {
                            int i16 = (i13 << 3) + i15;
                            float f10 = fArr[i16];
                            long j11 = jArr[i16];
                            if (i12 == i10) {
                                sb2.append(truncated);
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(Float.valueOf(f10), Long.valueOf(j11)));
                            i12++;
                        }
                        j10 >>= 8;
                        i15++;
                        separator = charSequence;
                    }
                    if (i14 != 8) {
                        break;
                    }
                }
                if (i13 == length) {
                    break;
                }
                i11 = i13 + 1;
                separator = charSequence;
            }
        }
        sb2.append(postfix);
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence charSequence, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull Function2<? super Float, ? super Long, ? extends CharSequence> transform) {
        CharSequence separator = charSequence;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        float[] fArr = this.keys;
        long[] jArr = this.values;
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
                            int i16 = (i11 << 3) + i15;
                            float f10 = fArr[i16];
                            long j11 = jArr[i16];
                            if (i12 == i10) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(Float.valueOf(f10), Long.valueOf(j11)));
                            i12++;
                        }
                        j10 >>= 8;
                        i15++;
                        separator = charSequence;
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
                separator = charSequence;
            }
        }
        sb2.append(postfix);
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, @NotNull Function2<? super Float, ? super Long, ? extends CharSequence> transform) {
        int i10;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        float[] fArr = this.keys;
        long[] jArr = this.values;
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
                            int i16 = (i11 << 3) + i15;
                            float f10 = fArr[i16];
                            long j11 = jArr[i16];
                            if (i12 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(Float.valueOf(f10), Long.valueOf(j11)));
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
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull Function2<? super Float, ? super Long, ? extends CharSequence> transform) {
        int i10;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        float[] fArr = this.keys;
        long[] jArr = this.values;
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
                            int i16 = (i11 << 3) + i15;
                            float f10 = fArr[i16];
                            long j11 = jArr[i16];
                            if (i12 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(Float.valueOf(f10), Long.valueOf(j11)));
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
    public final String joinToString(@NotNull CharSequence separator, @NotNull Function2<? super Float, ? super Long, ? extends CharSequence> transform) {
        int i10;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        float[] fArr = this.keys;
        long[] jArr = this.values;
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
                            int i16 = (i11 << 3) + i15;
                            float f10 = fArr[i16];
                            long j11 = jArr[i16];
                            if (i12 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(Float.valueOf(f10), Long.valueOf(j11)));
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
    public final String joinToString(@NotNull Function2<? super Float, ? super Long, ? extends CharSequence> transform) {
        int i10;
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        float[] fArr = this.keys;
        long[] jArr = this.values;
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
                            int i16 = (i11 << 3) + i15;
                            float f10 = fArr[i16];
                            long j11 = jArr[i16];
                            if (i12 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append((CharSequence) ", ");
                            }
                            sb2.append(transform.invoke(Float.valueOf(f10), Long.valueOf(j11)));
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
