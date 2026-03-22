package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
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
/* compiled from: LongObjectMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLongObjectMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongObjectMap.kt\nandroidx/collection/LongObjectMap\n+ 2 LongSet.kt\nandroidx/collection/LongSetKt\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1017:1\n577#1:1018\n578#1:1022\n580#1,2:1024\n582#1,4:1027\n586#1:1034\n587#1:1038\n588#1:1040\n589#1,4:1043\n595#1:1048\n596#1,8:1050\n577#1:1058\n578#1:1062\n580#1,2:1064\n582#1,4:1067\n586#1:1074\n587#1:1078\n588#1:1080\n589#1,4:1083\n595#1:1088\n596#1,8:1090\n354#1,6:1100\n364#1,3:1107\n367#1,9:1111\n354#1,6:1120\n364#1,3:1127\n367#1,9:1131\n354#1,6:1140\n364#1,3:1147\n367#1,9:1151\n382#1,4:1160\n354#1,6:1164\n364#1,3:1171\n367#1,9:1175\n386#1:1184\n382#1,4:1185\n354#1,6:1189\n364#1,3:1196\n367#1,9:1200\n386#1:1209\n382#1,4:1210\n354#1,6:1214\n364#1,3:1221\n367#1,9:1225\n386#1:1234\n577#1:1235\n578#1:1239\n580#1,2:1241\n582#1,4:1244\n586#1:1251\n587#1:1255\n588#1:1257\n589#1,4:1260\n595#1:1265\n596#1,8:1267\n397#1,3:1275\n354#1,6:1278\n364#1,3:1285\n367#1,9:1289\n400#1:1298\n382#1,4:1299\n354#1,6:1303\n364#1,3:1310\n367#1,9:1314\n386#1:1323\n382#1,4:1324\n354#1,6:1328\n364#1,3:1335\n367#1,9:1339\n386#1:1348\n382#1,4:1349\n354#1,6:1353\n364#1,3:1360\n367#1,9:1364\n386#1:1373\n382#1,4:1374\n354#1,6:1378\n364#1,3:1385\n367#1,9:1389\n386#1:1398\n382#1,4:1399\n354#1,6:1403\n364#1,3:1410\n367#1,9:1414\n386#1:1423\n382#1,4:1424\n354#1,6:1428\n364#1,3:1435\n367#1,9:1439\n386#1:1448\n479#1,11:1465\n382#1,4:1476\n354#1,6:1480\n364#1,3:1487\n367#1,2:1491\n490#1,10:1493\n370#1,6:1503\n386#1:1509\n500#1,2:1510\n479#1,11:1512\n382#1,4:1523\n354#1,6:1527\n364#1,3:1534\n367#1,2:1538\n490#1,10:1540\n370#1,6:1550\n386#1:1556\n500#1,2:1557\n479#1,11:1559\n382#1,4:1570\n354#1,6:1574\n364#1,3:1581\n367#1,2:1585\n490#1,10:1587\n370#1,6:1597\n386#1:1603\n500#1,2:1604\n479#1,11:1606\n382#1,4:1617\n354#1,6:1621\n364#1,3:1628\n367#1,2:1632\n490#1,10:1634\n370#1,6:1644\n386#1:1650\n500#1,2:1651\n479#1,11:1653\n382#1,4:1664\n354#1,6:1668\n364#1,3:1675\n367#1,2:1679\n490#1,10:1681\n370#1,6:1691\n386#1:1697\n500#1,2:1698\n881#2,3:1019\n881#2,3:1059\n881#2,3:1236\n881#2,3:1449\n1179#3:1023\n1175#3:1026\n1372#3,3:1031\n1386#3,3:1035\n1312#3:1039\n1303#3:1041\n1297#3:1042\n1309#3:1047\n1393#3:1049\n1179#3:1063\n1175#3:1066\n1372#3,3:1071\n1386#3,3:1075\n1312#3:1079\n1303#3:1081\n1297#3:1082\n1309#3:1087\n1393#3:1089\n1399#3:1098\n1270#3:1099\n1399#3:1106\n1270#3:1110\n1399#3:1126\n1270#3:1130\n1399#3:1146\n1270#3:1150\n1399#3:1170\n1270#3:1174\n1399#3:1195\n1270#3:1199\n1399#3:1220\n1270#3:1224\n1179#3:1240\n1175#3:1243\n1372#3,3:1248\n1386#3,3:1252\n1312#3:1256\n1303#3:1258\n1297#3:1259\n1309#3:1264\n1393#3:1266\n1399#3:1284\n1270#3:1288\n1399#3:1309\n1270#3:1313\n1399#3:1334\n1270#3:1338\n1399#3:1359\n1270#3:1363\n1399#3:1384\n1270#3:1388\n1399#3:1409\n1270#3:1413\n1399#3:1434\n1270#3:1438\n1179#3:1452\n1175#3:1453\n1372#3,3:1454\n1386#3,3:1457\n1312#3:1460\n1303#3:1461\n1297#3:1462\n1309#3:1463\n1393#3:1464\n1399#3:1486\n1270#3:1490\n1399#3:1533\n1270#3:1537\n1399#3:1580\n1270#3:1584\n1399#3:1627\n1270#3:1631\n1399#3:1674\n1270#3:1678\n*S KotlinDebug\n*F\n+ 1 LongObjectMap.kt\nandroidx/collection/LongObjectMap\n*L\n324#1:1018\n324#1:1022\n324#1:1024,2\n324#1:1027,4\n324#1:1034\n324#1:1038\n324#1:1040\n324#1:1043,4\n324#1:1048\n324#1:1050,8\n333#1:1058\n333#1:1062\n333#1:1064,2\n333#1:1067,4\n333#1:1074\n333#1:1078\n333#1:1080\n333#1:1083,4\n333#1:1088\n333#1:1090,8\n385#1:1100,6\n385#1:1107,3\n385#1:1111,9\n392#1:1120,6\n392#1:1127,3\n392#1:1131,9\n399#1:1140,6\n399#1:1147,3\n399#1:1151,9\n404#1:1160,4\n404#1:1164,6\n404#1:1171,3\n404#1:1175,9\n404#1:1184\n410#1:1185,4\n410#1:1189,6\n410#1:1196,3\n410#1:1200,9\n410#1:1209\n420#1:1210,4\n420#1:1214,6\n420#1:1221,3\n420#1:1225,9\n420#1:1234\n428#1:1235\n428#1:1239\n428#1:1241,2\n428#1:1244,4\n428#1:1251\n428#1:1255\n428#1:1257\n428#1:1260,4\n428#1:1265\n428#1:1267,8\n432#1:1275,3\n432#1:1278,6\n432#1:1285,3\n432#1:1289,9\n432#1:1298\n454#1:1299,4\n454#1:1303,6\n454#1:1310,3\n454#1:1314,9\n454#1:1323\n489#1:1324,4\n489#1:1328,6\n489#1:1335,3\n489#1:1339,9\n489#1:1348\n489#1:1349,4\n489#1:1353,6\n489#1:1360,3\n489#1:1364,9\n489#1:1373\n510#1:1374,4\n510#1:1378,6\n510#1:1385,3\n510#1:1389,9\n510#1:1398\n534#1:1399,4\n534#1:1403,6\n534#1:1410,3\n534#1:1414,9\n534#1:1423\n559#1:1424,4\n559#1:1428,6\n559#1:1435,3\n559#1:1439,9\n559#1:1448\n-1#1:1465,11\n-1#1:1476,4\n-1#1:1480,6\n-1#1:1487,3\n-1#1:1491,2\n-1#1:1493,10\n-1#1:1503,6\n-1#1:1509\n-1#1:1510,2\n-1#1:1512,11\n-1#1:1523,4\n-1#1:1527,6\n-1#1:1534,3\n-1#1:1538,2\n-1#1:1540,10\n-1#1:1550,6\n-1#1:1556\n-1#1:1557,2\n-1#1:1559,11\n-1#1:1570,4\n-1#1:1574,6\n-1#1:1581,3\n-1#1:1585,2\n-1#1:1587,10\n-1#1:1597,6\n-1#1:1603\n-1#1:1604,2\n-1#1:1606,11\n-1#1:1617,4\n-1#1:1621,6\n-1#1:1628,3\n-1#1:1632,2\n-1#1:1634,10\n-1#1:1644,6\n-1#1:1650\n-1#1:1651,2\n-1#1:1653,11\n-1#1:1664,4\n-1#1:1668,6\n-1#1:1675,3\n-1#1:1679,2\n-1#1:1681,10\n-1#1:1691,6\n-1#1:1697\n-1#1:1698,2\n324#1:1019,3\n333#1:1059,3\n428#1:1236,3\n577#1:1449,3\n324#1:1023\n324#1:1026\n324#1:1031,3\n324#1:1035,3\n324#1:1039\n324#1:1041\n324#1:1042\n324#1:1047\n324#1:1049\n333#1:1063\n333#1:1066\n333#1:1071,3\n333#1:1075,3\n333#1:1079\n333#1:1081\n333#1:1082\n333#1:1087\n333#1:1089\n359#1:1098\n366#1:1099\n385#1:1106\n385#1:1110\n392#1:1126\n392#1:1130\n399#1:1146\n399#1:1150\n404#1:1170\n404#1:1174\n410#1:1195\n410#1:1199\n420#1:1220\n420#1:1224\n428#1:1240\n428#1:1243\n428#1:1248,3\n428#1:1252,3\n428#1:1256\n428#1:1258\n428#1:1259\n428#1:1264\n428#1:1266\n432#1:1284\n432#1:1288\n454#1:1309\n454#1:1313\n489#1:1334\n489#1:1338\n489#1:1359\n489#1:1363\n510#1:1384\n510#1:1388\n534#1:1409\n534#1:1413\n559#1:1434\n559#1:1438\n578#1:1452\n581#1:1453\n585#1:1454,3\n586#1:1457,3\n587#1:1460\n588#1:1461\n588#1:1462\n592#1:1463\n595#1:1464\n-1#1:1486\n-1#1:1490\n-1#1:1533\n-1#1:1537\n-1#1:1580\n-1#1:1584\n-1#1:1627\n-1#1:1631\n-1#1:1674\n-1#1:1678\n*E\n"})
/* loaded from: classes.dex */
public abstract class LongObjectMap<V> {
    public int _capacity;
    public int _size;
    @NotNull
    public long[] keys;
    @NotNull
    public long[] metadata;
    @NotNull
    public Object[] values;

    public /* synthetic */ LongObjectMap(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ String joinToString$default(LongObjectMap longObjectMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, int i11, Object obj) {
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
            return longObjectMap.joinToString(charSequence, str, str2, i12, charSequence4);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
    }

    public final boolean all(@NotNull Function2<? super Long, ? super V, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        long[] jArr = this.keys;
        Object[] objArr = this.values;
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
                            if (!predicate.invoke(Long.valueOf(jArr[i13]), objArr[i13]).booleanValue()) {
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

    public final boolean contains(long j10) {
        return containsKey(j10);
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
    public final boolean containsKey(long r18) {
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
            long[] r14 = r0.keys
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.LongObjectMap.containsKey(long):boolean");
    }

    public final boolean containsValue(V v10) {
        Object[] objArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128 && Intrinsics.areEqual(v10, objArr[(i10 << 3) + i12])) {
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

    public final int count() {
        return getSize();
    }

    public boolean equals(@Nullable Object obj) {
        int i10;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LongObjectMap)) {
            return false;
        }
        LongObjectMap longObjectMap = (LongObjectMap) obj;
        if (longObjectMap.getSize() != getSize()) {
            return false;
        }
        long[] jArr = this.keys;
        Object[] objArr = this.values;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i11 = 0;
            loop0: while (true) {
                long j10 = jArr2[i11];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8;
                    int i13 = 8 - ((~(i11 - length)) >>> 31);
                    int i14 = 0;
                    while (i14 < i13) {
                        if ((255 & j10) < 128) {
                            int i15 = (i11 << 3) + i14;
                            i10 = i14;
                            long j11 = jArr[i15];
                            Object obj2 = objArr[i15];
                            if (obj2 == null) {
                                if (longObjectMap.get(j11) != null || !longObjectMap.containsKey(j11)) {
                                    break loop0;
                                }
                            } else if (!Intrinsics.areEqual(obj2, longObjectMap.get(j11))) {
                                return false;
                            }
                            i12 = 8;
                        } else {
                            i10 = i14;
                        }
                        j10 >>= i12;
                        i14 = i10 + 1;
                    }
                    if (i13 != i12) {
                        break;
                    }
                }
                if (i11 == length) {
                    break;
                }
                i11++;
            }
            return false;
        }
        return true;
    }

    public final int findKeyIndex$collection(long j10) {
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
                if (this.keys[numberOfTrailingZeros] == j10) {
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

    public final void forEach(@NotNull Function2<? super Long, ? super V, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        long[] jArr = this.keys;
        Object[] objArr = this.values;
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
                            block.invoke(Long.valueOf(jArr[i13]), objArr[i13]);
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

    public final void forEachKey(@NotNull Function1<? super Long, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        long[] jArr = this.keys;
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

    public final void forEachValue(@NotNull Function1<? super V, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Object[] objArr = this.values;
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

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0064, code lost:
        if (((r5 & ((~r5) << 6)) & (-9187201950435737472L)) == 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0066, code lost:
        r11 = -1;
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get(long r16) {
        /*
            r15 = this;
            r0 = r15
            int r1 = java.lang.Long.hashCode(r16)
            r2 = -862048943(0xffffffffcc9e2d51, float:-8.2930312E7)
            int r1 = r1 * r2
            int r2 = r1 << 16
            r1 = r1 ^ r2
            r2 = r1 & 127(0x7f, float:1.78E-43)
            int r3 = r0._capacity
            int r1 = r1 >>> 7
            r1 = r1 & r3
            r4 = 0
        L14:
            long[] r5 = r0.metadata
            int r6 = r1 >> 3
            r7 = r1 & 7
            int r7 = r7 << 3
            r8 = r5[r6]
            long r8 = r8 >>> r7
            int r6 = r6 + 1
            r10 = r5[r6]
            int r5 = 64 - r7
            long r5 = r10 << r5
            long r10 = (long) r7
            long r10 = -r10
            r7 = 63
            long r10 = r10 >> r7
            long r5 = r5 & r10
            long r5 = r5 | r8
            long r7 = (long) r2
            r9 = 72340172838076673(0x101010101010101, double:7.748604185489348E-304)
            long r7 = r7 * r9
            long r7 = r7 ^ r5
            long r9 = r7 - r9
            long r7 = ~r7
            long r7 = r7 & r9
            r9 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r7 = r7 & r9
        L40:
            r11 = 0
            int r13 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
            if (r13 == 0) goto L5d
            int r11 = java.lang.Long.numberOfTrailingZeros(r7)
            int r11 = r11 >> 3
            int r11 = r11 + r1
            r11 = r11 & r3
            long[] r12 = r0.keys
            r13 = r12[r11]
            int r12 = (r13 > r16 ? 1 : (r13 == r16 ? 0 : -1))
            if (r12 != 0) goto L57
            goto L67
        L57:
            r11 = 1
            long r11 = r7 - r11
            long r7 = r7 & r11
            goto L40
        L5d:
            long r7 = ~r5
            r13 = 6
            long r7 = r7 << r13
            long r5 = r5 & r7
            long r5 = r5 & r9
            int r5 = (r5 > r11 ? 1 : (r5 == r11 ? 0 : -1))
            if (r5 == 0) goto L70
            r11 = -1
        L67:
            if (r11 < 0) goto L6e
            java.lang.Object[] r1 = r0.values
            r1 = r1[r11]
            goto L6f
        L6e:
            r1 = 0
        L6f:
            return r1
        L70:
            int r4 = r4 + 8
            int r1 = r1 + r4
            r1 = r1 & r3
            goto L14
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.LongObjectMap.get(long):java.lang.Object");
    }

    public final int getCapacity() {
        return this._capacity;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0064, code lost:
        if (((r5 & ((~r5) << 6)) & (-9187201950435737472L)) == 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0066, code lost:
        r11 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V getOrDefault(long r16, V r18) {
        /*
            r15 = this;
            r0 = r15
            int r1 = java.lang.Long.hashCode(r16)
            r2 = -862048943(0xffffffffcc9e2d51, float:-8.2930312E7)
            int r1 = r1 * r2
            int r2 = r1 << 16
            r1 = r1 ^ r2
            r2 = r1 & 127(0x7f, float:1.78E-43)
            int r3 = r0._capacity
            int r1 = r1 >>> 7
            r1 = r1 & r3
            r4 = 0
        L14:
            long[] r5 = r0.metadata
            int r6 = r1 >> 3
            r7 = r1 & 7
            int r7 = r7 << 3
            r8 = r5[r6]
            long r8 = r8 >>> r7
            int r6 = r6 + 1
            r10 = r5[r6]
            int r5 = 64 - r7
            long r5 = r10 << r5
            long r10 = (long) r7
            long r10 = -r10
            r7 = 63
            long r10 = r10 >> r7
            long r5 = r5 & r10
            long r5 = r5 | r8
            long r7 = (long) r2
            r9 = 72340172838076673(0x101010101010101, double:7.748604185489348E-304)
            long r7 = r7 * r9
            long r7 = r7 ^ r5
            long r9 = r7 - r9
            long r7 = ~r7
            long r7 = r7 & r9
            r9 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r7 = r7 & r9
        L40:
            r11 = 0
            int r13 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
            if (r13 == 0) goto L5d
            int r11 = java.lang.Long.numberOfTrailingZeros(r7)
            int r11 = r11 >> 3
            int r11 = r11 + r1
            r11 = r11 & r3
            long[] r12 = r0.keys
            r13 = r12[r11]
            int r12 = (r13 > r16 ? 1 : (r13 == r16 ? 0 : -1))
            if (r12 != 0) goto L57
            goto L67
        L57:
            r11 = 1
            long r11 = r7 - r11
            long r7 = r7 & r11
            goto L40
        L5d:
            long r7 = ~r5
            r13 = 6
            long r7 = r7 << r13
            long r5 = r5 & r7
            long r5 = r5 & r9
            int r5 = (r5 > r11 ? 1 : (r5 == r11 ? 0 : -1))
            if (r5 == 0) goto L6f
            r11 = -1
        L67:
            if (r11 < 0) goto L6e
            java.lang.Object[] r1 = r0.values
            r1 = r1[r11]
            return r1
        L6e:
            return r18
        L6f:
            int r4 = r4 + 8
            int r1 = r1 + r4
            r1 = r1 & r3
            goto L14
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.LongObjectMap.getOrDefault(long, java.lang.Object):java.lang.Object");
    }

    public final V getOrElse(long j10, @NotNull Function0<? extends V> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        V v10 = get(j10);
        if (v10 == null) {
            return defaultValue.invoke();
        }
        return v10;
    }

    public final int getSize() {
        return this._size;
    }

    public int hashCode() {
        int i10;
        long[] jArr = this.keys;
        Object[] objArr = this.values;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        int i11 = 0;
        if (length >= 0) {
            int i12 = 0;
            int i13 = 0;
            while (true) {
                long j10 = jArr2[i12];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i14 = 8 - ((~(i12 - length)) >>> 31);
                    for (int i15 = 0; i15 < i14; i15++) {
                        if ((255 & j10) < 128) {
                            int i16 = (i12 << 3) + i15;
                            long j11 = jArr[i16];
                            Object obj = objArr[i16];
                            int hashCode = Long.hashCode(j11);
                            if (obj != null) {
                                i10 = obj.hashCode();
                            } else {
                                i10 = 0;
                            }
                            i13 += i10 ^ hashCode;
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
        int i10;
        int i11;
        if (isEmpty()) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('{');
        long[] jArr = this.keys;
        Object[] objArr = this.values;
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
                            i11 = i12;
                            long j11 = jArr[i16];
                            Object obj = objArr[i16];
                            sb2.append(j11);
                            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                            if (obj == this) {
                                obj = "(this)";
                            }
                            sb2.append(obj);
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

    private LongObjectMap() {
        this.metadata = ScatterMapKt.EmptyGroup;
        this.keys = LongSetKt.getEmptyLongArray();
        this.values = ContainerHelpersKt.EMPTY_OBJECTS;
    }

    public final boolean any(@NotNull Function2<? super Long, ? super V, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        long[] jArr = this.keys;
        Object[] objArr = this.values;
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
                            if (predicate.invoke(Long.valueOf(jArr[i13]), objArr[i13]).booleanValue()) {
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

    public final int count(@NotNull Function2<? super Long, ? super V, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        long[] jArr = this.keys;
        Object[] objArr = this.values;
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
                            if (predicate.invoke(Long.valueOf(jArr[i15]), objArr[i15]).booleanValue()) {
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

    public static /* synthetic */ String joinToString$default(LongObjectMap longObjectMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Function2 transform, int i11, Object obj) {
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
            long[] jArr3 = longObjectMap.keys;
            Object[] objArr = longObjectMap.values;
            long[] jArr4 = longObjectMap.metadata;
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
                                long j11 = jArr3[i20];
                                Object obj2 = objArr[i20];
                                if (i15 == i13) {
                                    sb2.append(truncated);
                                    break loop0;
                                }
                                if (i15 != 0) {
                                    sb2.append(separator);
                                }
                                jArr2 = jArr4;
                                sb2.append((CharSequence) transform.invoke(Long.valueOf(j11), obj2));
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
        long[] jArr;
        long[] jArr2;
        int i11;
        int i12;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        long[] jArr3 = this.keys;
        Object[] objArr = this.values;
        long[] jArr4 = this.metadata;
        int length = jArr4.length - 2;
        if (length >= 0) {
            int i13 = 0;
            int i14 = 0;
            loop0: while (true) {
                long j10 = jArr4[i13];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i15 = 8;
                    int i16 = 8 - ((~(i13 - length)) >>> 31);
                    int i17 = 0;
                    while (i17 < i16) {
                        if ((j10 & 255) < 128) {
                            int i18 = (i13 << 3) + i17;
                            jArr2 = jArr4;
                            i11 = length;
                            long j11 = jArr3[i18];
                            Object obj = objArr[i18];
                            if (i14 == i10) {
                                sb2.append(truncated);
                                break loop0;
                            }
                            if (i14 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(j11);
                            sb2.append('=');
                            sb2.append(obj);
                            i14++;
                            i12 = 8;
                        } else {
                            jArr2 = jArr4;
                            i11 = length;
                            i12 = i15;
                        }
                        j10 >>= i12;
                        i17++;
                        i15 = i12;
                        jArr4 = jArr2;
                        length = i11;
                    }
                    jArr = jArr4;
                    int i19 = length;
                    if (i16 != i15) {
                        break;
                    }
                    length = i19;
                } else {
                    jArr = jArr4;
                }
                if (i13 == length) {
                    break;
                }
                i13++;
                jArr4 = jArr;
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
    public final String joinToString(@NotNull CharSequence charSequence, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @NotNull Function2<? super Long, ? super V, ? extends CharSequence> transform) {
        long[] jArr;
        long[] jArr2;
        CharSequence separator = charSequence;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        long[] jArr3 = this.keys;
        Object[] objArr = this.values;
        long[] jArr4 = this.metadata;
        int length = jArr4.length - 2;
        if (length >= 0) {
            int i11 = 0;
            int i12 = 0;
            loop0: while (true) {
                long j10 = jArr4[i11];
                int i13 = i11;
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i14 = 8 - ((~(i13 - length)) >>> 31);
                    int i15 = 0;
                    while (i15 < i14) {
                        if ((j10 & 255) < 128) {
                            int i16 = (i13 << 3) + i15;
                            long j11 = jArr3[i16];
                            Object obj = objArr[i16];
                            jArr2 = jArr3;
                            if (i12 == i10) {
                                sb2.append(truncated);
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(Long.valueOf(j11), obj));
                            i12++;
                        } else {
                            jArr2 = jArr3;
                        }
                        j10 >>= 8;
                        i15++;
                        separator = charSequence;
                        jArr3 = jArr2;
                    }
                    jArr = jArr3;
                    if (i14 != 8) {
                        break;
                    }
                } else {
                    jArr = jArr3;
                }
                if (i13 == length) {
                    break;
                }
                i11 = i13 + 1;
                separator = charSequence;
                jArr3 = jArr;
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
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull Function2<? super Long, ? super V, ? extends CharSequence> transform) {
        int i11;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        long[] jArr = this.keys;
        Object[] objArr = this.values;
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
                            long j11 = jArr[i17];
                            Object obj = objArr[i17];
                            if (i13 == i10) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i13 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(Long.valueOf(j11), obj));
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
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, @NotNull Function2<? super Long, ? super V, ? extends CharSequence> transform) {
        int i10;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        long[] jArr = this.keys;
        Object[] objArr = this.values;
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
                            long j11 = jArr[i16];
                            Object obj = objArr[i16];
                            if (i12 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(Long.valueOf(j11), obj));
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
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull Function2<? super Long, ? super V, ? extends CharSequence> transform) {
        int i10;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        long[] jArr = this.keys;
        Object[] objArr = this.values;
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
                            long j11 = jArr[i16];
                            Object obj = objArr[i16];
                            if (i12 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(Long.valueOf(j11), obj));
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
    public final String joinToString(@NotNull CharSequence separator, @NotNull Function2<? super Long, ? super V, ? extends CharSequence> transform) {
        int i10;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        long[] jArr = this.keys;
        Object[] objArr = this.values;
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
                            long j11 = jArr[i16];
                            Object obj = objArr[i16];
                            if (i12 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append(separator);
                            }
                            sb2.append(transform.invoke(Long.valueOf(j11), obj));
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
    public final String joinToString(@NotNull Function2<? super Long, ? super V, ? extends CharSequence> transform) {
        int i10;
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        long[] jArr = this.keys;
        Object[] objArr = this.values;
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
                            long j11 = jArr[i16];
                            Object obj = objArr[i16];
                            if (i12 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append((CharSequence) ", ");
                            }
                            sb2.append(transform.invoke(Long.valueOf(j11), obj));
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
