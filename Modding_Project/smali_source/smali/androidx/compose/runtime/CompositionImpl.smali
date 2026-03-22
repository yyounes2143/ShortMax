.class public final Landroidx/compose/runtime/CompositionImpl;
.super Ljava/lang/Object;
.source "Composition.kt"

# interfaces
.implements Landroidx/compose/runtime/ControlledComposition;
.implements Landroidx/compose/runtime/ReusableComposition;
.implements Landroidx/compose/runtime/RecomposeScopeOwner;
.implements Landroidx/compose/runtime/CompositionServices;
.implements Landroidx/compose/runtime/PausableComposition;
.implements Landroidx/compose/runtime/tooling/ObservableComposition;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nComposition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composition.kt\nandroidx/compose/runtime/CompositionImpl\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 5 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 6 RememberEventDispatcher.kt\nandroidx/compose/runtime/internal/RememberEventDispatcher\n+ 7 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 8 ScatterSetWrapper.kt\nandroidx/compose/runtime/collection/ScatterSetWrapperKt\n+ 9 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 10 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 11 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 12 ScopeMap.kt\nandroidx/compose/runtime/collection/ScopeMap\n+ 13 ScatterMap.kt\nandroidx/collection/MutableScatterMap\n+ 14 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 15 ScatterSet.kt\nandroidx/collection/MutableScatterSet\n+ 16 StateObjectImpl.kt\nandroidx/compose/runtime/snapshots/ReaderKind$Companion\n+ 17 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n+ 18 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 19 Trace.kt\nandroidx/compose/runtime/internal/TraceKt\n+ 20 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1447:1\n1194#1,2:1477\n1378#1,3:1479\n1184#1,6:1483\n1382#1,2:1490\n1385#1:1499\n1196#1,4:1500\n1184#1,6:1505\n1194#1,2:2075\n1378#1,3:2077\n1184#1,6:2080\n1382#1,2:2087\n1385#1:2096\n1196#1,4:2097\n1194#1,2:2113\n1378#1,3:2115\n1382#1,2:2119\n1385#1:2128\n1196#1,4:2129\n1194#1,2:2230\n1378#1,3:2232\n1382#1,2:2236\n1385#1:2245\n1196#1,4:2246\n1194#1,2:2251\n1378#1,3:2253\n1382#1,2:2257\n1385#1:2266\n1196#1,4:2267\n1194#1,2:2272\n1378#1,3:2274\n1382#1,2:2285\n1385#1:2294\n1196#1,4:2295\n1378#1,3:2299\n1382#1,2:2303\n1385#1:2312\n25#2,5:1448\n33#2:1454\n33#2:1467\n33#2:1468\n33#2:1469\n33#2:1482\n33#2:1504\n33#2:1511\n33#2:1530\n33#2:1531\n33#2:2038\n33#2:2074\n33#2:2229\n33#2:2250\n33#2:2271\n33#2:2320\n33#2:2323\n33#2:2324\n33#2:2325\n33#2:2394\n1#3:1453\n1#3:1489\n1#3:1523\n1#3:2086\n1#3:2118\n1#3:2140\n1#3:2154\n1#3:2235\n1#3:2256\n1#3:2284\n1#3:2302\n1#3:2376\n1#3:2409\n49#4,4:1455\n49#4,4:1459\n49#4,4:1463\n49#4,4:1512\n49#4,4:2382\n49#4,4:2395\n91#5:1470\n34#5,5:1471\n92#5:1476\n106#5:2101\n34#5,5:2102\n107#5:2107\n34#5,3:2379\n38#5:2386\n87#6,7:1492\n87#6,3:1516\n91#6,3:1527\n87#6,7:2089\n87#6,7:2121\n87#6,3:2133\n91#6,3:2144\n87#6,7:2238\n87#6,7:2259\n87#6,7:2277\n87#6,7:2287\n87#6,7:2305\n87#6,7:2313\n87#6,7:2387\n87#6,3:2402\n91#6,3:2413\n175#7,4:1519\n180#7,3:1524\n175#7,4:2136\n180#7,3:2141\n175#7,4:2150\n180#7,3:2155\n175#7,4:2405\n180#7,3:2410\n41#8,3:1532\n46#8:1560\n48#8:1563\n41#8,3:1666\n46#8:1728\n48#8:1756\n231#9,3:1535\n200#9,7:1538\n211#9,3:1546\n214#9,9:1550\n234#9:1559\n200#9,16:1587\n217#9,6:1607\n231#9,3:1637\n200#9,7:1640\n211#9,3:1648\n214#9,9:1652\n234#9:1661\n231#9,3:1669\n200#9,7:1672\n211#9,3:1680\n214#9,2:1684\n231#9,3:1692\n200#9,7:1695\n211#9,3:1703\n214#9,9:1707\n234#9:1716\n217#9,6:1721\n234#9:1727\n231#9,3:1730\n200#9,7:1733\n211#9,3:1741\n214#9,9:1745\n234#9:1754\n200#9,7:1779\n211#9,3:1787\n214#9,2:1791\n217#9,6:1797\n200#9,7:1843\n211#9,3:1851\n214#9,2:1855\n217#9,6:1861\n200#9,16:1907\n217#9,6:1927\n200#9,7:1953\n211#9,3:1961\n214#9,2:1965\n217#9,6:1971\n231#9,3:2009\n200#9,7:2012\n211#9,3:2020\n214#9,9:2024\n234#9:2033\n231#9,3:2045\n200#9,7:2048\n211#9,3:2056\n214#9,9:2060\n234#9:2069\n200#9,16:2184\n217#9,6:2204\n231#9,3:2333\n200#9,7:2336\n211#9,3:2344\n214#9,9:2348\n234#9:2357\n1399#10:1545\n1270#10:1549\n1399#10:1572\n1270#10:1576\n1399#10:1647\n1270#10:1651\n1399#10:1679\n1270#10:1683\n1399#10:1702\n1270#10:1706\n1399#10:1740\n1270#10:1744\n1399#10:1765\n1270#10:1769\n1399#10:1786\n1270#10:1790\n1399#10:1829\n1270#10:1833\n1399#10:1850\n1270#10:1854\n1399#10:1893\n1270#10:1897\n1399#10:1960\n1270#10:1964\n1399#10:1988\n1270#10:1992\n1399#10:2019\n1270#10:2023\n1399#10:2055\n1270#10:2059\n1399#10:2170\n1270#10:2174\n1399#10:2343\n1270#10:2347\n1863#11,2:1561\n1863#11:1729\n1864#11:1755\n139#12:1564\n140#12,5:1580\n145#12,6:1614\n152#12:1630\n67#12,6:1631\n75#12,4:1662\n67#12,6:1686\n75#12,4:1717\n123#12:1757\n124#12,4:1773\n128#12,6:1804\n135#12:1820\n123#12:1821\n124#12,4:1837\n128#12,6:1868\n135#12:1884\n123#12:1885\n124#12,4:1901\n128#12,6:1934\n135#12:1950\n67#12,6:2003\n75#12,4:2034\n67#12,6:2039\n75#12,4:2070\n123#12:2162\n124#12,4:2178\n128#12,6:2211\n135#12:2227\n81#12:2326\n67#12,6:2327\n75#12,8:2358\n842#13:1565\n844#13:1579\n845#13,3:1620\n848#13:1629\n842#13:1758\n844#13:1772\n845#13,3:1810\n848#13:1819\n842#13:1822\n844#13:1836\n845#13,3:1874\n848#13:1883\n842#13:1886\n844#13:1900\n845#13,3:1940\n848#13:1949\n842#13:2163\n844#13:2177\n845#13,3:2217\n848#13:2226\n329#14,6:1566\n339#14,3:1573\n342#14,2:1577\n345#14,6:1623\n329#14,6:1759\n339#14,3:1766\n342#14,2:1770\n345#14,6:1813\n329#14,6:1823\n339#14,3:1830\n342#14,2:1834\n345#14,6:1877\n329#14,6:1887\n339#14,3:1894\n342#14,2:1898\n345#14,6:1943\n329#14,6:2164\n339#14,3:2171\n342#14,2:2175\n345#14,6:2220\n809#15,2:1585\n812#15,4:1603\n816#15:1613\n809#15,2:1777\n812#15,4:1793\n816#15:1803\n809#15,2:1841\n812#15,4:1857\n816#15:1867\n809#15,2:1905\n812#15,4:1923\n816#15:1933\n809#15,2:1951\n812#15,4:1967\n816#15:1977\n809#15,2:2182\n812#15,4:2200\n816#15:2210\n54#16:1978\n54#16:1995\n403#17,3:1979\n367#17,6:1982\n377#17,3:1989\n380#17,2:1993\n383#17,6:1996\n406#17:2002\n4809#18:2108\n4788#18,4:2109\n45#19,3:2147\n49#19:2158\n45#19,3:2159\n49#19:2228\n45#19,3:2399\n49#19:2416\n13409#20,2:2321\n11483#20,9:2366\n13409#20:2375\n13410#20:2377\n11492#20:2378\n*S KotlinDebug\n*F\n+ 1 Composition.kt\nandroidx/compose/runtime/CompositionImpl\n*L\n828#1:1477,2\n828#1:1479,3\n831#1:1483,6\n828#1:1490,2\n828#1:1499\n828#1:1500,4\n841#1:1505,6\n1073#1:2075,2\n1073#1:2077,3\n1074#1:2080,6\n1073#1:2087,2\n1073#1:2096\n1073#1:2097,4\n1087#1:2113,2\n1087#1:2115,3\n1087#1:2119,2\n1087#1:2128\n1087#1:2129,4\n1148#1:2230,2\n1148#1:2232,3\n1148#1:2236,2\n1148#1:2245\n1148#1:2246,4\n1157#1:2251,2\n1157#1:2253,3\n1157#1:2257,2\n1157#1:2266\n1157#1:2267,4\n1167#1:2272,2\n1167#1:2274,3\n1167#1:2285,2\n1167#1:2294\n1167#1:2295,4\n1195#1:2299,3\n1195#1:2303,2\n1195#1:2312\n469#1:1448,5\n630#1:1454\n720#1:1467\n730#1:1468\n747#1:1469\n829#1:1482\n839#1:1504\n848#1:1511\n894#1:1530\n917#1:1531\n1052#1:2038\n1061#1:2074\n1147#1:2229\n1156#1:2250\n1166#1:2271\n1212#1:2320\n1216#1:2323\n1259#1:2324\n1293#1:2325\n1391#1:2394\n828#1:1489\n879#1:1523\n1073#1:2086\n1087#1:2118\n1093#1:2140\n1108#1:2154\n1148#1:2235\n1157#1:2256\n1167#1:2284\n1195#1:2302\n1365#1:2376\n1401#1:2409\n679#1:1455,4\n704#1:1459,4\n714#1:1463,4\n849#1:1512,4\n1368#1:2382,4\n1392#1:2395,4\n754#1:1470\n754#1:1471,5\n754#1:1476\n1086#1:2101\n1086#1:2102,5\n1086#1:2107\n1366#1:2379,3\n1366#1:2386\n828#1:1492,7\n876#1:1516,3\n876#1:1527,3\n1073#1:2089,7\n1087#1:2121,7\n1091#1:2133,3\n1091#1:2144,3\n1148#1:2238,7\n1157#1:2259,7\n1173#1:2277,7\n1167#1:2287,7\n1195#1:2305,7\n1207#1:2313,7\n1383#1:2387,7\n1398#1:2402,3\n1398#1:2413,3\n879#1:1519,4\n879#1:1524,3\n1093#1:2136,4\n1093#1:2141,3\n1108#1:2150,4\n1108#1:2155,3\n1401#1:2405,4\n1401#1:2410,3\n925#1:1532,3\n925#1:1560\n925#1:1563\n974#1:1666,3\n974#1:1728\n974#1:1756\n925#1:1535,3\n925#1:1538,7\n925#1:1546,3\n925#1:1550,9\n925#1:1559\n942#1:1587,16\n942#1:1607,6\n959#1:1637,3\n959#1:1640,7\n959#1:1648,3\n959#1:1652,9\n959#1:1661\n974#1:1669,3\n974#1:1672,7\n974#1:1680,3\n974#1:1684,2\n979#1:1692,3\n979#1:1695,7\n979#1:1703,3\n979#1:1707,9\n979#1:1716\n974#1:1721,6\n974#1:1727\n979#1:1730,3\n979#1:1733,7\n979#1:1741,3\n979#1:1745,9\n979#1:1754\n988#1:1779,7\n988#1:1787,3\n988#1:1791,2\n988#1:1797,6\n994#1:1843,7\n994#1:1851,3\n994#1:1855,2\n994#1:1861,6\n1001#1:1907,16\n1001#1:1927,6\n1003#1:1953,7\n1003#1:1961,3\n1003#1:1965,2\n1003#1:1971,6\n1043#1:2009,3\n1043#1:2012,7\n1043#1:2020,3\n1043#1:2024,9\n1043#1:2033\n1057#1:2045,3\n1057#1:2048,7\n1057#1:2056,3\n1057#1:2060,9\n1057#1:2069\n1128#1:2184,16\n1128#1:2204,6\n1323#1:2333,3\n1323#1:2336,7\n1323#1:2344,3\n1323#1:2348,9\n1323#1:2357\n925#1:1545\n925#1:1549\n942#1:1572\n942#1:1576\n959#1:1647\n959#1:1651\n974#1:1679\n974#1:1683\n979#1:1702\n979#1:1706\n979#1:1740\n979#1:1744\n988#1:1765\n988#1:1769\n988#1:1786\n988#1:1790\n994#1:1829\n994#1:1833\n994#1:1850\n994#1:1854\n1001#1:1893\n1001#1:1897\n1003#1:1960\n1003#1:1964\n1028#1:1988\n1028#1:1992\n1043#1:2019\n1043#1:2023\n1057#1:2055\n1057#1:2059\n1128#1:2170\n1128#1:2174\n1323#1:2343\n1323#1:2347\n925#1:1561,2\n974#1:1729\n974#1:1755\n942#1:1564\n942#1:1580,5\n942#1:1614,6\n942#1:1630\n959#1:1631,6\n959#1:1662,4\n979#1:1686,6\n979#1:1717,4\n988#1:1757\n988#1:1773,4\n988#1:1804,6\n988#1:1820\n994#1:1821\n994#1:1837,4\n994#1:1868,6\n994#1:1884\n1001#1:1885\n1001#1:1901,4\n1001#1:1934,6\n1001#1:1950\n1043#1:2003,6\n1043#1:2034,4\n1057#1:2039,6\n1057#1:2070,4\n1128#1:2162\n1128#1:2178,4\n1128#1:2211,6\n1128#1:2227\n1323#1:2326\n1323#1:2327,6\n1323#1:2358,8\n942#1:1565\n942#1:1579\n942#1:1620,3\n942#1:1629\n988#1:1758\n988#1:1772\n988#1:1810,3\n988#1:1819\n994#1:1822\n994#1:1836\n994#1:1874,3\n994#1:1883\n1001#1:1886\n1001#1:1900\n1001#1:1940,3\n1001#1:1949\n1128#1:2163\n1128#1:2177\n1128#1:2217,3\n1128#1:2226\n942#1:1566,6\n942#1:1573,3\n942#1:1577,2\n942#1:1623,6\n988#1:1759,6\n988#1:1766,3\n988#1:1770,2\n988#1:1813,6\n994#1:1823,6\n994#1:1830,3\n994#1:1834,2\n994#1:1877,6\n1001#1:1887,6\n1001#1:1894,3\n1001#1:1898,2\n1001#1:1943,6\n1128#1:2164,6\n1128#1:2171,3\n1128#1:2175,2\n1128#1:2220,6\n942#1:1585,2\n942#1:1603,4\n942#1:1613\n988#1:1777,2\n988#1:1793,4\n988#1:1803\n994#1:1841,2\n994#1:1857,4\n994#1:1867\n1001#1:1905,2\n1001#1:1923,4\n1001#1:1933\n1003#1:1951,2\n1003#1:1967,4\n1003#1:1977\n1128#1:2182,2\n1128#1:2200,4\n1128#1:2210\n1019#1:1978\n1030#1:1995\n1028#1:1979,3\n1028#1:1982,6\n1028#1:1989,3\n1028#1:1993,2\n1028#1:1996,6\n1028#1:2002\n1086#1:2108\n1086#1:2109,4\n1102#1:2147,3\n1102#1:2158\n1126#1:2159,3\n1126#1:2228\n1397#1:2399,3\n1397#1:2416\n1212#1:2321,2\n1365#1:2366,9\n1365#1:2375\n1365#1:2377\n1365#1:2378\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final _recomposeContext:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final abandonSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final applier:Landroidx/compose/runtime/Applier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Applier<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final changes:Landroidx/compose/runtime/changelist/ChangeList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private composable:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final composer:Landroidx/compose/runtime/ComposerImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final derivedStates:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final invalidatedScopes:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private invalidationDelegateGroup:I

.field private invalidations:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isRoot:Z

.field private final lateChanges:Landroidx/compose/runtime/changelist/ChangeList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final observations:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final observationsProcessed:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parent:Landroidx/compose/runtime/CompositionContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pendingInvalidScopes:Z

.field private final pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pendingPausedComposition:Landroidx/compose/runtime/PausedCompositionImpl;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shouldPause:Landroidx/compose/runtime/ShouldPauseCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final slotTable:Landroidx/compose/runtime/SlotTable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;Lkotlin/coroutines/CoroutineContext;)V
    .locals 15
    .param p1    # Landroidx/compose/runtime/CompositionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Applier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/CompositionContext;",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v10, v9, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    move-object/from16 v6, p2

    .line 3
    iput-object v6, v9, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v9, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, v9, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 7
    new-instance v0, Landroidx/collection/MutableScatterSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->asMutableSet()Ljava/util/Set;

    move-result-object v7

    iput-object v7, v9, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 8
    new-instance v8, Landroidx/compose/runtime/SlotTable;

    invoke-direct {v8}, Landroidx/compose/runtime/SlotTable;-><init>()V

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Landroidx/compose/runtime/SlotTable;->collectCalledByInformation()V

    .line 10
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    .line 11
    :cond_1
    iput-object v8, v9, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 12
    invoke-static {v1, v3, v1}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default(Landroidx/collection/MutableScatterMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, v9, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 13
    new-instance v0, Landroidx/collection/MutableScatterSet;

    invoke-direct {v0, v2, v3, v1}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, v9, Landroidx/compose/runtime/CompositionImpl;->invalidatedScopes:Landroidx/collection/MutableScatterSet;

    .line 14
    new-instance v0, Landroidx/collection/MutableScatterSet;

    invoke-direct {v0, v2, v3, v1}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, v9, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    .line 15
    invoke-static {v1, v3, v1}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default(Landroidx/collection/MutableScatterMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, v9, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 16
    new-instance v11, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v11}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    iput-object v11, v9, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    .line 17
    new-instance v12, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v12}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    iput-object v12, v9, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .line 18
    invoke-static {v1, v3, v1}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default(Landroidx/collection/MutableScatterMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, v9, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/collection/MutableScatterMap;

    .line 19
    invoke-static {v1, v3, v1}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default(Landroidx/collection/MutableScatterMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, v9, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 20
    new-instance v13, Landroidx/compose/runtime/CompositionObserverHolder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v13

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/CompositionObserverHolder;-><init>(Landroidx/compose/runtime/tooling/CompositionObserver;ZLandroidx/compose/runtime/CompositionContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v13, v9, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 21
    new-instance v0, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    invoke-direct {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>()V

    iput-object v0, v9, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 22
    new-instance v14, Landroidx/compose/runtime/ComposerImpl;

    move-object v0, v14

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v4, v7

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Landroidx/compose/runtime/ComposerImpl;-><init>(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/SlotTable;Ljava/util/Set;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/CompositionObserverHolder;Landroidx/compose/runtime/CompositionImpl;)V

    .line 23
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/CompositionContext;->registerComposer$runtime(Landroidx/compose/runtime/Composer;)V

    iput-object v14, v9, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v0, p3

    .line 24
    iput-object v0, v9, Landroidx/compose/runtime/CompositionImpl;->_recomposeContext:Lkotlin/coroutines/CoroutineContext;

    .line 25
    instance-of v0, v10, Landroidx/compose/runtime/Recomposer;

    iput-boolean v0, v9, Landroidx/compose/runtime/CompositionImpl;->isRoot:Z

    .line 26
    sget-object v0, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->INSTANCE:Landroidx/compose/runtime/ComposableSingletons$CompositionKt;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->getLambda$954879418$runtime()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iput-object v0, v9, Landroidx/compose/runtime/CompositionImpl;->composable:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 27
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionImpl;-><init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic access$getLock$p(Landroidx/compose/runtime/CompositionImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getObservations$p(Landroidx/compose/runtime/CompositionImpl;)Landroidx/collection/MutableScatterMap;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    return-object p0
.end method

.method private final addPendingInvalidationsLocked(Ljava/lang/Object;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 2
    invoke-virtual {v2, v1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3
    instance-of v3, v2, Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_4

    .line 4
    check-cast v2, Landroidx/collection/MutableScatterSet;

    .line 5
    iget-object v3, v2, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 6
    iget-object v2, v2, Landroidx/collection/ScatterSet;->metadata:[J

    .line 7
    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_6

    const/4 v5, 0x0

    move v6, v5

    .line 8
    :goto_0
    aget-wide v7, v2, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    move v11, v5

    :goto_1
    if-ge v11, v9, :cond_2

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    .line 9
    aget-object v12, v3, v12

    check-cast v12, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 10
    iget-object v13, v0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/collection/MutableScatterMap;

    invoke-static {v13, v1, v12}, Landroidx/compose/runtime/collection/ScopeMap;->remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 11
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v13

    sget-object v14, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    if-eq v13, v14, :cond_1

    .line 12
    invoke-virtual {v12}, Landroidx/compose/runtime/RecomposeScopeImpl;->isConditional()Z

    move-result v13

    if-eqz v13, :cond_0

    if-nez p2, :cond_0

    .line 13
    iget-object v13, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v13, v12}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_0
    iget-object v13, v0, Landroidx/compose/runtime/CompositionImpl;->invalidatedScopes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v13, v12}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    if-ne v9, v10, :cond_6

    :cond_3
    if-eq v6, v4, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 15
    :cond_4
    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 16
    iget-object v3, v0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/collection/MutableScatterMap;

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 17
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v1

    sget-object v3, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    if-eq v1, v3, :cond_6

    .line 18
    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->isConditional()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    .line 19
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 20
    :cond_5
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->invalidatedScopes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method private final addPendingInvalidationsLocked(Ljava/util/Set;Z)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 21
    instance-of v4, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    const-wide/16 v8, 0xff

    const/4 v10, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v14, 0x8

    if-eqz v4, :cond_a

    .line 22
    check-cast v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/ScatterSetWrapper;->getSet$runtime()Landroidx/collection/ScatterSet;

    move-result-object v1

    .line 23
    iget-object v4, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 24
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 25
    array-length v15, v1

    add-int/lit8 v15, v15, -0x2

    if-ltz v15, :cond_11

    move-object/from16 p1, v4

    const/4 v13, 0x0

    .line 26
    :goto_0
    aget-wide v3, v1, v13

    not-long v5, v3

    shl-long/2addr v5, v10

    and-long/2addr v5, v3

    and-long/2addr v5, v11

    cmp-long v5, v5, v11

    if-eqz v5, :cond_9

    sub-int v5, v13, v15

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    rsub-int/lit8 v5, v5, 0x8

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_8

    and-long v20, v3, v8

    const-wide/16 v18, 0x80

    cmp-long v7, v20, v18

    if-gez v7, :cond_7

    shl-int/lit8 v7, v13, 0x3

    add-int/2addr v7, v6

    .line 27
    aget-object v7, p1, v7

    .line 28
    instance-of v8, v7, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v8, :cond_0

    .line 29
    check-cast v7, Landroidx/compose/runtime/RecomposeScopeImpl;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move/from16 v24, v5

    move/from16 v25, v6

    goto/16 :goto_6

    .line 30
    :cond_0
    invoke-direct {v0, v7, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    .line 31
    iget-object v8, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 32
    invoke-virtual {v8, v7}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 33
    instance-of v8, v7, Landroidx/collection/MutableScatterSet;

    if-eqz v8, :cond_4

    .line 34
    check-cast v7, Landroidx/collection/MutableScatterSet;

    .line 35
    iget-object v8, v7, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 36
    iget-object v7, v7, Landroidx/collection/ScatterSet;->metadata:[J

    .line 37
    array-length v9, v7

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_5

    const/4 v14, 0x0

    .line 38
    :goto_2
    aget-wide v11, v7, v14

    move/from16 v24, v5

    move/from16 v25, v6

    not-long v5, v11

    shl-long/2addr v5, v10

    and-long/2addr v5, v11

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v5, v5, v22

    cmp-long v5, v5, v22

    if-eqz v5, :cond_3

    sub-int v5, v14, v9

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v6, 0x8

    rsub-int/lit8 v5, v5, 0x8

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_2

    const-wide/16 v20, 0xff

    and-long v26, v11, v20

    const-wide/16 v18, 0x80

    cmp-long v26, v26, v18

    if-gez v26, :cond_1

    shl-int/lit8 v26, v14, 0x3

    add-int v26, v26, v6

    .line 39
    aget-object v26, v8, v26

    move-object/from16 v10, v26

    check-cast v10, Landroidx/compose/runtime/DerivedState;

    .line 40
    invoke-direct {v0, v10, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    :cond_1
    const/16 v10, 0x8

    shr-long/2addr v11, v10

    const/16 v16, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v10, 0x7

    goto :goto_3

    :cond_2
    const/16 v10, 0x8

    const/16 v16, 0x1

    if-ne v5, v10, :cond_6

    goto :goto_4

    :cond_3
    const/16 v16, 0x1

    :goto_4
    if-eq v14, v9, :cond_6

    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v24

    move/from16 v6, v25

    const/4 v10, 0x7

    goto :goto_2

    :cond_4
    move/from16 v24, v5

    move/from16 v25, v6

    .line 41
    check-cast v7, Landroidx/compose/runtime/DerivedState;

    .line 42
    invoke-direct {v0, v7, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    goto :goto_5

    :cond_5
    move/from16 v24, v5

    move/from16 v25, v6

    .line 43
    :cond_6
    :goto_5
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_6
    const/16 v5, 0x8

    goto :goto_7

    :cond_7
    move/from16 v24, v5

    move/from16 v25, v6

    move v5, v14

    :goto_7
    shr-long/2addr v3, v5

    const/4 v6, 0x1

    add-int/lit8 v7, v25, 0x1

    move v14, v5

    move v6, v7

    move/from16 v5, v24

    const-wide/16 v8, 0xff

    const/4 v10, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto/16 :goto_1

    :cond_8
    const/4 v6, 0x1

    move/from16 v31, v14

    move v14, v5

    move/from16 v5, v31

    if-ne v14, v5, :cond_11

    goto :goto_8

    :cond_9
    const/4 v6, 0x1

    :goto_8
    if-eq v13, v15, :cond_11

    add-int/2addr v13, v6

    const-wide/16 v8, 0xff

    const/4 v10, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v14, 0x8

    goto/16 :goto_0

    .line 44
    :cond_a
    check-cast v1, Ljava/lang/Iterable;

    .line 45
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 46
    instance-of v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v4, :cond_b

    .line 47
    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    goto :goto_9

    :cond_b
    const/4 v4, 0x0

    .line 48
    invoke-direct {v0, v3, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    .line 49
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 50
    invoke-virtual {v5, v3}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 51
    instance-of v5, v3, Landroidx/collection/MutableScatterSet;

    if-eqz v5, :cond_f

    .line 52
    check-cast v3, Landroidx/collection/MutableScatterSet;

    .line 53
    iget-object v5, v3, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 54
    iget-object v3, v3, Landroidx/collection/ScatterSet;->metadata:[J

    .line 55
    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_10

    const/4 v7, 0x0

    .line 56
    :goto_a
    aget-wide v8, v3, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_e

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v14, v10, 0x8

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v14, :cond_d

    const-wide/16 v11, 0xff

    and-long v24, v8, v11

    const-wide/16 v11, 0x80

    cmp-long v13, v24, v11

    if-gez v13, :cond_c

    shl-int/lit8 v11, v7, 0x3

    add-int/2addr v11, v10

    .line 57
    aget-object v11, v5, v11

    check-cast v11, Landroidx/compose/runtime/DerivedState;

    .line 58
    invoke-direct {v0, v11, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    :cond_c
    const/16 v11, 0x8

    shr-long/2addr v8, v11

    const/4 v12, 0x1

    add-int/2addr v10, v12

    goto :goto_b

    :cond_d
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ne v14, v11, :cond_10

    goto :goto_c

    :cond_e
    const/4 v12, 0x1

    :goto_c
    if-eq v7, v6, :cond_10

    add-int/2addr v7, v12

    goto :goto_a

    .line 59
    :cond_f
    check-cast v3, Landroidx/compose/runtime/DerivedState;

    .line 60
    invoke-direct {v0, v3, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/lang/Object;Z)V

    .line 61
    :cond_10
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_9

    .line 62
    :cond_11
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    .line 63
    iget-object v3, v0, Landroidx/compose/runtime/CompositionImpl;->invalidatedScopes:Landroidx/collection/MutableScatterSet;

    .line 64
    const-string v4, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap"

    const-string v5, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>"

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 65
    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 66
    iget-object v6, v2, Landroidx/collection/ScatterMap;->metadata:[J

    .line 67
    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_20

    const/4 v8, 0x0

    .line 68
    :goto_d
    aget-wide v9, v6, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_1f

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v14, v11, 0x8

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v14, :cond_1e

    const-wide/16 v12, 0xff

    and-long v24, v9, v12

    const-wide/16 v12, 0x80

    cmp-long v15, v24, v12

    if-gez v15, :cond_1d

    shl-int/lit8 v12, v8, 0x3

    add-int/2addr v12, v11

    .line 69
    iget-object v13, v2, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    aget-object v13, v13, v12

    iget-object v13, v2, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    aget-object v13, v13, v12

    .line 70
    instance-of v15, v13, Landroidx/collection/MutableScatterSet;

    if-eqz v15, :cond_19

    .line 71
    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroidx/collection/MutableScatterSet;

    .line 72
    iget-object v15, v13, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    move-object/from16 v17, v6

    .line 73
    iget-object v6, v13, Landroidx/collection/ScatterSet;->metadata:[J

    move-object/from16 p1, v5

    .line 74
    array-length v5, v6

    add-int/lit8 v5, v5, -0x2

    move/from16 p2, v7

    move/from16 v24, v8

    if-ltz v5, :cond_17

    const/4 v0, 0x0

    .line 75
    :goto_f
    aget-wide v7, v6, v0

    move-wide/from16 v25, v9

    not-long v9, v7

    const/16 v27, 0x7

    shl-long v9, v9, v27

    and-long/2addr v9, v7

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v9, v9, v22

    cmp-long v9, v9, v22

    if-eqz v9, :cond_16

    sub-int v9, v0, v5

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v9, :cond_15

    const-wide/16 v20, 0xff

    and-long v28, v7, v20

    const-wide/16 v18, 0x80

    cmp-long v28, v28, v18

    if-gez v28, :cond_14

    shl-int/lit8 v28, v0, 0x3

    move-object/from16 v29, v6

    add-int v6, v28, v10

    .line 76
    aget-object v28, v15, v6

    move-object/from16 v30, v15

    move-object/from16 v15, v28

    check-cast v15, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 77
    invoke-virtual {v1, v15}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_12

    invoke-virtual {v3, v15}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 78
    :cond_12
    invoke-virtual {v13, v6}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    :cond_13
    :goto_11
    const/16 v6, 0x8

    goto :goto_12

    :cond_14
    move-object/from16 v29, v6

    move-object/from16 v30, v15

    goto :goto_11

    :goto_12
    shr-long/2addr v7, v6

    const/4 v15, 0x1

    add-int/2addr v10, v15

    move-object/from16 v6, v29

    move-object/from16 v15, v30

    goto :goto_10

    :cond_15
    move-object/from16 v29, v6

    move-object/from16 v30, v15

    const/16 v6, 0x8

    const/4 v15, 0x1

    if-ne v9, v6, :cond_18

    goto :goto_13

    :cond_16
    move-object/from16 v29, v6

    move-object/from16 v30, v15

    const/4 v15, 0x1

    :goto_13
    if-eq v0, v5, :cond_18

    add-int/2addr v0, v15

    move-wide/from16 v9, v25

    move-object/from16 v6, v29

    move-object/from16 v15, v30

    goto :goto_f

    :cond_17
    move-wide/from16 v25, v9

    .line 79
    :cond_18
    invoke-virtual {v13}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v0

    goto :goto_15

    :cond_19
    move-object/from16 p1, v5

    move-object/from16 v17, v6

    move/from16 p2, v7

    move/from16 v24, v8

    move-wide/from16 v25, v9

    .line 80
    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 81
    invoke-virtual {v1, v13}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v3, v13}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_14

    :cond_1a
    const/4 v0, 0x0

    goto :goto_15

    :cond_1b
    :goto_14
    const/4 v0, 0x1

    :goto_15
    if-eqz v0, :cond_1c

    .line 82
    invoke-virtual {v2, v12}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_1c
    :goto_16
    const/16 v0, 0x8

    goto :goto_17

    :cond_1d
    move-object/from16 p1, v5

    move-object/from16 v17, v6

    move/from16 p2, v7

    move/from16 v24, v8

    move-wide/from16 v25, v9

    goto :goto_16

    :goto_17
    shr-long v9, v25, v0

    const/4 v5, 0x1

    add-int/2addr v11, v5

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move/from16 v7, p2

    move-object/from16 v6, v17

    move/from16 v8, v24

    goto/16 :goto_e

    :cond_1e
    move-object/from16 p1, v5

    move-object/from16 v17, v6

    move/from16 p2, v7

    move/from16 v24, v8

    const/16 v0, 0x8

    const/4 v5, 0x1

    if-ne v14, v0, :cond_20

    move/from16 v7, p2

    move/from16 v0, v24

    goto :goto_18

    :cond_1f
    move-object/from16 p1, v5

    move-object/from16 v17, v6

    const/4 v5, 0x1

    move v0, v8

    :goto_18
    if-eq v0, v7, :cond_20

    add-int/lit8 v8, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v17

    goto/16 :goto_d

    .line 83
    :cond_20
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 84
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->cleanUpDerivedStateObservations()V

    goto/16 :goto_26

    :cond_21
    move-object/from16 p1, v5

    .line 85
    invoke-virtual {v3}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    move-object/from16 v0, p0

    .line 86
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 87
    iget-object v2, v1, Landroidx/collection/ScatterMap;->metadata:[J

    .line 88
    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_2f

    const/4 v6, 0x0

    .line 89
    :goto_19
    aget-wide v7, v2, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2e

    sub-int v9, v6, v5

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v14, v9, 0x8

    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v14, :cond_2d

    const-wide/16 v10, 0xff

    and-long v12, v7, v10

    const-wide/16 v10, 0x80

    cmp-long v12, v12, v10

    if-gez v12, :cond_22

    const/4 v10, 0x1

    goto :goto_1b

    :cond_22
    const/4 v10, 0x0

    :goto_1b
    if-eqz v10, :cond_2c

    shl-int/lit8 v10, v6, 0x3

    add-int/2addr v10, v9

    .line 90
    iget-object v11, v1, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    aget-object v11, v11, v10

    iget-object v11, v1, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    aget-object v11, v11, v10

    .line 91
    instance-of v12, v11, Landroidx/collection/MutableScatterSet;

    if-eqz v12, :cond_2a

    move-object/from16 v12, p1

    .line 92
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroidx/collection/MutableScatterSet;

    .line 93
    iget-object v13, v11, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 94
    iget-object v15, v11, Landroidx/collection/ScatterSet;->metadata:[J

    .line 95
    array-length v0, v15

    add-int/lit8 v0, v0, -0x2

    move-object/from16 v17, v2

    move/from16 p1, v5

    move/from16 p2, v6

    if-ltz v0, :cond_28

    const/4 v2, 0x0

    .line 96
    :goto_1c
    aget-wide v5, v15, v2

    move/from16 v24, v14

    move-object/from16 v25, v15

    not-long v14, v5

    const/16 v26, 0x7

    shl-long v14, v14, v26

    and-long/2addr v14, v5

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v14, v14, v22

    cmp-long v14, v14, v22

    if-eqz v14, :cond_27

    sub-int v14, v2, v0

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v15, 0x8

    rsub-int/lit8 v14, v14, 0x8

    const/4 v15, 0x0

    :goto_1d
    if-ge v15, v14, :cond_26

    const-wide/16 v20, 0xff

    and-long v27, v5, v20

    const-wide/16 v18, 0x80

    cmp-long v27, v27, v18

    if-gez v27, :cond_23

    const/16 v27, 0x1

    goto :goto_1e

    :cond_23
    const/16 v27, 0x0

    :goto_1e
    if-eqz v27, :cond_25

    shl-int/lit8 v27, v2, 0x3

    move-object/from16 v28, v12

    add-int v12, v27, v15

    .line 97
    aget-object v27, v13, v12

    move-object/from16 v29, v13

    move-object/from16 v13, v27

    check-cast v13, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 98
    invoke-virtual {v3, v13}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 99
    invoke-virtual {v11, v12}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    :cond_24
    :goto_1f
    const/16 v12, 0x8

    goto :goto_20

    :cond_25
    move-object/from16 v28, v12

    move-object/from16 v29, v13

    goto :goto_1f

    :goto_20
    shr-long/2addr v5, v12

    const/4 v13, 0x1

    add-int/2addr v15, v13

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    goto :goto_1d

    :cond_26
    move-object/from16 v28, v12

    move-object/from16 v29, v13

    const/16 v12, 0x8

    const/4 v13, 0x1

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    if-ne v14, v12, :cond_29

    goto :goto_21

    :cond_27
    move-object/from16 v28, v12

    move-object/from16 v29, v13

    const/4 v13, 0x1

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    :goto_21
    if-eq v2, v0, :cond_29

    add-int/2addr v2, v13

    move/from16 v14, v24

    move-object/from16 v15, v25

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    goto :goto_1c

    :cond_28
    move-object/from16 v28, v12

    move/from16 v24, v14

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v26, 0x7

    .line 100
    :cond_29
    invoke-virtual {v11}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v0

    goto :goto_22

    :cond_2a
    move-object/from16 v28, p1

    move-object/from16 v17, v2

    move/from16 p1, v5

    move/from16 p2, v6

    move/from16 v24, v14

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v26, 0x7

    .line 101
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 102
    invoke-virtual {v3, v11}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_22
    if-eqz v0, :cond_2b

    .line 103
    invoke-virtual {v1, v10}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_2b
    :goto_23
    const/16 v0, 0x8

    goto :goto_24

    :cond_2c
    move-object/from16 v28, p1

    move-object/from16 v17, v2

    move/from16 p1, v5

    move/from16 p2, v6

    move/from16 v24, v14

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v26, 0x7

    goto :goto_23

    :goto_24
    shr-long/2addr v7, v0

    const/4 v2, 0x1

    add-int/2addr v9, v2

    move-object/from16 v0, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v2, v17

    move/from16 v14, v24

    move-object/from16 p1, v28

    goto/16 :goto_1a

    :cond_2d
    move-object/from16 v28, p1

    move-object/from16 v17, v2

    move/from16 p1, v5

    move/from16 p2, v6

    const/16 v0, 0x8

    const/4 v2, 0x1

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v26, 0x7

    if-ne v14, v0, :cond_2f

    move/from16 v5, p1

    move/from16 v6, p2

    goto :goto_25

    :cond_2e
    move-object/from16 v28, p1

    move-object/from16 v17, v2

    const/16 v0, 0x8

    const/4 v2, 0x1

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v26, 0x7

    :goto_25
    if-eq v6, v5, :cond_2f

    add-int/2addr v6, v2

    move-object/from16 v0, p0

    move-object/from16 v2, v17

    move-object/from16 p1, v28

    goto/16 :goto_19

    .line 104
    :cond_2f
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->cleanUpDerivedStateObservations()V

    .line 105
    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->clear()V

    :cond_30
    :goto_26
    return-void
.end method

.method private final applyChangesInLocked(Landroidx/compose/runtime/changelist/ChangeList;)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 5
    .line 6
    iget-object v3, v1, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 7
    .line 8
    iget-object v4, v1, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 9
    .line 10
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/changelist/ChangeList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    :try_start_1
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->pendingPausedComposition:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_1
    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_1
    :try_start_2
    const-string v2, "Compose:applyChanges"

    .line 56
    .line 57
    sget-object v3, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 63
    :try_start_3
    iget-object v4, v1, Landroidx/compose/runtime/CompositionImpl;->pendingPausedComposition:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 64
    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    invoke-virtual {v4}, Landroidx/compose/runtime/PausedCompositionImpl;->getPausableApplier$runtime()Landroidx/compose/runtime/RecordingApplier;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catchall_1
    move-exception v0

    .line 75
    goto/16 :goto_12

    .line 76
    .line 77
    :cond_2
    iget-object v4, v1, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 78
    .line 79
    :goto_2
    iget-object v5, v1, Landroidx/compose/runtime/CompositionImpl;->pendingPausedComposition:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 80
    .line 81
    if-eqz v5, :cond_3

    .line 82
    .line 83
    invoke-virtual {v5}, Landroidx/compose/runtime/PausedCompositionImpl;->getRememberManager$runtime()Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-nez v5, :cond_4

    .line 88
    .line 89
    :cond_3
    iget-object v5, v1, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 90
    .line 91
    :cond_4
    invoke-interface {v4}, Landroidx/compose/runtime/Applier;->onBeginChanges()V

    .line 92
    .line 93
    .line 94
    iget-object v6, v1, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 95
    .line 96
    invoke-virtual {v6}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    .line 97
    .line 98
    .line 99
    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    const/4 v7, 0x0

    .line 101
    :try_start_4
    iget-object v8, v1, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 102
    .line 103
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    move-object/from16 v9, p1

    .line 108
    .line 109
    invoke-virtual {v9, v4, v6, v5, v8}, Landroidx/compose/runtime/changelist/ChangeList;->executeAndFlushAllPendingChanges(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;Landroidx/compose/runtime/changelist/OperationErrorContext;)V

    .line 110
    .line 111
    .line 112
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 113
    .line 114
    :try_start_5
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v4}, Landroidx/compose/runtime/Applier;->onEndChanges()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 118
    .line 119
    .line 120
    :try_start_6
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 124
    .line 125
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchRememberObservers()V

    .line 126
    .line 127
    .line 128
    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 129
    .line 130
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchSideEffects()V

    .line 131
    .line 132
    .line 133
    iget-boolean v2, v1, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 134
    .line 135
    if-eqz v2, :cond_13

    .line 136
    .line 137
    :try_start_7
    const-string v2, "Compose:unobserve"

    .line 138
    .line 139
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 143
    :try_start_8
    iput-boolean v7, v1, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z

    .line 144
    .line 145
    iget-object v3, v1, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 146
    .line 147
    iget-object v4, v3, Landroidx/collection/ScatterMap;->metadata:[J

    .line 148
    .line 149
    array-length v5, v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 150
    add-int/lit8 v5, v5, -0x2

    .line 151
    .line 152
    if-ltz v5, :cond_11

    .line 153
    .line 154
    move v6, v7

    .line 155
    :goto_3
    :try_start_9
    aget-wide v8, v4, v6

    .line 156
    .line 157
    not-long v10, v8

    .line 158
    const/4 v12, 0x7

    .line 159
    shl-long/2addr v10, v12

    .line 160
    and-long/2addr v10, v8

    .line 161
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    and-long/2addr v10, v13

    .line 167
    cmp-long v10, v10, v13

    .line 168
    .line 169
    if-eqz v10, :cond_10

    .line 170
    .line 171
    sub-int v10, v6, v5

    .line 172
    .line 173
    not-int v10, v10

    .line 174
    ushr-int/lit8 v10, v10, 0x1f

    .line 175
    .line 176
    const/16 v11, 0x8

    .line 177
    .line 178
    rsub-int/lit8 v10, v10, 0x8

    .line 179
    .line 180
    move v15, v7

    .line 181
    :goto_4
    if-ge v15, v10, :cond_f

    .line 182
    .line 183
    const-wide/16 v16, 0xff

    .line 184
    .line 185
    and-long v18, v8, v16

    .line 186
    .line 187
    const-wide/16 v20, 0x80

    .line 188
    .line 189
    cmp-long v18, v18, v20

    .line 190
    .line 191
    if-gez v18, :cond_e

    .line 192
    .line 193
    shl-int/lit8 v18, v6, 0x3

    .line 194
    .line 195
    add-int v7, v18, v15

    .line 196
    .line 197
    iget-object v0, v3, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 198
    .line 199
    aget-object v0, v0, v7

    .line 200
    .line 201
    iget-object v0, v3, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 202
    .line 203
    aget-object v0, v0, v7

    .line 204
    .line 205
    instance-of v11, v0, Landroidx/collection/MutableScatterSet;

    .line 206
    .line 207
    if-eqz v11, :cond_b

    .line 208
    .line 209
    const-string v11, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>"

    .line 210
    .line 211
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 215
    .line 216
    iget-object v11, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 217
    .line 218
    iget-object v13, v0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 219
    .line 220
    array-length v14, v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 221
    add-int/lit8 v14, v14, -0x2

    .line 222
    .line 223
    move-object/from16 v25, v2

    .line 224
    .line 225
    if-ltz v14, :cond_9

    .line 226
    .line 227
    const/4 v12, 0x0

    .line 228
    :goto_5
    :try_start_a
    aget-wide v1, v13, v12

    .line 229
    .line 230
    move-object/from16 v26, v4

    .line 231
    .line 232
    move/from16 v27, v5

    .line 233
    .line 234
    not-long v4, v1

    .line 235
    const/16 v24, 0x7

    .line 236
    .line 237
    shl-long v4, v4, v24

    .line 238
    .line 239
    and-long/2addr v4, v1

    .line 240
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    and-long v4, v4, v22

    .line 246
    .line 247
    cmp-long v4, v4, v22

    .line 248
    .line 249
    if-eqz v4, :cond_8

    .line 250
    .line 251
    sub-int v4, v12, v14

    .line 252
    .line 253
    not-int v4, v4

    .line 254
    ushr-int/lit8 v4, v4, 0x1f

    .line 255
    .line 256
    const/16 v5, 0x8

    .line 257
    .line 258
    rsub-int/lit8 v4, v4, 0x8

    .line 259
    .line 260
    const/4 v5, 0x0

    .line 261
    :goto_6
    if-ge v5, v4, :cond_7

    .line 262
    .line 263
    and-long v28, v1, v16

    .line 264
    .line 265
    cmp-long v28, v28, v20

    .line 266
    .line 267
    if-gez v28, :cond_6

    .line 268
    .line 269
    shl-int/lit8 v28, v12, 0x3

    .line 270
    .line 271
    move-object/from16 v29, v13

    .line 272
    .line 273
    add-int v13, v28, v5

    .line 274
    .line 275
    aget-object v28, v11, v13

    .line 276
    .line 277
    check-cast v28, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 278
    .line 279
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/RecomposeScopeImpl;->getValid()Z

    .line 280
    .line 281
    .line 282
    move-result v28

    .line 283
    if-nez v28, :cond_5

    .line 284
    .line 285
    invoke-virtual {v0, v13}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    .line 286
    .line 287
    .line 288
    goto :goto_8

    .line 289
    :catchall_2
    move-exception v0

    .line 290
    :goto_7
    move-object/from16 v1, v25

    .line 291
    .line 292
    goto/16 :goto_e

    .line 293
    .line 294
    :cond_5
    :goto_8
    const/16 v13, 0x8

    .line 295
    .line 296
    goto :goto_9

    .line 297
    :cond_6
    move-object/from16 v29, v13

    .line 298
    .line 299
    goto :goto_8

    .line 300
    :goto_9
    shr-long/2addr v1, v13

    .line 301
    const/16 v18, 0x1

    .line 302
    .line 303
    add-int/lit8 v5, v5, 0x1

    .line 304
    .line 305
    move-object/from16 v13, v29

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_7
    move-object/from16 v29, v13

    .line 309
    .line 310
    const/16 v13, 0x8

    .line 311
    .line 312
    const/16 v18, 0x1

    .line 313
    .line 314
    if-ne v4, v13, :cond_a

    .line 315
    .line 316
    goto :goto_a

    .line 317
    :cond_8
    move-object/from16 v29, v13

    .line 318
    .line 319
    const/16 v18, 0x1

    .line 320
    .line 321
    :goto_a
    if-eq v12, v14, :cond_a

    .line 322
    .line 323
    add-int/lit8 v12, v12, 0x1

    .line 324
    .line 325
    move-object/from16 v4, v26

    .line 326
    .line 327
    move/from16 v5, v27

    .line 328
    .line 329
    move-object/from16 v13, v29

    .line 330
    .line 331
    goto :goto_5

    .line 332
    :cond_9
    move-object/from16 v26, v4

    .line 333
    .line 334
    move/from16 v27, v5

    .line 335
    .line 336
    move/from16 v24, v12

    .line 337
    .line 338
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    :cond_a
    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->isEmpty()Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    goto :goto_b

    .line 348
    :catchall_3
    move-exception v0

    .line 349
    move-object/from16 v25, v2

    .line 350
    .line 351
    goto :goto_7

    .line 352
    :cond_b
    move-object/from16 v25, v2

    .line 353
    .line 354
    move-object/from16 v26, v4

    .line 355
    .line 356
    move/from16 v27, v5

    .line 357
    .line 358
    move/from16 v24, v12

    .line 359
    .line 360
    move-wide/from16 v22, v13

    .line 361
    .line 362
    const-string v1, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap"

    .line 363
    .line 364
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 368
    .line 369
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getValid()Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-nez v0, :cond_c

    .line 374
    .line 375
    const/4 v0, 0x1

    .line 376
    goto :goto_b

    .line 377
    :cond_c
    const/4 v0, 0x0

    .line 378
    :goto_b
    if-eqz v0, :cond_d

    .line 379
    .line 380
    invoke-virtual {v3, v7}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    :cond_d
    const/16 v0, 0x8

    .line 384
    .line 385
    goto :goto_c

    .line 386
    :cond_e
    move-object/from16 v25, v2

    .line 387
    .line 388
    move-object/from16 v26, v4

    .line 389
    .line 390
    move/from16 v27, v5

    .line 391
    .line 392
    move/from16 v24, v12

    .line 393
    .line 394
    move-wide/from16 v22, v13

    .line 395
    .line 396
    move v0, v11

    .line 397
    :goto_c
    shr-long/2addr v8, v0

    .line 398
    const/4 v1, 0x1

    .line 399
    add-int/2addr v15, v1

    .line 400
    move v11, v0

    .line 401
    move v0, v1

    .line 402
    move-wide/from16 v13, v22

    .line 403
    .line 404
    move/from16 v12, v24

    .line 405
    .line 406
    move-object/from16 v2, v25

    .line 407
    .line 408
    move-object/from16 v4, v26

    .line 409
    .line 410
    move/from16 v5, v27

    .line 411
    .line 412
    const/4 v7, 0x0

    .line 413
    move-object/from16 v1, p0

    .line 414
    .line 415
    goto/16 :goto_4

    .line 416
    .line 417
    :cond_f
    move v1, v0

    .line 418
    move-object/from16 v25, v2

    .line 419
    .line 420
    move-object/from16 v26, v4

    .line 421
    .line 422
    move/from16 v27, v5

    .line 423
    .line 424
    move v0, v11

    .line 425
    if-ne v10, v0, :cond_12

    .line 426
    .line 427
    move/from16 v5, v27

    .line 428
    .line 429
    goto :goto_d

    .line 430
    :cond_10
    move v1, v0

    .line 431
    move-object/from16 v25, v2

    .line 432
    .line 433
    move-object/from16 v26, v4

    .line 434
    .line 435
    :goto_d
    if-eq v6, v5, :cond_12

    .line 436
    .line 437
    add-int/2addr v6, v1

    .line 438
    move v0, v1

    .line 439
    move-object/from16 v2, v25

    .line 440
    .line 441
    move-object/from16 v4, v26

    .line 442
    .line 443
    const/4 v7, 0x0

    .line 444
    move-object/from16 v1, p0

    .line 445
    .line 446
    goto/16 :goto_3

    .line 447
    .line 448
    :cond_11
    move-object/from16 v25, v2

    .line 449
    .line 450
    :cond_12
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->cleanUpDerivedStateObservations()V

    .line 451
    .line 452
    .line 453
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 454
    .line 455
    :try_start_b
    sget-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    .line 456
    .line 457
    move-object/from16 v1, v25

    .line 458
    .line 459
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    :cond_13
    move-object/from16 v1, p0

    .line 463
    .line 464
    goto :goto_f

    .line 465
    :catchall_4
    move-exception v0

    .line 466
    move-object/from16 v1, p0

    .line 467
    .line 468
    goto :goto_13

    .line 469
    :catchall_5
    move-exception v0

    .line 470
    move-object v1, v2

    .line 471
    :goto_e
    sget-object v2, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    .line 472
    .line 473
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 477
    :goto_f
    :try_start_c
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .line 478
    .line 479
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->isEmpty()Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-eqz v0, :cond_14

    .line 484
    .line 485
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->pendingPausedComposition:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 486
    .line 487
    if-nez v0, :cond_14

    .line 488
    .line 489
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 490
    .line 491
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 492
    .line 493
    .line 494
    goto :goto_10

    .line 495
    :catchall_6
    move-exception v0

    .line 496
    goto :goto_11

    .line 497
    :cond_14
    :goto_10
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 498
    .line 499
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 500
    .line 501
    .line 502
    return-void

    .line 503
    :goto_11
    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 504
    .line 505
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 506
    .line 507
    .line 508
    throw v0

    .line 509
    :catchall_7
    move-exception v0

    .line 510
    goto :goto_13

    .line 511
    :catchall_8
    move-exception v0

    .line 512
    const/4 v3, 0x0

    .line 513
    :try_start_d
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 514
    .line 515
    .line 516
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 517
    :goto_12
    :try_start_e
    sget-object v3, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    .line 518
    .line 519
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 520
    .line 521
    .line 522
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 523
    :goto_13
    :try_start_f
    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .line 524
    .line 525
    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/ChangeList;->isEmpty()Z

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    if-eqz v2, :cond_15

    .line 530
    .line 531
    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->pendingPausedComposition:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 532
    .line 533
    if-nez v2, :cond_15

    .line 534
    .line 535
    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 536
    .line 537
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 538
    .line 539
    .line 540
    goto :goto_14

    .line 541
    :catchall_9
    move-exception v0

    .line 542
    goto :goto_15

    .line 543
    :cond_15
    :goto_14
    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 544
    .line 545
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 546
    .line 547
    .line 548
    throw v0

    .line 549
    :goto_15
    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 550
    .line 551
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 552
    .line 553
    .line 554
    throw v0
.end method

.method private final cleanUpDerivedStateObservations()V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/collection/ScatterMap;->metadata:[J

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    add-int/lit8 v3, v3, -0x2

    .line 9
    .line 10
    const/4 v8, 0x7

    .line 11
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const/16 v12, 0x8

    .line 17
    .line 18
    if-ltz v3, :cond_c

    .line 19
    .line 20
    const/4 v14, 0x0

    .line 21
    :goto_0
    aget-wide v4, v2, v14

    .line 22
    .line 23
    not-long v6, v4

    .line 24
    shl-long/2addr v6, v8

    .line 25
    and-long/2addr v6, v4

    .line 26
    and-long/2addr v6, v9

    .line 27
    cmp-long v6, v6, v9

    .line 28
    .line 29
    if-eqz v6, :cond_b

    .line 30
    .line 31
    sub-int v6, v14, v3

    .line 32
    .line 33
    not-int v6, v6

    .line 34
    ushr-int/lit8 v6, v6, 0x1f

    .line 35
    .line 36
    rsub-int/lit8 v6, v6, 0x8

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    :goto_1
    if-ge v7, v6, :cond_a

    .line 40
    .line 41
    const-wide/16 v17, 0xff

    .line 42
    .line 43
    and-long v19, v4, v17

    .line 44
    .line 45
    const-wide/16 v15, 0x80

    .line 46
    .line 47
    cmp-long v19, v19, v15

    .line 48
    .line 49
    if-gez v19, :cond_9

    .line 50
    .line 51
    shl-int/lit8 v19, v14, 0x3

    .line 52
    .line 53
    add-int v11, v19, v7

    .line 54
    .line 55
    iget-object v13, v1, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 56
    .line 57
    aget-object v13, v13, v11

    .line 58
    .line 59
    iget-object v13, v1, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 60
    .line 61
    aget-object v13, v13, v11

    .line 62
    .line 63
    instance-of v15, v13, Landroidx/collection/MutableScatterSet;

    .line 64
    .line 65
    if-eqz v15, :cond_6

    .line 66
    .line 67
    const-string v15, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>"

    .line 68
    .line 69
    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    check-cast v13, Landroidx/collection/MutableScatterSet;

    .line 73
    .line 74
    iget-object v15, v13, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 75
    .line 76
    iget-object v12, v13, Landroidx/collection/ScatterSet;->metadata:[J

    .line 77
    .line 78
    array-length v9, v12

    .line 79
    add-int/lit8 v9, v9, -0x2

    .line 80
    .line 81
    move-object/from16 v25, v2

    .line 82
    .line 83
    move/from16 v26, v3

    .line 84
    .line 85
    if-ltz v9, :cond_4

    .line 86
    .line 87
    const/4 v10, 0x0

    .line 88
    :goto_2
    aget-wide v2, v12, v10

    .line 89
    .line 90
    move/from16 v27, v14

    .line 91
    .line 92
    move-object/from16 v16, v15

    .line 93
    .line 94
    not-long v14, v2

    .line 95
    shl-long/2addr v14, v8

    .line 96
    and-long/2addr v14, v2

    .line 97
    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    and-long v14, v14, v23

    .line 103
    .line 104
    cmp-long v14, v14, v23

    .line 105
    .line 106
    if-eqz v14, :cond_3

    .line 107
    .line 108
    sub-int v14, v10, v9

    .line 109
    .line 110
    not-int v14, v14

    .line 111
    ushr-int/lit8 v14, v14, 0x1f

    .line 112
    .line 113
    const/16 v15, 0x8

    .line 114
    .line 115
    rsub-int/lit8 v14, v14, 0x8

    .line 116
    .line 117
    const/4 v15, 0x0

    .line 118
    :goto_3
    if-ge v15, v14, :cond_2

    .line 119
    .line 120
    const-wide/16 v17, 0xff

    .line 121
    .line 122
    and-long v28, v2, v17

    .line 123
    .line 124
    const-wide/16 v21, 0x80

    .line 125
    .line 126
    cmp-long v28, v28, v21

    .line 127
    .line 128
    move/from16 v22, v15

    .line 129
    .line 130
    move-object/from16 v21, v16

    .line 131
    .line 132
    if-gez v28, :cond_1

    .line 133
    .line 134
    shl-int/lit8 v28, v10, 0x3

    .line 135
    .line 136
    add-int v15, v28, v22

    .line 137
    .line 138
    aget-object v16, v21, v15

    .line 139
    .line 140
    move-object/from16 v8, v16

    .line 141
    .line 142
    check-cast v8, Landroidx/compose/runtime/DerivedState;

    .line 143
    .line 144
    move-object/from16 v16, v12

    .line 145
    .line 146
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->access$getObservations$p(Landroidx/compose/runtime/CompositionImpl;)Landroidx/collection/MutableScatterMap;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    invoke-static {v12, v8}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    if-nez v8, :cond_0

    .line 155
    .line 156
    invoke-virtual {v13, v15}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    .line 157
    .line 158
    .line 159
    :cond_0
    :goto_4
    const/16 v8, 0x8

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_1
    move-object/from16 v16, v12

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :goto_5
    shr-long/2addr v2, v8

    .line 166
    add-int/lit8 v15, v22, 0x1

    .line 167
    .line 168
    move-object/from16 v12, v16

    .line 169
    .line 170
    move-object/from16 v16, v21

    .line 171
    .line 172
    const/4 v8, 0x7

    .line 173
    goto :goto_3

    .line 174
    :cond_2
    move-object/from16 v21, v16

    .line 175
    .line 176
    const/16 v8, 0x8

    .line 177
    .line 178
    move-object/from16 v16, v12

    .line 179
    .line 180
    if-ne v14, v8, :cond_5

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_3
    move-object/from16 v21, v16

    .line 184
    .line 185
    move-object/from16 v16, v12

    .line 186
    .line 187
    :goto_6
    if-eq v10, v9, :cond_5

    .line 188
    .line 189
    add-int/lit8 v10, v10, 0x1

    .line 190
    .line 191
    move-object/from16 v12, v16

    .line 192
    .line 193
    move-object/from16 v15, v21

    .line 194
    .line 195
    move/from16 v14, v27

    .line 196
    .line 197
    const/4 v8, 0x7

    .line 198
    goto :goto_2

    .line 199
    :cond_4
    move/from16 v27, v14

    .line 200
    .line 201
    :cond_5
    invoke-virtual {v13}, Landroidx/collection/ScatterSet;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    goto :goto_7

    .line 206
    :cond_6
    move-object/from16 v25, v2

    .line 207
    .line 208
    move/from16 v26, v3

    .line 209
    .line 210
    move/from16 v27, v14

    .line 211
    .line 212
    const-string v2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap"

    .line 213
    .line 214
    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    check-cast v13, Landroidx/compose/runtime/DerivedState;

    .line 218
    .line 219
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->access$getObservations$p(Landroidx/compose/runtime/CompositionImpl;)Landroidx/collection/MutableScatterMap;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-static {v2, v13}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-nez v2, :cond_7

    .line 228
    .line 229
    const/4 v2, 0x1

    .line 230
    goto :goto_7

    .line 231
    :cond_7
    const/4 v2, 0x0

    .line 232
    :goto_7
    if-eqz v2, :cond_8

    .line 233
    .line 234
    invoke-virtual {v1, v11}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    :cond_8
    const/16 v2, 0x8

    .line 238
    .line 239
    goto :goto_8

    .line 240
    :cond_9
    move-object/from16 v25, v2

    .line 241
    .line 242
    move/from16 v26, v3

    .line 243
    .line 244
    move/from16 v27, v14

    .line 245
    .line 246
    move v2, v12

    .line 247
    :goto_8
    shr-long/2addr v4, v2

    .line 248
    add-int/lit8 v7, v7, 0x1

    .line 249
    .line 250
    move v12, v2

    .line 251
    move-object/from16 v2, v25

    .line 252
    .line 253
    move/from16 v3, v26

    .line 254
    .line 255
    move/from16 v14, v27

    .line 256
    .line 257
    const/4 v8, 0x7

    .line 258
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    goto/16 :goto_1

    .line 264
    .line 265
    :cond_a
    move-object/from16 v25, v2

    .line 266
    .line 267
    move/from16 v26, v3

    .line 268
    .line 269
    move v2, v12

    .line 270
    move/from16 v27, v14

    .line 271
    .line 272
    if-ne v6, v2, :cond_c

    .line 273
    .line 274
    move/from16 v3, v26

    .line 275
    .line 276
    move/from16 v13, v27

    .line 277
    .line 278
    goto :goto_9

    .line 279
    :cond_b
    move-object/from16 v25, v2

    .line 280
    .line 281
    move v13, v14

    .line 282
    :goto_9
    if-eq v13, v3, :cond_c

    .line 283
    .line 284
    add-int/lit8 v14, v13, 0x1

    .line 285
    .line 286
    move-object/from16 v2, v25

    .line 287
    .line 288
    const/4 v8, 0x7

    .line 289
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    const/16 v12, 0x8

    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_c
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    .line 299
    .line 300
    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_11

    .line 305
    .line 306
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    .line 307
    .line 308
    iget-object v2, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 309
    .line 310
    iget-object v3, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 311
    .line 312
    array-length v4, v3

    .line 313
    add-int/lit8 v4, v4, -0x2

    .line 314
    .line 315
    if-ltz v4, :cond_11

    .line 316
    .line 317
    const/4 v5, 0x0

    .line 318
    :goto_a
    aget-wide v6, v3, v5

    .line 319
    .line 320
    not-long v8, v6

    .line 321
    const/4 v10, 0x7

    .line 322
    shl-long/2addr v8, v10

    .line 323
    and-long/2addr v8, v6

    .line 324
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    and-long/2addr v8, v11

    .line 330
    cmp-long v8, v8, v11

    .line 331
    .line 332
    if-eqz v8, :cond_10

    .line 333
    .line 334
    sub-int v8, v5, v4

    .line 335
    .line 336
    not-int v8, v8

    .line 337
    ushr-int/lit8 v8, v8, 0x1f

    .line 338
    .line 339
    const/16 v9, 0x8

    .line 340
    .line 341
    rsub-int/lit8 v8, v8, 0x8

    .line 342
    .line 343
    const/4 v9, 0x0

    .line 344
    :goto_b
    if-ge v9, v8, :cond_f

    .line 345
    .line 346
    const-wide/16 v13, 0xff

    .line 347
    .line 348
    and-long v15, v6, v13

    .line 349
    .line 350
    const-wide/16 v17, 0x80

    .line 351
    .line 352
    cmp-long v15, v15, v17

    .line 353
    .line 354
    if-gez v15, :cond_d

    .line 355
    .line 356
    const/4 v15, 0x1

    .line 357
    goto :goto_c

    .line 358
    :cond_d
    const/4 v15, 0x0

    .line 359
    :goto_c
    if-eqz v15, :cond_e

    .line 360
    .line 361
    shl-int/lit8 v15, v5, 0x3

    .line 362
    .line 363
    add-int/2addr v15, v9

    .line 364
    aget-object v16, v2, v15

    .line 365
    .line 366
    check-cast v16, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 367
    .line 368
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/RecomposeScopeImpl;->isConditional()Z

    .line 369
    .line 370
    .line 371
    move-result v16

    .line 372
    if-nez v16, :cond_e

    .line 373
    .line 374
    invoke-virtual {v1, v15}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    .line 375
    .line 376
    .line 377
    :cond_e
    const/16 v15, 0x8

    .line 378
    .line 379
    shr-long/2addr v6, v15

    .line 380
    add-int/lit8 v9, v9, 0x1

    .line 381
    .line 382
    goto :goto_b

    .line 383
    :cond_f
    const-wide/16 v13, 0xff

    .line 384
    .line 385
    const/16 v15, 0x8

    .line 386
    .line 387
    const-wide/16 v17, 0x80

    .line 388
    .line 389
    if-ne v8, v15, :cond_11

    .line 390
    .line 391
    goto :goto_d

    .line 392
    :cond_10
    const-wide/16 v13, 0xff

    .line 393
    .line 394
    const/16 v15, 0x8

    .line 395
    .line 396
    const-wide/16 v17, 0x80

    .line 397
    .line 398
    :goto_d
    if-eq v5, v4, :cond_11

    .line 399
    .line 400
    add-int/lit8 v5, v5, 0x1

    .line 401
    .line 402
    goto :goto_a

    .line 403
    :cond_11
    return-void
.end method

.method private final clearDeactivated()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroidx/compose/runtime/CompositionImpl;->state:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v1, v3, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v2

    .line 12
    :goto_0
    if-eqz v3, :cond_1

    .line 13
    .line 14
    iput v2, p0, Landroidx/compose/runtime/CompositionImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_1
    monitor-exit v0

    .line 20
    return v3

    .line 21
    :goto_2
    monitor-exit v0

    .line 22
    throw v1
.end method

.method private final composeInitial(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Landroidx/compose/runtime/CompositionContext;->composeInitial$runtime(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final composeInitialPaused(ZLkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/PausedComposition;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/PausedComposition;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingPausedComposition:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, "A pausable composition is in progress"

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    .line 16
    .line 17
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 18
    .line 19
    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 20
    .line 21
    iget-object v8, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 22
    .line 23
    iget-object v9, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v0, Landroidx/compose/runtime/PausedCompositionImpl;

    .line 26
    .line 27
    move-object v1, v0

    .line 28
    move-object v2, p0

    .line 29
    move-object v6, p2

    .line 30
    move v7, p1

    .line 31
    invoke-direct/range {v1 .. v9}, Landroidx/compose/runtime/PausedCompositionImpl;-><init>(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/ComposerImpl;Ljava/util/Set;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/runtime/Applier;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingPausedComposition:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 35
    .line 36
    return-object v0
.end method

.method private final composeInitialWithReuse(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReuseFromRoot()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->composeInitial(Lkotlin/jvm/functions/Function2;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endReuseFromRoot()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final drainPendingModificationsForCompositionLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->access$getPendingApplyNoModifications$p()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->access$getPendingApplyNoModifications$p()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    instance-of v1, v0, Ljava/util/Set;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    check-cast v0, Ljava/util/Set;

    .line 29
    .line 30
    invoke-direct {p0, v0, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    instance-of v1, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    check-cast v0, [Ljava/util/Set;

    .line 39
    .line 40
    array-length v1, v0

    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_0
    if-ge v3, v1, :cond_3

    .line 43
    .line 44
    aget-object v4, v0, v3

    .line 45
    .line 46
    invoke-direct {p0, v4, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "corrupt pendingModifications drain: "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    .line 72
    .line 73
    .line 74
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 75
    .line 76
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_2
    const-string v0, "pending composition has not been applied"

    .line 81
    .line 82
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    .line 83
    .line 84
    .line 85
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 86
    .line 87
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_3
    :goto_1
    return-void
.end method

.method private final drainPendingModificationsLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->access$getPendingApplyNoModifications$p()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    instance-of v1, v0, Ljava/util/Set;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast v0, Ljava/util/Set;

    .line 24
    .line 25
    invoke-direct {p0, v0, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    instance-of v1, v0, [Ljava/lang/Object;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    check-cast v0, [Ljava/util/Set;

    .line 34
    .line 35
    array-length v1, v0

    .line 36
    move v3, v2

    .line 37
    :goto_0
    if-ge v3, v1, :cond_3

    .line 38
    .line 39
    aget-object v4, v0, v3

    .line 40
    .line 41
    invoke-direct {p0, v4, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    if-nez v0, :cond_2

    .line 48
    .line 49
    const-string v0, "calling recordModificationsOf and applyChanges concurrently is not supported"

    .line 50
    .line 51
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    .line 52
    .line 53
    .line 54
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 55
    .line 56
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v1, "corrupt pendingModifications drain: "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    .line 80
    .line 81
    .line 82
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 83
    .line 84
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_3
    :goto_1
    return-void
.end method

.method private final drainPendingModificationsOutOfBandLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/y0;->f()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->access$getPendingApplyNoModifications$p()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    instance-of v1, v0, Ljava/util/Set;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Ljava/util/Set;

    .line 30
    .line 31
    invoke-direct {p0, v0, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    instance-of v1, v0, [Ljava/lang/Object;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    check-cast v0, [Ljava/util/Set;

    .line 40
    .line 41
    array-length v1, v0

    .line 42
    move v3, v2

    .line 43
    :goto_0
    if-ge v3, v1, :cond_3

    .line 44
    .line 45
    aget-object v4, v0, v3

    .line 46
    .line 47
    invoke-direct {p0, v4, v2}, Landroidx/compose/runtime/CompositionImpl;->addPendingInvalidationsLocked(Ljava/util/Set;Z)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v1, "corrupt pendingModifications drain: "

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    .line 73
    .line 74
    .line 75
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 76
    .line 77
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_3
    :goto_1
    return-void
.end method

.method private final ensureRunning()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/runtime/CompositionImpl;->state:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move v3, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v1

    .line 10
    :goto_0
    if-nez v3, :cond_4

    .line 11
    .line 12
    if-eq v0, v2, :cond_3

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v0, v3, :cond_2

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-eq v0, v3, :cond_1

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const-string v0, "The composition is disposed"

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const-string v0, "A previous pausable composition for this composition was cancelled. This composition must be disposed."

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    const-string v0, "The composition should be activated before setting content."

    .line 30
    .line 31
    :goto_1
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_4
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingPausedComposition:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 35
    .line 36
    if-nez v0, :cond_5

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_5
    if-nez v1, :cond_6

    .line 40
    .line 41
    const-string v0, "A pausable composition is in progress"

    .line 42
    .line 43
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_6
    return-void
.end method

.method private static synthetic getAbandonSet$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final getAreChildrenComposing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getAreChildrenComposing$runtime()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static synthetic getPendingInvalidScopes$runtime$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getSlotTable$runtime$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final guardChanges(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :catchall_1
    move-exception p1

    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 20
    .line 21
    check-cast v1, Ljava/util/Collection;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 36
    .line 37
    .line 38
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 43
    .line 44
    .line 45
    :try_start_3
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_2
    move-exception p1

    .line 56
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_0
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 67
    .line 68
    .line 69
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method private final guardInvalidationsLocked(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/collection/ScopeMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Ljava/lang/Object;",
            ">;+TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->takeInvalidations-afanTW4()Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {v0}, Landroidx/compose/runtime/collection/ScopeMap;->box-impl(Landroidx/collection/MutableScatterMap;)Landroidx/compose/runtime/collection/ScopeMap;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 16
    .line 17
    throw p1
.end method

.method private final invalidateChecked(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v1, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v4

    .line 12
    :try_start_0
    iget-object v5, v1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    if-eqz v5, :cond_1

    .line 16
    .line 17
    iget-object v7, v1, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 18
    .line 19
    iget v8, v1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    .line 20
    .line 21
    invoke-virtual {v7, v8, v2}, Landroidx/compose/runtime/SlotTable;->groupContainsAnchor(ILandroidx/compose/runtime/Anchor;)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v5, v6

    .line 29
    :goto_0
    move-object v6, v5

    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto/16 :goto_7

    .line 33
    .line 34
    :cond_1
    :goto_1
    if-nez v6, :cond_b

    .line 35
    .line 36
    invoke-direct {v1, v0, v3}, Landroidx/compose/runtime/CompositionImpl;->tryImminentInvalidation(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    monitor-exit v4

    .line 45
    return-object v0

    .line 46
    :cond_2
    if-nez v3, :cond_3

    .line 47
    .line 48
    :try_start_1
    iget-object v5, v1, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 49
    .line 50
    sget-object v7, Landroidx/compose/runtime/ScopeInvalidated;->INSTANCE:Landroidx/compose/runtime/ScopeInvalidated;

    .line 51
    .line 52
    invoke-static {v5, v0, v7}, Landroidx/compose/runtime/collection/ScopeMap;->set-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_3
    instance-of v5, v3, Landroidx/compose/runtime/DerivedState;

    .line 58
    .line 59
    if-nez v5, :cond_4

    .line 60
    .line 61
    iget-object v5, v1, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 62
    .line 63
    sget-object v7, Landroidx/compose/runtime/ScopeInvalidated;->INSTANCE:Landroidx/compose/runtime/ScopeInvalidated;

    .line 64
    .line 65
    invoke-static {v5, v0, v7}, Landroidx/compose/runtime/collection/ScopeMap;->set-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_5

    .line 69
    .line 70
    :cond_4
    iget-object v5, v1, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 71
    .line 72
    invoke-virtual {v5, v0}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    if-eqz v5, :cond_a

    .line 77
    .line 78
    instance-of v7, v5, Landroidx/collection/MutableScatterSet;

    .line 79
    .line 80
    if-eqz v7, :cond_9

    .line 81
    .line 82
    check-cast v5, Landroidx/collection/MutableScatterSet;

    .line 83
    .line 84
    iget-object v7, v5, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 85
    .line 86
    iget-object v5, v5, Landroidx/collection/ScatterSet;->metadata:[J

    .line 87
    .line 88
    array-length v8, v5

    .line 89
    add-int/lit8 v8, v8, -0x2

    .line 90
    .line 91
    if-ltz v8, :cond_a

    .line 92
    .line 93
    const/4 v10, 0x0

    .line 94
    :goto_2
    aget-wide v11, v5, v10

    .line 95
    .line 96
    not-long v13, v11

    .line 97
    const/4 v15, 0x7

    .line 98
    shl-long/2addr v13, v15

    .line 99
    and-long/2addr v13, v11

    .line 100
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    and-long/2addr v13, v15

    .line 106
    cmp-long v13, v13, v15

    .line 107
    .line 108
    if-eqz v13, :cond_8

    .line 109
    .line 110
    sub-int v13, v10, v8

    .line 111
    .line 112
    not-int v13, v13

    .line 113
    ushr-int/lit8 v13, v13, 0x1f

    .line 114
    .line 115
    const/16 v14, 0x8

    .line 116
    .line 117
    rsub-int/lit8 v13, v13, 0x8

    .line 118
    .line 119
    const/4 v15, 0x0

    .line 120
    :goto_3
    if-ge v15, v13, :cond_7

    .line 121
    .line 122
    const-wide/16 v16, 0xff

    .line 123
    .line 124
    and-long v16, v11, v16

    .line 125
    .line 126
    const-wide/16 v18, 0x80

    .line 127
    .line 128
    cmp-long v16, v16, v18

    .line 129
    .line 130
    if-gez v16, :cond_6

    .line 131
    .line 132
    shl-int/lit8 v16, v10, 0x3

    .line 133
    .line 134
    add-int v16, v16, v15

    .line 135
    .line 136
    aget-object v9, v7, v16

    .line 137
    .line 138
    sget-object v14, Landroidx/compose/runtime/ScopeInvalidated;->INSTANCE:Landroidx/compose/runtime/ScopeInvalidated;

    .line 139
    .line 140
    if-ne v9, v14, :cond_5

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_5
    const/16 v9, 0x8

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_6
    move v9, v14

    .line 147
    :goto_4
    shr-long/2addr v11, v9

    .line 148
    add-int/lit8 v15, v15, 0x1

    .line 149
    .line 150
    move v14, v9

    .line 151
    goto :goto_3

    .line 152
    :cond_7
    move v9, v14

    .line 153
    if-ne v13, v9, :cond_a

    .line 154
    .line 155
    :cond_8
    if-eq v10, v8, :cond_a

    .line 156
    .line 157
    add-int/lit8 v10, v10, 0x1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_9
    sget-object v7, Landroidx/compose/runtime/ScopeInvalidated;->INSTANCE:Landroidx/compose/runtime/ScopeInvalidated;

    .line 161
    .line 162
    if-ne v5, v7, :cond_a

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_a
    iget-object v5, v1, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 166
    .line 167
    invoke-static {v5, v0, v3}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .line 169
    .line 170
    :cond_b
    :goto_5
    monitor-exit v4

    .line 171
    if-eqz v6, :cond_c

    .line 172
    .line 173
    invoke-direct {v6, v0, v2, v3}, Landroidx/compose/runtime/CompositionImpl;->invalidateChecked(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    return-object v0

    .line 178
    :cond_c
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/CompositionContext;->invalidate$runtime(Landroidx/compose/runtime/ControlledComposition;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->isComposing()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_d

    .line 188
    .line 189
    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->DEFERRED:Landroidx/compose/runtime/InvalidationResult;

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_d
    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->SCHEDULED:Landroidx/compose/runtime/InvalidationResult;

    .line 193
    .line 194
    :goto_6
    return-object v0

    .line 195
    :goto_7
    monitor-exit v4

    .line 196
    throw v0
.end method

.method private final invalidateScopeOfLocked(Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    instance-of v1, v0, Landroidx/collection/MutableScatterSet;

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 18
    .line 19
    array-length v2, v0

    .line 20
    add-int/lit8 v2, v2, -0x2

    .line 21
    .line 22
    if-ltz v2, :cond_4

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    move v4, v3

    .line 26
    :goto_0
    aget-wide v5, v0, v4

    .line 27
    .line 28
    not-long v7, v5

    .line 29
    const/4 v9, 0x7

    .line 30
    shl-long/2addr v7, v9

    .line 31
    and-long/2addr v7, v5

    .line 32
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    and-long/2addr v7, v9

    .line 38
    cmp-long v7, v7, v9

    .line 39
    .line 40
    if-eqz v7, :cond_2

    .line 41
    .line 42
    sub-int v7, v4, v2

    .line 43
    .line 44
    not-int v7, v7

    .line 45
    ushr-int/lit8 v7, v7, 0x1f

    .line 46
    .line 47
    const/16 v8, 0x8

    .line 48
    .line 49
    rsub-int/lit8 v7, v7, 0x8

    .line 50
    .line 51
    move v9, v3

    .line 52
    :goto_1
    if-ge v9, v7, :cond_1

    .line 53
    .line 54
    const-wide/16 v10, 0xff

    .line 55
    .line 56
    and-long/2addr v10, v5

    .line 57
    const-wide/16 v12, 0x80

    .line 58
    .line 59
    cmp-long v10, v10, v12

    .line 60
    .line 61
    if-gez v10, :cond_0

    .line 62
    .line 63
    shl-int/lit8 v10, v4, 0x3

    .line 64
    .line 65
    add-int/2addr v10, v9

    .line 66
    aget-object v10, v1, v10

    .line 67
    .line 68
    check-cast v10, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 69
    .line 70
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    sget-object v12, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    .line 75
    .line 76
    if-ne v11, v12, :cond_0

    .line 77
    .line 78
    iget-object v11, p0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/collection/MutableScatterMap;

    .line 79
    .line 80
    invoke-static {v11, p1, v10}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    shr-long/2addr v5, v8

    .line 84
    add-int/lit8 v9, v9, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    if-ne v7, v8, :cond_4

    .line 88
    .line 89
    :cond_2
    if-eq v4, v2, :cond_4

    .line 90
    .line 91
    add-int/lit8 v4, v4, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    sget-object v2, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    .line 101
    .line 102
    if-ne v1, v2, :cond_4

    .line 103
    .line 104
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->observationsProcessed:Landroidx/collection/MutableScatterMap;

    .line 105
    .line 106
    invoke-static {v1, p1, v0}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    return-void
.end method

.method private final observer()Landroidx/compose/runtime/tooling/CompositionObserver;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionObserverHolder;->current()Landroidx/compose/runtime/tooling/CompositionObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private final takeInvalidations-afanTW4()Landroidx/collection/MutableScatterMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v1, v2, v1}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default(Landroidx/collection/MutableScatterMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/collection/MutableScatterMap;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 10
    .line 11
    return-object v0
.end method

.method private final trackAbandonedValues(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 18
    .line 19
    check-cast v1, Ljava/util/Collection;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_1
    move-exception p1

    .line 54
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_0
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method private final tryImminentInvalidation(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->isComposing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->tryImminentInvalidation$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method private final validateRecomposeScopeAnchors(Landroidx/compose/runtime/SlotTable;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    array-length v2, v0

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v4, v2, :cond_2

    .line 14
    .line 15
    aget-object v5, v0, v4

    .line 16
    .line 17
    instance-of v6, v5, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 18
    .line 19
    if-eqz v6, :cond_0

    .line 20
    .line 21
    check-cast v5, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v5, 0x0

    .line 25
    :goto_1
    if-eqz v5, :cond_1

    .line 26
    .line 27
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    :goto_2
    if-ge v3, v0, :cond_4

    .line 38
    .line 39
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotTable;)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/SlotTable;->slotsOf$runtime(I)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v5, v2}, Lkotlin/collections/n;->y0([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v7, "Misaligned anchor "

    .line 79
    .line 80
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v4, " in scope "

    .line 87
    .line 88
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, " encountered, scope found at "

    .line 95
    .line 96
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    return-void
.end method


# virtual methods
.method public abandonChanges()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ChangeList;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 18
    .line 19
    check-cast v0, Ljava/util/Collection;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :cond_0
    :goto_0
    return-void
.end method

.method public applyChanges()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    .line 5
    .line 6
    invoke-direct {p0, v1}, Landroidx/compose/runtime/CompositionImpl;->applyChangesInLocked(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsLocked()V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 18
    .line 19
    check-cast v2, Ljava/util/Collection;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 28
    .line 29
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 30
    .line 31
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 34
    .line 35
    .line 36
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    :try_start_2
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 41
    .line 42
    .line 43
    :try_start_3
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_1
    move-exception v1

    .line 48
    goto :goto_1

    .line 49
    :catchall_2
    move-exception v1

    .line 50
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 51
    .line 52
    .line 53
    throw v1

    .line 54
    :cond_0
    :goto_0
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 56
    .line 57
    .line 58
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 59
    :catchall_3
    move-exception v1

    .line 60
    monitor-exit v0

    .line 61
    throw v1
.end method

.method public applyLateChanges()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ChangeList;->isNotEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .line 13
    .line 14
    invoke-direct {p0, v1}, Landroidx/compose/runtime/CompositionImpl;->applyChangesInLocked(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 25
    .line 26
    check-cast v2, Ljava/util/Collection;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 35
    .line 36
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 37
    .line 38
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 41
    .line 42
    .line 43
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    :try_start_2
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 48
    .line 49
    .line 50
    :try_start_3
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_1
    move-exception v1

    .line 55
    goto :goto_3

    .line 56
    :catchall_2
    move-exception v1

    .line 57
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 58
    .line 59
    .line 60
    throw v1

    .line 61
    :cond_1
    :goto_2
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 63
    .line 64
    .line 65
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 66
    :catchall_3
    move-exception v1

    .line 67
    monitor-exit v0

    .line 68
    throw v1
.end method

.method public changesApplied()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->changesApplied$runtime()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 10
    .line 11
    check-cast v1, Ljava/util/Collection;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 26
    .line 27
    .line 28
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    :try_start_2
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_1

    .line 41
    :catchall_1
    move-exception v2

    .line 42
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 43
    .line 44
    .line 45
    throw v2

    .line 46
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    :try_start_3
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 51
    .line 52
    check-cast v2, Ljava/util/Collection;

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 61
    .line 62
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 63
    .line 64
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 65
    .line 66
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 67
    .line 68
    .line 69
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 70
    :try_start_4
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 74
    .line 75
    .line 76
    :try_start_5
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catchall_2
    move-exception v1

    .line 81
    goto :goto_3

    .line 82
    :catchall_3
    move-exception v1

    .line 83
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :cond_1
    :goto_2
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 88
    :goto_3
    :try_start_6
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 89
    .line 90
    .line 91
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 92
    :catchall_4
    move-exception v1

    .line 93
    monitor-exit v0

    .line 94
    throw v1
.end method

.method public composeContent(Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsForCompositionLocked()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->takeInvalidations-afanTW4()Landroidx/collection/MutableScatterMap;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 11
    :try_start_2
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->shouldPause:Landroidx/compose/runtime/ShouldPauseCallback;

    .line 14
    .line 15
    invoke-virtual {v2, v1, p1, v3}, Landroidx/compose/runtime/ComposerImpl;->composeContent--ZbOJvo$runtime(Landroidx/collection/MutableScatterMap;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ShouldPauseCallback;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19
    .line 20
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :catchall_1
    move-exception p1

    .line 25
    :try_start_4
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 26
    .line 27
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 28
    :catchall_2
    move-exception p1

    .line 29
    :try_start_5
    monitor-exit v0

    .line 30
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 31
    :goto_0
    :try_start_6
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 32
    .line 33
    check-cast v0, Ljava/util/Collection;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 48
    .line 49
    .line 50
    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 51
    :try_start_7
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 55
    .line 56
    .line 57
    :try_start_8
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_3
    move-exception p1

    .line 62
    goto :goto_2

    .line 63
    :catchall_4
    move-exception p1

    .line 64
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_0
    :goto_1
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 69
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 70
    .line 71
    .line 72
    throw p1
.end method

.method public final composerStacksSizes$runtime()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->stacksSize$runtime()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public deactivate()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingPausedComposition:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    move v1, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v2

    .line 13
    :goto_0
    if-nez v1, :cond_1

    .line 14
    .line 15
    const-string v1, "Deactivate is not supported while pausable composition is in progress"

    .line 16
    .line 17
    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto/16 :goto_6

    .line 23
    .line 24
    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-lez v1, :cond_2

    .line 31
    .line 32
    move v1, v3

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move v1, v2

    .line 35
    :goto_2
    if-nez v1, :cond_3

    .line 36
    .line 37
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 38
    .line 39
    check-cast v4, Ljava/util/Collection;

    .line 40
    .line 41
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_5

    .line 46
    .line 47
    :cond_3
    const-string v4, "Compose:deactivate"

    .line 48
    .line 49
    sget-object v5, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    .line 50
    .line 51
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 56
    .line 57
    iget-object v7, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 58
    .line 59
    iget-object v8, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 60
    .line 61
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 62
    .line 63
    .line 64
    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 65
    :try_start_2
    invoke-virtual {v6, v7, v8}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V

    .line 66
    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 71
    .line 72
    invoke-interface {v1}, Landroidx/compose/runtime/Applier;->onBeginChanges()V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    .line 78
    .line 79
    .line 80
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    :try_start_3
    iget-object v7, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 82
    .line 83
    invoke-static {v1, v7}, Landroidx/compose/runtime/ComposerKt;->deactivateCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    .line 84
    .line 85
    .line 86
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 87
    .line 88
    :try_start_4
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 92
    .line 93
    invoke-interface {v1}, Landroidx/compose/runtime/Applier;->onEndChanges()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchRememberObservers()V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :catchall_1
    move-exception v1

    .line 101
    goto :goto_4

    .line 102
    :catchall_2
    move-exception v3

    .line 103
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 104
    .line 105
    .line 106
    throw v3

    .line 107
    :cond_4
    :goto_3
    invoke-virtual {v6}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    .line 109
    .line 110
    :try_start_5
    invoke-virtual {v6}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 111
    .line 112
    .line 113
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 114
    .line 115
    :try_start_6
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 119
    .line 120
    invoke-static {v1}, Landroidx/compose/runtime/collection/ScopeMap;->clear-impl(Landroidx/collection/MutableScatterMap;)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 124
    .line 125
    invoke-static {v1}, Landroidx/compose/runtime/collection/ScopeMap;->clear-impl(Landroidx/collection/MutableScatterMap;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 129
    .line 130
    invoke-static {v1}, Landroidx/compose/runtime/collection/ScopeMap;->clear-impl(Landroidx/collection/MutableScatterMap;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    .line 134
    .line 135
    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ChangeList;->clear()V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    .line 139
    .line 140
    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ChangeList;->clear()V

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 144
    .line 145
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->deactivate$runtime()V

    .line 146
    .line 147
    .line 148
    iput v3, p0, Landroidx/compose/runtime/CompositionImpl;->state:I

    .line 149
    .line 150
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 151
    .line 152
    monitor-exit v0

    .line 153
    return-void

    .line 154
    :catchall_3
    move-exception v1

    .line 155
    goto :goto_5

    .line 156
    :goto_4
    :try_start_7
    invoke-virtual {v6}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 157
    .line 158
    .line 159
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 160
    :goto_5
    :try_start_8
    sget-object v2, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    .line 161
    .line 162
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 166
    :goto_6
    monitor-exit v0

    .line 167
    throw v1
.end method

.method public delegateInvalidations(Landroidx/compose/runtime/ControlledComposition;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroidx/compose/runtime/ControlledComposition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    if-ltz p2, :cond_0

    .line 10
    .line 11
    check-cast p1, Landroidx/compose/runtime/CompositionImpl;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 14
    .line 15
    iput p2, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    const/4 p2, 0x0

    .line 19
    :try_start_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iput-object p2, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 24
    .line 25
    iput p1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p3

    .line 29
    iput-object p2, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 30
    .line 31
    iput p1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    .line 32
    .line 33
    throw p3

    .line 34
    :cond_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    :goto_0
    return-object p3
.end method

.method public dispose()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->isComposing$runtime()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block."

    .line 13
    .line 14
    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    :goto_0
    iget v1, p0, Landroidx/compose/runtime/CompositionImpl;->state:I

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-eq v1, v2, :cond_6

    .line 25
    .line 26
    iput v2, p0, Landroidx/compose/runtime/CompositionImpl;->state:I

    .line 27
    .line 28
    sget-object v1, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->INSTANCE:Landroidx/compose/runtime/ComposableSingletons$CompositionKt;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->getLambda$1918065384$runtime()Lkotlin/jvm/functions/Function2;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Lkotlin/jvm/functions/Function2;

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getDeferredChanges$runtime()Landroidx/compose/runtime/changelist/ChangeList;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-direct {p0, v1}, Landroidx/compose/runtime/CompositionImpl;->applyChangesInLocked(Landroidx/compose/runtime/changelist/ChangeList;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x1

    .line 55
    if-lez v1, :cond_2

    .line 56
    .line 57
    move v1, v3

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v1, v2

    .line 60
    :goto_1
    if-nez v1, :cond_3

    .line 61
    .line 62
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 63
    .line 64
    check-cast v4, Ljava/util/Collection;

    .line 65
    .line 66
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_5

    .line 71
    .line 72
    :cond_3
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 73
    .line 74
    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 75
    .line 76
    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 77
    .line 78
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 79
    .line 80
    .line 81
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    invoke-virtual {v4, v5, v6}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V

    .line 83
    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 88
    .line 89
    invoke-interface {v1}, Landroidx/compose/runtime/Applier;->onBeginChanges()V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    .line 95
    .line 96
    .line 97
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    :try_start_2
    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 99
    .line 100
    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->removeCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    .line 101
    .line 102
    .line 103
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 104
    .line 105
    :try_start_3
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 109
    .line 110
    invoke-interface {v1}, Landroidx/compose/runtime/Applier;->clear()V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 114
    .line 115
    invoke-interface {v1}, Landroidx/compose/runtime/Applier;->onEndChanges()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchRememberObservers()V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :catchall_1
    move-exception v1

    .line 123
    goto :goto_3

    .line 124
    :catchall_2
    move-exception v3

    .line 125
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 126
    .line 127
    .line 128
    throw v3

    .line 129
    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    .line 131
    .line 132
    :try_start_4
    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 136
    .line 137
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->dispose$runtime()V

    .line 138
    .line 139
    .line 140
    goto :goto_4

    .line 141
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 142
    .line 143
    .line 144
    throw v1

    .line 145
    :cond_6
    :goto_4
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    .line 147
    monitor-exit v0

    .line 148
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    .line 149
    .line 150
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/CompositionContext;->unregisterComposition$runtime(Landroidx/compose/runtime/ControlledComposition;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :goto_5
    monitor-exit v0

    .line 155
    throw v1
.end method

.method public disposeUnusedMovableContent(Landroidx/compose/runtime/MovableContentState;)V
    .locals 3
    .param p1    # Landroidx/compose/runtime/MovableContentState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentState;->getSlotTable$runtime()Landroidx/compose/runtime/SlotTable;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 23
    .line 24
    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->removeCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    :try_start_2
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchRememberObservers()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception v1

    .line 43
    const/4 v2, 0x0

    .line 44
    :try_start_3
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 45
    .line 46
    .line 47
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public final extractInvalidationsOf$runtime(Landroidx/compose/runtime/Anchor;)Ljava/util/List;
    .locals 34
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Anchor;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 6
    .line 7
    invoke-static {v2}, Landroidx/compose/runtime/collection/ScopeMap;->getSize-impl(Landroidx/collection/MutableScatterMap;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-lez v2, :cond_c

    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v3, v0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 19
    .line 20
    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 21
    .line 22
    iget-object v5, v4, Landroidx/collection/ScatterMap;->metadata:[J

    .line 23
    .line 24
    array-length v6, v5

    .line 25
    add-int/lit8 v6, v6, -0x2

    .line 26
    .line 27
    if-ltz v6, :cond_d

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    :goto_0
    aget-wide v9, v5, v8

    .line 31
    .line 32
    not-long v11, v9

    .line 33
    const/4 v13, 0x7

    .line 34
    shl-long/2addr v11, v13

    .line 35
    and-long/2addr v11, v9

    .line 36
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    and-long/2addr v11, v14

    .line 42
    cmp-long v11, v11, v14

    .line 43
    .line 44
    if-eqz v11, :cond_b

    .line 45
    .line 46
    sub-int v11, v8, v6

    .line 47
    .line 48
    not-int v11, v11

    .line 49
    ushr-int/lit8 v11, v11, 0x1f

    .line 50
    .line 51
    const/16 v12, 0x8

    .line 52
    .line 53
    rsub-int/lit8 v11, v11, 0x8

    .line 54
    .line 55
    const/4 v7, 0x0

    .line 56
    :goto_1
    if-ge v7, v11, :cond_a

    .line 57
    .line 58
    const-wide/16 v16, 0xff

    .line 59
    .line 60
    and-long v18, v9, v16

    .line 61
    .line 62
    const-wide/16 v20, 0x80

    .line 63
    .line 64
    cmp-long v18, v18, v20

    .line 65
    .line 66
    if-gez v18, :cond_9

    .line 67
    .line 68
    shl-int/lit8 v18, v8, 0x3

    .line 69
    .line 70
    add-int v12, v18, v7

    .line 71
    .line 72
    iget-object v14, v4, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 73
    .line 74
    aget-object v14, v14, v12

    .line 75
    .line 76
    iget-object v15, v4, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 77
    .line 78
    aget-object v15, v15, v12

    .line 79
    .line 80
    const-string v13, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.ScopeMap"

    .line 81
    .line 82
    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    instance-of v13, v15, Landroidx/collection/MutableScatterSet;

    .line 86
    .line 87
    if-eqz v13, :cond_6

    .line 88
    .line 89
    const-string v13, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>"

    .line 90
    .line 91
    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    check-cast v15, Landroidx/collection/MutableScatterSet;

    .line 95
    .line 96
    iget-object v13, v15, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 97
    .line 98
    iget-object v0, v15, Landroidx/collection/ScatterSet;->metadata:[J

    .line 99
    .line 100
    move-object/from16 v24, v5

    .line 101
    .line 102
    array-length v5, v0

    .line 103
    add-int/lit8 v5, v5, -0x2

    .line 104
    .line 105
    if-ltz v5, :cond_4

    .line 106
    .line 107
    move/from16 v25, v6

    .line 108
    .line 109
    move/from16 v27, v7

    .line 110
    .line 111
    move/from16 v26, v8

    .line 112
    .line 113
    const/4 v6, 0x0

    .line 114
    :goto_2
    aget-wide v7, v0, v6

    .line 115
    .line 116
    move-wide/from16 v28, v9

    .line 117
    .line 118
    not-long v9, v7

    .line 119
    const/16 v18, 0x7

    .line 120
    .line 121
    shl-long v9, v9, v18

    .line 122
    .line 123
    and-long/2addr v9, v7

    .line 124
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    and-long v9, v9, v22

    .line 130
    .line 131
    cmp-long v9, v9, v22

    .line 132
    .line 133
    if-eqz v9, :cond_3

    .line 134
    .line 135
    sub-int v9, v6, v5

    .line 136
    .line 137
    not-int v9, v9

    .line 138
    ushr-int/lit8 v9, v9, 0x1f

    .line 139
    .line 140
    const/16 v10, 0x8

    .line 141
    .line 142
    rsub-int/lit8 v9, v9, 0x8

    .line 143
    .line 144
    const/4 v10, 0x0

    .line 145
    :goto_3
    if-ge v10, v9, :cond_2

    .line 146
    .line 147
    and-long v30, v7, v16

    .line 148
    .line 149
    cmp-long v30, v30, v20

    .line 150
    .line 151
    if-gez v30, :cond_1

    .line 152
    .line 153
    shl-int/lit8 v30, v6, 0x3

    .line 154
    .line 155
    move-object/from16 v31, v0

    .line 156
    .line 157
    add-int v0, v30, v10

    .line 158
    .line 159
    move/from16 v30, v11

    .line 160
    .line 161
    aget-object v11, v13, v0

    .line 162
    .line 163
    move-object/from16 v32, v13

    .line 164
    .line 165
    move-object v13, v14

    .line 166
    check-cast v13, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 167
    .line 168
    move-object/from16 v33, v4

    .line 169
    .line 170
    invoke-virtual {v13}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    if-eqz v4, :cond_0

    .line 175
    .line 176
    invoke-virtual {v3, v1, v4}, Landroidx/compose/runtime/SlotTable;->inGroup(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Anchor;)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-eqz v4, :cond_0

    .line 181
    .line 182
    invoke-static {v13, v11}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    invoke-virtual {v15, v0}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    .line 190
    .line 191
    .line 192
    :cond_0
    :goto_4
    const/16 v0, 0x8

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_1
    move-object/from16 v31, v0

    .line 196
    .line 197
    move-object/from16 v33, v4

    .line 198
    .line 199
    move/from16 v30, v11

    .line 200
    .line 201
    move-object/from16 v32, v13

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :goto_5
    shr-long/2addr v7, v0

    .line 205
    add-int/lit8 v10, v10, 0x1

    .line 206
    .line 207
    move/from16 v11, v30

    .line 208
    .line 209
    move-object/from16 v0, v31

    .line 210
    .line 211
    move-object/from16 v13, v32

    .line 212
    .line 213
    move-object/from16 v4, v33

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_2
    move-object/from16 v31, v0

    .line 217
    .line 218
    move-object/from16 v33, v4

    .line 219
    .line 220
    move/from16 v30, v11

    .line 221
    .line 222
    move-object/from16 v32, v13

    .line 223
    .line 224
    const/16 v0, 0x8

    .line 225
    .line 226
    if-ne v9, v0, :cond_5

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_3
    move-object/from16 v31, v0

    .line 230
    .line 231
    move-object/from16 v33, v4

    .line 232
    .line 233
    move/from16 v30, v11

    .line 234
    .line 235
    move-object/from16 v32, v13

    .line 236
    .line 237
    :goto_6
    if-eq v6, v5, :cond_5

    .line 238
    .line 239
    add-int/lit8 v6, v6, 0x1

    .line 240
    .line 241
    move-wide/from16 v9, v28

    .line 242
    .line 243
    move/from16 v11, v30

    .line 244
    .line 245
    move-object/from16 v0, v31

    .line 246
    .line 247
    move-object/from16 v13, v32

    .line 248
    .line 249
    move-object/from16 v4, v33

    .line 250
    .line 251
    goto/16 :goto_2

    .line 252
    .line 253
    :cond_4
    move-object/from16 v33, v4

    .line 254
    .line 255
    move/from16 v25, v6

    .line 256
    .line 257
    move/from16 v27, v7

    .line 258
    .line 259
    move/from16 v26, v8

    .line 260
    .line 261
    move-wide/from16 v28, v9

    .line 262
    .line 263
    move/from16 v30, v11

    .line 264
    .line 265
    const/16 v18, 0x7

    .line 266
    .line 267
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    :cond_5
    invoke-virtual {v15}, Landroidx/collection/ScatterSet;->isEmpty()Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    goto :goto_7

    .line 277
    :cond_6
    move-object/from16 v33, v4

    .line 278
    .line 279
    move-object/from16 v24, v5

    .line 280
    .line 281
    move/from16 v25, v6

    .line 282
    .line 283
    move/from16 v27, v7

    .line 284
    .line 285
    move/from16 v26, v8

    .line 286
    .line 287
    move-wide/from16 v28, v9

    .line 288
    .line 289
    move/from16 v30, v11

    .line 290
    .line 291
    const/16 v18, 0x7

    .line 292
    .line 293
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    const-string v0, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap"

    .line 299
    .line 300
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    check-cast v14, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 304
    .line 305
    invoke-virtual {v14}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    if-eqz v0, :cond_7

    .line 310
    .line 311
    invoke-virtual {v3, v1, v0}, Landroidx/compose/runtime/SlotTable;->inGroup(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Anchor;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_7

    .line 316
    .line 317
    invoke-static {v14, v15}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    const/4 v0, 0x1

    .line 325
    goto :goto_7

    .line 326
    :cond_7
    const/4 v0, 0x0

    .line 327
    :goto_7
    if-eqz v0, :cond_8

    .line 328
    .line 329
    move-object/from16 v0, v33

    .line 330
    .line 331
    invoke-virtual {v0, v12}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    goto :goto_8

    .line 335
    :cond_8
    move-object/from16 v0, v33

    .line 336
    .line 337
    :goto_8
    const/16 v4, 0x8

    .line 338
    .line 339
    goto :goto_9

    .line 340
    :cond_9
    move-object v0, v4

    .line 341
    move-object/from16 v24, v5

    .line 342
    .line 343
    move/from16 v25, v6

    .line 344
    .line 345
    move/from16 v27, v7

    .line 346
    .line 347
    move/from16 v26, v8

    .line 348
    .line 349
    move-wide/from16 v28, v9

    .line 350
    .line 351
    move/from16 v30, v11

    .line 352
    .line 353
    move/from16 v18, v13

    .line 354
    .line 355
    move-wide/from16 v22, v14

    .line 356
    .line 357
    move v4, v12

    .line 358
    :goto_9
    shr-long v9, v28, v4

    .line 359
    .line 360
    add-int/lit8 v7, v27, 0x1

    .line 361
    .line 362
    move v12, v4

    .line 363
    move/from16 v13, v18

    .line 364
    .line 365
    move-wide/from16 v14, v22

    .line 366
    .line 367
    move-object/from16 v5, v24

    .line 368
    .line 369
    move/from16 v6, v25

    .line 370
    .line 371
    move/from16 v8, v26

    .line 372
    .line 373
    move/from16 v11, v30

    .line 374
    .line 375
    move-object v4, v0

    .line 376
    move-object/from16 v0, p0

    .line 377
    .line 378
    goto/16 :goto_1

    .line 379
    .line 380
    :cond_a
    move-object v0, v4

    .line 381
    move-object/from16 v24, v5

    .line 382
    .line 383
    move/from16 v25, v6

    .line 384
    .line 385
    move/from16 v26, v8

    .line 386
    .line 387
    move v4, v12

    .line 388
    move v12, v11

    .line 389
    if-ne v12, v4, :cond_d

    .line 390
    .line 391
    move/from16 v6, v25

    .line 392
    .line 393
    move/from16 v7, v26

    .line 394
    .line 395
    goto :goto_a

    .line 396
    :cond_b
    move-object v0, v4

    .line 397
    move-object/from16 v24, v5

    .line 398
    .line 399
    move v7, v8

    .line 400
    :goto_a
    if-eq v7, v6, :cond_d

    .line 401
    .line 402
    add-int/lit8 v8, v7, 0x1

    .line 403
    .line 404
    move-object v4, v0

    .line 405
    move-object/from16 v5, v24

    .line 406
    .line 407
    move-object/from16 v0, p0

    .line 408
    .line 409
    goto/16 :goto_0

    .line 410
    .line 411
    :cond_c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    :cond_d
    return-object v2
.end method

.method public getAndSetShouldPauseCallback(Landroidx/compose/runtime/ShouldPauseCallback;)Landroidx/compose/runtime/ShouldPauseCallback;
    .locals 1
    .param p1    # Landroidx/compose/runtime/ShouldPauseCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->shouldPause:Landroidx/compose/runtime/ShouldPauseCallback;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->shouldPause:Landroidx/compose/runtime/ShouldPauseCallback;

    .line 4
    .line 5
    return-object v0
.end method

.method public final getComposable()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getComposer$runtime()Landroidx/compose/runtime/ComposerImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCompositionService(Landroidx/compose/runtime/CompositionServiceKey;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroidx/compose/runtime/CompositionServiceKey;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/CompositionServiceKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->getObservableCompositionServiceKey()Landroidx/compose/runtime/CompositionServiceKey;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    move-object p1, p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return-object p1
.end method

.method public final getConditionalScopes$runtime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->conditionallyInvalidatedScopes:Landroidx/collection/MutableScatterSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->asSet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final getDerivedStateDependencies$runtime()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/ScatterMap;->asMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getHasInvalidations()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 5
    .line 6
    invoke-static {v1}, Landroidx/compose/runtime/collection/ScopeMap;->getSize-impl(Landroidx/collection/MutableScatterMap;)I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0

    .line 19
    throw v1
.end method

.method public getHasPendingChanges()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getHasPendingChanges$runtime()Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    .line 11
    return v1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0

    .line 14
    throw v1
.end method

.method public final getObservedObjects$runtime()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/ScatterMap;->asMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final getObserverHolder$runtime()Landroidx/compose/runtime/CompositionObserverHolder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParent()Landroidx/compose/runtime/CompositionContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPendingInvalidScopes$runtime()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRecomposeContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->_recomposeContext:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getRecomposeCoroutineContext$runtime()Lkotlin/coroutines/CoroutineContext;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method public final getSlotTable$runtime()Landroidx/compose/runtime/SlotTable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 2
    .line 3
    return-object v0
.end method

.method public insertMovableContent(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    move-object v1, p1

    .line 3
    check-cast v1, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v1, :cond_1

    .line 12
    .line 13
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lkotlin/Pair;

    .line 18
    .line 19
    invoke-virtual {v4}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Landroidx/compose/runtime/MovableContentStateReference;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime()Landroidx/compose/runtime/ControlledComposition;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    move v0, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/2addr v3, v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 40
    .line 41
    const-string v0, "Check failed"

    .line 42
    .line 43
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->insertMovableContentReferences(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    :try_start_1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 56
    .line 57
    check-cast v0, Ljava/util/Collection;

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 66
    .line 67
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 68
    .line 69
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 72
    .line 73
    .line 74
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    :try_start_2
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 79
    .line 80
    .line 81
    :try_start_3
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :catchall_1
    move-exception p1

    .line 86
    goto :goto_3

    .line 87
    :catchall_2
    move-exception p1

    .line 88
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_3
    :goto_2
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method public invalidate(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    .locals 3
    .param p1    # Landroidx/compose/runtime/RecomposeScopeImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getDefaultsInScope()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setDefaultsInvalid(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/runtime/Anchor;->getValid()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-direct {v2, p1, p2}, Landroidx/compose/runtime/CompositionImpl;->tryImminentInvalidation(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ne p1, v1, :cond_2

    .line 45
    .line 46
    sget-object p1, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_2
    sget-object p1, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    .line 50
    .line 51
    return-object p1

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    monitor-exit v0

    .line 54
    throw p1

    .line 55
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getCanRecompose()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    sget-object p1, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_4
    invoke-direct {p0, p1, v0, p2}, Landroidx/compose/runtime/CompositionImpl;->invalidateChecked(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v1, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    .line 69
    .line 70
    if-eq v0, v1, :cond_5

    .line 71
    .line 72
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->observer()Landroidx/compose/runtime/tooling/CompositionObserver;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    invoke-interface {v1, p1, p2}, Landroidx/compose/runtime/tooling/CompositionObserver;->onScopeInvalidated(Landroidx/compose/runtime/RecomposeScope;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    return-object v0

    .line 82
    :cond_6
    :goto_0
    sget-object p1, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    .line 83
    .line 84
    return-object p1
.end method

.method public invalidateAll()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_2

    .line 13
    .line 14
    aget-object v4, v1, v3

    .line 15
    .line 16
    instance-of v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    check-cast v4, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    const/4 v4, 0x0

    .line 26
    :goto_1
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v4}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidate()V

    .line 29
    .line 30
    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_2
    monitor-exit v0

    .line 39
    throw v1
.end method

.method public final invalidateGroupsWithKey(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotTable;->invalidateGroupsWithKey$runtime(I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_2

    .line 22
    .line 23
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sget-object v3, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    .line 35
    .line 36
    if-ne v2, v3, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    iget-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes$runtime()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->parent:Landroidx/compose/runtime/CompositionContext;

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/CompositionContext;->invalidate$runtime(Landroidx/compose/runtime/ControlledComposition;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit v0

    .line 58
    throw p1
.end method

.method public isComposing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->isComposing$runtime()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isDisposed()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/CompositionImpl;->state:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public final isRoot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/CompositionImpl;->isRoot:Z

    .line 2
    .line 3
    return v0
.end method

.method public observesAnyOf(Ljava/util/Set;)Z
    .locals 14
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/ScatterSetWrapper;->getSet$runtime()Landroidx/collection/ScatterSet;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 16
    .line 17
    array-length v3, p1

    .line 18
    add-int/lit8 v3, v3, -0x2

    .line 19
    .line 20
    if-ltz v3, :cond_7

    .line 21
    .line 22
    move v4, v1

    .line 23
    :goto_0
    aget-wide v5, p1, v4

    .line 24
    .line 25
    not-long v7, v5

    .line 26
    const/4 v9, 0x7

    .line 27
    shl-long/2addr v7, v9

    .line 28
    and-long/2addr v7, v5

    .line 29
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    and-long/2addr v7, v9

    .line 35
    cmp-long v7, v7, v9

    .line 36
    .line 37
    if-eqz v7, :cond_3

    .line 38
    .line 39
    sub-int v7, v4, v3

    .line 40
    .line 41
    not-int v7, v7

    .line 42
    ushr-int/lit8 v7, v7, 0x1f

    .line 43
    .line 44
    const/16 v8, 0x8

    .line 45
    .line 46
    rsub-int/lit8 v7, v7, 0x8

    .line 47
    .line 48
    move v9, v1

    .line 49
    :goto_1
    if-ge v9, v7, :cond_2

    .line 50
    .line 51
    const-wide/16 v10, 0xff

    .line 52
    .line 53
    and-long/2addr v10, v5

    .line 54
    const-wide/16 v12, 0x80

    .line 55
    .line 56
    cmp-long v10, v10, v12

    .line 57
    .line 58
    if-gez v10, :cond_1

    .line 59
    .line 60
    shl-int/lit8 v10, v4, 0x3

    .line 61
    .line 62
    add-int/2addr v10, v9

    .line 63
    aget-object v10, v0, v10

    .line 64
    .line 65
    iget-object v11, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 66
    .line 67
    invoke-static {v11, v10}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-nez v11, :cond_0

    .line 72
    .line 73
    iget-object v11, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 74
    .line 75
    invoke-static {v11, v10}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-eqz v10, :cond_1

    .line 80
    .line 81
    :cond_0
    return v2

    .line 82
    :cond_1
    shr-long/2addr v5, v8

    .line 83
    add-int/lit8 v9, v9, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    if-ne v7, v8, :cond_7

    .line 87
    .line 88
    :cond_3
    if-eq v4, v3, :cond_7

    .line 89
    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    check-cast p1, Ljava/lang/Iterable;

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 110
    .line 111
    invoke-static {v3, v0}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_6

    .line 116
    .line 117
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 118
    .line 119
    invoke-static {v3, v0}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    :cond_6
    return v2

    .line 126
    :cond_7
    return v1
.end method

.method public final pausedCompositionFinished$runtime(Landroidx/collection/ScatterSet;)V
    .locals 1
    .param p1    # Landroidx/collection/ScatterSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterSet<",
            "Landroidx/compose/runtime/RememberObserverHolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingPausedComposition:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->ignoreForgotten(Landroidx/collection/ScatterSet;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    iput p1, p0, Landroidx/compose/runtime/CompositionImpl;->state:I

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public prepareCompose(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->prepareCompose$runtime(Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public recompose()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingPausedComposition:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/compose/runtime/PausedCompositionImpl;->isRecomposing$runtime()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/runtime/PausedCompositionImpl;->markIncomplete$runtime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_4

    .line 22
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsForCompositionLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_2
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->takeInvalidations-afanTW4()Landroidx/collection/MutableScatterMap;

    .line 26
    .line 27
    .line 28
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 29
    :try_start_3
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->shouldPause:Landroidx/compose/runtime/ShouldPauseCallback;

    .line 32
    .line 33
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/ComposerImpl;->recompose-aFTiNEg$runtime(Landroidx/collection/MutableScatterMap;Landroidx/compose/runtime/ShouldPauseCallback;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_1
    move-exception v2

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    monitor-exit v0

    .line 46
    return v2

    .line 47
    :goto_1
    :try_start_4
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 48
    .line 49
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 50
    :catchall_2
    move-exception v1

    .line 51
    :try_start_5
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 52
    .line 53
    check-cast v2, Ljava/util/Collection;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 62
    .line 63
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->abandonSet:Ljava/util/Set;

    .line 64
    .line 65
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 66
    .line 67
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 68
    .line 69
    .line 70
    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 71
    :try_start_6
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 75
    .line 76
    .line 77
    :try_start_7
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catchall_3
    move-exception v1

    .line 82
    goto :goto_3

    .line 83
    :catchall_4
    move-exception v1

    .line 84
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 85
    .line 86
    .line 87
    throw v1

    .line 88
    :cond_2
    :goto_2
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 89
    :goto_3
    :try_start_8
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->abandonChanges()V

    .line 90
    .line 91
    .line 92
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 93
    :goto_4
    monitor-exit v0

    .line 94
    throw v1
.end method

.method public recomposeScopeReleased(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/RecomposeScopeImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z

    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->observer()Landroidx/compose/runtime/tooling/CompositionObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroidx/compose/runtime/tooling/CompositionObserver;->onScopeDisposed(Landroidx/compose/runtime/RecomposeScope;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public recordModificationsOf(Ljava/util/Set;)V
    .locals 3
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/runtime/CompositionKt;->access$getPendingApplyNoModifications$p()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    instance-of v1, v0, Ljava/util/Set;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    new-array v1, v1, [Ljava/util/Set;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    aput-object v0, v1, v2

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    aput-object p1, v1, v2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    instance-of v1, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    const-string v1, "null cannot be cast to non-null type kotlin.Array<kotlin.collections.Set<kotlin.Any>>"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    move-object v1, v0

    .line 44
    check-cast v1, [Ljava/util/Set;

    .line 45
    .line 46
    invoke-static {v1, p1}, Lkotlin/collections/n;->M([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v1, "corrupt pendingModifications: "

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_4
    :goto_0
    move-object v1, p1

    .line 81
    :goto_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->pendingModifications:Ljava/util/concurrent/atomic/AtomicReference;

    .line 82
    .line 83
    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/a;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_0

    .line 88
    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    iget-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 92
    .line 93
    monitor-enter p1

    .line 94
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsLocked()V

    .line 95
    .line 96
    .line 97
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    monitor-exit p1

    .line 100
    goto :goto_2

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    monitor-exit p1

    .line 103
    throw v0

    .line 104
    :cond_5
    :goto_2
    return-void
.end method

.method public recordReadOf(Ljava/lang/Object;)V
    .locals 20
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->getAreChildrenComposing()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_7

    .line 10
    .line 11
    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_7

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->setUsed(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->recordRead(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->observer()Landroidx/compose/runtime/tooling/CompositionObserver;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    invoke-interface {v5, v2, v1}, Landroidx/compose/runtime/tooling/CompositionObserver;->onReadInScope(Landroidx/compose/runtime/RecomposeScope;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    if-nez v4, :cond_7

    .line 37
    .line 38
    instance-of v4, v1, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    move-object v4, v1

    .line 43
    check-cast v4, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 44
    .line 45
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 53
    .line 54
    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    instance-of v4, v1, Landroidx/compose/runtime/DerivedState;

    .line 58
    .line 59
    if-eqz v4, :cond_7

    .line 60
    .line 61
    move-object v4, v1

    .line 62
    check-cast v4, Landroidx/compose/runtime/DerivedState;

    .line 63
    .line 64
    invoke-interface {v4}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    iget-object v6, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 69
    .line 70
    invoke-static {v6, v1}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v5}, Landroidx/compose/runtime/DerivedState$Record;->getDependencies()Landroidx/collection/ObjectIntMap;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    iget-object v7, v6, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v6, v6, Landroidx/collection/ObjectIntMap;->metadata:[J

    .line 80
    .line 81
    array-length v8, v6

    .line 82
    add-int/lit8 v8, v8, -0x2

    .line 83
    .line 84
    if-ltz v8, :cond_6

    .line 85
    .line 86
    const/4 v10, 0x0

    .line 87
    :goto_0
    aget-wide v11, v6, v10

    .line 88
    .line 89
    not-long v13, v11

    .line 90
    const/4 v15, 0x7

    .line 91
    shl-long/2addr v13, v15

    .line 92
    and-long/2addr v13, v11

    .line 93
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    and-long/2addr v13, v15

    .line 99
    cmp-long v13, v13, v15

    .line 100
    .line 101
    if-eqz v13, :cond_5

    .line 102
    .line 103
    sub-int v13, v10, v8

    .line 104
    .line 105
    not-int v13, v13

    .line 106
    ushr-int/lit8 v13, v13, 0x1f

    .line 107
    .line 108
    const/16 v14, 0x8

    .line 109
    .line 110
    rsub-int/lit8 v13, v13, 0x8

    .line 111
    .line 112
    const/4 v15, 0x0

    .line 113
    :goto_1
    if-ge v15, v13, :cond_4

    .line 114
    .line 115
    const-wide/16 v16, 0xff

    .line 116
    .line 117
    and-long v16, v11, v16

    .line 118
    .line 119
    const-wide/16 v18, 0x80

    .line 120
    .line 121
    cmp-long v16, v16, v18

    .line 122
    .line 123
    if-gez v16, :cond_3

    .line 124
    .line 125
    shl-int/lit8 v16, v10, 0x3

    .line 126
    .line 127
    add-int v16, v16, v15

    .line 128
    .line 129
    aget-object v16, v7, v16

    .line 130
    .line 131
    move-object/from16 v9, v16

    .line 132
    .line 133
    check-cast v9, Landroidx/compose/runtime/snapshots/StateObject;

    .line 134
    .line 135
    instance-of v14, v9, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 136
    .line 137
    if-eqz v14, :cond_2

    .line 138
    .line 139
    move-object v14, v9

    .line 140
    check-cast v14, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 141
    .line 142
    move-object/from16 v18, v6

    .line 143
    .line 144
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime(I)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_2
    move-object/from16 v18, v6

    .line 153
    .line 154
    :goto_2
    iget-object v6, v0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 155
    .line 156
    invoke-static {v6, v9, v1}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    const/16 v6, 0x8

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_3
    move-object/from16 v18, v6

    .line 163
    .line 164
    move v6, v14

    .line 165
    :goto_3
    shr-long/2addr v11, v6

    .line 166
    add-int/lit8 v15, v15, 0x1

    .line 167
    .line 168
    move v14, v6

    .line 169
    move-object/from16 v6, v18

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_4
    move-object/from16 v18, v6

    .line 173
    .line 174
    move v6, v14

    .line 175
    if-ne v13, v6, :cond_6

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_5
    move-object/from16 v18, v6

    .line 179
    .line 180
    :goto_4
    if-eq v10, v8, :cond_6

    .line 181
    .line 182
    add-int/lit8 v10, v10, 0x1

    .line 183
    .line 184
    move-object/from16 v6, v18

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_6
    invoke-interface {v5}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v2, v4, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->recordDerivedStateValue(Landroidx/compose/runtime/DerivedState;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    :cond_7
    return-void
.end method

.method public recordWriteOf(Ljava/lang/Object;)V
    .locals 14
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->invalidateScopeOfLocked(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_4

    .line 14
    .line 15
    instance-of v1, p1, Landroidx/collection/MutableScatterSet;

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    check-cast p1, Landroidx/collection/MutableScatterSet;

    .line 20
    .line 21
    iget-object v1, p1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 24
    .line 25
    array-length v2, p1

    .line 26
    add-int/lit8 v2, v2, -0x2

    .line 27
    .line 28
    if-ltz v2, :cond_4

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    move v4, v3

    .line 32
    :goto_0
    aget-wide v5, p1, v4

    .line 33
    .line 34
    not-long v7, v5

    .line 35
    const/4 v9, 0x7

    .line 36
    shl-long/2addr v7, v9

    .line 37
    and-long/2addr v7, v5

    .line 38
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    and-long/2addr v7, v9

    .line 44
    cmp-long v7, v7, v9

    .line 45
    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    sub-int v7, v4, v2

    .line 49
    .line 50
    not-int v7, v7

    .line 51
    ushr-int/lit8 v7, v7, 0x1f

    .line 52
    .line 53
    const/16 v8, 0x8

    .line 54
    .line 55
    rsub-int/lit8 v7, v7, 0x8

    .line 56
    .line 57
    move v9, v3

    .line 58
    :goto_1
    if-ge v9, v7, :cond_1

    .line 59
    .line 60
    const-wide/16 v10, 0xff

    .line 61
    .line 62
    and-long/2addr v10, v5

    .line 63
    const-wide/16 v12, 0x80

    .line 64
    .line 65
    cmp-long v10, v10, v12

    .line 66
    .line 67
    if-gez v10, :cond_0

    .line 68
    .line 69
    shl-int/lit8 v10, v4, 0x3

    .line 70
    .line 71
    add-int/2addr v10, v9

    .line 72
    aget-object v10, v1, v10

    .line 73
    .line 74
    check-cast v10, Landroidx/compose/runtime/DerivedState;

    .line 75
    .line 76
    invoke-direct {p0, v10}, Landroidx/compose/runtime/CompositionImpl;->invalidateScopeOfLocked(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_3

    .line 82
    :cond_0
    :goto_2
    shr-long/2addr v5, v8

    .line 83
    add-int/lit8 v9, v9, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    if-ne v7, v8, :cond_4

    .line 87
    .line 88
    :cond_2
    if-eq v4, v2, :cond_4

    .line 89
    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    check-cast p1, Landroidx/compose/runtime/DerivedState;

    .line 94
    .line 95
    invoke-direct {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->invalidateScopeOfLocked(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 102
    :goto_3
    monitor-exit v0

    .line 103
    throw p1
.end method

.method public final removeDerivedStateObservation$runtime(Landroidx/compose/runtime/DerivedState;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/DerivedState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 10
    .line 11
    invoke-static {v0, p1}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final removeObservation$runtime(Ljava/lang/Object;Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/RecomposeScopeImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroidx/compose/runtime/collection/ScopeMap;->remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setComposable(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->composable:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public setContent(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->clearDeactivated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->ensureRunning()V

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->composeInitialWithReuse(Lkotlin/jvm/functions/Function2;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->composeInitial(Lkotlin/jvm/functions/Function2;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public setContentWithReuse(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->clearDeactivated()Z

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->ensureRunning()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->composeInitialWithReuse(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setObserver(Landroidx/compose/runtime/tooling/CompositionObserver;)Landroidx/compose/runtime/tooling/CompositionObserverHandle;
    .locals 3
    .param p1    # Landroidx/compose/runtime/tooling/CompositionObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/CompositionObserverHolder;->setObserver(Landroidx/compose/runtime/tooling/CompositionObserver;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->observerHolder:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/CompositionObserverHolder;->setRoot(Z)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    new-instance v0, Landroidx/compose/runtime/CompositionImpl$setObserver$2;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/CompositionImpl$setObserver$2;-><init>(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/tooling/CompositionObserver;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v0

    .line 26
    throw p1
.end method

.method public setPausableContent(Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/PausedComposition;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/PausedComposition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->clearDeactivated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/CompositionImpl;->composeInitialPaused(ZLkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/PausedComposition;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setPausableContentWithReuse(Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/PausedComposition;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/PausedComposition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->clearDeactivated()Z

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->ensureRunning()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/CompositionImpl;->composeInitialPaused(ZLkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/PausedComposition;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final setPendingInvalidScopes$runtime(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/runtime/CompositionImpl;->pendingInvalidScopes:Z

    .line 2
    .line 3
    return-void
.end method

.method public final updateMovingInvalidations$runtime()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsOutOfBandLocked()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionImpl;->takeInvalidations-afanTW4()Landroidx/collection/MutableScatterMap;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateComposerInvalidations-RY85e9Y(Landroidx/collection/MutableScatterMap;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v2

    .line 21
    :try_start_2
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 22
    .line 23
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    :catchall_1
    move-exception v1

    .line 25
    monitor-exit v0

    .line 26
    throw v1
.end method

.method public verifyConsistent()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->isComposing()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->verifyConsistent$runtime()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->verifyWellFormed()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 21
    .line 22
    invoke-direct {p0, v1}, Landroidx/compose/runtime/CompositionImpl;->validateRecomposeScopeAnchors(Landroidx/compose/runtime/SlotTable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit v0

    .line 33
    throw v1
.end method
