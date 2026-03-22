package androidx.collection;

import androidx.annotation.IntRange;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.collection.internal.RuntimeHelpersKt;
import at.o;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import ms.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SieveCache.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSieveCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SieveCache.kt\nandroidx/collection/SieveCache\n+ 2 RuntimeHelpers.kt\nandroidx/collection/internal/RuntimeHelpersKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 SieveCache.kt\nandroidx/collection/SieveCacheKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 7 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 8 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 9 ObjectList.kt\nandroidx/collection/ObjectList\n*L\n1#1,1148:1\n684#1,2:1161\n633#1:1163\n635#1,2:1165\n638#1,6:1168\n251#1,2:1174\n251#1,2:1176\n251#1,2:1178\n251#1,2:1181\n251#1,2:1201\n548#1,4:1210\n1025#1,6:1214\n1035#1,3:1221\n1038#1,2:1225\n251#1,2:1227\n1041#1,6:1229\n552#1:1235\n251#1,2:1236\n1025#1,6:1238\n1035#1,3:1245\n1038#1,9:1249\n1025#1,6:1289\n1035#1,3:1296\n1038#1,9:1300\n1025#1,6:1309\n1035#1,3:1316\n1038#1,9:1320\n1025#1,6:1329\n1035#1,3:1336\n1038#1,9:1340\n548#1,4:1349\n1025#1,6:1353\n1035#1,3:1360\n1038#1,9:1364\n552#1:1373\n548#1,4:1374\n1025#1,6:1378\n1035#1,3:1385\n1038#1,9:1389\n552#1:1398\n548#1,4:1399\n1025#1,6:1403\n1035#1,3:1410\n1038#1,9:1414\n552#1:1423\n1025#1,6:1424\n1035#1,3:1431\n1038#1,9:1435\n660#1,3:1462\n663#1:1466\n665#1,2:1468\n668#1,5:1471\n674#1,8:1477\n548#1,4:1638\n1025#1,6:1642\n1035#1,3:1649\n1038#1,9:1653\n552#1:1662\n548#1,4:1663\n1025#1,6:1667\n1035#1,3:1674\n1038#1,9:1678\n552#1:1687\n59#2,5:1149\n1#3:1154\n1254#4,6:1155\n1399#4:1194\n1270#4:1198\n1399#4:1220\n1270#4:1224\n1399#4:1244\n1270#4:1248\n1399#4:1268\n1270#4:1272\n1399#4:1295\n1270#4:1299\n1399#4:1315\n1270#4:1319\n1399#4:1335\n1270#4:1339\n1399#4:1359\n1270#4:1363\n1399#4:1384\n1270#4:1388\n1399#4:1409\n1270#4:1413\n1399#4:1430\n1270#4:1434\n1230#4:1450\n1254#4,6:1451\n1242#4:1457\n1241#4,4:1458\n1165#4,3:1489\n1179#4:1492\n1175#4:1493\n1372#4,3:1494\n1386#4,3:1497\n1312#4:1500\n1303#4:1501\n1297#4:1502\n1309#4:1503\n1393#4:1504\n1165#4,3:1505\n1175#4:1508\n1179#4:1509\n1372#4,3:1510\n1386#4,3:1513\n1312#4:1516\n1303#4:1517\n1297#4:1518\n1309#4:1519\n1393#4:1520\n1265#4:1521\n1220#4:1522\n1262#4:1523\n1220#4:1524\n1230#4:1525\n1254#4,6:1526\n1242#4:1532\n1241#4,4:1533\n1372#4,3:1537\n1399#4:1540\n1297#4:1541\n1144#4,14:1542\n1220#4:1556\n1165#4,3:1557\n1175#4:1560\n1179#4:1561\n1254#4,6:1562\n1220#4:1569\n1179#4:1570\n1254#4,6:1571\n1254#4,6:1577\n1179#4:1588\n1254#4,6:1589\n1268#4:1600\n1220#4:1601\n1165#4,3:1602\n1175#4:1605\n1179#4:1606\n1230#4:1607\n1254#4,6:1608\n1242#4:1614\n1241#4,4:1615\n1399#4:1636\n1270#4:1637\n1399#4:1648\n1270#4:1652\n1399#4:1673\n1270#4:1677\n1111#5:1164\n1114#5:1167\n1130#5:1444\n1123#5:1445\n1119#5:1446\n1123#5:1447\n1111#5:1448\n1114#5:1449\n1123#5:1465\n1127#5:1467\n1117#5:1470\n1114#5:1476\n1123#5:1485\n1127#5:1486\n1117#5:1487\n1114#5:1488\n1132#5:1568\n1144#5:1583\n1138#5:1584\n1141#5:1585\n1132#5:1586\n1132#5:1587\n1144#5:1595\n1138#5:1596\n1135#5:1597\n1132#5:1598\n1132#5:1599\n1123#5:1619\n1127#5:1620\n1096#5,2:1621\n1147#5:1623\n1098#5,2:1624\n1147#5:1626\n1147#5:1627\n1147#5:1628\n1147#5:1629\n1123#5:1630\n1127#5:1631\n1103#5,4:1632\n215#6:1180\n216#6:1183\n357#7,4:1184\n329#7,6:1188\n339#7,3:1195\n342#7,2:1199\n345#7,6:1203\n361#7:1209\n231#8,3:1258\n200#8,7:1261\n211#8,3:1269\n214#8,9:1273\n234#8:1282\n287#9,6:1283\n*S KotlinDebug\n*F\n+ 1 SieveCache.kt\nandroidx/collection/SieveCache\n*L\n229#1:1161,2\n288#1:1163\n288#1:1165,2\n288#1:1168,6\n300#1:1174,2\n311#1:1176,2\n322#1:1178,2\n332#1:1181,2\n341#1:1201,2\n350#1:1210,4\n350#1:1214,6\n350#1:1221,3\n350#1:1225,2\n350#1:1227,2\n350#1:1229,6\n350#1:1235\n358#1:1236,2\n447#1:1238,6\n447#1:1245,3\n447#1:1249,9\n551#1:1289,6\n551#1:1296,3\n551#1:1300,9\n563#1:1309,6\n563#1:1316,3\n563#1:1320,9\n575#1:1329,6\n575#1:1336,3\n575#1:1340,9\n580#1:1349,4\n580#1:1353,6\n580#1:1360,3\n580#1:1364,9\n580#1:1373\n586#1:1374,4\n586#1:1378,6\n586#1:1385,3\n586#1:1389,9\n586#1:1398\n596#1:1399,4\n596#1:1403,6\n596#1:1410,3\n596#1:1414,9\n596#1:1423\n609#1:1424,6\n609#1:1431,3\n609#1:1435,9\n654#1:1462,3\n654#1:1466\n654#1:1468,2\n654#1:1471,5\n654#1:1477,8\n1055#1:1638,4\n1055#1:1642,6\n1055#1:1649,3\n1055#1:1653,9\n1055#1:1662\n1081#1:1663,4\n1081#1:1667,6\n1081#1:1674,3\n1081#1:1678,9\n1081#1:1687\n131#1:1149,5\n211#1:1155,6\n341#1:1194\n341#1:1198\n350#1:1220\n350#1:1224\n447#1:1244\n447#1:1248\n486#1:1268\n486#1:1272\n551#1:1295\n551#1:1299\n563#1:1315\n563#1:1319\n575#1:1335\n575#1:1339\n580#1:1359\n580#1:1363\n586#1:1384\n586#1:1388\n596#1:1409\n596#1:1413\n609#1:1430\n609#1:1434\n648#1:1450\n648#1:1451,6\n648#1:1457\n648#1:1458,4\n688#1:1489,3\n689#1:1492\n692#1:1493\n696#1:1494,3\n697#1:1497,3\n698#1:1500\n699#1:1501\n699#1:1502\n703#1:1503\n706#1:1504\n718#1:1505,3\n719#1:1508\n720#1:1509\n727#1:1510,3\n728#1:1513,3\n729#1:1516\n730#1:1517\n730#1:1518\n734#1:1519\n737#1:1520\n746#1:1521\n746#1:1522\n752#1:1523\n752#1:1524\n753#1:1525\n753#1:1526,6\n753#1:1532\n753#1:1533,4\n764#1:1537,3\n765#1:1540\n767#1:1541\n841#1:1542,14\n847#1:1556\n861#1:1557,3\n862#1:1560\n873#1:1561\n874#1:1562,6\n888#1:1569\n891#1:1570\n892#1:1571,6\n893#1:1577,6\n915#1:1588\n916#1:1589,6\n980#1:1600\n980#1:1601\n982#1:1602,3\n983#1:1605\n985#1:1606\n985#1:1607\n985#1:1608,6\n985#1:1614\n985#1:1615,4\n1030#1:1636\n1037#1:1637\n1055#1:1648\n1055#1:1652\n1081#1:1673\n1081#1:1677\n288#1:1164\n288#1:1167\n619#1:1444\n621#1:1445\n622#1:1446\n626#1:1447\n633#1:1448\n636#1:1449\n654#1:1465\n654#1:1467\n654#1:1470\n654#1:1476\n662#1:1485\n663#1:1486\n666#1:1487\n672#1:1488\n878#1:1568\n905#1:1583\n907#1:1584\n908#1:1585\n910#1:1586\n912#1:1587\n931#1:1595\n933#1:1596\n934#1:1597\n936#1:1598\n940#1:1599\n1001#1:1619\n1002#1:1620\n1003#1:1621,2\n1003#1:1623\n1003#1:1624,2\n1003#1:1626\n1005#1:1627\n1006#1:1628\n1007#1:1629\n1014#1:1630\n1015#1:1631\n1016#1:1632,4\n332#1:1180\n332#1:1183\n341#1:1184,4\n341#1:1188,6\n341#1:1195,3\n341#1:1199,2\n341#1:1203,6\n341#1:1209\n486#1:1258,3\n486#1:1261,7\n486#1:1269,3\n486#1:1273,9\n486#1:1282\n491#1:1283,6\n*E\n"})
/* loaded from: classes.dex */
public final class SieveCache<K, V> {
    private int _capacity;
    private int _count;
    private int _maxSize;
    private int _size;
    @NotNull
    private final Function1<K, V> createValueFromKey;
    private int growthLimit;
    private int hand;
    private int head;
    @NotNull
    public Object[] keys;
    @NotNull
    public long[] metadata;
    @NotNull
    private long[] nodes;
    @NotNull
    private final o<K, V, V, Boolean, Unit> onEntryRemoved;
    @NotNull
    private final Function2<K, V, Integer> sizeOf;
    private int tail;
    @NotNull
    public Object[] values;

    /* JADX WARN: Multi-variable type inference failed */
    public SieveCache(@IntRange(from = 1, to = 2147483646) int i10, @IntRange(from = 0, to = 2147483646) int i11, @NotNull Function2<? super K, ? super V, Integer> sizeOf, @NotNull Function1<? super K, ? extends V> createValueFromKey, @NotNull o<? super K, ? super V, ? super V, ? super Boolean, Unit> onEntryRemoved) {
        Intrinsics.checkNotNullParameter(sizeOf, "sizeOf");
        Intrinsics.checkNotNullParameter(createValueFromKey, "createValueFromKey");
        Intrinsics.checkNotNullParameter(onEntryRemoved, "onEntryRemoved");
        this.sizeOf = sizeOf;
        this.createValueFromKey = createValueFromKey;
        this.onEntryRemoved = onEntryRemoved;
        this.metadata = ScatterMapKt.EmptyGroup;
        Object[] objArr = ContainerHelpersKt.EMPTY_OBJECTS;
        this.keys = objArr;
        this.values = objArr;
        this.nodes = SieveCacheKt.getEmptyNodes();
        this.head = Integer.MAX_VALUE;
        this.tail = Integer.MAX_VALUE;
        this.hand = Integer.MAX_VALUE;
        if (!(i10 > 0)) {
            RuntimeHelpersKt.throwIllegalArgumentException("maxSize must be > 0");
        }
        this._maxSize = i10;
        initializeStorage(ScatterMapKt.unloadedCapacity(i11));
    }

    private final int findEvictionCandidate() {
        long[] jArr = this.nodes;
        int i10 = this.hand;
        int i11 = Integer.MAX_VALUE;
        if (i10 == Integer.MAX_VALUE) {
            i10 = this.tail;
        }
        while (i10 != Integer.MAX_VALUE) {
            long j10 = jArr[i10];
            if (((int) ((j10 >> 62) & 1)) == 0) {
                break;
            }
            int i12 = (int) (SieveCacheKt.NodeLinkMask & (j10 >> 31));
            jArr[i10] = 4611686018427387903L & j10;
            if (i12 != Integer.MAX_VALUE) {
                i10 = i12;
            } else {
                i10 = this.tail;
            }
        }
        int i13 = (int) (SieveCacheKt.NodeLinkMask & (jArr[i10] >> 31));
        if (i13 != Integer.MAX_VALUE) {
            i11 = i13;
        }
        this.hand = i11;
        return i10;
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

    private final int findInsertIndex(K k10) {
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
                this._count++;
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

    private final int findKeyIndex(K k10) {
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

    private final void fixupNodes(long[] jArr) {
        long[] jArr2 = this.nodes;
        int length = jArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = Integer.MAX_VALUE;
            if (i10 >= length) {
                break;
            }
            long j10 = jArr2[i10];
            int i12 = (int) ((j10 >> 31) & SieveCacheKt.NodeLinkMask);
            int i13 = (int) (j10 & SieveCacheKt.NodeLinkMask);
            long j11 = ((j10 & SieveCacheKt.NodeMetaMask) | (i12 == Integer.MAX_VALUE ? Integer.MAX_VALUE : (int) (jArr[i12] & 4294967295L))) << 31;
            if (i13 != Integer.MAX_VALUE) {
                i11 = (int) (4294967295L & jArr[i13]);
            }
            jArr2[i10] = i11 | j11;
            i10++;
        }
        int i14 = this.head;
        if (i14 != Integer.MAX_VALUE) {
            this.head = (int) (jArr[i14] & 4294967295L);
        }
        int i15 = this.tail;
        if (i15 != Integer.MAX_VALUE) {
            this.tail = (int) (jArr[i15] & 4294967295L);
        }
        int i16 = this.hand;
        if (i16 != Integer.MAX_VALUE) {
            this.hand = (int) (jArr[i16] & 4294967295L);
        }
    }

    private final void initializeGrowth() {
        this.growthLimit = ScatterMapKt.loadedCapacity(this._capacity) - getCount();
    }

    private final void initializeMetadata(int i10) {
        long[] jArr;
        if (i10 == 0) {
            jArr = ScatterMapKt.EmptyGroup;
        } else {
            long[] jArr2 = new long[((i10 + 15) & (-8)) >> 3];
            n.G(jArr2, -9187201950435737472L, 0, 0, 6, null);
            int i11 = i10 >> 3;
            long j10 = 255 << ((i10 & 7) << 3);
            jArr2[i11] = (jArr2[i11] & (~j10)) | j10;
            jArr = jArr2;
        }
        this.metadata = jArr;
        initializeGrowth();
    }

    private final void initializeStorage(int i10) {
        int i11;
        Object[] objArr;
        Object[] objArr2;
        long[] jArr;
        if (i10 > 0) {
            i11 = Math.max(7, ScatterMapKt.normalizeCapacity(i10));
        } else {
            i11 = 0;
        }
        this._capacity = i11;
        initializeMetadata(i11);
        if (i11 == 0) {
            objArr = ContainerHelpersKt.EMPTY_OBJECTS;
        } else {
            objArr = new Object[i11];
        }
        this.keys = objArr;
        if (i11 == 0) {
            objArr2 = ContainerHelpersKt.EMPTY_OBJECTS;
        } else {
            objArr2 = new Object[i11];
        }
        this.values = objArr2;
        if (i11 == 0) {
            jArr = SieveCacheKt.getEmptyNodes();
        } else {
            jArr = new long[i11];
            n.G(jArr, 4611686018427387903L, 0, 0, 6, null);
        }
        this.nodes = jArr;
    }

    private final void markNodeVisited(int i10) {
        long[] jArr = this.nodes;
        jArr[i10] = (jArr[i10] & 4611686018427387903L) | SieveCacheKt.NodeVisitedBit;
    }

    private final void moveNodeToHead(int i10) {
        long[] jArr = this.nodes;
        int i11 = this.head;
        jArr[i10] = (i11 & SieveCacheKt.NodeLinkMask) | 4611686016279904256L;
        if (i11 != Integer.MAX_VALUE) {
            jArr[i11] = ((i10 & SieveCacheKt.NodeLinkMask) << 31) | (jArr[i11] & SieveCacheKt.NodeMetaAndNextMask);
        }
        this.head = i10;
        if (this.tail == Integer.MAX_VALUE) {
            this.tail = i10;
        }
    }

    private final void removeNode(int i10) {
        long[] jArr = this.nodes;
        long j10 = jArr[i10];
        int i11 = (int) ((j10 >> 31) & SieveCacheKt.NodeLinkMask);
        int i12 = (int) (j10 & SieveCacheKt.NodeLinkMask);
        if (i11 != Integer.MAX_VALUE) {
            jArr[i11] = (jArr[i11] & SieveCacheKt.NodeMetaAndPreviousMask) | (i12 & SieveCacheKt.NodeLinkMask);
        } else {
            this.head = i12;
        }
        if (i12 != Integer.MAX_VALUE) {
            jArr[i12] = ((i11 & SieveCacheKt.NodeLinkMask) << 31) | (jArr[i12] & SieveCacheKt.NodeMetaAndNextMask);
        } else {
            this.tail = i11;
        }
        if (this.hand == i10) {
            this.hand = i11;
        }
        jArr[i10] = 4611686018427387903L;
    }

    private final V removeValueAt(int i10) {
        this._count--;
        long[] jArr = this.metadata;
        int i11 = this._capacity;
        int i12 = i10 >> 3;
        int i13 = (i10 & 7) << 3;
        long j10 = (jArr[i12] & (~(255 << i13))) | (254 << i13);
        jArr[i12] = j10;
        jArr[(((i10 - 7) & i11) + (i11 & 7)) >> 3] = j10;
        this.keys[i10] = null;
        Object[] objArr = this.values;
        V v10 = (V) objArr[i10];
        objArr[i10] = null;
        long[] jArr2 = this.nodes;
        long j11 = jArr2[i10];
        int i14 = (int) ((j11 >> 31) & SieveCacheKt.NodeLinkMask);
        int i15 = (int) (j11 & SieveCacheKt.NodeLinkMask);
        if (i14 != Integer.MAX_VALUE) {
            jArr2[i14] = (jArr2[i14] & SieveCacheKt.NodeMetaAndPreviousMask) | (i15 & SieveCacheKt.NodeLinkMask);
        } else {
            this.head = i15;
        }
        if (i15 != Integer.MAX_VALUE) {
            jArr2[i15] = ((i14 & SieveCacheKt.NodeLinkMask) << 31) | (jArr2[i15] & SieveCacheKt.NodeMetaAndNextMask);
        } else {
            this.tail = i14;
        }
        if (this.hand == i10) {
            this.hand = i14;
        }
        jArr2[i10] = 4611686018427387903L;
        return v10;
    }

    public final void adjustStorage$collection() {
        int compare;
        if (this._capacity > 8) {
            compare = Long.compare(p.b(p.b(getCount()) * 32) ^ Long.MIN_VALUE, p.b(p.b(this._capacity) * 25) ^ Long.MIN_VALUE);
            if (compare <= 0) {
                dropDeletes$collection();
                return;
            }
        }
        resizeStorage$collection(ScatterMapKt.nextCapacity(this._capacity));
    }

    public final boolean all(@NotNull Function2<? super K, ? super V, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
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
                            Object obj = objArr[i13];
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type K of androidx.collection.SieveCache");
                            Object obj2 = objArr2[i13];
                            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type V of androidx.collection.SieveCache");
                            if (!predicate.invoke(obj, obj2).booleanValue()) {
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
        return this._count != 0;
    }

    public final boolean contains(@NotNull K key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (findKeyIndex(key) >= 0) {
            return true;
        }
        return false;
    }

    public final boolean containsKey(@NotNull K key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (findKeyIndex(key) >= 0) {
            return true;
        }
        return false;
    }

    public final boolean containsValue(@NotNull V value) {
        Intrinsics.checkNotNullParameter(value, "value");
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
                            Object obj = objArr[(i10 << 3) + i12];
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type V of androidx.collection.SieveCache");
                            if (Intrinsics.areEqual(value, obj)) {
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

    public final int count() {
        return getSize();
    }

    public final void dropDeletes$collection() {
        int i10;
        int i11;
        char c10;
        long[] jArr = this.metadata;
        if (jArr == null) {
            return;
        }
        int i12 = this._capacity;
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        long[] jArr2 = this.nodes;
        long[] jArr3 = new long[i12];
        int i13 = 0;
        n.B(jArr3, SieveCacheKt.InvalidMapping, 0, i12);
        int i14 = (i12 + 7) >> 3;
        for (int i15 = 0; i15 < i14; i15++) {
            long j10 = jArr[i15] & (-9187201950435737472L);
            jArr[i15] = (-72340172838076674L) & ((~j10) + (j10 >>> 7));
        }
        int q02 = n.q0(jArr);
        int i16 = q02 - 1;
        jArr[i16] = (jArr[i16] & 72057594037927935L) | (-72057594037927936L);
        jArr[q02] = jArr[0];
        int i17 = 0;
        while (i17 != i12) {
            int i18 = i17 >> 3;
            int i19 = (i17 & 7) << 3;
            long j11 = (jArr[i18] >> i19) & 255;
            if (j11 == 128 || j11 != 254) {
                i17++;
            } else {
                Object obj = objArr[i17];
                if (obj != null) {
                    i10 = obj.hashCode();
                } else {
                    i10 = i13;
                }
                int i20 = i10 * ScatterMapKt.MurmurHashC1;
                int i21 = (i20 ^ (i20 << 16)) >>> 7;
                int findFirstAvailableSlot = findFirstAvailableSlot(i21);
                int i22 = i21 & i12;
                if (((findFirstAvailableSlot - i22) & i12) / 8 == ((i17 - i22) & i12) / 8) {
                    Object[] objArr3 = objArr2;
                    long[] jArr4 = jArr2;
                    jArr[i18] = (jArr[i18] & (~(255 << i19))) | ((i11 & 127) << i19);
                    if (jArr3[i17] == SieveCacheKt.InvalidMapping) {
                        long j12 = i17;
                        jArr3[i17] = j12 | (j12 << 32);
                    }
                    jArr[jArr.length - 1] = jArr[0];
                    i17++;
                    objArr2 = objArr3;
                    jArr2 = jArr4;
                    i13 = 0;
                } else {
                    Object[] objArr4 = objArr2;
                    long[] jArr5 = jArr2;
                    int i23 = findFirstAvailableSlot >> 3;
                    long j13 = jArr[i23];
                    int i24 = (findFirstAvailableSlot & 7) << 3;
                    if (((j13 >> i24) & 255) == 128) {
                        jArr[i23] = ((i11 & 127) << i24) | (j13 & (~(255 << i24)));
                        jArr[i18] = (jArr[i18] & (~(255 << i19))) | (128 << i19);
                        objArr[findFirstAvailableSlot] = objArr[i17];
                        objArr[i17] = null;
                        objArr4[findFirstAvailableSlot] = objArr4[i17];
                        objArr4[i17] = null;
                        jArr5[findFirstAvailableSlot] = jArr5[i17];
                        jArr5[i17] = 4611686018427387903L;
                        int i25 = (int) ((jArr3[i17] >> 32) & 4294967295L);
                        if (i25 != Integer.MAX_VALUE) {
                            jArr3[i25] = (jArr3[i25] & (-4294967296L)) | findFirstAvailableSlot;
                            jArr3[i17] = (jArr3[i17] & 4294967295L) | (-4294967296L);
                            c10 = ' ';
                        } else {
                            c10 = ' ';
                            jArr3[i17] = (Integer.MAX_VALUE << 32) | findFirstAvailableSlot;
                        }
                        jArr3[findFirstAvailableSlot] = Integer.MAX_VALUE | (i17 << c10);
                    } else {
                        jArr[i23] = ((i11 & 127) << i24) | (j13 & (~(255 << i24)));
                        Object obj2 = objArr[findFirstAvailableSlot];
                        objArr[findFirstAvailableSlot] = objArr[i17];
                        objArr[i17] = obj2;
                        Object obj3 = objArr4[findFirstAvailableSlot];
                        objArr4[findFirstAvailableSlot] = objArr4[i17];
                        objArr4[i17] = obj3;
                        long j14 = jArr5[findFirstAvailableSlot];
                        jArr5[findFirstAvailableSlot] = jArr5[i17];
                        jArr5[i17] = j14;
                        int i26 = (int) ((jArr3[i17] >> 32) & 4294967295L);
                        if (i26 != Integer.MAX_VALUE) {
                            long j15 = findFirstAvailableSlot;
                            jArr3[i26] = (jArr3[i26] & (-4294967296L)) | j15;
                            jArr3[i17] = (jArr3[i17] & 4294967295L) | (j15 << 32);
                        } else {
                            long j16 = findFirstAvailableSlot;
                            jArr3[i17] = j16 | (j16 << 32);
                            i26 = i17;
                        }
                        jArr3[findFirstAvailableSlot] = (i26 << 32) | i17;
                        i17--;
                    }
                    jArr[jArr.length - 1] = jArr[0];
                    i17++;
                    i13 = 0;
                    objArr2 = objArr4;
                    jArr2 = jArr5;
                }
            }
        }
        initializeGrowth();
        fixupNodes(jArr3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SieveCache)) {
            return false;
        }
        SieveCache sieveCache = (SieveCache) obj;
        if (sieveCache.getSize() != getSize() || sieveCache._count != this._count) {
            return false;
        }
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
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
                            Object obj2 = objArr[i13];
                            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type K of androidx.collection.SieveCache");
                            Object obj3 = objArr2[i13];
                            Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type V of androidx.collection.SieveCache");
                            if (!Intrinsics.areEqual(obj3, sieveCache.get(obj2))) {
                                return false;
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
        } else {
            return true;
        }
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final void forEach(@NotNull Function2<? super K, ? super V, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
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
                            Object obj = objArr[i13];
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type K of androidx.collection.SieveCache");
                            Object obj2 = objArr2[i13];
                            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type V of androidx.collection.SieveCache");
                            block.invoke(obj, obj2);
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
                            Object obj = objArr[(i10 << 3) + i12];
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type K of androidx.collection.SieveCache");
                            block.invoke(obj);
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
                            Object obj = objArr[(i10 << 3) + i12];
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type V of androidx.collection.SieveCache");
                            block.invoke(obj);
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
    public final V get(@NotNull K key) {
        Intrinsics.checkNotNullParameter(key, "key");
        int findKeyIndex = findKeyIndex(key);
        if (findKeyIndex >= 0) {
            long[] jArr = this.nodes;
            jArr[findKeyIndex] = (jArr[findKeyIndex] & 4611686018427387903L) | SieveCacheKt.NodeVisitedBit;
            return (V) this.values[findKeyIndex];
        }
        V invoke = this.createValueFromKey.invoke(key);
        if (invoke == null) {
            return null;
        }
        put(key, invoke);
        return invoke;
    }

    public final int getCapacity() {
        return this._capacity;
    }

    public final int getCount() {
        return this._count;
    }

    public final int getMaxSize() {
        return this._maxSize;
    }

    public final int getSize() {
        return this._size;
    }

    public int hashCode() {
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
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
                            Object obj = objArr[i15];
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type K of androidx.collection.SieveCache");
                            Object obj2 = objArr2[i15];
                            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type V of androidx.collection.SieveCache");
                            i12 += obj2.hashCode() ^ obj.hashCode();
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
        if (this._count == 0) {
            return true;
        }
        return false;
    }

    public final boolean isNotEmpty() {
        if (this._count != 0) {
            return true;
        }
        return false;
    }

    public final void minusAssign(@NotNull K key) {
        Intrinsics.checkNotNullParameter(key, "key");
        remove(key);
    }

    public final boolean none() {
        if (this._count == 0) {
            return true;
        }
        return false;
    }

    public final void plusAssign(@NotNull Pair<? extends K, ? extends V> pair) {
        Intrinsics.checkNotNullParameter(pair, "pair");
        put(pair.e(), pair.f());
    }

    @Nullable
    public final V put(@NotNull K key, @NotNull V value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        int findInsertIndex = findInsertIndex(key);
        if (findInsertIndex < 0) {
            findInsertIndex = ~findInsertIndex;
        }
        Object[] objArr = this.values;
        V v10 = (V) objArr[findInsertIndex];
        objArr[findInsertIndex] = value;
        this.keys[findInsertIndex] = key;
        int intValue = this._size + this.sizeOf.invoke(key, value).intValue();
        this._size = intValue;
        if (v10 != null) {
            this._size = intValue - this.sizeOf.invoke(key, v10).intValue();
            this.onEntryRemoved.invoke(key, v10, value, Boolean.FALSE);
            trimToSize(this._maxSize);
            return v10;
        }
        trimToSize(this._maxSize);
        long[] jArr = this.nodes;
        int i10 = this.head;
        jArr[findInsertIndex] = (i10 & SieveCacheKt.NodeLinkMask) | 4611686016279904256L;
        if (i10 != Integer.MAX_VALUE) {
            jArr[i10] = (jArr[i10] & SieveCacheKt.NodeMetaAndNextMask) | ((SieveCacheKt.NodeLinkMask & findInsertIndex) << 31);
        }
        this.head = findInsertIndex;
        if (this.tail == Integer.MAX_VALUE) {
            this.tail = findInsertIndex;
        }
        return v10;
    }

    public final void putAll(@NotNull Pair<? extends K, ? extends V>[] pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairs) {
            put(pair.b(), pair.d());
        }
    }

    @Nullable
    public final V remove(@NotNull K key) {
        V removeValueAt;
        Intrinsics.checkNotNullParameter(key, "key");
        int findKeyIndex = findKeyIndex(key);
        if (findKeyIndex < 0 || (removeValueAt = removeValueAt(findKeyIndex)) == null) {
            return null;
        }
        this._size -= this.sizeOf.invoke(key, removeValueAt).intValue();
        this.onEntryRemoved.invoke(key, removeValueAt, null, Boolean.FALSE);
        return removeValueAt;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void removeIf(@NotNull Function2<? super K, ? super V, Boolean> predicate) {
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
                            Object obj = this.keys[i13];
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type K of androidx.collection.SieveCache");
                            Object obj2 = this.values[i13];
                            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type V of androidx.collection.SieveCache");
                            if (predicate.invoke(obj, obj2).booleanValue()) {
                                V removeValueAt = removeValueAt(i13);
                                if (removeValueAt == null) {
                                    return;
                                }
                                this._size -= ((Number) this.sizeOf.invoke(obj, removeValueAt)).intValue();
                                this.onEntryRemoved.invoke(obj, removeValueAt, null, Boolean.FALSE);
                            } else {
                                continue;
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

    public final void resize(@IntRange(from = 1, to = 2147483646) int i10) {
        this._maxSize = i10;
        trimToSize(i10);
    }

    public final void resizeStorage$collection(int i10) {
        long[] jArr;
        Object[] objArr;
        int i11;
        int[] iArr;
        int i12;
        long[] jArr2 = this.metadata;
        Object[] objArr2 = this.keys;
        Object[] objArr3 = this.values;
        long[] jArr3 = this.nodes;
        int i13 = this._capacity;
        int[] iArr2 = new int[i13];
        initializeStorage(i10);
        long[] jArr4 = this.metadata;
        Object[] objArr4 = this.keys;
        Object[] objArr5 = this.values;
        long[] jArr5 = this.nodes;
        int i14 = this._capacity;
        int i15 = 0;
        while (i15 < i13) {
            if (((jArr2[i15 >> 3] >> ((i15 & 7) << 3)) & 255) < 128) {
                Object obj = objArr2[i15];
                if (obj != null) {
                    i12 = obj.hashCode();
                } else {
                    i12 = 0;
                }
                int i16 = i12 * ScatterMapKt.MurmurHashC1;
                int i17 = i16 ^ (i16 << 16);
                int findFirstAvailableSlot = findFirstAvailableSlot(i17 >>> 7);
                jArr = jArr2;
                objArr = objArr2;
                long j10 = i17 & 127;
                int i18 = findFirstAvailableSlot >> 3;
                int i19 = (findFirstAvailableSlot & 7) << 3;
                i11 = i13;
                iArr = iArr2;
                long j11 = (j10 << i19) | (jArr4[i18] & (~(255 << i19)));
                jArr4[i18] = j11;
                jArr4[(((findFirstAvailableSlot - 7) & i14) + (i14 & 7)) >> 3] = j11;
                objArr4[findFirstAvailableSlot] = obj;
                objArr5[findFirstAvailableSlot] = objArr3[i15];
                jArr5[findFirstAvailableSlot] = jArr3[i15];
                iArr[i15] = findFirstAvailableSlot;
            } else {
                jArr = jArr2;
                objArr = objArr2;
                i11 = i13;
                iArr = iArr2;
            }
            i15++;
            jArr2 = jArr;
            objArr2 = objArr;
            i13 = i11;
            iArr2 = iArr;
        }
        fixupNodes(iArr2);
    }

    public final void set(@NotNull K key, @NotNull V value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        put(key, value);
    }

    @NotNull
    public String toString() {
        return "SieveCache[maxSize=" + this._maxSize + ", size=" + this._size + ", capacity=" + this._capacity + ", count=" + this._count + ']';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void trimToSize(int i10) {
        int findEvictionCandidate;
        while (this._size > i10 && getCount() != 0 && (findEvictionCandidate = findEvictionCandidate()) != Integer.MAX_VALUE) {
            Object obj = this.keys[findEvictionCandidate];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type K of androidx.collection.SieveCache");
            V removeValueAt = removeValueAt(findEvictionCandidate);
            if (removeValueAt != null) {
                this._size -= ((Number) this.sizeOf.invoke(obj, removeValueAt)).intValue();
                this.onEntryRemoved.invoke(obj, removeValueAt, null, Boolean.TRUE);
            }
        }
    }

    public final boolean any(@NotNull Function2<? super K, ? super V, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
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
                            Object obj = objArr[i13];
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type K of androidx.collection.SieveCache");
                            Object obj2 = objArr2[i13];
                            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type V of androidx.collection.SieveCache");
                            if (predicate.invoke(obj, obj2).booleanValue()) {
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

    public final int count(@NotNull Function2<? super K, ? super V, Boolean> predicate) {
        int i10;
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
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
                            Object obj = objArr[i15];
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type K of androidx.collection.SieveCache");
                            Object obj2 = objArr2[i15];
                            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type V of androidx.collection.SieveCache");
                            if (predicate.invoke(obj, obj2).booleanValue()) {
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
        } else {
            i10 = 0;
        }
        return i10;
    }

    public final void minusAssign(@NotNull K[] keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        for (K k10 : keys) {
            remove(k10);
        }
    }

    public final void plusAssign(@NotNull Pair<? extends K, ? extends V>[] pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        putAll(pairs);
    }

    public final void putAll(@NotNull Iterable<? extends Pair<? extends K, ? extends V>> pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairs) {
            put(pair.b(), pair.d());
        }
    }

    public final void minusAssign(@NotNull Iterable<? extends K> keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        for (K k10 : keys) {
            remove(k10);
        }
    }

    public final void plusAssign(@NotNull Iterable<? extends Pair<? extends K, ? extends V>> pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        putAll(pairs);
    }

    public final void plusAssign(@NotNull Sequence<? extends Pair<? extends K, ? extends V>> pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        putAll(pairs);
    }

    public final void putAll(@NotNull Sequence<? extends Pair<? extends K, ? extends V>> pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairs) {
            put(pair.b(), pair.d());
        }
    }

    public final boolean remove(@NotNull K key, @NotNull V value) {
        V removeValueAt;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        int findKeyIndex = findKeyIndex(key);
        if (findKeyIndex < 0 || !Intrinsics.areEqual(this.values[findKeyIndex], value) || (removeValueAt = removeValueAt(findKeyIndex)) == null) {
            return false;
        }
        this._size -= this.sizeOf.invoke(key, removeValueAt).intValue();
        this.onEntryRemoved.invoke(key, removeValueAt, null, Boolean.FALSE);
        return true;
    }

    public final void minusAssign(@NotNull Sequence<? extends K> keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        for (K k10 : keys) {
            remove(k10);
        }
    }

    public final void plusAssign(@NotNull Map<K, ? extends V> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        putAll(from);
    }

    public final void plusAssign(@NotNull ScatterMap<K, V> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        putAll(from);
    }

    public final void putAll(@NotNull Map<K, ? extends V> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        for (Map.Entry<K, ? extends V> entry : from.entrySet()) {
            put(entry.getKey(), entry.getValue());
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

    public final void plusAssign(@NotNull SieveCache<K, V> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        putAll(from);
    }

    private final void fixupNodes(int[] iArr) {
        long[] jArr = this.nodes;
        int length = jArr.length;
        int i10 = 0;
        while (true) {
            int i11 = Integer.MAX_VALUE;
            if (i10 >= length) {
                break;
            }
            long j10 = jArr[i10];
            int i12 = (int) ((j10 >> 31) & SieveCacheKt.NodeLinkMask);
            int i13 = (int) (j10 & SieveCacheKt.NodeLinkMask);
            long j11 = ((j10 & SieveCacheKt.NodeMetaMask) | (i12 == Integer.MAX_VALUE ? Integer.MAX_VALUE : iArr[i12])) << 31;
            if (i13 != Integer.MAX_VALUE) {
                i11 = iArr[i13];
            }
            jArr[i10] = j11 | i11;
            i10++;
        }
        int i14 = this.head;
        if (i14 != Integer.MAX_VALUE) {
            this.head = iArr[i14];
        }
        int i15 = this.tail;
        if (i15 != Integer.MAX_VALUE) {
            this.tail = iArr[i15];
        }
        int i16 = this.hand;
        if (i16 != Integer.MAX_VALUE) {
            this.hand = iArr[i16];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void putAll(@NotNull ScatterMap<K, V> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        Object[] objArr = from.keys;
        Object[] objArr2 = from.values;
        long[] jArr = from.metadata;
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
                        int i13 = (i10 << 3) + i12;
                        put(objArr[i13], objArr2[i13]);
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

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(@NotNull ObjectList<K> keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        Object[] objArr = keys.content;
        int i10 = keys._size;
        for (int i11 = 0; i11 < i10; i11++) {
            remove(objArr[i11]);
        }
    }

    public /* synthetic */ SieveCache(int i10, int i11, Function2 function2, Function1 function1, o oVar, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i12 & 2) != 0 ? 6 : i11, (i12 & 4) != 0 ? new Function2<K, V, Integer>() { // from class: androidx.collection.SieveCache.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function2
            public final Integer invoke(K k10, V v10) {
                Intrinsics.checkNotNullParameter(k10, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(v10, "<anonymous parameter 1>");
                return 1;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(Object obj, Object obj2) {
                return invoke((AnonymousClass1) obj, obj2);
            }
        } : function2, (i12 & 8) != 0 ? new Function1() { // from class: androidx.collection.SieveCache.2
            @Override // kotlin.jvm.functions.Function1
            public final Void invoke(K it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return null;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke((AnonymousClass2) obj);
            }
        } : function1, (i12 & 16) != 0 ? new o<K, V, V, Boolean, Unit>() { // from class: androidx.collection.SieveCache.3
            public final void invoke(K k10, V v10, V v11, boolean z10) {
                Intrinsics.checkNotNullParameter(k10, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(v10, "<anonymous parameter 1>");
            }

            @Override // at.o
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2, Object obj3, Boolean bool) {
                invoke((AnonymousClass3) obj, obj2, obj3, bool.booleanValue());
                return Unit.f60915a;
            }
        } : oVar);
    }

    public static /* synthetic */ void getCount$annotations() {
    }

    public static /* synthetic */ void getKeys$annotations() {
    }

    public static /* synthetic */ void getMetadata$annotations() {
    }

    public static /* synthetic */ void getValues$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void putAll(@NotNull SieveCache<K, V> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        Object[] objArr = from.keys;
        Object[] objArr2 = from.values;
        long[] jArr = from.metadata;
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
                        int i13 = (i10 << 3) + i12;
                        Object obj = objArr[i13];
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type K of androidx.collection.SieveCache");
                        Object obj2 = objArr2[i13];
                        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type V of androidx.collection.SieveCache");
                        put(obj, obj2);
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
