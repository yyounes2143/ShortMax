package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectIntMap;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.DerivedState;
import androidx.compose.runtime.changelist.ChangeList;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.internal.Trace;
import androidx.compose.runtime.snapshots.ReaderKind;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.tooling.CompositionObserver;
import androidx.compose.runtime.tooling.CompositionObserverHandle;
import androidx.compose.runtime.tooling.ObservableComposition;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.y0;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.TestOnly;
/* compiled from: Composition.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nComposition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composition.kt\nandroidx/compose/runtime/CompositionImpl\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 5 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 6 RememberEventDispatcher.kt\nandroidx/compose/runtime/internal/RememberEventDispatcher\n+ 7 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 8 ScatterSetWrapper.kt\nandroidx/compose/runtime/collection/ScatterSetWrapperKt\n+ 9 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 10 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 11 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 12 ScopeMap.kt\nandroidx/compose/runtime/collection/ScopeMap\n+ 13 ScatterMap.kt\nandroidx/collection/MutableScatterMap\n+ 14 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 15 ScatterSet.kt\nandroidx/collection/MutableScatterSet\n+ 16 StateObjectImpl.kt\nandroidx/compose/runtime/snapshots/ReaderKind$Companion\n+ 17 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n+ 18 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 19 Trace.kt\nandroidx/compose/runtime/internal/TraceKt\n+ 20 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1447:1\n1194#1,2:1477\n1378#1,3:1479\n1184#1,6:1483\n1382#1,2:1490\n1385#1:1499\n1196#1,4:1500\n1184#1,6:1505\n1194#1,2:2075\n1378#1,3:2077\n1184#1,6:2080\n1382#1,2:2087\n1385#1:2096\n1196#1,4:2097\n1194#1,2:2113\n1378#1,3:2115\n1382#1,2:2119\n1385#1:2128\n1196#1,4:2129\n1194#1,2:2230\n1378#1,3:2232\n1382#1,2:2236\n1385#1:2245\n1196#1,4:2246\n1194#1,2:2251\n1378#1,3:2253\n1382#1,2:2257\n1385#1:2266\n1196#1,4:2267\n1194#1,2:2272\n1378#1,3:2274\n1382#1,2:2285\n1385#1:2294\n1196#1,4:2295\n1378#1,3:2299\n1382#1,2:2303\n1385#1:2312\n25#2,5:1448\n33#2:1454\n33#2:1467\n33#2:1468\n33#2:1469\n33#2:1482\n33#2:1504\n33#2:1511\n33#2:1530\n33#2:1531\n33#2:2038\n33#2:2074\n33#2:2229\n33#2:2250\n33#2:2271\n33#2:2320\n33#2:2323\n33#2:2324\n33#2:2325\n33#2:2394\n1#3:1453\n1#3:1489\n1#3:1523\n1#3:2086\n1#3:2118\n1#3:2140\n1#3:2154\n1#3:2235\n1#3:2256\n1#3:2284\n1#3:2302\n1#3:2376\n1#3:2409\n49#4,4:1455\n49#4,4:1459\n49#4,4:1463\n49#4,4:1512\n49#4,4:2382\n49#4,4:2395\n91#5:1470\n34#5,5:1471\n92#5:1476\n106#5:2101\n34#5,5:2102\n107#5:2107\n34#5,3:2379\n38#5:2386\n87#6,7:1492\n87#6,3:1516\n91#6,3:1527\n87#6,7:2089\n87#6,7:2121\n87#6,3:2133\n91#6,3:2144\n87#6,7:2238\n87#6,7:2259\n87#6,7:2277\n87#6,7:2287\n87#6,7:2305\n87#6,7:2313\n87#6,7:2387\n87#6,3:2402\n91#6,3:2413\n175#7,4:1519\n180#7,3:1524\n175#7,4:2136\n180#7,3:2141\n175#7,4:2150\n180#7,3:2155\n175#7,4:2405\n180#7,3:2410\n41#8,3:1532\n46#8:1560\n48#8:1563\n41#8,3:1666\n46#8:1728\n48#8:1756\n231#9,3:1535\n200#9,7:1538\n211#9,3:1546\n214#9,9:1550\n234#9:1559\n200#9,16:1587\n217#9,6:1607\n231#9,3:1637\n200#9,7:1640\n211#9,3:1648\n214#9,9:1652\n234#9:1661\n231#9,3:1669\n200#9,7:1672\n211#9,3:1680\n214#9,2:1684\n231#9,3:1692\n200#9,7:1695\n211#9,3:1703\n214#9,9:1707\n234#9:1716\n217#9,6:1721\n234#9:1727\n231#9,3:1730\n200#9,7:1733\n211#9,3:1741\n214#9,9:1745\n234#9:1754\n200#9,7:1779\n211#9,3:1787\n214#9,2:1791\n217#9,6:1797\n200#9,7:1843\n211#9,3:1851\n214#9,2:1855\n217#9,6:1861\n200#9,16:1907\n217#9,6:1927\n200#9,7:1953\n211#9,3:1961\n214#9,2:1965\n217#9,6:1971\n231#9,3:2009\n200#9,7:2012\n211#9,3:2020\n214#9,9:2024\n234#9:2033\n231#9,3:2045\n200#9,7:2048\n211#9,3:2056\n214#9,9:2060\n234#9:2069\n200#9,16:2184\n217#9,6:2204\n231#9,3:2333\n200#9,7:2336\n211#9,3:2344\n214#9,9:2348\n234#9:2357\n1399#10:1545\n1270#10:1549\n1399#10:1572\n1270#10:1576\n1399#10:1647\n1270#10:1651\n1399#10:1679\n1270#10:1683\n1399#10:1702\n1270#10:1706\n1399#10:1740\n1270#10:1744\n1399#10:1765\n1270#10:1769\n1399#10:1786\n1270#10:1790\n1399#10:1829\n1270#10:1833\n1399#10:1850\n1270#10:1854\n1399#10:1893\n1270#10:1897\n1399#10:1960\n1270#10:1964\n1399#10:1988\n1270#10:1992\n1399#10:2019\n1270#10:2023\n1399#10:2055\n1270#10:2059\n1399#10:2170\n1270#10:2174\n1399#10:2343\n1270#10:2347\n1863#11,2:1561\n1863#11:1729\n1864#11:1755\n139#12:1564\n140#12,5:1580\n145#12,6:1614\n152#12:1630\n67#12,6:1631\n75#12,4:1662\n67#12,6:1686\n75#12,4:1717\n123#12:1757\n124#12,4:1773\n128#12,6:1804\n135#12:1820\n123#12:1821\n124#12,4:1837\n128#12,6:1868\n135#12:1884\n123#12:1885\n124#12,4:1901\n128#12,6:1934\n135#12:1950\n67#12,6:2003\n75#12,4:2034\n67#12,6:2039\n75#12,4:2070\n123#12:2162\n124#12,4:2178\n128#12,6:2211\n135#12:2227\n81#12:2326\n67#12,6:2327\n75#12,8:2358\n842#13:1565\n844#13:1579\n845#13,3:1620\n848#13:1629\n842#13:1758\n844#13:1772\n845#13,3:1810\n848#13:1819\n842#13:1822\n844#13:1836\n845#13,3:1874\n848#13:1883\n842#13:1886\n844#13:1900\n845#13,3:1940\n848#13:1949\n842#13:2163\n844#13:2177\n845#13,3:2217\n848#13:2226\n329#14,6:1566\n339#14,3:1573\n342#14,2:1577\n345#14,6:1623\n329#14,6:1759\n339#14,3:1766\n342#14,2:1770\n345#14,6:1813\n329#14,6:1823\n339#14,3:1830\n342#14,2:1834\n345#14,6:1877\n329#14,6:1887\n339#14,3:1894\n342#14,2:1898\n345#14,6:1943\n329#14,6:2164\n339#14,3:2171\n342#14,2:2175\n345#14,6:2220\n809#15,2:1585\n812#15,4:1603\n816#15:1613\n809#15,2:1777\n812#15,4:1793\n816#15:1803\n809#15,2:1841\n812#15,4:1857\n816#15:1867\n809#15,2:1905\n812#15,4:1923\n816#15:1933\n809#15,2:1951\n812#15,4:1967\n816#15:1977\n809#15,2:2182\n812#15,4:2200\n816#15:2210\n54#16:1978\n54#16:1995\n403#17,3:1979\n367#17,6:1982\n377#17,3:1989\n380#17,2:1993\n383#17,6:1996\n406#17:2002\n4809#18:2108\n4788#18,4:2109\n45#19,3:2147\n49#19:2158\n45#19,3:2159\n49#19:2228\n45#19,3:2399\n49#19:2416\n13409#20,2:2321\n11483#20,9:2366\n13409#20:2375\n13410#20:2377\n11492#20:2378\n*S KotlinDebug\n*F\n+ 1 Composition.kt\nandroidx/compose/runtime/CompositionImpl\n*L\n828#1:1477,2\n828#1:1479,3\n831#1:1483,6\n828#1:1490,2\n828#1:1499\n828#1:1500,4\n841#1:1505,6\n1073#1:2075,2\n1073#1:2077,3\n1074#1:2080,6\n1073#1:2087,2\n1073#1:2096\n1073#1:2097,4\n1087#1:2113,2\n1087#1:2115,3\n1087#1:2119,2\n1087#1:2128\n1087#1:2129,4\n1148#1:2230,2\n1148#1:2232,3\n1148#1:2236,2\n1148#1:2245\n1148#1:2246,4\n1157#1:2251,2\n1157#1:2253,3\n1157#1:2257,2\n1157#1:2266\n1157#1:2267,4\n1167#1:2272,2\n1167#1:2274,3\n1167#1:2285,2\n1167#1:2294\n1167#1:2295,4\n1195#1:2299,3\n1195#1:2303,2\n1195#1:2312\n469#1:1448,5\n630#1:1454\n720#1:1467\n730#1:1468\n747#1:1469\n829#1:1482\n839#1:1504\n848#1:1511\n894#1:1530\n917#1:1531\n1052#1:2038\n1061#1:2074\n1147#1:2229\n1156#1:2250\n1166#1:2271\n1212#1:2320\n1216#1:2323\n1259#1:2324\n1293#1:2325\n1391#1:2394\n828#1:1489\n879#1:1523\n1073#1:2086\n1087#1:2118\n1093#1:2140\n1108#1:2154\n1148#1:2235\n1157#1:2256\n1167#1:2284\n1195#1:2302\n1365#1:2376\n1401#1:2409\n679#1:1455,4\n704#1:1459,4\n714#1:1463,4\n849#1:1512,4\n1368#1:2382,4\n1392#1:2395,4\n754#1:1470\n754#1:1471,5\n754#1:1476\n1086#1:2101\n1086#1:2102,5\n1086#1:2107\n1366#1:2379,3\n1366#1:2386\n828#1:1492,7\n876#1:1516,3\n876#1:1527,3\n1073#1:2089,7\n1087#1:2121,7\n1091#1:2133,3\n1091#1:2144,3\n1148#1:2238,7\n1157#1:2259,7\n1173#1:2277,7\n1167#1:2287,7\n1195#1:2305,7\n1207#1:2313,7\n1383#1:2387,7\n1398#1:2402,3\n1398#1:2413,3\n879#1:1519,4\n879#1:1524,3\n1093#1:2136,4\n1093#1:2141,3\n1108#1:2150,4\n1108#1:2155,3\n1401#1:2405,4\n1401#1:2410,3\n925#1:1532,3\n925#1:1560\n925#1:1563\n974#1:1666,3\n974#1:1728\n974#1:1756\n925#1:1535,3\n925#1:1538,7\n925#1:1546,3\n925#1:1550,9\n925#1:1559\n942#1:1587,16\n942#1:1607,6\n959#1:1637,3\n959#1:1640,7\n959#1:1648,3\n959#1:1652,9\n959#1:1661\n974#1:1669,3\n974#1:1672,7\n974#1:1680,3\n974#1:1684,2\n979#1:1692,3\n979#1:1695,7\n979#1:1703,3\n979#1:1707,9\n979#1:1716\n974#1:1721,6\n974#1:1727\n979#1:1730,3\n979#1:1733,7\n979#1:1741,3\n979#1:1745,9\n979#1:1754\n988#1:1779,7\n988#1:1787,3\n988#1:1791,2\n988#1:1797,6\n994#1:1843,7\n994#1:1851,3\n994#1:1855,2\n994#1:1861,6\n1001#1:1907,16\n1001#1:1927,6\n1003#1:1953,7\n1003#1:1961,3\n1003#1:1965,2\n1003#1:1971,6\n1043#1:2009,3\n1043#1:2012,7\n1043#1:2020,3\n1043#1:2024,9\n1043#1:2033\n1057#1:2045,3\n1057#1:2048,7\n1057#1:2056,3\n1057#1:2060,9\n1057#1:2069\n1128#1:2184,16\n1128#1:2204,6\n1323#1:2333,3\n1323#1:2336,7\n1323#1:2344,3\n1323#1:2348,9\n1323#1:2357\n925#1:1545\n925#1:1549\n942#1:1572\n942#1:1576\n959#1:1647\n959#1:1651\n974#1:1679\n974#1:1683\n979#1:1702\n979#1:1706\n979#1:1740\n979#1:1744\n988#1:1765\n988#1:1769\n988#1:1786\n988#1:1790\n994#1:1829\n994#1:1833\n994#1:1850\n994#1:1854\n1001#1:1893\n1001#1:1897\n1003#1:1960\n1003#1:1964\n1028#1:1988\n1028#1:1992\n1043#1:2019\n1043#1:2023\n1057#1:2055\n1057#1:2059\n1128#1:2170\n1128#1:2174\n1323#1:2343\n1323#1:2347\n925#1:1561,2\n974#1:1729\n974#1:1755\n942#1:1564\n942#1:1580,5\n942#1:1614,6\n942#1:1630\n959#1:1631,6\n959#1:1662,4\n979#1:1686,6\n979#1:1717,4\n988#1:1757\n988#1:1773,4\n988#1:1804,6\n988#1:1820\n994#1:1821\n994#1:1837,4\n994#1:1868,6\n994#1:1884\n1001#1:1885\n1001#1:1901,4\n1001#1:1934,6\n1001#1:1950\n1043#1:2003,6\n1043#1:2034,4\n1057#1:2039,6\n1057#1:2070,4\n1128#1:2162\n1128#1:2178,4\n1128#1:2211,6\n1128#1:2227\n1323#1:2326\n1323#1:2327,6\n1323#1:2358,8\n942#1:1565\n942#1:1579\n942#1:1620,3\n942#1:1629\n988#1:1758\n988#1:1772\n988#1:1810,3\n988#1:1819\n994#1:1822\n994#1:1836\n994#1:1874,3\n994#1:1883\n1001#1:1886\n1001#1:1900\n1001#1:1940,3\n1001#1:1949\n1128#1:2163\n1128#1:2177\n1128#1:2217,3\n1128#1:2226\n942#1:1566,6\n942#1:1573,3\n942#1:1577,2\n942#1:1623,6\n988#1:1759,6\n988#1:1766,3\n988#1:1770,2\n988#1:1813,6\n994#1:1823,6\n994#1:1830,3\n994#1:1834,2\n994#1:1877,6\n1001#1:1887,6\n1001#1:1894,3\n1001#1:1898,2\n1001#1:1943,6\n1128#1:2164,6\n1128#1:2171,3\n1128#1:2175,2\n1128#1:2220,6\n942#1:1585,2\n942#1:1603,4\n942#1:1613\n988#1:1777,2\n988#1:1793,4\n988#1:1803\n994#1:1841,2\n994#1:1857,4\n994#1:1867\n1001#1:1905,2\n1001#1:1923,4\n1001#1:1933\n1003#1:1951,2\n1003#1:1967,4\n1003#1:1977\n1128#1:2182,2\n1128#1:2200,4\n1128#1:2210\n1019#1:1978\n1030#1:1995\n1028#1:1979,3\n1028#1:1982,6\n1028#1:1989,3\n1028#1:1993,2\n1028#1:1996,6\n1028#1:2002\n1086#1:2108\n1086#1:2109,4\n1102#1:2147,3\n1102#1:2158\n1126#1:2159,3\n1126#1:2228\n1397#1:2399,3\n1397#1:2416\n1212#1:2321,2\n1365#1:2366,9\n1365#1:2375\n1365#1:2377\n1365#1:2378\n*E\n"})
/* loaded from: classes.dex */
public final class CompositionImpl implements ControlledComposition, ReusableComposition, RecomposeScopeOwner, CompositionServices, PausableComposition, ObservableComposition {
    public static final int $stable = 8;
    @Nullable
    private final CoroutineContext _recomposeContext;
    @NotNull
    private final Set<RememberObserver> abandonSet;
    @NotNull
    private final Applier<?> applier;
    @NotNull
    private final ChangeList changes;
    @NotNull
    private Function2<? super Composer, ? super Integer, Unit> composable;
    @NotNull
    private final ComposerImpl composer;
    @NotNull
    private final MutableScatterSet<RecomposeScopeImpl> conditionallyInvalidatedScopes;
    @NotNull
    private final MutableScatterMap<Object, Object> derivedStates;
    @NotNull
    private final MutableScatterSet<RecomposeScopeImpl> invalidatedScopes;
    @Nullable
    private CompositionImpl invalidationDelegate;
    private int invalidationDelegateGroup;
    @NotNull
    private MutableScatterMap<Object, Object> invalidations;
    private final boolean isRoot;
    @NotNull
    private final ChangeList lateChanges;
    @NotNull
    private final Object lock;
    @NotNull
    private final MutableScatterMap<Object, Object> observations;
    @NotNull
    private final MutableScatterMap<Object, Object> observationsProcessed;
    @NotNull
    private final CompositionObserverHolder observerHolder;
    @NotNull
    private final CompositionContext parent;
    private boolean pendingInvalidScopes;
    @NotNull
    private final AtomicReference<Object> pendingModifications;
    @Nullable
    private PausedCompositionImpl pendingPausedComposition;
    @NotNull
    private final RememberEventDispatcher rememberManager;
    @Nullable
    private ShouldPauseCallback shouldPause;
    @NotNull
    private final SlotTable slotTable;
    private int state;

    public CompositionImpl(@NotNull CompositionContext compositionContext, @NotNull Applier<?> applier, @Nullable CoroutineContext coroutineContext) {
        this.parent = compositionContext;
        this.applier = applier;
        this.pendingModifications = new AtomicReference<>(null);
        this.lock = new Object();
        Set<RememberObserver> asMutableSet = new MutableScatterSet(0, 1, null).asMutableSet();
        this.abandonSet = asMutableSet;
        SlotTable slotTable = new SlotTable();
        if (compositionContext.getCollectingCallByInformation$runtime()) {
            slotTable.collectCalledByInformation();
        }
        if (compositionContext.getCollectingSourceInformation$runtime()) {
            slotTable.collectSourceInformation();
        }
        this.slotTable = slotTable;
        this.observations = ScopeMap.m1476constructorimpl$default(null, 1, null);
        this.invalidatedScopes = new MutableScatterSet<>(0, 1, null);
        this.conditionallyInvalidatedScopes = new MutableScatterSet<>(0, 1, null);
        this.derivedStates = ScopeMap.m1476constructorimpl$default(null, 1, null);
        ChangeList changeList = new ChangeList();
        this.changes = changeList;
        ChangeList changeList2 = new ChangeList();
        this.lateChanges = changeList2;
        this.observationsProcessed = ScopeMap.m1476constructorimpl$default(null, 1, null);
        this.invalidations = ScopeMap.m1476constructorimpl$default(null, 1, null);
        CompositionObserverHolder compositionObserverHolder = new CompositionObserverHolder(null, false, compositionContext, 3, null);
        this.observerHolder = compositionObserverHolder;
        this.rememberManager = new RememberEventDispatcher();
        ComposerImpl composerImpl = new ComposerImpl(applier, compositionContext, slotTable, asMutableSet, changeList, changeList2, compositionObserverHolder, this);
        compositionContext.registerComposer$runtime(composerImpl);
        this.composer = composerImpl;
        this._recomposeContext = coroutineContext;
        this.isRoot = compositionContext instanceof Recomposer;
        this.composable = ComposableSingletons$CompositionKt.INSTANCE.getLambda$954879418$runtime();
    }

    private final void addPendingInvalidationsLocked(Object obj, boolean z10) {
        Object obj2 = this.observations.get(obj);
        if (obj2 == null) {
            return;
        }
        if (obj2 instanceof MutableScatterSet) {
            MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
            Object[] objArr = mutableScatterSet.elements;
            long[] jArr = mutableScatterSet.metadata;
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
                            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objArr[(i10 << 3) + i12];
                            if (!ScopeMap.m1483removeimpl(this.observationsProcessed, obj, recomposeScopeImpl) && recomposeScopeImpl.invalidateForResult(obj) != InvalidationResult.IGNORED) {
                                if (recomposeScopeImpl.isConditional() && !z10) {
                                    this.conditionallyInvalidatedScopes.add(recomposeScopeImpl);
                                } else {
                                    this.invalidatedScopes.add(recomposeScopeImpl);
                                }
                            }
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
        } else {
            RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj2;
            if (ScopeMap.m1483removeimpl(this.observationsProcessed, obj, recomposeScopeImpl2) || recomposeScopeImpl2.invalidateForResult(obj) == InvalidationResult.IGNORED) {
                return;
            }
            if (recomposeScopeImpl2.isConditional() && !z10) {
                this.conditionallyInvalidatedScopes.add(recomposeScopeImpl2);
            } else {
                this.invalidatedScopes.add(recomposeScopeImpl2);
            }
        }
    }

    private final void applyChangesInLocked(ChangeList changeList) {
        Applier<?> applier;
        RememberEventDispatcher rememberEventDispatcher;
        Object obj;
        Object obj2;
        int i10;
        long[] jArr;
        long[] jArr2;
        int i11;
        char c10;
        long j10;
        int i12;
        boolean z10;
        long[] jArr3;
        long[] jArr4;
        CompositionImpl compositionImpl = this;
        int i13 = 1;
        compositionImpl.rememberManager.prepare(compositionImpl.abandonSet, compositionImpl.composer.getErrorContext$runtime());
        try {
            if (changeList.isEmpty()) {
                try {
                    if (compositionImpl.lateChanges.isEmpty() && compositionImpl.pendingPausedComposition == null) {
                        compositionImpl.rememberManager.dispatchAbandons();
                    }
                    return;
                } finally {
                }
            }
            Trace trace = Trace.INSTANCE;
            Object beginSection = trace.beginSection("Compose:applyChanges");
            PausedCompositionImpl pausedCompositionImpl = compositionImpl.pendingPausedComposition;
            if (pausedCompositionImpl == null || (applier = pausedCompositionImpl.getPausableApplier$runtime()) == null) {
                applier = compositionImpl.applier;
            }
            PausedCompositionImpl pausedCompositionImpl2 = compositionImpl.pendingPausedComposition;
            if (pausedCompositionImpl2 == null || (rememberEventDispatcher = pausedCompositionImpl2.getRememberManager$runtime()) == null) {
                rememberEventDispatcher = compositionImpl.rememberManager;
            }
            applier.onBeginChanges();
            SlotWriter openWriter = compositionImpl.slotTable.openWriter();
            int i14 = 0;
            changeList.executeAndFlushAllPendingChanges(applier, openWriter, rememberEventDispatcher, compositionImpl.composer.getErrorContext$runtime());
            Unit unit = Unit.f60915a;
            openWriter.close(true);
            applier.onEndChanges();
            trace.endSection(beginSection);
            compositionImpl.rememberManager.dispatchRememberObservers();
            compositionImpl.rememberManager.dispatchSideEffects();
            if (compositionImpl.pendingInvalidScopes) {
                try {
                    Object beginSection2 = trace.beginSection("Compose:unobserve");
                    try {
                        compositionImpl.pendingInvalidScopes = false;
                        MutableScatterMap<Object, Object> mutableScatterMap = compositionImpl.observations;
                        long[] jArr5 = mutableScatterMap.metadata;
                        int length = jArr5.length - 2;
                        if (length >= 0) {
                            int i15 = 0;
                            while (true) {
                                try {
                                    long j11 = jArr5[i15];
                                    char c11 = 7;
                                    long j12 = -9187201950435737472L;
                                    if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i16 = 8;
                                        int i17 = 8 - ((~(i15 - length)) >>> 31);
                                        int i18 = i14;
                                        while (i18 < i17) {
                                            if ((j11 & 255) < 128) {
                                                int i19 = (i15 << 3) + i18;
                                                Object obj3 = mutableScatterMap.keys[i19];
                                                Object obj4 = mutableScatterMap.values[i19];
                                                if (obj4 instanceof MutableScatterSet) {
                                                    Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>");
                                                    MutableScatterSet mutableScatterSet = (MutableScatterSet) obj4;
                                                    Object[] objArr = mutableScatterSet.elements;
                                                    long[] jArr6 = mutableScatterSet.metadata;
                                                    int length2 = jArr6.length - 2;
                                                    obj2 = beginSection2;
                                                    if (length2 >= 0) {
                                                        int i20 = 0;
                                                        while (true) {
                                                            try {
                                                                long j13 = jArr6[i20];
                                                                jArr2 = jArr5;
                                                                i11 = length;
                                                                c10 = 7;
                                                                j10 = -9187201950435737472L;
                                                                if ((((~j13) << 7) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                    int i21 = 8 - ((~(i20 - length2)) >>> 31);
                                                                    int i22 = 0;
                                                                    while (i22 < i21) {
                                                                        if ((j13 & 255) < 128) {
                                                                            jArr4 = jArr6;
                                                                            int i23 = (i20 << 3) + i22;
                                                                            if (!((RecomposeScopeImpl) objArr[i23]).getValid()) {
                                                                                mutableScatterSet.removeElementAt(i23);
                                                                            }
                                                                        } else {
                                                                            jArr4 = jArr6;
                                                                        }
                                                                        j13 >>= 8;
                                                                        i22++;
                                                                        jArr6 = jArr4;
                                                                    }
                                                                    jArr3 = jArr6;
                                                                    if (i21 != 8) {
                                                                        break;
                                                                    }
                                                                } else {
                                                                    jArr3 = jArr6;
                                                                }
                                                                if (i20 == length2) {
                                                                    break;
                                                                }
                                                                i20++;
                                                                jArr5 = jArr2;
                                                                length = i11;
                                                                jArr6 = jArr3;
                                                            } catch (Throwable th2) {
                                                                th = th2;
                                                                obj = obj2;
                                                                Trace.INSTANCE.endSection(obj);
                                                                throw th;
                                                            }
                                                        }
                                                    } else {
                                                        jArr2 = jArr5;
                                                        i11 = length;
                                                        c10 = c11;
                                                        j10 = -9187201950435737472L;
                                                    }
                                                    z10 = mutableScatterSet.isEmpty();
                                                } else {
                                                    obj2 = beginSection2;
                                                    jArr2 = jArr5;
                                                    i11 = length;
                                                    c10 = c11;
                                                    j10 = j12;
                                                    Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap");
                                                    if (!((RecomposeScopeImpl) obj4).getValid()) {
                                                        z10 = true;
                                                    } else {
                                                        z10 = false;
                                                    }
                                                }
                                                if (z10) {
                                                    mutableScatterMap.removeValueAt(i19);
                                                }
                                                i12 = 8;
                                            } else {
                                                obj2 = beginSection2;
                                                jArr2 = jArr5;
                                                i11 = length;
                                                c10 = c11;
                                                j10 = j12;
                                                i12 = i16;
                                            }
                                            j11 >>= i12;
                                            i18++;
                                            i16 = i12;
                                            i13 = 1;
                                            j12 = j10;
                                            c11 = c10;
                                            beginSection2 = obj2;
                                            jArr5 = jArr2;
                                            length = i11;
                                        }
                                        i10 = i13;
                                        obj2 = beginSection2;
                                        jArr = jArr5;
                                        int i24 = length;
                                        if (i17 != i16) {
                                            break;
                                        }
                                        length = i24;
                                    } else {
                                        i10 = i13;
                                        obj2 = beginSection2;
                                        jArr = jArr5;
                                    }
                                    if (i15 == length) {
                                        break;
                                    }
                                    i15 += i10;
                                    i13 = i10;
                                    beginSection2 = obj2;
                                    jArr5 = jArr;
                                    i14 = 0;
                                } catch (Throwable th3) {
                                    th = th3;
                                    obj2 = beginSection2;
                                    obj = obj2;
                                    Trace.INSTANCE.endSection(obj);
                                    throw th;
                                }
                            }
                        } else {
                            obj2 = beginSection2;
                        }
                        cleanUpDerivedStateObservations();
                        Unit unit2 = Unit.f60915a;
                        Trace.INSTANCE.endSection(obj2);
                    } catch (Throwable th4) {
                        th = th4;
                        obj = beginSection2;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    compositionImpl = this;
                    try {
                        if (compositionImpl.lateChanges.isEmpty() && compositionImpl.pendingPausedComposition == null) {
                            compositionImpl.rememberManager.dispatchAbandons();
                        }
                        throw th;
                    } finally {
                    }
                }
            }
            try {
                if (this.lateChanges.isEmpty() && this.pendingPausedComposition == null) {
                    this.rememberManager.dispatchAbandons();
                }
            } finally {
                this.rememberManager.clear();
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    private final void cleanUpDerivedStateObservations() {
        boolean z10;
        long[] jArr;
        int i10;
        long[] jArr2;
        int i11;
        int i12;
        int i13;
        boolean z11;
        Object[] objArr;
        long[] jArr3;
        long[] jArr4;
        MutableScatterMap<Object, Object> mutableScatterMap = this.derivedStates;
        long[] jArr5 = mutableScatterMap.metadata;
        int length = jArr5.length - 2;
        char c10 = 7;
        long j10 = -9187201950435737472L;
        int i14 = 8;
        if (length >= 0) {
            int i15 = 0;
            while (true) {
                long j11 = jArr5[i15];
                if ((((~j11) << c10) & j11 & j10) != j10) {
                    int i16 = 8 - ((~(i15 - length)) >>> 31);
                    int i17 = 0;
                    while (i17 < i16) {
                        if ((j11 & 255) < 128) {
                            int i18 = (i15 << 3) + i17;
                            Object obj = mutableScatterMap.keys[i18];
                            Object obj2 = mutableScatterMap.values[i18];
                            if (obj2 instanceof MutableScatterSet) {
                                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>");
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                Object[] objArr2 = mutableScatterSet.elements;
                                long[] jArr6 = mutableScatterSet.metadata;
                                int length2 = jArr6.length - 2;
                                jArr2 = jArr5;
                                i11 = length;
                                if (length2 >= 0) {
                                    int i19 = 0;
                                    while (true) {
                                        long j12 = jArr6[i19];
                                        i12 = i15;
                                        Object[] objArr3 = objArr2;
                                        if ((((~j12) << c10) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i20 = 8 - ((~(i19 - length2)) >>> 31);
                                            int i21 = 0;
                                            while (i21 < i20) {
                                                int i22 = i21;
                                                Object[] objArr4 = objArr3;
                                                if ((j12 & 255) < 128) {
                                                    int i23 = (i19 << 3) + i22;
                                                    jArr4 = jArr6;
                                                    if (!ScopeMap.m1477containsimpl(this.observations, (DerivedState) objArr4[i23])) {
                                                        mutableScatterSet.removeElementAt(i23);
                                                    }
                                                } else {
                                                    jArr4 = jArr6;
                                                }
                                                j12 >>= 8;
                                                i21 = i22 + 1;
                                                jArr6 = jArr4;
                                                objArr3 = objArr4;
                                            }
                                            objArr = objArr3;
                                            jArr3 = jArr6;
                                            if (i20 != 8) {
                                                break;
                                            }
                                        } else {
                                            objArr = objArr3;
                                            jArr3 = jArr6;
                                        }
                                        if (i19 == length2) {
                                            break;
                                        }
                                        i19++;
                                        jArr6 = jArr3;
                                        objArr2 = objArr;
                                        i15 = i12;
                                        c10 = 7;
                                    }
                                } else {
                                    i12 = i15;
                                }
                                z11 = mutableScatterSet.isEmpty();
                            } else {
                                jArr2 = jArr5;
                                i11 = length;
                                i12 = i15;
                                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap");
                                if (!ScopeMap.m1477containsimpl(this.observations, (DerivedState) obj2)) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                            }
                            if (z11) {
                                mutableScatterMap.removeValueAt(i18);
                            }
                            i13 = 8;
                        } else {
                            jArr2 = jArr5;
                            i11 = length;
                            i12 = i15;
                            i13 = i14;
                        }
                        j11 >>= i13;
                        i17++;
                        i14 = i13;
                        jArr5 = jArr2;
                        length = i11;
                        i15 = i12;
                        c10 = 7;
                    }
                    jArr = jArr5;
                    int i24 = length;
                    int i25 = i15;
                    if (i16 != i14) {
                        break;
                    }
                    length = i24;
                    i10 = i25;
                } else {
                    jArr = jArr5;
                    i10 = i15;
                }
                if (i10 == length) {
                    break;
                }
                i15 = i10 + 1;
                jArr5 = jArr;
                c10 = 7;
                j10 = -9187201950435737472L;
                i14 = 8;
            }
        }
        if (this.conditionallyInvalidatedScopes.isNotEmpty()) {
            MutableScatterSet<RecomposeScopeImpl> mutableScatterSet2 = this.conditionallyInvalidatedScopes;
            Object[] objArr5 = mutableScatterSet2.elements;
            long[] jArr7 = mutableScatterSet2.metadata;
            int length3 = jArr7.length - 2;
            if (length3 >= 0) {
                int i26 = 0;
                while (true) {
                    long j13 = jArr7[i26];
                    if ((((~j13) << 7) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i27 = 8 - ((~(i26 - length3)) >>> 31);
                        for (int i28 = 0; i28 < i27; i28++) {
                            if ((j13 & 255) < 128) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            if (z10) {
                                int i29 = (i26 << 3) + i28;
                                if (!((RecomposeScopeImpl) objArr5[i29]).isConditional()) {
                                    mutableScatterSet2.removeElementAt(i29);
                                }
                            }
                            j13 >>= 8;
                        }
                        if (i27 != 8) {
                            return;
                        }
                    }
                    if (i26 != length3) {
                        i26++;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    private final boolean clearDeactivated() {
        boolean z10;
        synchronized (this.lock) {
            z10 = true;
            if (this.state != 1) {
                z10 = false;
            }
            if (z10) {
                this.state = 0;
            }
        }
        return z10;
    }

    private final void composeInitial(Function2<? super Composer, ? super Integer, Unit> function2) {
        this.composable = function2;
        this.parent.composeInitial$runtime(this, function2);
    }

    private final PausedComposition composeInitialPaused(boolean z10, Function2<? super Composer, ? super Integer, Unit> function2) {
        boolean z11;
        if (this.pendingPausedComposition == null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z11) {
            PreconditionsKt.throwIllegalStateException("A pausable composition is in progress");
        }
        PausedCompositionImpl pausedCompositionImpl = new PausedCompositionImpl(this, this.parent, this.composer, this.abandonSet, function2, z10, this.applier, this.lock);
        this.pendingPausedComposition = pausedCompositionImpl;
        return pausedCompositionImpl;
    }

    private final void composeInitialWithReuse(Function2<? super Composer, ? super Integer, Unit> function2) {
        this.composer.startReuseFromRoot();
        composeInitial(function2);
        this.composer.endReuseFromRoot();
    }

    private final void drainPendingModificationsForCompositionLocked() {
        Object andSet = this.pendingModifications.getAndSet(CompositionKt.access$getPendingApplyNoModifications$p());
        if (andSet != null) {
            if (!Intrinsics.areEqual(andSet, CompositionKt.access$getPendingApplyNoModifications$p())) {
                if (andSet instanceof Set) {
                    addPendingInvalidationsLocked((Set) andSet, true);
                    return;
                } else if (andSet instanceof Object[]) {
                    for (Set<? extends Object> set : (Set[]) andSet) {
                        addPendingInvalidationsLocked(set, true);
                    }
                    return;
                } else {
                    ComposerKt.composeRuntimeError("corrupt pendingModifications drain: " + this.pendingModifications);
                    throw new KotlinNothingValueException();
                }
            }
            ComposerKt.composeRuntimeError("pending composition has not been applied");
            throw new KotlinNothingValueException();
        }
    }

    private final void drainPendingModificationsLocked() {
        Object andSet = this.pendingModifications.getAndSet(null);
        if (!Intrinsics.areEqual(andSet, CompositionKt.access$getPendingApplyNoModifications$p())) {
            if (andSet instanceof Set) {
                addPendingInvalidationsLocked((Set) andSet, false);
            } else if (andSet instanceof Object[]) {
                for (Set<? extends Object> set : (Set[]) andSet) {
                    addPendingInvalidationsLocked(set, false);
                }
            } else if (andSet == null) {
                ComposerKt.composeRuntimeError("calling recordModificationsOf and applyChanges concurrently is not supported");
                throw new KotlinNothingValueException();
            } else {
                ComposerKt.composeRuntimeError("corrupt pendingModifications drain: " + this.pendingModifications);
                throw new KotlinNothingValueException();
            }
        }
    }

    private final void drainPendingModificationsOutOfBandLocked() {
        Object andSet = this.pendingModifications.getAndSet(y0.f());
        if (!Intrinsics.areEqual(andSet, CompositionKt.access$getPendingApplyNoModifications$p()) && andSet != null) {
            if (andSet instanceof Set) {
                addPendingInvalidationsLocked((Set) andSet, false);
            } else if (andSet instanceof Object[]) {
                for (Set<? extends Object> set : (Set[]) andSet) {
                    addPendingInvalidationsLocked(set, false);
                }
            } else {
                ComposerKt.composeRuntimeError("corrupt pendingModifications drain: " + this.pendingModifications);
                throw new KotlinNothingValueException();
            }
        }
    }

    private final void ensureRunning() {
        boolean z10;
        String str;
        int i10 = this.state;
        boolean z11 = false;
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        str = "";
                    } else {
                        str = "The composition is disposed";
                    }
                } else {
                    str = "A previous pausable composition for this composition was cancelled. This composition must be disposed.";
                }
            } else {
                str = "The composition should be activated before setting content.";
            }
            PreconditionsKt.throwIllegalStateException(str);
        }
        if (this.pendingPausedComposition == null) {
            z11 = true;
        }
        if (!z11) {
            PreconditionsKt.throwIllegalStateException("A pausable composition is in progress");
        }
    }

    private final boolean getAreChildrenComposing() {
        return this.composer.getAreChildrenComposing$runtime();
    }

    private final <T> T guardChanges(Function0<? extends T> function0) {
        try {
            T invoke = function0.invoke();
            InlineMarker.finallyStart(1);
            InlineMarker.finallyEnd(1);
            return invoke;
        } catch (Throwable th2) {
            abandonChanges();
            throw th2;
        }
    }

    private final <T> T guardInvalidationsLocked(Function1<? super ScopeMap<RecomposeScopeImpl, Object>, ? extends T> function1) {
        MutableScatterMap<Object, Object> m1320takeInvalidationsafanTW4 = m1320takeInvalidationsafanTW4();
        try {
            return function1.invoke(ScopeMap.m1473boximpl(m1320takeInvalidationsafanTW4));
        } catch (Throwable th2) {
            this.invalidations = m1320takeInvalidationsafanTW4;
            throw th2;
        }
    }

    private final InvalidationResult invalidateChecked(RecomposeScopeImpl recomposeScopeImpl, Anchor anchor, Object obj) {
        int i10;
        synchronized (this.lock) {
            try {
                CompositionImpl compositionImpl = this.invalidationDelegate;
                CompositionImpl compositionImpl2 = null;
                if (compositionImpl != null) {
                    if (!this.slotTable.groupContainsAnchor(this.invalidationDelegateGroup, anchor)) {
                        compositionImpl = null;
                    }
                    compositionImpl2 = compositionImpl;
                }
                if (compositionImpl2 == null) {
                    if (tryImminentInvalidation(recomposeScopeImpl, obj)) {
                        return InvalidationResult.IMMINENT;
                    } else if (obj == null) {
                        ScopeMap.m1487setimpl(this.invalidations, recomposeScopeImpl, ScopeInvalidated.INSTANCE);
                    } else if (!(obj instanceof DerivedState)) {
                        ScopeMap.m1487setimpl(this.invalidations, recomposeScopeImpl, ScopeInvalidated.INSTANCE);
                    } else {
                        Object obj2 = this.invalidations.get(recomposeScopeImpl);
                        if (obj2 != null) {
                            if (obj2 instanceof MutableScatterSet) {
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                Object[] objArr = mutableScatterSet.elements;
                                long[] jArr = mutableScatterSet.metadata;
                                int length = jArr.length - 2;
                                if (length >= 0) {
                                    int i11 = 0;
                                    loop0: while (true) {
                                        long j10 = jArr[i11];
                                        if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i12 = 8;
                                            int i13 = 8 - ((~(i11 - length)) >>> 31);
                                            int i14 = 0;
                                            while (i14 < i13) {
                                                if ((j10 & 255) < 128) {
                                                    if (objArr[(i11 << 3) + i14] == ScopeInvalidated.INSTANCE) {
                                                        break loop0;
                                                    }
                                                    i10 = 8;
                                                } else {
                                                    i10 = i12;
                                                }
                                                j10 >>= i10;
                                                i14++;
                                                i12 = i10;
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
                                }
                            } else if (obj2 == ScopeInvalidated.INSTANCE) {
                            }
                        }
                        ScopeMap.m1470addimpl(this.invalidations, recomposeScopeImpl, obj);
                    }
                }
                if (compositionImpl2 != null) {
                    return compositionImpl2.invalidateChecked(recomposeScopeImpl, anchor, obj);
                }
                this.parent.invalidate$runtime(this);
                if (isComposing()) {
                    return InvalidationResult.DEFERRED;
                }
                return InvalidationResult.SCHEDULED;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void invalidateScopeOfLocked(Object obj) {
        Object obj2 = this.observations.get(obj);
        if (obj2 != null) {
            if (obj2 instanceof MutableScatterSet) {
                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                Object[] objArr = mutableScatterSet.elements;
                long[] jArr = mutableScatterSet.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i10 = 0;
                    while (true) {
                        long j10 = jArr[i10];
                        if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i11 = 8 - ((~(i10 - length)) >>> 31);
                            for (int i12 = 0; i12 < i11; i12++) {
                                if ((255 & j10) < 128) {
                                    RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objArr[(i10 << 3) + i12];
                                    if (recomposeScopeImpl.invalidateForResult(obj) == InvalidationResult.IMMINENT) {
                                        ScopeMap.m1470addimpl(this.observationsProcessed, obj, recomposeScopeImpl);
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
            } else {
                RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj2;
                if (recomposeScopeImpl2.invalidateForResult(obj) == InvalidationResult.IMMINENT) {
                    ScopeMap.m1470addimpl(this.observationsProcessed, obj, recomposeScopeImpl2);
                }
            }
        }
    }

    private final CompositionObserver observer() {
        return this.observerHolder.current();
    }

    /* renamed from: takeInvalidations-afanTW4  reason: not valid java name */
    private final MutableScatterMap<Object, Object> m1320takeInvalidationsafanTW4() {
        MutableScatterMap<Object, Object> mutableScatterMap = this.invalidations;
        this.invalidations = ScopeMap.m1476constructorimpl$default(null, 1, null);
        return mutableScatterMap;
    }

    private final <T> T trackAbandonedValues(Function0<? extends T> function0) {
        try {
            T invoke = function0.invoke();
            InlineMarker.finallyStart(1);
            InlineMarker.finallyEnd(1);
            return invoke;
        } catch (Throwable th2) {
            InlineMarker.finallyStart(1);
            if (!this.abandonSet.isEmpty()) {
                RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                try {
                    rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                    rememberEventDispatcher.dispatchAbandons();
                } finally {
                    InlineMarker.finallyStart(1);
                    rememberEventDispatcher.clear();
                    InlineMarker.finallyEnd(1);
                }
            }
            InlineMarker.finallyEnd(1);
            throw th2;
        }
    }

    private final boolean tryImminentInvalidation(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        if (isComposing() && this.composer.tryImminentInvalidation$runtime(recomposeScopeImpl, obj)) {
            return true;
        }
        return false;
    }

    private final void validateRecomposeScopeAnchors(SlotTable slotTable) {
        RecomposeScopeImpl recomposeScopeImpl;
        Object[] slots = slotTable.getSlots();
        ArrayList arrayList = new ArrayList();
        for (Object obj : slots) {
            if (obj instanceof RecomposeScopeImpl) {
                recomposeScopeImpl = (RecomposeScopeImpl) obj;
            } else {
                recomposeScopeImpl = null;
            }
            if (recomposeScopeImpl != null) {
                arrayList.add(recomposeScopeImpl);
            }
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) arrayList.get(i10);
            Anchor anchor = recomposeScopeImpl2.getAnchor();
            if (anchor != null && !slotTable.slotsOf$runtime(anchor.toIndexFor(slotTable)).contains(recomposeScopeImpl2)) {
                PreconditionsKt.throwIllegalStateException("Misaligned anchor " + anchor + " in scope " + recomposeScopeImpl2 + " encountered, scope found at " + kotlin.collections.n.y0(slotTable.getSlots(), recomposeScopeImpl2));
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void abandonChanges() {
        this.pendingModifications.set(null);
        this.changes.clear();
        this.lateChanges.clear();
        if (!this.abandonSet.isEmpty()) {
            RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
            try {
                rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                rememberEventDispatcher.dispatchAbandons();
            } finally {
                rememberEventDispatcher.clear();
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void applyChanges() {
        synchronized (this.lock) {
            try {
                applyChangesInLocked(this.changes);
                drainPendingModificationsLocked();
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                try {
                    if (!this.abandonSet.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                        rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                        rememberEventDispatcher.dispatchAbandons();
                        rememberEventDispatcher.clear();
                    }
                    throw th2;
                } catch (Throwable th3) {
                    abandonChanges();
                    throw th3;
                }
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void applyLateChanges() {
        synchronized (this.lock) {
            try {
                if (this.lateChanges.isNotEmpty()) {
                    applyChangesInLocked(this.lateChanges);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                try {
                    if (!this.abandonSet.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                        rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                        rememberEventDispatcher.dispatchAbandons();
                        rememberEventDispatcher.clear();
                    }
                    throw th2;
                } catch (Throwable th3) {
                    abandonChanges();
                    throw th3;
                }
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void changesApplied() {
        synchronized (this.lock) {
            try {
                this.composer.changesApplied$runtime();
                if (!this.abandonSet.isEmpty()) {
                    RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                    rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                    rememberEventDispatcher.dispatchAbandons();
                    rememberEventDispatcher.clear();
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                try {
                    if (!this.abandonSet.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher2 = this.rememberManager;
                        rememberEventDispatcher2.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                        rememberEventDispatcher2.dispatchAbandons();
                        rememberEventDispatcher2.clear();
                    }
                    throw th2;
                } catch (Throwable th3) {
                    abandonChanges();
                    throw th3;
                }
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void composeContent(@NotNull Function2<? super Composer, ? super Integer, Unit> function2) {
        try {
            synchronized (this.lock) {
                drainPendingModificationsForCompositionLocked();
                MutableScatterMap<Object, Object> m1320takeInvalidationsafanTW4 = m1320takeInvalidationsafanTW4();
                try {
                    this.composer.m1317composeContentZbOJvo$runtime(m1320takeInvalidationsafanTW4, function2, this.shouldPause);
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    this.invalidations = m1320takeInvalidationsafanTW4;
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                if (!this.abandonSet.isEmpty()) {
                    RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                    rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                    rememberEventDispatcher.dispatchAbandons();
                    rememberEventDispatcher.clear();
                }
                throw th3;
            } catch (Throwable th4) {
                abandonChanges();
                throw th4;
            }
        }
    }

    public final int composerStacksSizes$runtime() {
        return this.composer.stacksSize$runtime();
    }

    @Override // androidx.compose.runtime.ReusableComposition
    public void deactivate() {
        boolean z10;
        boolean z11;
        synchronized (this.lock) {
            try {
                if (this.pendingPausedComposition == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    PreconditionsKt.throwIllegalStateException("Deactivate is not supported while pausable composition is in progress");
                }
                if (this.slotTable.getGroupsSize() > 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (z11 || !this.abandonSet.isEmpty()) {
                    Trace trace = Trace.INSTANCE;
                    Object beginSection = trace.beginSection("Compose:deactivate");
                    RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                    try {
                        rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                        if (z11) {
                            this.applier.onBeginChanges();
                            SlotWriter openWriter = this.slotTable.openWriter();
                            ComposerKt.deactivateCurrentGroup(openWriter, this.rememberManager);
                            Unit unit = Unit.f60915a;
                            openWriter.close(true);
                            this.applier.onEndChanges();
                            rememberEventDispatcher.dispatchRememberObservers();
                        }
                        rememberEventDispatcher.dispatchAbandons();
                        rememberEventDispatcher.clear();
                        Unit unit2 = Unit.f60915a;
                        trace.endSection(beginSection);
                    } catch (Throwable th2) {
                        rememberEventDispatcher.clear();
                        throw th2;
                    }
                }
                ScopeMap.m1474clearimpl(this.observations);
                ScopeMap.m1474clearimpl(this.derivedStates);
                ScopeMap.m1474clearimpl(this.invalidations);
                this.changes.clear();
                this.lateChanges.clear();
                this.composer.deactivate$runtime();
                this.state = 1;
                Unit unit3 = Unit.f60915a;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public <R> R delegateInvalidations(@Nullable ControlledComposition controlledComposition, int i10, @NotNull Function0<? extends R> function0) {
        if (controlledComposition != null && !Intrinsics.areEqual(controlledComposition, this) && i10 >= 0) {
            this.invalidationDelegate = (CompositionImpl) controlledComposition;
            this.invalidationDelegateGroup = i10;
            try {
                return function0.invoke();
            } finally {
                this.invalidationDelegate = null;
                this.invalidationDelegateGroup = 0;
            }
        }
        return function0.invoke();
    }

    @Override // androidx.compose.runtime.Composition
    public void dispose() {
        boolean z10;
        synchronized (this.lock) {
            try {
                if (this.composer.isComposing$runtime()) {
                    PreconditionsKt.throwIllegalStateException("Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block.");
                }
                if (this.state != 3) {
                    this.state = 3;
                    this.composable = ComposableSingletons$CompositionKt.INSTANCE.getLambda$1918065384$runtime();
                    ChangeList deferredChanges$runtime = this.composer.getDeferredChanges$runtime();
                    if (deferredChanges$runtime != null) {
                        applyChangesInLocked(deferredChanges$runtime);
                    }
                    if (this.slotTable.getGroupsSize() > 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10 || !this.abandonSet.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                        rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                        if (z10) {
                            this.applier.onBeginChanges();
                            SlotWriter openWriter = this.slotTable.openWriter();
                            try {
                                ComposerKt.removeCurrentGroup(openWriter, this.rememberManager);
                                Unit unit = Unit.f60915a;
                                openWriter.close(true);
                                this.applier.clear();
                                this.applier.onEndChanges();
                                rememberEventDispatcher.dispatchRememberObservers();
                            } catch (Throwable th2) {
                                openWriter.close(false);
                                throw th2;
                            }
                        }
                        rememberEventDispatcher.dispatchAbandons();
                        rememberEventDispatcher.clear();
                    }
                    this.composer.dispose$runtime();
                }
                Unit unit2 = Unit.f60915a;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        this.parent.unregisterComposition$runtime(this);
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void disposeUnusedMovableContent(@NotNull MovableContentState movableContentState) {
        RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
        try {
            rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
            SlotWriter openWriter = movableContentState.getSlotTable$runtime().openWriter();
            ComposerKt.removeCurrentGroup(openWriter, this.rememberManager);
            Unit unit = Unit.f60915a;
            openWriter.close(true);
            rememberEventDispatcher.dispatchRememberObservers();
        } finally {
            rememberEventDispatcher.clear();
        }
    }

    @NotNull
    public final List<Pair<RecomposeScopeImpl, Object>> extractInvalidationsOf$runtime(@NotNull Anchor anchor) {
        MutableScatterMap<Object, Object> mutableScatterMap;
        long[] jArr;
        int i10;
        MutableScatterMap<Object, Object> mutableScatterMap2;
        long[] jArr2;
        int i11;
        int i12;
        int i13;
        long j10;
        int i14;
        char c10;
        long j11;
        int i15;
        MutableScatterMap<Object, Object> mutableScatterMap3;
        boolean z10;
        long[] jArr3;
        Object[] objArr;
        long[] jArr4;
        MutableScatterMap<Object, Object> mutableScatterMap4;
        int i16;
        Object[] objArr2;
        if (ScopeMap.m1481getSizeimpl(this.invalidations) > 0) {
            ArrayList arrayList = new ArrayList();
            SlotTable slotTable = this.slotTable;
            MutableScatterMap<Object, Object> mutableScatterMap5 = this.invalidations;
            long[] jArr5 = mutableScatterMap5.metadata;
            int length = jArr5.length - 2;
            if (length >= 0) {
                int i17 = 0;
                while (true) {
                    long j12 = jArr5[i17];
                    char c11 = 7;
                    long j13 = -9187201950435737472L;
                    if ((((~j12) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i18 = 8;
                        int i19 = 8 - ((~(i17 - length)) >>> 31);
                        int i20 = 0;
                        while (i20 < i19) {
                            if ((j12 & 255) < 128) {
                                int i21 = (i17 << 3) + i20;
                                Object obj = mutableScatterMap5.keys[i21];
                                Object obj2 = mutableScatterMap5.values[i21];
                                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.ScopeMap");
                                if (obj2 instanceof MutableScatterSet) {
                                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>");
                                    MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                    Object[] objArr3 = mutableScatterSet.elements;
                                    long[] jArr6 = mutableScatterSet.metadata;
                                    jArr2 = jArr5;
                                    int length2 = jArr6.length - 2;
                                    if (length2 >= 0) {
                                        i11 = length;
                                        i12 = i20;
                                        i13 = i17;
                                        int i22 = 0;
                                        while (true) {
                                            long j14 = jArr6[i22];
                                            j10 = j12;
                                            c10 = 7;
                                            j11 = -9187201950435737472L;
                                            if ((((~j14) << 7) & j14 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                int i23 = 8 - ((~(i22 - length2)) >>> 31);
                                                int i24 = 0;
                                                while (i24 < i23) {
                                                    if ((j14 & 255) < 128) {
                                                        jArr4 = jArr6;
                                                        int i25 = (i22 << 3) + i24;
                                                        i16 = i19;
                                                        Object obj3 = objArr3[i25];
                                                        objArr2 = objArr3;
                                                        RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj;
                                                        mutableScatterMap4 = mutableScatterMap5;
                                                        Anchor anchor2 = recomposeScopeImpl.getAnchor();
                                                        if (anchor2 != null && slotTable.inGroup(anchor, anchor2)) {
                                                            arrayList.add(ms.k.a(recomposeScopeImpl, obj3));
                                                            mutableScatterSet.removeElementAt(i25);
                                                        }
                                                    } else {
                                                        jArr4 = jArr6;
                                                        mutableScatterMap4 = mutableScatterMap5;
                                                        i16 = i19;
                                                        objArr2 = objArr3;
                                                    }
                                                    j14 >>= 8;
                                                    i24++;
                                                    i19 = i16;
                                                    jArr6 = jArr4;
                                                    objArr3 = objArr2;
                                                    mutableScatterMap5 = mutableScatterMap4;
                                                }
                                                jArr3 = jArr6;
                                                mutableScatterMap3 = mutableScatterMap5;
                                                i14 = i19;
                                                objArr = objArr3;
                                                if (i23 != 8) {
                                                    break;
                                                }
                                            } else {
                                                jArr3 = jArr6;
                                                mutableScatterMap3 = mutableScatterMap5;
                                                i14 = i19;
                                                objArr = objArr3;
                                            }
                                            if (i22 == length2) {
                                                break;
                                            }
                                            i22++;
                                            j12 = j10;
                                            i19 = i14;
                                            jArr6 = jArr3;
                                            objArr3 = objArr;
                                            mutableScatterMap5 = mutableScatterMap3;
                                        }
                                    } else {
                                        mutableScatterMap3 = mutableScatterMap5;
                                        i11 = length;
                                        i12 = i20;
                                        i13 = i17;
                                        j10 = j12;
                                        i14 = i19;
                                        c10 = 7;
                                        j11 = -9187201950435737472L;
                                    }
                                    z10 = mutableScatterSet.isEmpty();
                                } else {
                                    mutableScatterMap3 = mutableScatterMap5;
                                    jArr2 = jArr5;
                                    i11 = length;
                                    i12 = i20;
                                    i13 = i17;
                                    j10 = j12;
                                    i14 = i19;
                                    c10 = 7;
                                    j11 = -9187201950435737472L;
                                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap");
                                    RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj;
                                    Anchor anchor3 = recomposeScopeImpl2.getAnchor();
                                    if (anchor3 != null && slotTable.inGroup(anchor, anchor3)) {
                                        arrayList.add(ms.k.a(recomposeScopeImpl2, obj2));
                                        z10 = true;
                                    } else {
                                        z10 = false;
                                    }
                                }
                                if (z10) {
                                    mutableScatterMap2 = mutableScatterMap3;
                                    mutableScatterMap2.removeValueAt(i21);
                                } else {
                                    mutableScatterMap2 = mutableScatterMap3;
                                }
                                i15 = 8;
                            } else {
                                mutableScatterMap2 = mutableScatterMap5;
                                jArr2 = jArr5;
                                i11 = length;
                                i12 = i20;
                                i13 = i17;
                                j10 = j12;
                                i14 = i19;
                                c10 = c11;
                                j11 = j13;
                                i15 = i18;
                            }
                            j12 = j10 >> i15;
                            i20 = i12 + 1;
                            i18 = i15;
                            c11 = c10;
                            j13 = j11;
                            jArr5 = jArr2;
                            length = i11;
                            i17 = i13;
                            i19 = i14;
                            mutableScatterMap5 = mutableScatterMap2;
                        }
                        mutableScatterMap = mutableScatterMap5;
                        jArr = jArr5;
                        int i26 = length;
                        int i27 = i17;
                        if (i19 == i18) {
                            length = i26;
                            i10 = i27;
                        } else {
                            return arrayList;
                        }
                    } else {
                        mutableScatterMap = mutableScatterMap5;
                        jArr = jArr5;
                        i10 = i17;
                    }
                    if (i10 != length) {
                        i17 = i10 + 1;
                        mutableScatterMap5 = mutableScatterMap;
                        jArr5 = jArr;
                    } else {
                        return arrayList;
                    }
                }
            } else {
                return arrayList;
            }
        } else {
            return CollectionsKt.n();
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    @Nullable
    public ShouldPauseCallback getAndSetShouldPauseCallback(@Nullable ShouldPauseCallback shouldPauseCallback) {
        ShouldPauseCallback shouldPauseCallback2 = this.shouldPause;
        this.shouldPause = shouldPauseCallback;
        return shouldPauseCallback2;
    }

    @NotNull
    public final Function2<Composer, Integer, Unit> getComposable() {
        return this.composable;
    }

    @NotNull
    public final ComposerImpl getComposer$runtime() {
        return this.composer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.CompositionServices
    @Nullable
    public <T> T getCompositionService(@NotNull CompositionServiceKey<T> compositionServiceKey) {
        if (Intrinsics.areEqual(compositionServiceKey, CompositionKt.getObservableCompositionServiceKey())) {
            return this;
        }
        return null;
    }

    @TestOnly
    @NotNull
    public final List<RecomposeScopeImpl> getConditionalScopes$runtime() {
        return CollectionsKt.d1(this.conditionallyInvalidatedScopes.asSet());
    }

    @TestOnly
    @NotNull
    public final Set<Object> getDerivedStateDependencies$runtime() {
        return this.derivedStates.asMap().keySet();
    }

    @Override // androidx.compose.runtime.Composition
    public boolean getHasInvalidations() {
        boolean z10;
        synchronized (this.lock) {
            if (ScopeMap.m1481getSizeimpl(this.invalidations) > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public boolean getHasPendingChanges() {
        boolean hasPendingChanges$runtime;
        synchronized (this.lock) {
            hasPendingChanges$runtime = this.composer.getHasPendingChanges$runtime();
        }
        return hasPendingChanges$runtime;
    }

    @TestOnly
    @NotNull
    public final Set<Object> getObservedObjects$runtime() {
        return this.observations.asMap().keySet();
    }

    @NotNull
    public final CompositionObserverHolder getObserverHolder$runtime() {
        return this.observerHolder;
    }

    @TestOnly
    @NotNull
    public final CompositionContext getParent() {
        return this.parent;
    }

    public final boolean getPendingInvalidScopes$runtime() {
        return this.pendingInvalidScopes;
    }

    @NotNull
    public final CoroutineContext getRecomposeContext() {
        CoroutineContext coroutineContext = this._recomposeContext;
        if (coroutineContext == null) {
            return this.parent.getRecomposeCoroutineContext$runtime();
        }
        return coroutineContext;
    }

    @NotNull
    public final SlotTable getSlotTable$runtime() {
        return this.slotTable;
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void insertMovableContent(@NotNull List<Pair<MovableContentStateReference, MovableContentStateReference>> list) {
        boolean z10 = true;
        int size = list.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                break;
            } else if (!Intrinsics.areEqual(list.get(i10).e().getComposition$runtime(), this)) {
                z10 = false;
                break;
            } else {
                i10++;
            }
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        try {
            this.composer.insertMovableContentReferences(list);
            Unit unit = Unit.f60915a;
        } catch (Throwable th2) {
            try {
                if (!this.abandonSet.isEmpty()) {
                    RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                    rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                    rememberEventDispatcher.dispatchAbandons();
                    rememberEventDispatcher.clear();
                }
                throw th2;
            } catch (Throwable th3) {
                abandonChanges();
                throw th3;
            }
        }
    }

    @Override // androidx.compose.runtime.RecomposeScopeOwner
    @NotNull
    public InvalidationResult invalidate(@NotNull RecomposeScopeImpl recomposeScopeImpl, @Nullable Object obj) {
        CompositionObserver observer;
        CompositionImpl compositionImpl;
        if (recomposeScopeImpl.getDefaultsInScope()) {
            recomposeScopeImpl.setDefaultsInvalid(true);
        }
        Anchor anchor = recomposeScopeImpl.getAnchor();
        if (anchor != null && anchor.getValid()) {
            if (!this.slotTable.ownsAnchor(anchor)) {
                synchronized (this.lock) {
                    compositionImpl = this.invalidationDelegate;
                }
                if (compositionImpl != null && compositionImpl.tryImminentInvalidation(recomposeScopeImpl, obj)) {
                    return InvalidationResult.IMMINENT;
                }
                return InvalidationResult.IGNORED;
            } else if (!recomposeScopeImpl.getCanRecompose()) {
                return InvalidationResult.IGNORED;
            } else {
                InvalidationResult invalidateChecked = invalidateChecked(recomposeScopeImpl, anchor, obj);
                if (invalidateChecked != InvalidationResult.IGNORED && (observer = observer()) != null) {
                    observer.onScopeInvalidated(recomposeScopeImpl, obj);
                }
                return invalidateChecked;
            }
        }
        return InvalidationResult.IGNORED;
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void invalidateAll() {
        Object[] slots;
        RecomposeScopeImpl recomposeScopeImpl;
        synchronized (this.lock) {
            try {
                for (Object obj : this.slotTable.getSlots()) {
                    if (obj instanceof RecomposeScopeImpl) {
                        recomposeScopeImpl = (RecomposeScopeImpl) obj;
                    } else {
                        recomposeScopeImpl = null;
                    }
                    if (recomposeScopeImpl != null) {
                        recomposeScopeImpl.invalidate();
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void invalidateGroupsWithKey(int i10) {
        List<RecomposeScopeImpl> invalidateGroupsWithKey$runtime;
        synchronized (this.lock) {
            invalidateGroupsWithKey$runtime = this.slotTable.invalidateGroupsWithKey$runtime(i10);
        }
        if (invalidateGroupsWithKey$runtime != null) {
            int size = invalidateGroupsWithKey$runtime.size();
            for (int i11 = 0; i11 < size; i11++) {
                if (invalidateGroupsWithKey$runtime.get(i11).invalidateForResult(null) != InvalidationResult.IGNORED) {
                }
            }
            return;
        }
        if (this.composer.forceRecomposeScopes$runtime()) {
            this.parent.invalidate$runtime(this);
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public boolean isComposing() {
        return this.composer.isComposing$runtime();
    }

    @Override // androidx.compose.runtime.Composition
    public boolean isDisposed() {
        if (this.state == 3) {
            return true;
        }
        return false;
    }

    public final boolean isRoot() {
        return this.isRoot;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0050, code lost:
        return true;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
    @Override // androidx.compose.runtime.ControlledComposition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean observesAnyOf(@org.jetbrains.annotations.NotNull java.util.Set<? extends java.lang.Object> r15) {
        /*
            r14 = this;
            boolean r0 = r15 instanceof androidx.compose.runtime.collection.ScatterSetWrapper
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L5c
            androidx.compose.runtime.collection.ScatterSetWrapper r15 = (androidx.compose.runtime.collection.ScatterSetWrapper) r15
            androidx.collection.ScatterSet r15 = r15.getSet$runtime()
            java.lang.Object[] r0 = r15.elements
            long[] r15 = r15.metadata
            int r3 = r15.length
            int r3 = r3 + (-2)
            if (r3 < 0) goto L7d
            r4 = r1
        L16:
            r5 = r15[r4]
            long r7 = ~r5
            r9 = 7
            long r7 = r7 << r9
            long r7 = r7 & r5
            r9 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r7 = r7 & r9
            int r7 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r7 == 0) goto L57
            int r7 = r4 - r3
            int r7 = ~r7
            int r7 = r7 >>> 31
            r8 = 8
            int r7 = 8 - r7
            r9 = r1
        L30:
            if (r9 >= r7) goto L55
            r10 = 255(0xff, double:1.26E-321)
            long r10 = r10 & r5
            r12 = 128(0x80, double:6.32E-322)
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 >= 0) goto L51
            int r10 = r4 << 3
            int r10 = r10 + r9
            r10 = r0[r10]
            androidx.collection.MutableScatterMap<java.lang.Object, java.lang.Object> r11 = r14.observations
            boolean r11 = androidx.compose.runtime.collection.ScopeMap.m1477containsimpl(r11, r10)
            if (r11 != 0) goto L50
            androidx.collection.MutableScatterMap<java.lang.Object, java.lang.Object> r11 = r14.derivedStates
            boolean r10 = androidx.compose.runtime.collection.ScopeMap.m1477containsimpl(r11, r10)
            if (r10 == 0) goto L51
        L50:
            return r2
        L51:
            long r5 = r5 >> r8
            int r9 = r9 + 1
            goto L30
        L55:
            if (r7 != r8) goto L7d
        L57:
            if (r4 == r3) goto L7d
            int r4 = r4 + 1
            goto L16
        L5c:
            java.lang.Iterable r15 = (java.lang.Iterable) r15
            java.util.Iterator r15 = r15.iterator()
        L62:
            boolean r0 = r15.hasNext()
            if (r0 == 0) goto L7d
            java.lang.Object r0 = r15.next()
            androidx.collection.MutableScatterMap<java.lang.Object, java.lang.Object> r3 = r14.observations
            boolean r3 = androidx.compose.runtime.collection.ScopeMap.m1477containsimpl(r3, r0)
            if (r3 != 0) goto L7c
            androidx.collection.MutableScatterMap<java.lang.Object, java.lang.Object> r3 = r14.derivedStates
            boolean r0 = androidx.compose.runtime.collection.ScopeMap.m1477containsimpl(r3, r0)
            if (r0 == 0) goto L62
        L7c:
            return r2
        L7d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.CompositionImpl.observesAnyOf(java.util.Set):boolean");
    }

    public final void pausedCompositionFinished$runtime(@Nullable ScatterSet<RememberObserverHolder> scatterSet) {
        this.pendingPausedComposition = null;
        if (scatterSet != null) {
            this.rememberManager.ignoreForgotten(scatterSet);
            this.state = 2;
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void prepareCompose(@NotNull Function0<Unit> function0) {
        this.composer.prepareCompose$runtime(function0);
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public boolean recompose() {
        synchronized (this.lock) {
            PausedCompositionImpl pausedCompositionImpl = this.pendingPausedComposition;
            if (pausedCompositionImpl != null && !pausedCompositionImpl.isRecomposing$runtime()) {
                pausedCompositionImpl.markIncomplete$runtime();
                return false;
            }
            drainPendingModificationsForCompositionLocked();
            boolean m1318recomposeaFTiNEg$runtime = this.composer.m1318recomposeaFTiNEg$runtime(m1320takeInvalidationsafanTW4(), this.shouldPause);
            if (!m1318recomposeaFTiNEg$runtime) {
                drainPendingModificationsLocked();
            }
            return m1318recomposeaFTiNEg$runtime;
        }
    }

    @Override // androidx.compose.runtime.RecomposeScopeOwner
    public void recomposeScopeReleased(@NotNull RecomposeScopeImpl recomposeScopeImpl) {
        this.pendingInvalidScopes = true;
        CompositionObserver observer = observer();
        if (observer != null) {
            observer.onScopeDisposed(recomposeScopeImpl);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.util.Set[]] */
    @Override // androidx.compose.runtime.ControlledComposition
    public void recordModificationsOf(@NotNull Set<? extends Object> set) {
        Object obj;
        Set<? extends Object> set2;
        do {
            obj = this.pendingModifications.get();
            if (obj != null && !Intrinsics.areEqual(obj, CompositionKt.access$getPendingApplyNoModifications$p())) {
                if (obj instanceof Set) {
                    set2 = new Set[]{obj, set};
                } else if (obj instanceof Object[]) {
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.collections.Set<kotlin.Any>>");
                    set2 = kotlin.collections.n.M((Set[]) obj, set);
                } else {
                    throw new IllegalStateException(("corrupt pendingModifications: " + this.pendingModifications).toString());
                }
            } else {
                set2 = set;
            }
        } while (!androidx.compose.animation.core.a.a(this.pendingModifications, obj, set2));
        if (obj == null) {
            synchronized (this.lock) {
                drainPendingModificationsLocked();
                Unit unit = Unit.f60915a;
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition, androidx.compose.runtime.RecomposeScopeOwner
    public void recordReadOf(@NotNull Object obj) {
        RecomposeScopeImpl currentRecomposeScope$runtime;
        long[] jArr;
        long[] jArr2;
        int i10;
        if (!getAreChildrenComposing() && (currentRecomposeScope$runtime = this.composer.getCurrentRecomposeScope$runtime()) != null) {
            currentRecomposeScope$runtime.setUsed(true);
            boolean recordRead = currentRecomposeScope$runtime.recordRead(obj);
            CompositionObserver observer = observer();
            if (observer != null) {
                observer.onReadInScope(currentRecomposeScope$runtime, obj);
            }
            if (!recordRead) {
                if (obj instanceof StateObjectImpl) {
                    ((StateObjectImpl) obj).m1513recordReadInh_f27i8$runtime(ReaderKind.m1500constructorimpl(1));
                }
                ScopeMap.m1470addimpl(this.observations, obj, currentRecomposeScope$runtime);
                if (obj instanceof DerivedState) {
                    DerivedState<?> derivedState = (DerivedState) obj;
                    DerivedState.Record<?> currentRecord = derivedState.getCurrentRecord();
                    ScopeMap.m1485removeScopeimpl(this.derivedStates, obj);
                    ObjectIntMap<StateObject> dependencies = currentRecord.getDependencies();
                    Object[] objArr = dependencies.keys;
                    long[] jArr3 = dependencies.metadata;
                    int length = jArr3.length - 2;
                    if (length >= 0) {
                        int i11 = 0;
                        while (true) {
                            long j10 = jArr3[i11];
                            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i12 = 8;
                                int i13 = 8 - ((~(i11 - length)) >>> 31);
                                int i14 = 0;
                                while (i14 < i13) {
                                    if ((j10 & 255) < 128) {
                                        StateObject stateObject = (StateObject) objArr[(i11 << 3) + i14];
                                        if (stateObject instanceof StateObjectImpl) {
                                            jArr2 = jArr3;
                                            ((StateObjectImpl) stateObject).m1513recordReadInh_f27i8$runtime(ReaderKind.m1500constructorimpl(1));
                                        } else {
                                            jArr2 = jArr3;
                                        }
                                        ScopeMap.m1470addimpl(this.derivedStates, stateObject, obj);
                                        i10 = 8;
                                    } else {
                                        jArr2 = jArr3;
                                        i10 = i12;
                                    }
                                    j10 >>= i10;
                                    i14++;
                                    i12 = i10;
                                    jArr3 = jArr2;
                                }
                                jArr = jArr3;
                                if (i13 != i12) {
                                    break;
                                }
                            } else {
                                jArr = jArr3;
                            }
                            if (i11 == length) {
                                break;
                            }
                            i11++;
                            jArr3 = jArr;
                        }
                    }
                    currentRecomposeScope$runtime.recordDerivedStateValue(derivedState, currentRecord.getCurrentValue());
                }
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void recordWriteOf(@NotNull Object obj) {
        synchronized (this.lock) {
            try {
                invalidateScopeOfLocked(obj);
                Object obj2 = this.derivedStates.get(obj);
                if (obj2 != null) {
                    if (obj2 instanceof MutableScatterSet) {
                        MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                        Object[] objArr = mutableScatterSet.elements;
                        long[] jArr = mutableScatterSet.metadata;
                        int length = jArr.length - 2;
                        if (length >= 0) {
                            int i10 = 0;
                            while (true) {
                                long j10 = jArr[i10];
                                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                                    for (int i12 = 0; i12 < i11; i12++) {
                                        if ((255 & j10) < 128) {
                                            invalidateScopeOfLocked((DerivedState) objArr[(i10 << 3) + i12]);
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
                    } else {
                        invalidateScopeOfLocked((DerivedState) obj2);
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void removeDerivedStateObservation$runtime(@NotNull DerivedState<?> derivedState) {
        if (!ScopeMap.m1477containsimpl(this.observations, derivedState)) {
            ScopeMap.m1485removeScopeimpl(this.derivedStates, derivedState);
        }
    }

    public final void removeObservation$runtime(@NotNull Object obj, @NotNull RecomposeScopeImpl recomposeScopeImpl) {
        ScopeMap.m1483removeimpl(this.observations, obj, recomposeScopeImpl);
    }

    public final void setComposable(@NotNull Function2<? super Composer, ? super Integer, Unit> function2) {
        this.composable = function2;
    }

    @Override // androidx.compose.runtime.Composition
    public void setContent(@NotNull Function2<? super Composer, ? super Integer, Unit> function2) {
        boolean clearDeactivated = clearDeactivated();
        ensureRunning();
        if (clearDeactivated) {
            composeInitialWithReuse(function2);
        } else {
            composeInitial(function2);
        }
    }

    @Override // androidx.compose.runtime.ReusableComposition
    public void setContentWithReuse(@NotNull Function2<? super Composer, ? super Integer, Unit> function2) {
        clearDeactivated();
        ensureRunning();
        composeInitialWithReuse(function2);
    }

    @Override // androidx.compose.runtime.tooling.ObservableComposition
    @NotNull
    public CompositionObserverHandle setObserver(@NotNull final CompositionObserver compositionObserver) {
        synchronized (this.lock) {
            this.observerHolder.setObserver(compositionObserver);
            this.observerHolder.setRoot(true);
            Unit unit = Unit.f60915a;
        }
        return new CompositionObserverHandle() { // from class: androidx.compose.runtime.CompositionImpl$setObserver$2
            @Override // androidx.compose.runtime.tooling.CompositionObserverHandle
            public void dispose() {
                Object obj;
                obj = CompositionImpl.this.lock;
                CompositionImpl compositionImpl = CompositionImpl.this;
                CompositionObserver compositionObserver2 = compositionObserver;
                synchronized (obj) {
                    try {
                        if (Intrinsics.areEqual(compositionImpl.getObserverHolder$runtime().getObserver(), compositionObserver2)) {
                            compositionImpl.getObserverHolder$runtime().setObserver(null);
                            compositionImpl.getObserverHolder$runtime().setRoot(false);
                        }
                        Unit unit2 = Unit.f60915a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        };
    }

    @Override // androidx.compose.runtime.PausableComposition
    @NotNull
    public PausedComposition setPausableContent(@NotNull Function2<? super Composer, ? super Integer, Unit> function2) {
        return composeInitialPaused(clearDeactivated(), function2);
    }

    @Override // androidx.compose.runtime.PausableComposition
    @NotNull
    public PausedComposition setPausableContentWithReuse(@NotNull Function2<? super Composer, ? super Integer, Unit> function2) {
        clearDeactivated();
        ensureRunning();
        return composeInitialPaused(true, function2);
    }

    public final void setPendingInvalidScopes$runtime(boolean z10) {
        this.pendingInvalidScopes = z10;
    }

    public final void updateMovingInvalidations$runtime() {
        synchronized (this.lock) {
            drainPendingModificationsOutOfBandLocked();
            this.composer.m1319updateComposerInvalidationsRY85e9Y(m1320takeInvalidationsafanTW4());
            Unit unit = Unit.f60915a;
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void verifyConsistent() {
        synchronized (this.lock) {
            try {
                if (!isComposing()) {
                    this.composer.verifyConsistent$runtime();
                    this.slotTable.verifyWellFormed();
                    validateRecomposeScopeAnchors(this.slotTable);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static /* synthetic */ void getAbandonSet$annotations() {
    }

    public static /* synthetic */ void getPendingInvalidScopes$runtime$annotations() {
    }

    public static /* synthetic */ void getSlotTable$runtime$annotations() {
    }

    private final void addPendingInvalidationsLocked(Set<? extends Object> set, boolean z10) {
        int i10;
        String str;
        long[] jArr;
        int i11;
        String str2;
        long[] jArr2;
        int i12;
        int i13;
        int i14;
        boolean contains;
        Object[] objArr;
        int i15;
        String str3;
        Object[] objArr2;
        String str4;
        long[] jArr3;
        int i16;
        String str5;
        long[] jArr4;
        int i17;
        int i18;
        long j10;
        boolean z11;
        long[] jArr5;
        Object[] objArr3;
        int i19;
        long[] jArr6;
        Object[] objArr4;
        int i20;
        int i21;
        int i22;
        int i23;
        long j11 = 255;
        char c10 = 7;
        long j12 = -9187201950435737472L;
        int i24 = 8;
        if (set instanceof ScatterSetWrapper) {
            ScatterSet set$runtime = ((ScatterSetWrapper) set).getSet$runtime();
            Object[] objArr5 = set$runtime.elements;
            long[] jArr7 = set$runtime.metadata;
            int length = jArr7.length - 2;
            if (length >= 0) {
                int i25 = 0;
                while (true) {
                    long j13 = jArr7[i25];
                    if ((((~j13) << c10) & j13 & j12) != j12) {
                        int i26 = 8 - ((~(i25 - length)) >>> 31);
                        int i27 = 0;
                        while (i27 < i26) {
                            if ((j13 & j11) < 128) {
                                Object obj = objArr5[(i25 << 3) + i27];
                                if (obj instanceof RecomposeScopeImpl) {
                                    ((RecomposeScopeImpl) obj).invalidateForResult(null);
                                    i21 = i26;
                                    i22 = i27;
                                } else {
                                    addPendingInvalidationsLocked(obj, z10);
                                    Object obj2 = this.derivedStates.get(obj);
                                    if (obj2 != null) {
                                        if (obj2 instanceof MutableScatterSet) {
                                            MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                            Object[] objArr6 = mutableScatterSet.elements;
                                            long[] jArr8 = mutableScatterSet.metadata;
                                            int length2 = jArr8.length - 2;
                                            if (length2 >= 0) {
                                                int i28 = 0;
                                                while (true) {
                                                    long j14 = jArr8[i28];
                                                    i21 = i26;
                                                    i22 = i27;
                                                    if ((((~j14) << c10) & j14 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                        int i29 = 8 - ((~(i28 - length2)) >>> 31);
                                                        for (int i30 = 0; i30 < i29; i30++) {
                                                            if ((j14 & 255) < 128) {
                                                                addPendingInvalidationsLocked((DerivedState) objArr6[(i28 << 3) + i30], z10);
                                                            }
                                                            j14 >>= 8;
                                                        }
                                                        if (i29 != 8) {
                                                            break;
                                                        }
                                                    }
                                                    if (i28 == length2) {
                                                        break;
                                                    }
                                                    i28++;
                                                    i26 = i21;
                                                    i27 = i22;
                                                    c10 = 7;
                                                }
                                            }
                                        } else {
                                            i21 = i26;
                                            i22 = i27;
                                            addPendingInvalidationsLocked((DerivedState) obj2, z10);
                                        }
                                        Unit unit = Unit.f60915a;
                                    }
                                    i21 = i26;
                                    i22 = i27;
                                    Unit unit2 = Unit.f60915a;
                                }
                                i23 = 8;
                            } else {
                                i21 = i26;
                                i22 = i27;
                                i23 = i24;
                            }
                            j13 >>= i23;
                            i24 = i23;
                            i27 = i22 + 1;
                            i26 = i21;
                            j11 = 255;
                            c10 = 7;
                        }
                        i20 = 1;
                        if (i26 != i24) {
                            break;
                        }
                    } else {
                        i20 = 1;
                    }
                    if (i25 == length) {
                        break;
                    }
                    i25 += i20;
                    j11 = 255;
                    c10 = 7;
                    j12 = -9187201950435737472L;
                    i24 = 8;
                }
            }
        } else {
            for (Object obj3 : set) {
                if (obj3 instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj3).invalidateForResult(null);
                } else {
                    addPendingInvalidationsLocked(obj3, z10);
                    Object obj4 = this.derivedStates.get(obj3);
                    if (obj4 != null) {
                        if (obj4 instanceof MutableScatterSet) {
                            MutableScatterSet mutableScatterSet2 = (MutableScatterSet) obj4;
                            Object[] objArr7 = mutableScatterSet2.elements;
                            long[] jArr9 = mutableScatterSet2.metadata;
                            int length3 = jArr9.length - 2;
                            if (length3 >= 0) {
                                int i31 = 0;
                                while (true) {
                                    long j15 = jArr9[i31];
                                    if ((((~j15) << 7) & j15 & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i32 = 8 - ((~(i31 - length3)) >>> 31);
                                        for (int i33 = 0; i33 < i32; i33++) {
                                            if ((j15 & 255) < 128) {
                                                addPendingInvalidationsLocked((DerivedState) objArr7[(i31 << 3) + i33], z10);
                                            }
                                            j15 >>= 8;
                                        }
                                        i10 = 1;
                                        if (i32 != 8) {
                                            break;
                                        }
                                    } else {
                                        i10 = 1;
                                    }
                                    if (i31 == length3) {
                                        break;
                                    }
                                    i31 += i10;
                                }
                            }
                        } else {
                            addPendingInvalidationsLocked((DerivedState) obj4, z10);
                        }
                    }
                    Unit unit3 = Unit.f60915a;
                }
            }
        }
        MutableScatterSet<RecomposeScopeImpl> mutableScatterSet3 = this.conditionallyInvalidatedScopes;
        MutableScatterSet<RecomposeScopeImpl> mutableScatterSet4 = this.invalidatedScopes;
        String str6 = "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>";
        if (z10 && mutableScatterSet3.isNotEmpty()) {
            MutableScatterMap<Object, Object> mutableScatterMap = this.observations;
            long[] jArr10 = mutableScatterMap.metadata;
            int length4 = jArr10.length - 2;
            if (length4 >= 0) {
                int i34 = 0;
                while (true) {
                    long j16 = jArr10[i34];
                    if ((((~j16) << 7) & j16 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i35 = 8 - ((~(i34 - length4)) >>> 31);
                        int i36 = 0;
                        while (i36 < i35) {
                            if ((j16 & 255) < 128) {
                                int i37 = (i34 << 3) + i36;
                                Object obj5 = mutableScatterMap.keys[i37];
                                Object obj6 = mutableScatterMap.values[i37];
                                if (obj6 instanceof MutableScatterSet) {
                                    Intrinsics.checkNotNull(obj6, str6);
                                    MutableScatterSet mutableScatterSet5 = (MutableScatterSet) obj6;
                                    Object[] objArr8 = mutableScatterSet5.elements;
                                    jArr4 = jArr10;
                                    long[] jArr11 = mutableScatterSet5.metadata;
                                    str5 = str6;
                                    int length5 = jArr11.length - 2;
                                    i17 = length4;
                                    i18 = i34;
                                    if (length5 >= 0) {
                                        int i38 = 0;
                                        while (true) {
                                            long j17 = jArr11[i38];
                                            j10 = j16;
                                            if ((((~j17) << 7) & j17 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                int i39 = 8 - ((~(i38 - length5)) >>> 31);
                                                int i40 = 0;
                                                while (i40 < i39) {
                                                    if ((j17 & 255) < 128) {
                                                        jArr6 = jArr11;
                                                        int i41 = (i38 << 3) + i40;
                                                        objArr4 = objArr8;
                                                        RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objArr8[i41];
                                                        if (mutableScatterSet3.contains(recomposeScopeImpl) || mutableScatterSet4.contains(recomposeScopeImpl)) {
                                                            mutableScatterSet5.removeElementAt(i41);
                                                        }
                                                    } else {
                                                        jArr6 = jArr11;
                                                        objArr4 = objArr8;
                                                    }
                                                    j17 >>= 8;
                                                    i40++;
                                                    jArr11 = jArr6;
                                                    objArr8 = objArr4;
                                                }
                                                jArr5 = jArr11;
                                                objArr3 = objArr8;
                                                i19 = 1;
                                                if (i39 != 8) {
                                                    break;
                                                }
                                            } else {
                                                jArr5 = jArr11;
                                                objArr3 = objArr8;
                                                i19 = 1;
                                            }
                                            if (i38 == length5) {
                                                break;
                                            }
                                            i38 += i19;
                                            j16 = j10;
                                            jArr11 = jArr5;
                                            objArr8 = objArr3;
                                        }
                                    } else {
                                        j10 = j16;
                                    }
                                    z11 = mutableScatterSet5.isEmpty();
                                } else {
                                    str5 = str6;
                                    jArr4 = jArr10;
                                    i17 = length4;
                                    i18 = i34;
                                    j10 = j16;
                                    Intrinsics.checkNotNull(obj6, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap");
                                    RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj6;
                                    z11 = mutableScatterSet3.contains(recomposeScopeImpl2) || mutableScatterSet4.contains(recomposeScopeImpl2);
                                }
                                if (z11) {
                                    mutableScatterMap.removeValueAt(i37);
                                }
                            } else {
                                str5 = str6;
                                jArr4 = jArr10;
                                i17 = length4;
                                i18 = i34;
                                j10 = j16;
                            }
                            j16 = j10 >> 8;
                            i36++;
                            str6 = str5;
                            length4 = i17;
                            jArr10 = jArr4;
                            i34 = i18;
                        }
                        str4 = str6;
                        jArr3 = jArr10;
                        int i42 = length4;
                        int i43 = i34;
                        if (i35 != 8) {
                            break;
                        }
                        length4 = i42;
                        i16 = i43;
                    } else {
                        str4 = str6;
                        jArr3 = jArr10;
                        i16 = i34;
                    }
                    if (i16 == length4) {
                        break;
                    }
                    i34 = i16 + 1;
                    str6 = str4;
                    jArr10 = jArr3;
                }
            }
            mutableScatterSet3.clear();
            cleanUpDerivedStateObservations();
            return;
        }
        String str7 = "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>";
        if (mutableScatterSet4.isNotEmpty()) {
            MutableScatterMap<Object, Object> mutableScatterMap2 = this.observations;
            long[] jArr12 = mutableScatterMap2.metadata;
            int length6 = jArr12.length - 2;
            if (length6 >= 0) {
                int i44 = 0;
                while (true) {
                    long j18 = jArr12[i44];
                    if ((((~j18) << 7) & j18 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i45 = 8 - ((~(i44 - length6)) >>> 31);
                        int i46 = 0;
                        while (i46 < i45) {
                            if ((j18 & 255) < 128) {
                                int i47 = (i44 << 3) + i46;
                                Object obj7 = mutableScatterMap2.keys[i47];
                                Object obj8 = mutableScatterMap2.values[i47];
                                if (obj8 instanceof MutableScatterSet) {
                                    String str8 = str7;
                                    Intrinsics.checkNotNull(obj8, str8);
                                    MutableScatterSet mutableScatterSet6 = (MutableScatterSet) obj8;
                                    Object[] objArr9 = mutableScatterSet6.elements;
                                    long[] jArr13 = mutableScatterSet6.metadata;
                                    int length7 = jArr13.length - 2;
                                    jArr2 = jArr12;
                                    i12 = length6;
                                    i13 = i44;
                                    if (length7 >= 0) {
                                        int i48 = 0;
                                        while (true) {
                                            long j19 = jArr13[i48];
                                            i14 = i45;
                                            long[] jArr14 = jArr13;
                                            if ((((~j19) << 7) & j19 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                int i49 = 8 - ((~(i48 - length7)) >>> 31);
                                                int i50 = 0;
                                                while (i50 < i49) {
                                                    if ((j19 & 255) < 128) {
                                                        str3 = str8;
                                                        int i51 = (i48 << 3) + i50;
                                                        objArr2 = objArr9;
                                                        if (mutableScatterSet4.contains((RecomposeScopeImpl) objArr9[i51])) {
                                                            mutableScatterSet6.removeElementAt(i51);
                                                        }
                                                    } else {
                                                        str3 = str8;
                                                        objArr2 = objArr9;
                                                    }
                                                    j19 >>= 8;
                                                    i50++;
                                                    str8 = str3;
                                                    objArr9 = objArr2;
                                                }
                                                str2 = str8;
                                                objArr = objArr9;
                                                i15 = 1;
                                                if (i49 != 8) {
                                                    break;
                                                }
                                            } else {
                                                str2 = str8;
                                                objArr = objArr9;
                                                i15 = 1;
                                            }
                                            if (i48 == length7) {
                                                break;
                                            }
                                            i48 += i15;
                                            i45 = i14;
                                            jArr13 = jArr14;
                                            str8 = str2;
                                            objArr9 = objArr;
                                        }
                                    } else {
                                        str2 = str8;
                                        i14 = i45;
                                    }
                                    contains = mutableScatterSet6.isEmpty();
                                } else {
                                    str2 = str7;
                                    jArr2 = jArr12;
                                    i12 = length6;
                                    i13 = i44;
                                    i14 = i45;
                                    Intrinsics.checkNotNull(obj8, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap");
                                    contains = mutableScatterSet4.contains((RecomposeScopeImpl) obj8);
                                }
                                if (contains) {
                                    mutableScatterMap2.removeValueAt(i47);
                                }
                            } else {
                                str2 = str7;
                                jArr2 = jArr12;
                                i12 = length6;
                                i13 = i44;
                                i14 = i45;
                            }
                            j18 >>= 8;
                            i46++;
                            length6 = i12;
                            i44 = i13;
                            jArr12 = jArr2;
                            i45 = i14;
                            str7 = str2;
                        }
                        str = str7;
                        jArr = jArr12;
                        int i52 = length6;
                        int i53 = i44;
                        i11 = 1;
                        if (i45 != 8) {
                            break;
                        }
                        length6 = i52;
                        i44 = i53;
                    } else {
                        str = str7;
                        jArr = jArr12;
                        i11 = 1;
                    }
                    if (i44 == length6) {
                        break;
                    }
                    i44 += i11;
                    jArr12 = jArr;
                    str7 = str;
                }
            }
            cleanUpDerivedStateObservations();
            mutableScatterSet4.clear();
        }
    }

    public /* synthetic */ CompositionImpl(CompositionContext compositionContext, Applier applier, CoroutineContext coroutineContext, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(compositionContext, applier, (i10 & 4) != 0 ? null : coroutineContext);
    }
}
