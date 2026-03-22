package androidx.compose.runtime;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectList;
import androidx.collection.ObjectListKt;
import androidx.collection.ScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScatterSetWrapperKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.internal.SnapshotThreadLocal;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.internal.Trace;
import androidx.compose.runtime.internal.Utils_androidKt;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotApplyResult;
import androidx.compose.runtime.snapshots.TransparentObserverMutableSnapshot;
import androidx.compose.runtime.snapshots.TransparentObserverSnapshot;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionObserverHandle;
import androidx.compose.runtime.tooling.CompositionObserverKt;
import androidx.compose.runtime.tooling.CompositionRegistrationObserver;
import androidx.compose.runtime.tooling.ObservableComposition;
import gt.i;
import gt.z0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Recomposer.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 7 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 8 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 9 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 10 ObjectList.kt\nandroidx/collection/ObjectList\n+ 11 ObjectList.kt\nandroidx/collection/MutableObjectList\n+ 12 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 13 Composition.kt\nandroidx/compose/runtime/CompositionKt\n+ 14 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 15 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 16 Extensions.kt\nandroidx/compose/runtime/collection/ExtensionsKt\n+ 17 Recomposer.kt\nandroidx/compose/runtime/RecomposerKt\n+ 18 CompositeKeyHashCode.jvm.kt\nandroidx/compose/runtime/CompositeKeyHashCode_jvmKt\n+ 19 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 20 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 21 Trace.kt\nandroidx/compose/runtime/internal/TraceKt\n+ 22 ScatterSet.kt\nandroidx/collection/ScatterSet\n*L\n1#1,1894:1\n1502#1,3:1988\n1501#1,7:1991\n1509#1:2003\n1502#1,3:2025\n1501#1,7:2028\n1509#1:2040\n1502#1,3:2064\n1501#1,7:2067\n1509#1:2129\n25#2,5:1895\n33#2:1903\n33#2:1906\n33#2:1909\n33#2:1915\n33#2:1916\n33#2:1917\n33#2:1931\n33#2:1932\n33#2:1933\n33#2:1934\n33#2:1940\n33#2:1955\n33#2:1963\n33#2:1964\n33#2:1965\n33#2:1971\n33#2:1982\n33#2:1985\n33#2:1986\n33#2:1987\n33#2:2004\n33#2:2017\n33#2:2077\n33#2:2119\n33#2:2130\n33#2:2152\n33#2:2155\n33#2:2156\n33#2:2159\n33#2:2162\n33#2:2165\n33#2:2166\n33#2:2167\n33#2:2168\n33#2:2194\n33#2:2195\n33#2:2196\n33#2:2197\n33#2:2198\n33#2:2207\n33#2:2231\n33#2:2233\n1107#3:1900\n1085#3,2:1901\n519#4:1904\n424#4,8:1923\n519#4:1972\n519#4:2153\n519#4:2154\n648#4,2:2160\n643#4,2:2163\n424#4,8:2213\n1#5:1905\n1#5:2116\n1251#6,2:1907\n34#7,5:1910\n34#7,5:1918\n34#7,5:1958\n34#7,5:1966\n91#7:2018\n34#7,5:2019\n92#7:2024\n114#7,2:2041\n34#7,3:2043\n116#7,2:2046\n118#7,2:2055\n38#7:2057\n120#7:2058\n82#7,2:2078\n34#7,5:2080\n84#7:2085\n91#7:2086\n34#7,5:2087\n92#7:2092\n106#7:2097\n34#7,5:2098\n107#7:2103\n106#7:2104\n34#7,5:2105\n107#7:2110\n204#7,2:2111\n34#7,3:2113\n38#7:2117\n206#7:2118\n223#7,2:2120\n64#7,5:2122\n225#7:2127\n34#7,5:2208\n34#7,5:2221\n34#7,5:2226\n34#7,5:2259\n149#8,5:1935\n149#8,5:1998\n149#8,5:2035\n149#8,3:2074\n153#8:2128\n149#8,5:2147\n1863#9,2:1941\n1557#9:2093\n1628#9,3:2094\n287#10,6:1943\n287#10,6:1949\n287#10,4:2133\n292#10:2139\n287#10,6:2141\n919#11,2:1956\n919#11,2:2137\n318#12,9:1973\n327#12,2:1983\n317#13,6:2005\n317#13,6:2011\n381#14,7:2048\n4809#15:2059\n4788#15,4:2060\n23#16,2:2131\n25#16:2140\n84#17:2157\n30#18:2158\n357#19,4:2169\n329#19,6:2173\n339#19,3:2180\n342#19,9:2184\n361#19:2193\n1399#20:2179\n1270#20:2183\n1399#20:2244\n1270#20:2248\n45#21,5:2199\n45#21,3:2204\n49#21:2232\n231#22,3:2234\n200#22,7:2237\n211#22,3:2245\n214#22,9:2249\n234#22:2258\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n*L\n1234#1:1988,3\n1234#1:1991,7\n1234#1:2003\n1356#1:2025,3\n1356#1:2028,7\n1356#1:2040\n1379#1:2064,3\n1379#1:2067,7\n1379#1:2129\n225#1:1895,5\n318#1:1903\n370#1:1906\n457#1:1909\n481#1:1915\n484#1:1916\n496#1:1917\n509#1:1931\n517#1:1932\n770#1:1933\n797#1:1934\n844#1:1940\n901#1:1955\n925#1:1963\n938#1:1964\n954#1:1965\n1093#1:1971\n1105#1:1982\n1190#1:1985\n1205#1:1986\n1221#1:1987\n1239#1:2004\n1320#1:2017\n1383#1:2077\n1441#1:2119\n1463#1:2130\n1533#1:2152\n1574#1:2155\n1587#1:2156\n1620#1:2159\n1628#1:2162\n1638#1:2165\n1646#1:2166\n1654#1:2167\n1679#1:2168\n1692#1:2194\n1703#1:2195\n168#1:2196\n288#1:2197\n272#1:2198\n1056#1:2207\n1085#1:2231\n1326#1:2233\n233#1:1900\n233#1:1901,2\n352#1:1904\n507#1:1923,8\n1095#1:1972\n1535#1:2153\n1544#1:2154\n1622#1:2160,2\n1630#1:2163,2\n1059#1:2213,8\n1438#1:2116\n370#1:1907,2\n467#1:1910,5\n503#1:1918,5\n909#1:1958,5\n955#1:1966,5\n1321#1:2018\n1321#1:2019,5\n1321#1:2024\n1376#1:2041,2\n1376#1:2043,3\n1376#1:2046,2\n1376#1:2055,2\n1376#1:2057\n1376#1:2058\n1385#1:2078,2\n1385#1:2080,5\n1385#1:2085\n1397#1:2086\n1397#1:2087,5\n1397#1:2092\n1430#1:2097\n1430#1:2098,5\n1430#1:2103\n1430#1:2104\n1430#1:2105,5\n1430#1:2110\n1438#1:2111,2\n1438#1:2113,3\n1438#1:2117\n1438#1:2118\n1444#1:2120,2\n1444#1:2122,5\n1444#1:2127\n1057#1:2208,5\n1067#1:2221,5\n1080#1:2226,5\n1659#1:2259,5\n833#1:1935,5\n1234#1:1998,5\n1356#1:2035,5\n1379#1:2074,3\n1379#1:2128\n1507#1:2147,5\n859#1:1941,2\n1406#1:2093\n1406#1:2094,3\n881#1:1943,6\n890#1:1949,6\n1470#1:2133,4\n1470#1:2139\n1475#1:2141,6\n908#1:1956,2\n1470#1:2137,2\n1104#1:1973,9\n1104#1:1983,2\n1277#1:2005,6\n1294#1:2011,6\n1376#1:2048,7\n1378#1:2059\n1378#1:2060,4\n1470#1:2131,2\n1470#1:2140\n1598#1:2157\n1598#1:2158\n1684#1:2169,4\n1684#1:2173,6\n1684#1:2180,3\n1684#1:2184,9\n1684#1:2193\n1684#1:2179\n1684#1:2183\n1361#1:2244\n1361#1:2248\n1041#1:2199,5\n1051#1:2204,3\n1051#1:2232\n1361#1:2234,3\n1361#1:2237,7\n1361#1:2245,3\n1361#1:2249,9\n1361#1:2258\n*E\n"})
/* loaded from: classes.dex */
public final class Recomposer extends CompositionContext {
    @NotNull
    private final List<ControlledComposition> _knownCompositions;
    @Nullable
    private List<? extends ControlledComposition> _knownCompositionsCache;
    @NotNull
    private final kt.e<State> _state;
    @NotNull
    private final BroadcastFrameClock broadcastFrameClock;
    private long changeCount;
    @Nullable
    private Throwable closeCause;
    @NotNull
    private final MutableVector<ControlledComposition> compositionInvalidations;
    @NotNull
    private final List<ControlledComposition> compositionsAwaitingApply;
    @Nullable
    private Set<ControlledComposition> compositionsRemoved;
    private int concurrentCompositionsOutstanding;
    @NotNull
    private final CoroutineContext effectCoroutineContext;
    @NotNull
    private final gt.s effectJob;
    @Nullable
    private RecomposerErrorState errorState;
    @Nullable
    private List<ControlledComposition> failedCompositions;
    private boolean frameClockPaused;
    private boolean isClosed;
    @NotNull
    private final List<MovableContentStateReference> movableContentAwaitingInsert;
    @NotNull
    private final MutableScatterMap<Object, Object> movableContentNestedExtractionsPending;
    @NotNull
    private final NestedContentMap movableContentNestedStatesAvailable;
    @NotNull
    private final MutableScatterMap<Object, Object> movableContentRemoved;
    @NotNull
    private final MutableScatterMap<MovableContentStateReference, MovableContentState> movableContentStatesAvailable;
    @NotNull
    private final SnapshotThreadLocal<MutableScatterSet<RecomposeScopeImpl>> pausedScopes;
    @NotNull
    private final RecomposerInfoImpl recomposerInfo;
    @Nullable
    private MutableObjectList<CompositionRegistrationObserver> registrationObservers;
    @Nullable
    private r runnerJob;
    @NotNull
    private MutableScatterSet<Object> snapshotInvalidations;
    @NotNull
    private final Object stateLock;
    @Nullable
    private gt.i<? super Unit> workContinuation;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    @NotNull
    private static final kt.e<PersistentSet<RecomposerInfoImpl>> _runningRecomposers = kotlinx.coroutines.flow.o.a(ExtensionsKt.persistentSetOf());
    @NotNull
    private static final AtomicReference<Boolean> _hotReloadEnabled = new AtomicReference<>(Boolean.FALSE);

    /* compiled from: Recomposer.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1894:1\n1368#2:1895\n1454#2,5:1896\n1863#2,2:1901\n1863#2,2:1913\n1863#2,2:1915\n1611#2,9:1917\n1863#2:1926\n1864#2:1928\n1620#2:1929\n1611#2,9:1930\n1863#2:1939\n1864#2:1941\n1620#2:1942\n34#3,5:1903\n34#3,5:1908\n1#4:1927\n1#4:1940\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$Companion\n*L\n1757#1:1895\n1757#1:1896,5\n1765#1:1901,2\n1771#1:1913,2\n1776#1:1915,2\n1790#1:1917,9\n1790#1:1926\n1790#1:1928\n1790#1:1929\n1793#1:1930,9\n1793#1:1939\n1793#1:1941\n1793#1:1942\n1768#1:1903,5\n1769#1:1908,5\n1790#1:1927\n1793#1:1940\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void addRunning(RecomposerInfoImpl recomposerInfoImpl) {
            PersistentSet persistentSet;
            PersistentSet add;
            do {
                persistentSet = (PersistentSet) Recomposer._runningRecomposers.getValue();
                add = persistentSet.add((PersistentSet) recomposerInfoImpl);
                if (persistentSet == add) {
                    return;
                }
            } while (!Recomposer._runningRecomposers.b(persistentSet, add));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void removeRunning(RecomposerInfoImpl recomposerInfoImpl) {
            PersistentSet persistentSet;
            PersistentSet remove;
            do {
                persistentSet = (PersistentSet) Recomposer._runningRecomposers.getValue();
                remove = persistentSet.remove((PersistentSet) recomposerInfoImpl);
                if (persistentSet == remove) {
                    return;
                }
            } while (!Recomposer._runningRecomposers.b(persistentSet, remove));
        }

        public final void clearErrors$runtime() {
            ArrayList arrayList = new ArrayList();
            for (RecomposerInfoImpl recomposerInfoImpl : (Iterable) Recomposer._runningRecomposers.getValue()) {
                RecomposerErrorState resetErrorState = recomposerInfoImpl.resetErrorState();
                if (resetErrorState != null) {
                    arrayList.add(resetErrorState);
                }
            }
        }

        @NotNull
        public final Set<RecomposerInfo> currentRunningRecomposers$runtime() {
            return (Set) Recomposer._runningRecomposers.getValue();
        }

        @NotNull
        public final List<RecomposerErrorInfo> getCurrentErrors$runtime() {
            ArrayList arrayList = new ArrayList();
            for (RecomposerInfoImpl recomposerInfoImpl : (Iterable) Recomposer._runningRecomposers.getValue()) {
                RecomposerErrorInfo currentError = recomposerInfoImpl.getCurrentError();
                if (currentError != null) {
                    arrayList.add(currentError);
                }
            }
            return arrayList;
        }

        @NotNull
        public final kt.i<Set<RecomposerInfo>> getRunningRecomposers() {
            return Recomposer._runningRecomposers;
        }

        public final void invalidateGroupsWithKey$runtime(int i10) {
            Recomposer._hotReloadEnabled.set(Boolean.TRUE);
            for (RecomposerInfoImpl recomposerInfoImpl : (Iterable) Recomposer._runningRecomposers.getValue()) {
                RecomposerErrorInfo currentError = recomposerInfoImpl.getCurrentError();
                if (currentError == null || currentError.getRecoverable()) {
                    recomposerInfoImpl.resetErrorState();
                    recomposerInfoImpl.invalidateGroupsWithKey(i10);
                    recomposerInfoImpl.retryFailedCompositions();
                }
            }
        }

        public final void loadStateAndComposeForHotReload$runtime(@NotNull Object obj) {
            Recomposer._hotReloadEnabled.set(Boolean.TRUE);
            for (RecomposerInfoImpl recomposerInfoImpl : (Iterable) Recomposer._runningRecomposers.getValue()) {
                recomposerInfoImpl.resetErrorState();
            }
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.collections.List<androidx.compose.runtime.Recomposer.HotReloadable>");
            List list = (List) obj;
            List list2 = list;
            int size = list2.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((HotReloadable) list.get(i10)).resetContent();
            }
            int size2 = list2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                ((HotReloadable) list.get(i11)).recompose();
            }
            for (RecomposerInfoImpl recomposerInfoImpl2 : (Iterable) Recomposer._runningRecomposers.getValue()) {
                recomposerInfoImpl2.retryFailedCompositions();
            }
        }

        @NotNull
        public final Object saveStateAndDisposeForHotReload$runtime() {
            Recomposer._hotReloadEnabled.set(Boolean.TRUE);
            ArrayList arrayList = new ArrayList();
            for (RecomposerInfoImpl recomposerInfoImpl : (Iterable) Recomposer._runningRecomposers.getValue()) {
                CollectionsKt.E(arrayList, recomposerInfoImpl.saveStateAndDisposeForHotReload());
            }
            return arrayList;
        }

        public final void setHotReloadEnabled$runtime(boolean z10) {
            Recomposer._hotReloadEnabled.set(Boolean.valueOf(z10));
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Recomposer.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class HotReloadable {
        @NotNull
        private Function2<? super Composer, ? super Integer, Unit> composable;
        @NotNull
        private final CompositionImpl composition;

        public HotReloadable(@NotNull CompositionImpl compositionImpl) {
            this.composition = compositionImpl;
            this.composable = compositionImpl.getComposable();
        }

        public final void clearContent() {
            if (this.composition.isRoot()) {
                this.composition.setContent(ComposableSingletons$RecomposerKt.INSTANCE.m1314getLambda$1091980426$runtime());
            }
        }

        public final void recompose() {
            if (this.composition.isRoot()) {
                this.composition.setContent(this.composable);
            }
        }

        public final void resetContent() {
            this.composition.setComposable(this.composable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Recomposer.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class RecomposerErrorState implements RecomposerErrorInfo {
        @NotNull
        private final Throwable cause;
        private final boolean recoverable;

        public RecomposerErrorState(boolean z10, @NotNull Throwable th2) {
            this.recoverable = z10;
            this.cause = th2;
        }

        @Override // androidx.compose.runtime.RecomposerErrorInfo
        @NotNull
        public Throwable getCause() {
            return this.cause;
        }

        @Override // androidx.compose.runtime.RecomposerErrorInfo
        public boolean getRecoverable() {
            return this.recoverable;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Recomposer.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$RecomposerInfoImpl\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1894:1\n33#2:1895\n204#3,2:1896\n34#3,3:1898\n38#3:1902\n206#3:1903\n34#3,5:1904\n204#3,2:1909\n34#3,3:1911\n38#3:1915\n206#3:1916\n82#3,2:1917\n34#3,3:1919\n38#3:1923\n84#3:1924\n1#4:1901\n1#4:1914\n1#4:1922\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$RecomposerInfoImpl\n*L\n394#1:1895\n403#1:1896,2\n403#1:1898,3\n403#1:1902\n403#1:1903\n404#1:1904,5\n410#1:1909,2\n410#1:1911,3\n410#1:1915\n410#1:1916\n411#1:1917,2\n411#1:1919,3\n411#1:1923\n411#1:1924\n403#1:1901\n410#1:1914\n*E\n"})
    /* loaded from: classes.dex */
    public final class RecomposerInfoImpl implements RecomposerInfo {
        public RecomposerInfoImpl() {
        }

        @Override // androidx.compose.runtime.RecomposerInfo
        public long getChangeCount() {
            return Recomposer.this.getChangeCount();
        }

        @Nullable
        public final RecomposerErrorInfo getCurrentError() {
            RecomposerErrorState recomposerErrorState;
            Object obj = Recomposer.this.stateLock;
            Recomposer recomposer = Recomposer.this;
            synchronized (obj) {
                recomposerErrorState = recomposer.errorState;
            }
            return recomposerErrorState;
        }

        @Override // androidx.compose.runtime.RecomposerInfo
        public boolean getHasPendingWork() {
            return Recomposer.this.getHasPendingWork();
        }

        @Override // androidx.compose.runtime.RecomposerInfo
        @NotNull
        public kt.b<State> getState() {
            return Recomposer.this.getCurrentState();
        }

        public final void invalidateGroupsWithKey(int i10) {
            CompositionImpl compositionImpl;
            List knownCompositions = Recomposer.this.knownCompositions();
            ArrayList arrayList = new ArrayList(knownCompositions.size());
            int size = knownCompositions.size();
            for (int i11 = 0; i11 < size; i11++) {
                ControlledComposition controlledComposition = (ControlledComposition) knownCompositions.get(i11);
                if (controlledComposition instanceof CompositionImpl) {
                    compositionImpl = (CompositionImpl) controlledComposition;
                } else {
                    compositionImpl = null;
                }
                if (compositionImpl != null) {
                    arrayList.add(compositionImpl);
                }
            }
            int size2 = arrayList.size();
            for (int i12 = 0; i12 < size2; i12++) {
                ((CompositionImpl) arrayList.get(i12)).invalidateGroupsWithKey(i10);
            }
        }

        @Override // androidx.compose.runtime.RecomposerInfo
        @NotNull
        public CompositionObserverHandle observe(@NotNull CompositionRegistrationObserver compositionRegistrationObserver) {
            return CompositionObserverKt.observe(Recomposer.this, compositionRegistrationObserver);
        }

        @Nullable
        public final RecomposerErrorState resetErrorState() {
            return Recomposer.this.resetErrorState();
        }

        public final void retryFailedCompositions() {
            Recomposer.this.retryFailedCompositions();
        }

        @NotNull
        public final List<HotReloadable> saveStateAndDisposeForHotReload() {
            CompositionImpl compositionImpl;
            List knownCompositions = Recomposer.this.knownCompositions();
            ArrayList arrayList = new ArrayList(knownCompositions.size());
            int size = knownCompositions.size();
            for (int i10 = 0; i10 < size; i10++) {
                ControlledComposition controlledComposition = (ControlledComposition) knownCompositions.get(i10);
                if (controlledComposition instanceof CompositionImpl) {
                    compositionImpl = (CompositionImpl) controlledComposition;
                } else {
                    compositionImpl = null;
                }
                if (compositionImpl != null) {
                    arrayList.add(compositionImpl);
                }
            }
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            int size2 = arrayList.size();
            for (int i11 = 0; i11 < size2; i11++) {
                HotReloadable hotReloadable = new HotReloadable((CompositionImpl) arrayList.get(i11));
                hotReloadable.clearContent();
                arrayList2.add(hotReloadable);
            }
            return arrayList2;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Recomposer.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class State {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ State[] $VALUES;
        public static final State ShutDown = new State("ShutDown", 0);
        public static final State ShuttingDown = new State("ShuttingDown", 1);
        public static final State Inactive = new State("Inactive", 2);
        public static final State InactivePendingWork = new State("InactivePendingWork", 3);
        public static final State Idle = new State("Idle", 4);
        public static final State PendingWork = new State("PendingWork", 5);

        private static final /* synthetic */ State[] $values() {
            return new State[]{ShutDown, ShuttingDown, Inactive, InactivePendingWork, Idle, PendingWork};
        }

        static {
            State[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private State(String str, int i10) {
        }

        @NotNull
        public static ss.a<State> getEntries() {
            return $ENTRIES;
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    public Recomposer(@NotNull CoroutineContext coroutineContext) {
        BroadcastFrameClock broadcastFrameClock = new BroadcastFrameClock(new Function0() { // from class: androidx.compose.runtime.v
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit broadcastFrameClock$lambda$2;
                broadcastFrameClock$lambda$2 = Recomposer.broadcastFrameClock$lambda$2(Recomposer.this);
                return broadcastFrameClock$lambda$2;
            }
        });
        this.broadcastFrameClock = broadcastFrameClock;
        this.stateLock = new Object();
        this._knownCompositions = new ArrayList();
        this.snapshotInvalidations = new MutableScatterSet<>(0, 1, null);
        this.compositionInvalidations = new MutableVector<>(new ControlledComposition[16], 0);
        this.compositionsAwaitingApply = new ArrayList();
        this.movableContentAwaitingInsert = new ArrayList();
        this.movableContentRemoved = MultiValueMap.m1455constructorimpl$default(null, 1, null);
        this.movableContentNestedStatesAvailable = new NestedContentMap();
        this.movableContentStatesAvailable = ScatterMapKt.mutableScatterMapOf();
        this.movableContentNestedExtractionsPending = MultiValueMap.m1455constructorimpl$default(null, 1, null);
        this._state = kotlinx.coroutines.flow.o.a(State.Inactive);
        this.pausedScopes = new SnapshotThreadLocal<>();
        gt.s a10 = kotlinx.coroutines.t.a((r) coroutineContext.get(r.G8));
        a10.invokeOnCompletion(new Function1() { // from class: androidx.compose.runtime.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit effectJob$lambda$10$lambda$9;
                effectJob$lambda$10$lambda$9 = Recomposer.effectJob$lambda$10$lambda$9(Recomposer.this, (Throwable) obj);
                return effectJob$lambda$10$lambda$9;
            }
        });
        this.effectJob = a10;
        this.effectCoroutineContext = coroutineContext.plus(broadcastFrameClock).plus(a10);
        this.recomposerInfo = new RecomposerInfoImpl();
    }

    private final void addKnownCompositionLocked(ControlledComposition controlledComposition) {
        this._knownCompositions.add(controlledComposition);
        this._knownCompositionsCache = null;
        registerCompositionLocked(controlledComposition);
    }

    private final void applyAndCheck(MutableSnapshot mutableSnapshot) {
        try {
            if (!(mutableSnapshot.apply() instanceof SnapshotApplyResult.Failure)) {
                return;
            }
            throw new IllegalStateException("Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition.");
        } finally {
            mutableSnapshot.dispose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object awaitWorkAvailable(rs.c<? super Unit> cVar) {
        kotlinx.coroutines.e eVar;
        if (!getHasSchedulingWork()) {
            kotlinx.coroutines.e eVar2 = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
            eVar2.H();
            synchronized (this.stateLock) {
                if (!getHasSchedulingWork()) {
                    this.workContinuation = eVar2;
                    eVar = null;
                } else {
                    eVar = eVar2;
                }
            }
            if (eVar != null) {
                Result.a aVar = Result.f60901b;
                eVar.resumeWith(Result.d(Unit.f60915a));
            }
            Object B = eVar2.B();
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                kotlin.coroutines.jvm.internal.f.c(cVar);
            }
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                return B;
            }
            return Unit.f60915a;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit broadcastFrameClock$lambda$2(Recomposer recomposer) {
        gt.i<Unit> deriveStateLocked;
        synchronized (recomposer.stateLock) {
            deriveStateLocked = recomposer.deriveStateLocked();
            if (recomposer._state.getValue().compareTo(State.ShuttingDown) <= 0) {
                throw z0.a("Recomposer shutdown; frame clock awaiter will never resume", recomposer.closeCause);
            }
        }
        if (deriveStateLocked != null) {
            Result.a aVar = Result.f60901b;
            deriveStateLocked.resumeWith(Result.d(Unit.f60915a));
        }
        return Unit.f60915a;
    }

    private final void clearKnownCompositionsLocked() {
        for (ControlledComposition controlledComposition : knownCompositionsLocked()) {
            unregisterCompositionLocked(controlledComposition);
        }
        this._knownCompositions.clear();
        this._knownCompositionsCache = CollectionsKt.n();
    }

    private final <T> T composing(ControlledComposition controlledComposition, MutableScatterSet<Object> mutableScatterSet, Function0<? extends T> function0) {
        MutableSnapshot takeMutableSnapshot = Snapshot.Companion.takeMutableSnapshot(readObserverOf(controlledComposition), writeObserverOf(controlledComposition, mutableScatterSet));
        try {
            Snapshot makeCurrent = takeMutableSnapshot.makeCurrent();
            T invoke = function0.invoke();
            InlineMarker.finallyStart(1);
            takeMutableSnapshot.restoreCurrent(makeCurrent);
            InlineMarker.finallyEnd(1);
            return invoke;
        } finally {
            InlineMarker.finallyStart(1);
            applyAndCheck(takeMutableSnapshot);
            InlineMarker.finallyEnd(1);
        }
    }

    private static final void deletedMovableContent$lambda$95$recordNestedStatesOf(Recomposer recomposer, MovableContentStateReference movableContentStateReference, MovableContentStateReference movableContentStateReference2) {
        List<MovableContentStateReference> nestedReferences$runtime = movableContentStateReference2.getNestedReferences$runtime();
        if (nestedReferences$runtime != null) {
            int size = nestedReferences$runtime.size();
            for (int i10 = 0; i10 < size; i10++) {
                MovableContentStateReference movableContentStateReference3 = nestedReferences$runtime.get(i10);
                recomposer.movableContentNestedStatesAvailable.add(movableContentStateReference3.getContent$runtime(), new NestedMovableContent(movableContentStateReference3, movableContentStateReference));
                deletedMovableContent$lambda$95$recordNestedStatesOf(recomposer, movableContentStateReference, movableContentStateReference3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final gt.i<Unit> deriveStateLocked() {
        State state;
        if (this._state.getValue().compareTo(State.ShuttingDown) <= 0) {
            clearKnownCompositionsLocked();
            this.snapshotInvalidations = new MutableScatterSet<>(0, 1, null);
            this.compositionInvalidations.clear();
            this.compositionsAwaitingApply.clear();
            this.movableContentAwaitingInsert.clear();
            this.failedCompositions = null;
            gt.i<? super Unit> iVar = this.workContinuation;
            if (iVar != null) {
                i.a.a(iVar, null, 1, null);
            }
            this.workContinuation = null;
            this.errorState = null;
            return null;
        }
        if (this.errorState != null) {
            state = State.Inactive;
        } else if (this.runnerJob == null) {
            this.snapshotInvalidations = new MutableScatterSet<>(0, 1, null);
            this.compositionInvalidations.clear();
            if (getHasBroadcastFrameClockAwaitersLocked()) {
                state = State.InactivePendingWork;
            } else {
                state = State.Inactive;
            }
        } else if (this.compositionInvalidations.getSize() == 0 && !this.snapshotInvalidations.isNotEmpty() && this.compositionsAwaitingApply.isEmpty() && this.movableContentAwaitingInsert.isEmpty() && this.concurrentCompositionsOutstanding <= 0 && !getHasBroadcastFrameClockAwaitersLocked() && !MultiValueMap.m1463isNotEmptyimpl(this.movableContentRemoved)) {
            state = State.Idle;
        } else {
            state = State.PendingWork;
        }
        this._state.setValue(state);
        if (state != State.PendingWork) {
            return null;
        }
        gt.i iVar2 = this.workContinuation;
        this.workContinuation = null;
        return iVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void discardUnusedMovableContentState() {
        int i10;
        MutableObjectList mutableObjectList;
        synchronized (this.stateLock) {
            try {
                if (MultiValueMap.m1463isNotEmptyimpl(this.movableContentRemoved)) {
                    ObjectList m1468valuesimpl = MultiValueMap.m1468valuesimpl(this.movableContentRemoved);
                    MultiValueMap.m1453clearimpl(this.movableContentRemoved);
                    this.movableContentNestedStatesAvailable.clear();
                    MultiValueMap.m1453clearimpl(this.movableContentNestedExtractionsPending);
                    MutableObjectList mutableObjectList2 = new MutableObjectList(m1468valuesimpl.getSize());
                    Object[] objArr = m1468valuesimpl.content;
                    int i11 = m1468valuesimpl._size;
                    for (int i12 = 0; i12 < i11; i12++) {
                        MovableContentStateReference movableContentStateReference = (MovableContentStateReference) objArr[i12];
                        mutableObjectList2.add(ms.k.a(movableContentStateReference, this.movableContentStatesAvailable.get(movableContentStateReference)));
                    }
                    this.movableContentStatesAvailable.clear();
                    mutableObjectList = mutableObjectList2;
                } else {
                    mutableObjectList = ObjectListKt.emptyObjectList();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Object[] objArr2 = mutableObjectList.content;
        int i13 = mutableObjectList._size;
        for (i10 = 0; i10 < i13; i10++) {
            Pair pair = (Pair) objArr2[i10];
            MovableContentStateReference movableContentStateReference2 = (MovableContentStateReference) pair.b();
            MovableContentState movableContentState = (MovableContentState) pair.d();
            if (movableContentState != null) {
                movableContentStateReference2.getComposition$runtime().disposeUnusedMovableContent(movableContentState);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit effectJob$lambda$10$lambda$9(final Recomposer recomposer, final Throwable th2) {
        gt.i<? super Unit> iVar;
        gt.i<? super Unit> iVar2;
        CancellationException a10 = z0.a("Recomposer effect job completed", th2);
        synchronized (recomposer.stateLock) {
            try {
                r rVar = recomposer.runnerJob;
                iVar = null;
                if (rVar != null) {
                    recomposer._state.setValue(State.ShuttingDown);
                    if (!recomposer.isClosed) {
                        rVar.cancel(a10);
                    } else {
                        iVar2 = recomposer.workContinuation;
                        if (iVar2 != null) {
                            recomposer.workContinuation = null;
                            rVar.invokeOnCompletion(new Function1() { // from class: androidx.compose.runtime.t
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    Unit effectJob$lambda$10$lambda$9$lambda$8$lambda$7;
                                    effectJob$lambda$10$lambda$9$lambda$8$lambda$7 = Recomposer.effectJob$lambda$10$lambda$9$lambda$8$lambda$7(Recomposer.this, th2, (Throwable) obj);
                                    return effectJob$lambda$10$lambda$9$lambda$8$lambda$7;
                                }
                            });
                            iVar = iVar2;
                        }
                    }
                    iVar2 = null;
                    recomposer.workContinuation = null;
                    rVar.invokeOnCompletion(new Function1() { // from class: androidx.compose.runtime.t
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            Unit effectJob$lambda$10$lambda$9$lambda$8$lambda$7;
                            effectJob$lambda$10$lambda$9$lambda$8$lambda$7 = Recomposer.effectJob$lambda$10$lambda$9$lambda$8$lambda$7(Recomposer.this, th2, (Throwable) obj);
                            return effectJob$lambda$10$lambda$9$lambda$8$lambda$7;
                        }
                    });
                    iVar = iVar2;
                } else {
                    recomposer.closeCause = a10;
                    recomposer._state.setValue(State.ShutDown);
                    Unit unit = Unit.f60915a;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (iVar != null) {
            Result.a aVar = Result.f60901b;
            iVar.resumeWith(Result.d(Unit.f60915a));
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit effectJob$lambda$10$lambda$9$lambda$8$lambda$7(Recomposer recomposer, Throwable th2, Throwable th3) {
        synchronized (recomposer.stateLock) {
            if (th2 != null) {
                if (th3 != null) {
                    try {
                        if (th3 instanceof CancellationException) {
                            th3 = null;
                        }
                        if (th3 != null) {
                            ms.d.a(th2, th3);
                        }
                    } catch (Throwable th4) {
                        throw th4;
                    }
                }
            } else {
                th2 = null;
            }
            recomposer.closeCause = th2;
            recomposer._state.setValue(State.ShutDown);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getHasBroadcastFrameClockAwaiters() {
        boolean hasBroadcastFrameClockAwaitersLocked;
        synchronized (this.stateLock) {
            hasBroadcastFrameClockAwaitersLocked = getHasBroadcastFrameClockAwaitersLocked();
        }
        return hasBroadcastFrameClockAwaitersLocked;
    }

    private final boolean getHasBroadcastFrameClockAwaitersLocked() {
        if (!this.frameClockPaused && this.broadcastFrameClock.getHasAwaiters()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getHasConcurrentFrameWorkLocked() {
        if (this.compositionsAwaitingApply.isEmpty() && !getHasBroadcastFrameClockAwaitersLocked()) {
            return false;
        }
        return true;
    }

    private final boolean getHasFrameWorkLocked() {
        if (this.compositionInvalidations.getSize() == 0 && !getHasBroadcastFrameClockAwaitersLocked() && !MultiValueMap.m1463isNotEmptyimpl(this.movableContentRemoved)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getHasSchedulingWork() {
        boolean z10;
        synchronized (this.stateLock) {
            if (!this.snapshotInvalidations.isNotEmpty() && this.compositionInvalidations.getSize() == 0) {
                if (!getHasBroadcastFrameClockAwaitersLocked()) {
                    z10 = false;
                }
            }
            z10 = true;
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getShouldKeepRecomposing() {
        boolean z10;
        synchronized (this.stateLock) {
            z10 = this.isClosed;
        }
        if (z10) {
            for (r rVar : this.effectJob.getChildren()) {
                if (rVar.isActive()) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<ControlledComposition> knownCompositions() {
        List<ControlledComposition> knownCompositionsLocked;
        synchronized (this.stateLock) {
            knownCompositionsLocked = knownCompositionsLocked();
        }
        return knownCompositionsLocked;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<ControlledComposition> knownCompositionsLocked() {
        List<ControlledComposition> arrayList;
        List list = this._knownCompositionsCache;
        if (list != null) {
            return list;
        }
        List<ControlledComposition> list2 = this._knownCompositions;
        if (list2.isEmpty()) {
            arrayList = CollectionsKt.n();
        } else {
            arrayList = new ArrayList(list2);
        }
        this._knownCompositionsCache = arrayList;
        return arrayList;
    }

    private final void performInitialMovableContentInserts(ControlledComposition controlledComposition) {
        synchronized (this.stateLock) {
            List<MovableContentStateReference> list = this.movableContentAwaitingInsert;
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (Intrinsics.areEqual(list.get(i10).getComposition$runtime(), controlledComposition)) {
                    Unit unit = Unit.f60915a;
                    ArrayList arrayList = new ArrayList();
                    performInitialMovableContentInserts$fillToInsert(arrayList, this, controlledComposition);
                    while (!arrayList.isEmpty()) {
                        performInsertValues(arrayList, null);
                        performInitialMovableContentInserts$fillToInsert(arrayList, this, controlledComposition);
                    }
                    return;
                }
            }
        }
    }

    private static final void performInitialMovableContentInserts$fillToInsert(List<MovableContentStateReference> list, Recomposer recomposer, ControlledComposition controlledComposition) {
        list.clear();
        synchronized (recomposer.stateLock) {
            try {
                Iterator<MovableContentStateReference> it = recomposer.movableContentAwaitingInsert.iterator();
                while (it.hasNext()) {
                    MovableContentStateReference next = it.next();
                    if (Intrinsics.areEqual(next.getComposition$runtime(), controlledComposition)) {
                        list.add(next);
                        it.remove();
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<ControlledComposition> performInsertValues(List<MovableContentStateReference> list, MutableScatterSet<Object> mutableScatterSet) {
        ArrayList<Pair<MovableContentStateReference, MovableContentStateReference>> arrayList;
        MovableContentStateReference movableContentStateReference;
        NestedMovableContent removeLast;
        HashMap hashMap = new HashMap(list.size());
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            MovableContentStateReference movableContentStateReference2 = list.get(i10);
            ControlledComposition composition$runtime = movableContentStateReference2.getComposition$runtime();
            Object obj = hashMap.get(composition$runtime);
            if (obj == null) {
                obj = new ArrayList();
                hashMap.put(composition$runtime, obj);
            }
            ((ArrayList) obj).add(movableContentStateReference2);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            ControlledComposition controlledComposition = (ControlledComposition) entry.getKey();
            List list2 = (List) entry.getValue();
            if (controlledComposition.isComposing()) {
                ComposerKt.composeImmediateRuntimeError("Check failed");
            }
            MutableSnapshot takeMutableSnapshot = Snapshot.Companion.takeMutableSnapshot(readObserverOf(controlledComposition), writeObserverOf(controlledComposition, mutableScatterSet));
            try {
                Snapshot makeCurrent = takeMutableSnapshot.makeCurrent();
                synchronized (this.stateLock) {
                    arrayList = new ArrayList(list2.size());
                    int size2 = list2.size();
                    for (int i11 = 0; i11 < size2; i11++) {
                        MovableContentStateReference movableContentStateReference3 = (MovableContentStateReference) list2.get(i11);
                        Object m1465removeLastimpl = MultiValueMap.m1465removeLastimpl(this.movableContentRemoved, movableContentStateReference3.getContent$runtime());
                        MovableContentStateReference movableContentStateReference4 = (MovableContentStateReference) m1465removeLastimpl;
                        if (movableContentStateReference4 != null) {
                            this.movableContentNestedStatesAvailable.usedContainer(movableContentStateReference4);
                        }
                        arrayList.add(ms.k.a(movableContentStateReference3, m1465removeLastimpl));
                    }
                    if (ComposeRuntimeFlags.isMovingNestedMovableContentEnabled) {
                        int size3 = arrayList.size();
                        int i12 = 0;
                        while (true) {
                            if (i12 >= size3) {
                                break;
                            }
                            Pair<MovableContentStateReference, MovableContentStateReference> pair = arrayList.get(i12);
                            if (pair.f() == null && this.movableContentNestedStatesAvailable.contains(pair.e().getContent$runtime())) {
                                ArrayList arrayList2 = new ArrayList(CollectionsKt.z(arrayList, 10));
                                for (Pair<MovableContentStateReference, MovableContentStateReference> pair2 : arrayList) {
                                    if (pair2.f() == null && (removeLast = this.movableContentNestedStatesAvailable.removeLast(pair2.e().getContent$runtime())) != null) {
                                        MovableContentStateReference content = removeLast.getContent();
                                        MultiValueMap.m1451addimpl(this.movableContentNestedExtractionsPending, removeLast.getContainer(), content);
                                        pair2 = ms.k.a(pair2.e(), content);
                                    }
                                    arrayList2.add(pair2);
                                }
                                arrayList = arrayList2;
                            } else {
                                i12++;
                            }
                        }
                    }
                }
                int size4 = arrayList.size();
                int i13 = 0;
                while (true) {
                    if (i13 >= size4) {
                        break;
                    } else if (arrayList.get(i13).f() == null) {
                        i13++;
                    } else {
                        int size5 = arrayList.size();
                        int i14 = 0;
                        while (true) {
                            if (i14 >= size5) {
                                break;
                            } else if (arrayList.get(i14).f() != null) {
                                i14++;
                            } else {
                                ArrayList arrayList3 = new ArrayList(arrayList.size());
                                int size6 = arrayList.size();
                                for (int i15 = 0; i15 < size6; i15++) {
                                    Pair<MovableContentStateReference, MovableContentStateReference> pair3 = arrayList.get(i15);
                                    if (pair3.f() == null) {
                                        movableContentStateReference = pair3.e();
                                    } else {
                                        movableContentStateReference = null;
                                    }
                                    if (movableContentStateReference != null) {
                                        arrayList3.add(movableContentStateReference);
                                    }
                                }
                                synchronized (this.stateLock) {
                                    CollectionsKt.E(this.movableContentAwaitingInsert, arrayList3);
                                    Unit unit = Unit.f60915a;
                                }
                                ArrayList arrayList4 = new ArrayList(arrayList.size());
                                int size7 = arrayList.size();
                                for (int i16 = 0; i16 < size7; i16++) {
                                    Pair<MovableContentStateReference, MovableContentStateReference> pair4 = arrayList.get(i16);
                                    if (pair4.f() != null) {
                                        arrayList4.add(pair4);
                                    }
                                }
                                arrayList = arrayList4;
                            }
                        }
                    }
                }
                controlledComposition.insertMovableContent(arrayList);
                Unit unit2 = Unit.f60915a;
                takeMutableSnapshot.restoreCurrent(makeCurrent);
            } finally {
                applyAndCheck(takeMutableSnapshot);
            }
        }
        return CollectionsKt.d1(hashMap.keySet());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ControlledComposition performRecompose(final ControlledComposition controlledComposition, final MutableScatterSet<Object> mutableScatterSet) {
        Set<ControlledComposition> set;
        if (controlledComposition.isComposing() || controlledComposition.isDisposed() || ((set = this.compositionsRemoved) != null && set.contains(controlledComposition))) {
            return null;
        }
        MutableSnapshot takeMutableSnapshot = Snapshot.Companion.takeMutableSnapshot(readObserverOf(controlledComposition), writeObserverOf(controlledComposition, mutableScatterSet));
        try {
            Snapshot makeCurrent = takeMutableSnapshot.makeCurrent();
            if (mutableScatterSet != null && mutableScatterSet.isNotEmpty()) {
                controlledComposition.prepareCompose(new Function0() { // from class: androidx.compose.runtime.z
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit performRecompose$lambda$68$lambda$67;
                        performRecompose$lambda$68$lambda$67 = Recomposer.performRecompose$lambda$68$lambda$67(MutableScatterSet.this, controlledComposition);
                        return performRecompose$lambda$68$lambda$67;
                    }
                });
            }
            boolean recompose = controlledComposition.recompose();
            takeMutableSnapshot.restoreCurrent(makeCurrent);
            if (!recompose) {
                return null;
            }
            return controlledComposition;
        } finally {
            applyAndCheck(takeMutableSnapshot);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit performRecompose$lambda$68$lambda$67(MutableScatterSet mutableScatterSet, ControlledComposition controlledComposition) {
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
                            controlledComposition.recordWriteOf(objArr[(i10 << 3) + i12]);
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
        return Unit.f60915a;
    }

    private final void processCompositionError(Throwable th2, ControlledComposition controlledComposition, boolean z10) {
        if (_hotReloadEnabled.get().booleanValue() && !(th2 instanceof ComposeRuntimeError)) {
            synchronized (this.stateLock) {
                try {
                    Utils_androidKt.logError("Error was captured in composition while live edit was enabled.", th2);
                    this.compositionsAwaitingApply.clear();
                    this.compositionInvalidations.clear();
                    this.snapshotInvalidations = new MutableScatterSet<>(0, 1, null);
                    this.movableContentAwaitingInsert.clear();
                    MultiValueMap.m1453clearimpl(this.movableContentRemoved);
                    this.movableContentStatesAvailable.clear();
                    this.errorState = new RecomposerErrorState(z10, th2);
                    if (controlledComposition != null) {
                        recordFailedCompositionLocked(controlledComposition);
                    }
                    deriveStateLocked();
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            return;
        }
        synchronized (this.stateLock) {
            RecomposerErrorState recomposerErrorState = this.errorState;
            if (recomposerErrorState == null) {
                this.errorState = new RecomposerErrorState(false, th2);
                Unit unit = Unit.f60915a;
            } else {
                throw recomposerErrorState.getCause();
            }
        }
        throw th2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void processCompositionError$default(Recomposer recomposer, Throwable th2, ControlledComposition controlledComposition, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            controlledComposition = null;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        recomposer.processCompositionError(th2, controlledComposition, z10);
    }

    private final Function1<Object, Unit> readObserverOf(final ControlledComposition controlledComposition) {
        return new Function1() { // from class: androidx.compose.runtime.u
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit readObserverOf$lambda$85;
                readObserverOf$lambda$85 = Recomposer.readObserverOf$lambda$85(ControlledComposition.this, obj);
                return readObserverOf$lambda$85;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit readObserverOf$lambda$85(ControlledComposition controlledComposition, Object obj) {
        controlledComposition.recordReadOf(obj);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object recompositionRunner(at.n<? super gt.g0, ? super MonotonicFrameClock, ? super rs.c<? super Unit>, ? extends Object> nVar, rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(this.broadcastFrameClock, new Recomposer$recompositionRunner$2(this, nVar, MonotonicFrameClockKt.getMonotonicFrameClock(cVar.getContext()), null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean recordComposerModifications() {
        boolean hasFrameWorkLocked;
        CollectionsKt.n();
        synchronized (this.stateLock) {
            if (this.snapshotInvalidations.isEmpty()) {
                return getHasFrameWorkLocked();
            }
            List<ControlledComposition> knownCompositionsLocked = knownCompositionsLocked();
            Set<? extends Object> wrapIntoSet = ScatterSetWrapperKt.wrapIntoSet(this.snapshotInvalidations);
            this.snapshotInvalidations = new MutableScatterSet<>(0, 1, null);
            try {
                int size = knownCompositionsLocked.size();
                for (int i10 = 0; i10 < size; i10++) {
                    knownCompositionsLocked.get(i10).recordModificationsOf(wrapIntoSet);
                    if (this._state.getValue().compareTo(State.ShuttingDown) <= 0) {
                        break;
                    }
                }
                synchronized (this.stateLock) {
                    if (deriveStateLocked() == null) {
                        hasFrameWorkLocked = getHasFrameWorkLocked();
                    } else {
                        throw new IllegalStateException("called outside of runRecomposeAndApplyChanges");
                    }
                }
                return hasFrameWorkLocked;
            } catch (Throwable th2) {
                synchronized (this.stateLock) {
                    this.snapshotInvalidations.addAll(wrapIntoSet);
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void recordFailedCompositionLocked(ControlledComposition controlledComposition) {
        List list = this.failedCompositions;
        if (list == null) {
            list = new ArrayList();
            this.failedCompositions = list;
        }
        if (!list.contains(controlledComposition)) {
            list.add(controlledComposition);
        }
        removeKnownCompositionLocked(controlledComposition);
    }

    private final void registerCompositionLocked(ControlledComposition controlledComposition) {
        MutableObjectList<CompositionRegistrationObserver> mutableObjectList = this.registrationObservers;
        if (mutableObjectList != null) {
            Object[] objArr = mutableObjectList.content;
            int i10 = mutableObjectList._size;
            for (int i11 = 0; i11 < i10; i11++) {
                CompositionRegistrationObserver compositionRegistrationObserver = (CompositionRegistrationObserver) objArr[i11];
                if (controlledComposition instanceof ObservableComposition) {
                    compositionRegistrationObserver.onCompositionRegistered((ObservableComposition) controlledComposition);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void registerRunnerJob(r rVar) {
        synchronized (this.stateLock) {
            Throwable th2 = this.closeCause;
            if (th2 == null) {
                if (this._state.getValue().compareTo(State.ShuttingDown) > 0) {
                    if (this.runnerJob == null) {
                        this.runnerJob = rVar;
                        deriveStateLocked();
                    } else {
                        throw new IllegalStateException("Recomposer already running");
                    }
                } else {
                    throw new IllegalStateException("Recomposer shut down");
                }
            } else {
                throw th2;
            }
        }
    }

    private final void removeKnownCompositionLocked(ControlledComposition controlledComposition) {
        if (this._knownCompositions.remove(controlledComposition)) {
            this._knownCompositionsCache = null;
            unregisterCompositionLocked(controlledComposition);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecomposerErrorState resetErrorState() {
        RecomposerErrorState recomposerErrorState;
        synchronized (this.stateLock) {
            recomposerErrorState = this.errorState;
            if (recomposerErrorState != null) {
                this.errorState = null;
                deriveStateLocked();
            }
        }
        return recomposerErrorState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void retryFailedCompositions() {
        List<ControlledComposition> list;
        int i10;
        synchronized (this.stateLock) {
            list = this.failedCompositions;
            this.failedCompositions = null;
        }
        if (list == null) {
            return;
        }
        while (true) {
            i10 = 0;
            try {
                if (list.isEmpty()) {
                    break;
                }
                ControlledComposition controlledComposition = (ControlledComposition) CollectionsKt.R(list);
                if (controlledComposition instanceof CompositionImpl) {
                    ((CompositionImpl) controlledComposition).invalidateAll();
                    ((CompositionImpl) controlledComposition).setContent(((CompositionImpl) controlledComposition).getComposable());
                    if (this.errorState != null) {
                        break;
                    }
                }
            } catch (Throwable th2) {
                if (!list.isEmpty()) {
                    synchronized (this.stateLock) {
                        try {
                            int size = list.size();
                            while (i10 < size) {
                                recordFailedCompositionLocked(list.get(i10));
                                i10++;
                            }
                            Unit unit = Unit.f60915a;
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                }
                throw th2;
            }
        }
        if (!list.isEmpty()) {
            synchronized (this.stateLock) {
                try {
                    int size2 = list.size();
                    while (i10 < size2) {
                        recordFailedCompositionLocked(list.get(i10));
                        i10++;
                    }
                    Unit unit2 = Unit.f60915a;
                } catch (Throwable th4) {
                    throw th4;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0095 A[RETURN] */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r8v10, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r8v7, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0093 -> B:13:0x003b). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object runFrameLoop(androidx.compose.runtime.MonotonicFrameClock r7, androidx.compose.runtime.ProduceFrameSignal r8, rs.c<? super kotlin.Unit> r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.compose.runtime.Recomposer$runFrameLoop$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.runtime.Recomposer$runFrameLoop$1 r0 = (androidx.compose.runtime.Recomposer$runFrameLoop$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.runtime.Recomposer$runFrameLoop$1 r0 = new androidx.compose.runtime.Recomposer$runFrameLoop$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L5c
            if (r2 == r4) goto L48
            if (r2 != r3) goto L40
            java.lang.Object r7 = r0.L$3
            java.util.List r7 = (java.util.List) r7
            java.lang.Object r8 = r0.L$2
            java.util.List r8 = (java.util.List) r8
            java.lang.Object r2 = r0.L$1
            androidx.compose.runtime.ProduceFrameSignal r2 = (androidx.compose.runtime.ProduceFrameSignal) r2
            java.lang.Object r5 = r0.L$0
            androidx.compose.runtime.MonotonicFrameClock r5 = (androidx.compose.runtime.MonotonicFrameClock) r5
            kotlin.f.b(r9)
        L3b:
            r9 = r8
            r8 = r2
            r2 = r7
            r7 = r5
            goto L69
        L40:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L48:
            java.lang.Object r7 = r0.L$3
            java.util.List r7 = (java.util.List) r7
            java.lang.Object r8 = r0.L$2
            java.util.List r8 = (java.util.List) r8
            java.lang.Object r2 = r0.L$1
            androidx.compose.runtime.ProduceFrameSignal r2 = (androidx.compose.runtime.ProduceFrameSignal) r2
            java.lang.Object r5 = r0.L$0
            androidx.compose.runtime.MonotonicFrameClock r5 = (androidx.compose.runtime.MonotonicFrameClock) r5
            kotlin.f.b(r9)
            goto L80
        L5c:
            kotlin.f.b(r9)
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
        L69:
            java.lang.Object r5 = r6.stateLock
            r0.L$0 = r7
            r0.L$1 = r8
            r0.L$2 = r9
            r0.L$3 = r2
            r0.label = r4
            java.lang.Object r5 = r8.awaitFrameRequest(r5, r0)
            if (r5 != r1) goto L7c
            return r1
        L7c:
            r5 = r7
            r7 = r2
            r2 = r8
            r8 = r9
        L80:
            androidx.compose.runtime.y r9 = new androidx.compose.runtime.y
            r9.<init>()
            r0.L$0 = r5
            r0.L$1 = r2
            r0.L$2 = r8
            r0.L$3 = r7
            r0.label = r3
            java.lang.Object r9 = r5.withFrameNanos(r9, r0)
            if (r9 != r1) goto L3b
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Recomposer.runFrameLoop(androidx.compose.runtime.MonotonicFrameClock, androidx.compose.runtime.ProduceFrameSignal, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final gt.i runFrameLoop$lambda$51(Recomposer recomposer, List list, List list2, ProduceFrameSignal produceFrameSignal, long j10) {
        Object beginSection;
        int i10;
        gt.i<Unit> deriveStateLocked;
        if (recomposer.getHasBroadcastFrameClockAwaiters()) {
            Trace trace = Trace.INSTANCE;
            beginSection = trace.beginSection("Recomposer:animation");
            try {
                recomposer.broadcastFrameClock.sendFrame(j10);
                Snapshot.Companion.sendApplyNotifications();
                Unit unit = Unit.f60915a;
                trace.endSection(beginSection);
            } finally {
            }
        }
        beginSection = Trace.INSTANCE.beginSection("Recomposer:recompose");
        try {
            recomposer.recordComposerModifications();
            synchronized (recomposer.stateLock) {
                List<ControlledComposition> list3 = recomposer.compositionsAwaitingApply;
                int size = list3.size();
                for (int i11 = 0; i11 < size; i11++) {
                    list2.add(list3.get(i11));
                }
                recomposer.compositionsAwaitingApply.clear();
                MutableVector<ControlledComposition> mutableVector = recomposer.compositionInvalidations;
                ControlledComposition[] controlledCompositionArr = mutableVector.content;
                int size2 = mutableVector.getSize();
                for (int i12 = 0; i12 < size2; i12++) {
                    list.add(controlledCompositionArr[i12]);
                }
                recomposer.compositionInvalidations.clear();
                produceFrameSignal.takeFrameRequestLocked();
                Unit unit2 = Unit.f60915a;
            }
            MutableScatterSet<Object> mutableScatterSet = new MutableScatterSet<>(0, 1, null);
            int size3 = list.size();
            for (int i13 = 0; i13 < size3; i13++) {
                ControlledComposition performRecompose = recomposer.performRecompose((ControlledComposition) list.get(i13), mutableScatterSet);
                if (performRecompose != null) {
                    list2.add(performRecompose);
                }
            }
            list.clear();
            if (!list2.isEmpty()) {
                recomposer.changeCount++;
            }
            int size4 = list2.size();
            for (i10 = 0; i10 < size4; i10++) {
                ((ControlledComposition) list2.get(i10)).applyChanges();
            }
            list2.clear();
            synchronized (recomposer.stateLock) {
                deriveStateLocked = recomposer.deriveStateLocked();
            }
            return deriveStateLocked;
        } finally {
        }
    }

    private final void unregisterCompositionLocked(ControlledComposition controlledComposition) {
        MutableObjectList<CompositionRegistrationObserver> mutableObjectList = this.registrationObservers;
        if (mutableObjectList != null) {
            Object[] objArr = mutableObjectList.content;
            int i10 = mutableObjectList._size;
            for (int i11 = 0; i11 < i10; i11++) {
                CompositionRegistrationObserver compositionRegistrationObserver = (CompositionRegistrationObserver) objArr[i11];
                if (controlledComposition instanceof ObservableComposition) {
                    compositionRegistrationObserver.onCompositionUnregistered((ObservableComposition) controlledComposition);
                }
            }
        }
    }

    private final void withTransparentSnapshot(Function0<Unit> function0) {
        Snapshot transparentObserverSnapshot;
        Snapshot current = Snapshot.Companion.getCurrent();
        if (current instanceof MutableSnapshot) {
            transparentObserverSnapshot = new TransparentObserverMutableSnapshot((MutableSnapshot) current, null, null, true, false);
        } else {
            transparentObserverSnapshot = new TransparentObserverSnapshot(current, null, true, false);
        }
        try {
            Snapshot makeCurrent = transparentObserverSnapshot.makeCurrent();
            function0.invoke();
            InlineMarker.finallyStart(1);
            transparentObserverSnapshot.restoreCurrent(makeCurrent);
            InlineMarker.finallyEnd(1);
        } finally {
            InlineMarker.finallyStart(1);
            transparentObserverSnapshot.dispose();
            InlineMarker.finallyEnd(1);
        }
    }

    private final Function1<Object, Unit> writeObserverOf(final ControlledComposition controlledComposition, final MutableScatterSet<Object> mutableScatterSet) {
        return new Function1() { // from class: androidx.compose.runtime.x
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit writeObserverOf$lambda$86;
                writeObserverOf$lambda$86 = Recomposer.writeObserverOf$lambda$86(ControlledComposition.this, mutableScatterSet, obj);
                return writeObserverOf$lambda$86;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeObserverOf$lambda$86(ControlledComposition controlledComposition, MutableScatterSet mutableScatterSet, Object obj) {
        controlledComposition.recordWriteOf(obj);
        if (mutableScatterSet != null) {
            mutableScatterSet.add(obj);
        }
        return Unit.f60915a;
    }

    @NotNull
    public final CompositionObserverHandle addCompositionRegistrationObserver$runtime(@NotNull final CompositionRegistrationObserver compositionRegistrationObserver) {
        synchronized (this.stateLock) {
            try {
                MutableObjectList<CompositionRegistrationObserver> mutableObjectList = this.registrationObservers;
                if (mutableObjectList == null) {
                    mutableObjectList = new MutableObjectList<>(0, 1, null);
                    this.registrationObservers = mutableObjectList;
                }
                mutableObjectList.add(compositionRegistrationObserver);
                List<ControlledComposition> list = this._knownCompositions;
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ControlledComposition controlledComposition = list.get(i10);
                    if (controlledComposition instanceof ObservableComposition) {
                        compositionRegistrationObserver.onCompositionRegistered((ObservableComposition) controlledComposition);
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return new CompositionObserverHandle() { // from class: androidx.compose.runtime.Recomposer$addCompositionRegistrationObserver$2
            @Override // androidx.compose.runtime.tooling.CompositionObserverHandle
            public void dispose() {
                MutableObjectList mutableObjectList2;
                Object obj = Recomposer.this.stateLock;
                Recomposer recomposer = Recomposer.this;
                CompositionRegistrationObserver compositionRegistrationObserver2 = compositionRegistrationObserver;
                synchronized (obj) {
                    mutableObjectList2 = recomposer.registrationObservers;
                    if (mutableObjectList2 != null) {
                        mutableObjectList2.remove(compositionRegistrationObserver2);
                    }
                }
            }
        };
    }

    @NotNull
    public final RecomposerInfo asRecomposerInfo() {
        return this.recomposerInfo;
    }

    @Nullable
    public final Object awaitIdle(@NotNull rs.c<? super Unit> cVar) {
        Object l10 = kotlinx.coroutines.flow.c.l(kotlinx.coroutines.flow.c.V(getCurrentState(), new Recomposer$awaitIdle$2(null)), cVar);
        if (l10 == kotlin.coroutines.intrinsics.a.f()) {
            return l10;
        }
        return Unit.f60915a;
    }

    public final void cancel() {
        synchronized (this.stateLock) {
            try {
                if (this._state.getValue().compareTo(State.Idle) >= 0) {
                    this._state.setValue(State.ShuttingDown);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        r.a.b(this.effectJob, null, 1, null);
    }

    public final void close() {
        if (this.effectJob.complete()) {
            synchronized (this.stateLock) {
                this.isClosed = true;
                Unit unit = Unit.f60915a;
            }
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    @ComposableInferredTarget(scheme = "[0[0]]")
    public void composeInitial$runtime(@NotNull ControlledComposition controlledComposition, @NotNull Function2<? super Composer, ? super Integer, Unit> function2) {
        boolean z10;
        boolean isComposing = controlledComposition.isComposing();
        synchronized (this.stateLock) {
            if (this._state.getValue().compareTo(State.ShuttingDown) > 0) {
                boolean contains = knownCompositionsLocked().contains(controlledComposition);
                z10 = !contains;
                if (!contains) {
                    addKnownCompositionLocked(controlledComposition);
                }
            } else {
                z10 = true;
            }
        }
        try {
            Snapshot.Companion companion = Snapshot.Companion;
            MutableSnapshot takeMutableSnapshot = companion.takeMutableSnapshot(readObserverOf(controlledComposition), writeObserverOf(controlledComposition, null));
            Snapshot makeCurrent = takeMutableSnapshot.makeCurrent();
            controlledComposition.composeContent(function2);
            Unit unit = Unit.f60915a;
            takeMutableSnapshot.restoreCurrent(makeCurrent);
            applyAndCheck(takeMutableSnapshot);
            if (!isComposing) {
                companion.notifyObjectsInitialized();
            }
            try {
                performInitialMovableContentInserts(controlledComposition);
                try {
                    controlledComposition.applyChanges();
                    controlledComposition.applyLateChanges();
                    if (!isComposing) {
                        companion.notifyObjectsInitialized();
                    }
                } catch (Throwable th2) {
                    processCompositionError$default(this, th2, null, false, 6, null);
                }
            } catch (Throwable th3) {
                processCompositionError(th3, controlledComposition, true);
            }
        } catch (Throwable th4) {
            processCompositionError(th4, controlledComposition, true);
            if (z10) {
                synchronized (this.stateLock) {
                    removeKnownCompositionLocked(controlledComposition);
                    Unit unit2 = Unit.f60915a;
                }
            }
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    @ComposableInferredTarget(scheme = "[0[0]]")
    @NotNull
    public ScatterSet<RecomposeScopeImpl> composeInitialPaused$runtime(@NotNull ControlledComposition controlledComposition, @NotNull ShouldPauseCallback shouldPauseCallback, @NotNull Function2<? super Composer, ? super Integer, Unit> function2) {
        try {
            ShouldPauseCallback andSetShouldPauseCallback = controlledComposition.getAndSetShouldPauseCallback(shouldPauseCallback);
            composeInitial$runtime(controlledComposition, function2);
            MutableScatterSet<RecomposeScopeImpl> mutableScatterSet = this.pausedScopes.get();
            if (mutableScatterSet == null) {
                mutableScatterSet = ScatterSetKt.emptyScatterSet();
            }
            controlledComposition.getAndSetShouldPauseCallback(andSetShouldPauseCallback);
            return mutableScatterSet;
        } finally {
            this.pausedScopes.set(null);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void deletedMovableContent$runtime(@NotNull MovableContentStateReference movableContentStateReference) {
        gt.i<Unit> deriveStateLocked;
        synchronized (this.stateLock) {
            try {
                MultiValueMap.m1451addimpl(this.movableContentRemoved, movableContentStateReference.getContent$runtime(), movableContentStateReference);
                if (movableContentStateReference.getNestedReferences$runtime() != null) {
                    deletedMovableContent$lambda$95$recordNestedStatesOf(this, movableContentStateReference, movableContentStateReference);
                }
                deriveStateLocked = deriveStateLocked();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (deriveStateLocked != null) {
            Result.a aVar = Result.f60901b;
            deriveStateLocked.resumeWith(Result.d(Unit.f60915a));
        }
    }

    public final long getChangeCount() {
        return this.changeCount;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public boolean getCollectingCallByInformation$runtime() {
        return _hotReloadEnabled.get().booleanValue();
    }

    @Override // androidx.compose.runtime.CompositionContext
    public boolean getCollectingParameterInformation$runtime() {
        return false;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public boolean getCollectingSourceInformation$runtime() {
        return ComposerKt.getComposeStackTraceEnabled();
    }

    @Override // androidx.compose.runtime.CompositionContext
    public long getCompositeKeyHashCode$runtime() {
        return 1000;
    }

    @Override // androidx.compose.runtime.CompositionContext
    @Nullable
    public Composition getComposition$runtime() {
        return null;
    }

    @NotNull
    public final kt.i<State> getCurrentState() {
        return this._state;
    }

    @Override // androidx.compose.runtime.CompositionContext
    @NotNull
    public CoroutineContext getEffectCoroutineContext() {
        return this.effectCoroutineContext;
    }

    public final boolean getHasPendingWork() {
        boolean z10;
        synchronized (this.stateLock) {
            if (!this.snapshotInvalidations.isNotEmpty() && this.compositionInvalidations.getSize() == 0 && this.concurrentCompositionsOutstanding <= 0 && this.compositionsAwaitingApply.isEmpty() && !getHasBroadcastFrameClockAwaitersLocked()) {
                if (!MultiValueMap.m1463isNotEmptyimpl(this.movableContentRemoved)) {
                    z10 = false;
                }
            }
            z10 = true;
        }
        return z10;
    }

    @Override // androidx.compose.runtime.CompositionContext
    @NotNull
    public CoroutineContext getRecomposeCoroutineContext$runtime() {
        return EmptyCoroutineContext.f61040a;
    }

    @NotNull
    public final kt.b<State> getState() {
        return getCurrentState();
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void insertMovableContent$runtime(@NotNull MovableContentStateReference movableContentStateReference) {
        gt.i<Unit> deriveStateLocked;
        synchronized (this.stateLock) {
            this.movableContentAwaitingInsert.add(movableContentStateReference);
            deriveStateLocked = deriveStateLocked();
        }
        if (deriveStateLocked != null) {
            Result.a aVar = Result.f60901b;
            deriveStateLocked.resumeWith(Result.d(Unit.f60915a));
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void invalidate$runtime(@NotNull ControlledComposition controlledComposition) {
        gt.i<Unit> iVar;
        synchronized (this.stateLock) {
            if (!this.compositionInvalidations.contains(controlledComposition)) {
                this.compositionInvalidations.add(controlledComposition);
                iVar = deriveStateLocked();
            } else {
                iVar = null;
            }
        }
        if (iVar != null) {
            Result.a aVar = Result.f60901b;
            iVar.resumeWith(Result.d(Unit.f60915a));
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void invalidateScope$runtime(@NotNull RecomposeScopeImpl recomposeScopeImpl) {
        gt.i<Unit> deriveStateLocked;
        synchronized (this.stateLock) {
            this.snapshotInvalidations.add(recomposeScopeImpl);
            deriveStateLocked = deriveStateLocked();
        }
        if (deriveStateLocked != null) {
            Result.a aVar = Result.f60901b;
            deriveStateLocked.resumeWith(Result.d(Unit.f60915a));
        }
    }

    @Nullable
    public final Object join(@NotNull rs.c<? super Unit> cVar) {
        Object x10 = kotlinx.coroutines.flow.c.x(getCurrentState(), new Recomposer$join$2(null), cVar);
        if (x10 == kotlin.coroutines.intrinsics.a.f()) {
            return x10;
        }
        return Unit.f60915a;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void movableContentStateReleased$runtime(@NotNull MovableContentStateReference movableContentStateReference, @NotNull MovableContentState movableContentState, @NotNull Applier<?> applier) {
        synchronized (this.stateLock) {
            try {
                this.movableContentStatesAvailable.set(movableContentStateReference, movableContentState);
                ObjectList<MovableContentStateReference> m1460getimpl = MultiValueMap.m1460getimpl(this.movableContentNestedExtractionsPending, movableContentStateReference);
                if (m1460getimpl.isNotEmpty()) {
                    ScatterMap<MovableContentStateReference, MovableContentState> extractNestedStates$runtime = movableContentState.extractNestedStates$runtime(applier, m1460getimpl);
                    Object[] objArr = extractNestedStates$runtime.keys;
                    Object[] objArr2 = extractNestedStates$runtime.values;
                    long[] jArr = extractNestedStates$runtime.metadata;
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
                                        this.movableContentStatesAvailable.set((MovableContentStateReference) objArr[i13], (MovableContentState) objArr2[i13]);
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
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    @Nullable
    public MovableContentState movableContentStateResolve$runtime(@NotNull MovableContentStateReference movableContentStateReference) {
        MovableContentState remove;
        synchronized (this.stateLock) {
            remove = this.movableContentStatesAvailable.remove(movableContentStateReference);
        }
        return remove;
    }

    public final void pauseCompositionFrameClock() {
        synchronized (this.stateLock) {
            this.frameClockPaused = true;
            Unit unit = Unit.f60915a;
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    @NotNull
    public ScatterSet<RecomposeScopeImpl> recomposePaused$runtime(@NotNull ControlledComposition controlledComposition, @NotNull ShouldPauseCallback shouldPauseCallback, @NotNull ScatterSet<RecomposeScopeImpl> scatterSet) {
        try {
            recordComposerModifications();
            controlledComposition.recordModificationsOf(ScatterSetWrapperKt.wrapIntoSet(scatterSet));
            ShouldPauseCallback andSetShouldPauseCallback = controlledComposition.getAndSetShouldPauseCallback(shouldPauseCallback);
            ControlledComposition performRecompose = performRecompose(controlledComposition, null);
            if (performRecompose != null) {
                performInitialMovableContentInserts(controlledComposition);
                performRecompose.applyChanges();
                performRecompose.applyLateChanges();
            }
            MutableScatterSet<RecomposeScopeImpl> mutableScatterSet = this.pausedScopes.get();
            if (mutableScatterSet == null) {
                mutableScatterSet = ScatterSetKt.emptyScatterSet();
            }
            controlledComposition.getAndSetShouldPauseCallback(andSetShouldPauseCallback);
            return mutableScatterSet;
        } finally {
            this.pausedScopes.set(null);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void reportPausedScope$runtime(@NotNull RecomposeScopeImpl recomposeScopeImpl) {
        MutableScatterSet<RecomposeScopeImpl> mutableScatterSet = this.pausedScopes.get();
        if (mutableScatterSet == null) {
            mutableScatterSet = ScatterSetKt.mutableScatterSetOf();
            this.pausedScopes.set(mutableScatterSet);
        }
        mutableScatterSet.add(recomposeScopeImpl);
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void reportRemovedComposition$runtime(@NotNull ControlledComposition controlledComposition) {
        synchronized (this.stateLock) {
            try {
                Set set = this.compositionsRemoved;
                if (set == null) {
                    set = new LinkedHashSet();
                    this.compositionsRemoved = set;
                }
                set.add(controlledComposition);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void resumeCompositionFrameClock() {
        gt.i<Unit> iVar;
        synchronized (this.stateLock) {
            if (this.frameClockPaused) {
                this.frameClockPaused = false;
                iVar = deriveStateLocked();
            } else {
                iVar = null;
            }
        }
        if (iVar != null) {
            Result.a aVar = Result.f60901b;
            iVar.resumeWith(Result.d(Unit.f60915a));
        }
    }

    @Nullable
    public final Object runRecomposeAndApplyChanges(@NotNull rs.c<? super Unit> cVar) {
        Object recompositionRunner = recompositionRunner(new Recomposer$runRecomposeAndApplyChanges$2(this, null), cVar);
        if (recompositionRunner == kotlin.coroutines.intrinsics.a.f()) {
            return recompositionRunner;
        }
        return Unit.f60915a;
    }

    @ExperimentalComposeApi
    @Nullable
    public final Object runRecomposeConcurrentlyAndApplyChanges(@NotNull CoroutineContext coroutineContext, @NotNull rs.c<? super Unit> cVar) {
        Object recompositionRunner = recompositionRunner(new Recomposer$runRecomposeConcurrentlyAndApplyChanges$2(coroutineContext, this, null), cVar);
        if (recompositionRunner == kotlin.coroutines.intrinsics.a.f()) {
            return recompositionRunner;
        }
        return Unit.f60915a;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void unregisterComposition$runtime(@NotNull ControlledComposition controlledComposition) {
        synchronized (this.stateLock) {
            removeKnownCompositionLocked(controlledComposition);
            this.compositionInvalidations.remove(controlledComposition);
            this.compositionsAwaitingApply.remove(controlledComposition);
            Unit unit = Unit.f60915a;
        }
    }

    private static /* synthetic */ void getRegistrationObservers$annotations() {
    }

    @ms.c
    public static /* synthetic */ void getState$annotations() {
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void recordInspectionTable$runtime(@NotNull Set<CompositionData> set) {
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void registerComposition$runtime(@NotNull ControlledComposition controlledComposition) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void recordComposerModifications(Function1<? super ControlledComposition, Unit> function1) {
        MutableScatterSet mutableScatterSet;
        int i10;
        synchronized (this.stateLock) {
            try {
                mutableScatterSet = this.snapshotInvalidations;
                if (mutableScatterSet.isNotEmpty()) {
                    this.snapshotInvalidations = new MutableScatterSet(0, 1, null);
                }
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        InlineMarker.finallyEnd(1);
        Set<? extends Object> wrapIntoSet = ScatterSetWrapperKt.wrapIntoSet(mutableScatterSet);
        if (!wrapIntoSet.isEmpty()) {
            List knownCompositionsLocked = knownCompositionsLocked();
            int size = knownCompositionsLocked.size();
            for (int i11 = 0; i11 < size; i11++) {
                ((ControlledComposition) knownCompositionsLocked.get(i11)).recordModificationsOf(wrapIntoSet);
            }
        }
        MutableVector mutableVector = this.compositionInvalidations;
        T[] tArr = mutableVector.content;
        int size2 = mutableVector.getSize();
        for (i10 = 0; i10 < size2; i10++) {
            function1.invoke(tArr[i10]);
        }
        this.compositionInvalidations.clear();
        synchronized (this.stateLock) {
            try {
                if (deriveStateLocked() == null) {
                    Unit unit = Unit.f60915a;
                    InlineMarker.finallyStart(1);
                } else {
                    throw new IllegalStateException("called outside of runRecomposeAndApplyChanges");
                }
            } catch (Throwable th3) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th3;
            }
        }
        InlineMarker.finallyEnd(1);
    }
}
