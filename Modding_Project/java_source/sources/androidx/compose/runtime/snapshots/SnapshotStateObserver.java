package androidx.compose.runtime.snapshots;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectIntMap;
import androidx.collection.ScatterMap;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DerivedState;
import androidx.compose.runtime.DerivedStateObserver;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.SnapshotMutationPolicy;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.internal.Thread_jvmKt;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.TestOnly;
/* compiled from: SnapshotStateObserver.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotStateObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateObserver.kt\nandroidx/compose/runtime/snapshots/SnapshotStateObserver\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n*L\n1#1,601:1\n183#1:611\n184#1:621\n187#1:652\n188#1:669\n187#1:670\n188#1:687\n183#1:688\n184#1:698\n1107#2:602\n1085#2,2:603\n25#3,5:605\n33#3:610\n33#3:612\n33#3:622\n33#3:631\n33#3:647\n33#3:653\n33#3:671\n33#3:689\n33#3:708\n33#3:717\n424#4,8:613\n424#4,8:623\n742#4,15:632\n742#4,15:654\n742#4,15:672\n424#4,8:690\n348#4,7:699\n643#4,2:706\n424#4,8:709\n34#5,4:648\n*S KotlinDebug\n*F\n+ 1 SnapshotStateObserver.kt\nandroidx/compose/runtime/snapshots/SnapshotStateObserver\n*L\n71#1:611\n71#1:621\n282#1:652\n282#1:669\n293#1:670\n293#1:687\n320#1:688\n320#1:698\n174#1:602\n174#1:603,2\n175#1:605,5\n65#1:610\n71#1:612\n183#1:622\n187#1:631\n226#1:647\n282#1:653\n293#1:671\n320#1:689\n85#1:708\n165#1:717\n71#1:613,8\n183#1:623,8\n187#1:632,15\n282#1:654,15\n293#1:672,15\n320#1:690,8\n331#1:699,7\n334#1:706,2\n89#1:709,8\n233#1:648,4\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotStateObserver {
    public static final int $stable = 8;
    @Nullable
    private ObserverHandle applyUnsubscribe;
    @Nullable
    private ObservedScopeMap currentMap;
    private boolean isPaused;
    @NotNull
    private final Function1<Function0<Unit>, Unit> onChangedExecutor;
    private boolean sendingNotifications;
    @NotNull
    private final AtomicReference<Object> pendingChanges = new AtomicReference<>(null);
    @NotNull
    private final Function2<Set<? extends Object>, Snapshot, Unit> applyObserver = new Function2() { // from class: androidx.compose.runtime.snapshots.l
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Unit applyObserver$lambda$0;
            applyObserver$lambda$0 = SnapshotStateObserver.applyObserver$lambda$0(SnapshotStateObserver.this, (Set) obj, (Snapshot) obj2);
            return applyObserver$lambda$0;
        }
    };
    @NotNull
    private final Function1<Object, Unit> readObserver = new Function1() { // from class: androidx.compose.runtime.snapshots.m
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Unit readObserver$lambda$7;
            readObserver$lambda$7 = SnapshotStateObserver.readObserver$lambda$7(SnapshotStateObserver.this, obj);
            return readObserver$lambda$7;
        }
    };
    @NotNull
    private final MutableVector<ObservedScopeMap> observedScopeMaps = new MutableVector<>(new ObservedScopeMap[16], 0);
    @NotNull
    private final Object observedScopeMapsLock = new Object();
    private long currentMapThreadId = -1;

    /* JADX WARN: Multi-variable type inference failed */
    public SnapshotStateObserver(@NotNull Function1<? super Function0<Unit>, Unit> function1) {
        this.onChangedExecutor = function1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void addChanges(Set<? extends Object> set) {
        Object obj;
        List K0;
        do {
            obj = this.pendingChanges.get();
            if (obj == null) {
                K0 = set;
            } else if (obj instanceof Set) {
                K0 = CollectionsKt.q(obj, set);
            } else if (obj instanceof List) {
                K0 = CollectionsKt.K0((Collection) obj, CollectionsKt.e(set));
            } else {
                report();
                throw new KotlinNothingValueException();
            }
        } while (!androidx.compose.animation.core.a.a(this.pendingChanges, obj, K0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit applyObserver$lambda$0(SnapshotStateObserver snapshotStateObserver, Set set, Snapshot snapshot) {
        snapshotStateObserver.addChanges(set);
        if (snapshotStateObserver.drainChanges()) {
            snapshotStateObserver.sendNotifications();
        }
        return Unit.f60915a;
    }

    private final boolean drainChanges() {
        boolean z10;
        synchronized (this.observedScopeMapsLock) {
            z10 = this.sendingNotifications;
        }
        if (z10) {
            return false;
        }
        boolean z11 = false;
        while (true) {
            Set<? extends Object> removeChanges = removeChanges();
            if (removeChanges == null) {
                return z11;
            }
            synchronized (this.observedScopeMapsLock) {
                try {
                    MutableVector<ObservedScopeMap> mutableVector = this.observedScopeMaps;
                    ObservedScopeMap[] observedScopeMapArr = mutableVector.content;
                    int size = mutableVector.getSize();
                    for (int i10 = 0; i10 < size; i10++) {
                        if (!observedScopeMapArr[i10].recordInvalidation(removeChanges) && !z11) {
                            z11 = false;
                        }
                        z11 = true;
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private final <T> ObservedScopeMap ensureMap(Function1<? super T, Unit> function1) {
        ObservedScopeMap observedScopeMap;
        MutableVector<ObservedScopeMap> mutableVector = this.observedScopeMaps;
        ObservedScopeMap[] observedScopeMapArr = mutableVector.content;
        int size = mutableVector.getSize();
        int i10 = 0;
        while (true) {
            if (i10 < size) {
                observedScopeMap = observedScopeMapArr[i10];
                if (observedScopeMap.getOnChanged() == function1) {
                    break;
                }
                i10++;
            } else {
                observedScopeMap = null;
                break;
            }
        }
        ObservedScopeMap observedScopeMap2 = observedScopeMap;
        if (observedScopeMap2 == null) {
            Intrinsics.checkNotNull(function1, "null cannot be cast to non-null type kotlin.Function1<kotlin.Any, kotlin.Unit>");
            ObservedScopeMap observedScopeMap3 = new ObservedScopeMap((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1));
            this.observedScopeMaps.add(observedScopeMap3);
            return observedScopeMap3;
        }
        return observedScopeMap2;
    }

    private final void forEachScopeMap(Function1<? super ObservedScopeMap, Unit> function1) {
        synchronized (this.observedScopeMapsLock) {
            try {
                MutableVector<ObservedScopeMap> mutableVector = this.observedScopeMaps;
                ObservedScopeMap[] observedScopeMapArr = mutableVector.content;
                int size = mutableVector.getSize();
                for (int i10 = 0; i10 < size; i10++) {
                    function1.invoke(observedScopeMapArr[i10]);
                }
                Unit unit = Unit.f60915a;
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        InlineMarker.finallyEnd(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit readObserver$lambda$7(SnapshotStateObserver snapshotStateObserver, Object obj) {
        if (!snapshotStateObserver.isPaused) {
            synchronized (snapshotStateObserver.observedScopeMapsLock) {
                ObservedScopeMap observedScopeMap = snapshotStateObserver.currentMap;
                Intrinsics.checkNotNull(observedScopeMap);
                observedScopeMap.recordRead(obj);
                Unit unit = Unit.f60915a;
            }
        }
        return Unit.f60915a;
    }

    private final Set<Object> removeChanges() {
        Object obj;
        Object obj2;
        Set<Object> set;
        do {
            obj = this.pendingChanges.get();
            obj2 = null;
            if (obj == null) {
                return null;
            }
            if (obj instanceof Set) {
                set = (Set) obj;
            } else if (obj instanceof List) {
                List list = (List) obj;
                Set<Object> set2 = (Set) list.get(0);
                if (list.size() == 2) {
                    obj2 = list.get(1);
                } else if (list.size() > 2) {
                    obj2 = list.subList(1, list.size());
                }
                set = set2;
            } else {
                report();
                throw new KotlinNothingValueException();
            }
        } while (!androidx.compose.animation.core.a.a(this.pendingChanges, obj, obj2));
        return set;
    }

    private final void removeScopeMapIf(Function1<? super ObservedScopeMap, Boolean> function1) {
        synchronized (this.observedScopeMapsLock) {
            try {
                MutableVector<ObservedScopeMap> mutableVector = this.observedScopeMaps;
                int size = mutableVector.getSize();
                int i10 = 0;
                for (int i11 = 0; i11 < size; i11++) {
                    if (function1.invoke(mutableVector.content[i11]).booleanValue()) {
                        i10++;
                    } else if (i10 > 0) {
                        ObservedScopeMap[] observedScopeMapArr = mutableVector.content;
                        observedScopeMapArr[i11 - i10] = observedScopeMapArr[i11];
                    }
                }
                int i12 = size - i10;
                kotlin.collections.n.C(mutableVector.content, null, i12, size);
                mutableVector.setSize(i12);
                Unit unit = Unit.f60915a;
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        InlineMarker.finallyEnd(1);
    }

    private final Void report() {
        ComposerKt.composeRuntimeError("Unexpected notification");
        throw new KotlinNothingValueException();
    }

    private final void sendNotifications() {
        this.onChangedExecutor.invoke(new Function0() { // from class: androidx.compose.runtime.snapshots.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit sendNotifications$lambda$5;
                sendNotifications$lambda$5 = SnapshotStateObserver.sendNotifications$lambda$5(SnapshotStateObserver.this);
                return sendNotifications$lambda$5;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit sendNotifications$lambda$5(SnapshotStateObserver snapshotStateObserver) {
        do {
            synchronized (snapshotStateObserver.observedScopeMapsLock) {
                try {
                    if (!snapshotStateObserver.sendingNotifications) {
                        snapshotStateObserver.sendingNotifications = true;
                        MutableVector<ObservedScopeMap> mutableVector = snapshotStateObserver.observedScopeMaps;
                        ObservedScopeMap[] observedScopeMapArr = mutableVector.content;
                        int size = mutableVector.getSize();
                        for (int i10 = 0; i10 < size; i10++) {
                            observedScopeMapArr[i10].notifyInvalidatedScopes();
                        }
                        snapshotStateObserver.sendingNotifications = false;
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } while (snapshotStateObserver.drainChanges());
        return Unit.f60915a;
    }

    public final void clear(@NotNull Object obj) {
        synchronized (this.observedScopeMapsLock) {
            try {
                MutableVector<ObservedScopeMap> mutableVector = this.observedScopeMaps;
                int size = mutableVector.getSize();
                int i10 = 0;
                for (int i11 = 0; i11 < size; i11++) {
                    ObservedScopeMap observedScopeMap = mutableVector.content[i11];
                    observedScopeMap.clearScopeObservations(obj);
                    if (!observedScopeMap.hasScopeObservations()) {
                        i10++;
                    } else if (i10 > 0) {
                        ObservedScopeMap[] observedScopeMapArr = mutableVector.content;
                        observedScopeMapArr[i11 - i10] = observedScopeMapArr[i11];
                    }
                }
                int i12 = size - i10;
                kotlin.collections.n.C(mutableVector.content, null, i12, size);
                mutableVector.setSize(i12);
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void clearIf(@NotNull Function1<Object, Boolean> function1) {
        synchronized (this.observedScopeMapsLock) {
            try {
                MutableVector<ObservedScopeMap> mutableVector = this.observedScopeMaps;
                int size = mutableVector.getSize();
                int i10 = 0;
                for (int i11 = 0; i11 < size; i11++) {
                    ObservedScopeMap observedScopeMap = mutableVector.content[i11];
                    observedScopeMap.removeScopeIf(function1);
                    if (!observedScopeMap.hasScopeObservations()) {
                        i10++;
                    } else if (i10 > 0) {
                        ObservedScopeMap[] observedScopeMapArr = mutableVector.content;
                        observedScopeMapArr[i11 - i10] = observedScopeMapArr[i11];
                    }
                }
                int i12 = size - i10;
                kotlin.collections.n.C(mutableVector.content, null, i12, size);
                mutableVector.setSize(i12);
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @TestOnly
    public final void notifyChanges(@NotNull Set<? extends Object> set, @NotNull Snapshot snapshot) {
        this.applyObserver.invoke(set, snapshot);
    }

    public final <T> void observeReads(@NotNull T t10, @NotNull Function1<? super T, Unit> function1, @NotNull Function0<Unit> function0) {
        ObservedScopeMap ensureMap;
        boolean z10;
        synchronized (this.observedScopeMapsLock) {
            ensureMap = ensureMap(function1);
        }
        boolean z11 = this.isPaused;
        ObservedScopeMap observedScopeMap = this.currentMap;
        long j10 = this.currentMapThreadId;
        if (j10 != -1) {
            if (j10 == Thread_jvmKt.currentThreadId()) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                PreconditionsKt.throwIllegalArgumentException("Detected multithreaded access to SnapshotStateObserver: previousThreadId=" + j10 + "), currentThread={id=" + Thread_jvmKt.currentThreadId() + ", name=" + Thread_jvmKt.currentThreadName() + "}. Note that observation on multiple threads in layout/draw is not supported. Make sure your measure/layout/draw for each Owner (AndroidComposeView) is executed on the same thread.");
            }
        }
        try {
            this.isPaused = false;
            this.currentMap = ensureMap;
            this.currentMapThreadId = Thread_jvmKt.currentThreadId();
            ensureMap.observe(t10, this.readObserver, function0);
        } finally {
            this.currentMap = observedScopeMap;
            this.isPaused = z11;
            this.currentMapThreadId = j10;
        }
    }

    public final void start() {
        this.applyUnsubscribe = Snapshot.Companion.registerApplyObserver(this.applyObserver);
    }

    public final void stop() {
        ObserverHandle observerHandle = this.applyUnsubscribe;
        if (observerHandle != null) {
            observerHandle.dispose();
        }
    }

    @ms.c
    public final void withNoObservations(@NotNull Function0<Unit> function0) {
        boolean z10 = this.isPaused;
        this.isPaused = true;
        try {
            function0.invoke();
        } finally {
            this.isPaused = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SnapshotStateObserver.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSnapshotStateObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateObserver.kt\nandroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 StateObjectImpl.kt\nandroidx/compose/runtime/snapshots/ReaderKind$Companion\n+ 6 DerivedState.kt\nandroidx/compose/runtime/SnapshotStateKt__DerivedStateKt\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 8 ObjectIntMap.kt\nandroidx/collection/MutableObjectIntMap\n+ 9 ScatterMap.kt\nandroidx/collection/MutableScatterMap\n+ 10 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 11 ScatterSetWrapper.kt\nandroidx/compose/runtime/collection/ScatterSetWrapperKt\n+ 12 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 13 ScopeMap.kt\nandroidx/compose/runtime/collection/ScopeMap\n+ 14 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 15 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,601:1\n1107#2:602\n1085#2,2:603\n403#3,3:605\n367#3,6:608\n377#3,3:615\n380#3,2:619\n383#3,6:622\n406#3:628\n367#3,6:640\n377#3,3:647\n380#3,2:651\n383#3,6:657\n395#3,4:664\n367#3,6:668\n377#3,3:675\n380#3,9:679\n399#3:688\n395#3,4:704\n367#3,6:708\n377#3,3:715\n380#3,9:719\n399#3:728\n1399#4:614\n1270#4:618\n1399#4:646\n1270#4:650\n1399#4:674\n1270#4:678\n1399#4:696\n1270#4:700\n1399#4:714\n1270#4:718\n1399#4:752\n1270#4:756\n1399#4:776\n1270#4:780\n1399#4:799\n1270#4:803\n1399#4:842\n1270#4:846\n1399#4:878\n1270#4:882\n1399#4:916\n1270#4:920\n1399#4:939\n1270#4:943\n1399#4:982\n1270#4:986\n1399#4:1018\n1270#4:1022\n1399#4:1064\n1270#4:1068\n1399#4:1093\n1270#4:1097\n57#5:621\n57#5:629\n57#5:759\n390#6,6:630\n396#6,2:637\n44#7:636\n519#7:1039\n424#7,8:1040\n775#8:639\n777#8,4:653\n781#8:663\n842#9:689\n844#9:703\n845#9,3:729\n848#9:738\n329#10,6:690\n339#10,3:697\n342#10,2:701\n345#10,6:732\n41#11,3:739\n46#11:904\n48#11:1038\n231#12,3:742\n200#12,7:745\n211#12,3:753\n214#12,2:757\n231#12,3:766\n200#12,7:769\n211#12,3:777\n214#12,2:781\n231#12,3:789\n200#12,7:792\n211#12,3:800\n214#12,9:804\n234#12:813\n217#12,6:818\n234#12:824\n231#12,3:832\n200#12,7:835\n211#12,3:843\n214#12,9:847\n234#12:856\n231#12,3:868\n200#12,7:871\n211#12,3:879\n214#12,9:883\n234#12:892\n217#12,6:897\n234#12:903\n231#12,3:906\n200#12,7:909\n211#12,3:917\n214#12,2:921\n231#12,3:929\n200#12,7:932\n211#12,3:940\n214#12,9:944\n234#12:953\n217#12,6:958\n234#12:964\n231#12,3:972\n200#12,7:975\n211#12,3:983\n214#12,9:987\n234#12:996\n231#12,3:1008\n200#12,7:1011\n211#12,3:1019\n214#12,9:1023\n234#12:1032\n231#12,3:1054\n200#12,7:1057\n211#12,3:1065\n214#12,2:1069\n217#12,6:1072\n234#12:1078\n231#12,3:1083\n200#12,7:1086\n211#12,3:1094\n214#12,9:1098\n234#12:1107\n67#13,6:760\n67#13,6:783\n75#13,4:814\n75#13:825\n67#13,6:826\n75#13,4:857\n78#13:861\n67#13,6:862\n75#13,4:893\n67#13,6:923\n75#13,4:954\n75#13:965\n67#13,6:966\n75#13,4:997\n78#13:1001\n67#13,6:1002\n75#13,4:1033\n67#13,6:1048\n75#13,4:1079\n1863#14:905\n1864#14:1037\n1#15:1071\n*S KotlinDebug\n*F\n+ 1 SnapshotStateObserver.kt\nandroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap\n*L\n369#1:602\n369#1:603,2\n435#1:605,3\n435#1:608,6\n435#1:615,3\n435#1:619,2\n435#1:622,6\n435#1:628\n476#1:640,6\n476#1:647,3\n476#1:651,2\n476#1:657,6\n488#1:664,4\n488#1:668,6\n488#1:675,3\n488#1:679,9\n488#1:688\n496#1:704,4\n496#1:708,6\n496#1:715,3\n496#1:719,9\n496#1:728\n435#1:614\n435#1:618\n476#1:646\n476#1:650\n488#1:674\n488#1:678\n493#1:696\n493#1:700\n496#1:714\n496#1:718\n533#1:752\n533#1:756\n540#1:776\n540#1:780\n552#1:799\n552#1:803\n552#1:842\n552#1:846\n563#1:878\n563#1:882\n540#1:916\n540#1:920\n552#1:939\n552#1:943\n552#1:982\n552#1:986\n563#1:1018\n563#1:1022\n581#1:1064\n581#1:1068\n596#1:1093\n596#1:1097\n437#1:621\n445#1:629\n534#1:759\n463#1:630,6\n463#1:637,2\n463#1:636\n569#1:1039\n570#1:1040,8\n476#1:639\n476#1:653,4\n476#1:663\n493#1:689\n493#1:703\n493#1:729,3\n493#1:738\n493#1:690,6\n493#1:697,3\n493#1:701,2\n493#1:732,6\n533#1:739,3\n533#1:904\n533#1:1038\n533#1:742,3\n533#1:745,7\n533#1:753,3\n533#1:757,2\n540#1:766,3\n540#1:769,7\n540#1:777,3\n540#1:781,2\n552#1:789,3\n552#1:792,7\n552#1:800,3\n552#1:804,9\n552#1:813\n540#1:818,6\n540#1:824\n552#1:832,3\n552#1:835,7\n552#1:843,3\n552#1:847,9\n552#1:856\n563#1:868,3\n563#1:871,7\n563#1:879,3\n563#1:883,9\n563#1:892\n533#1:897,6\n533#1:903\n540#1:906,3\n540#1:909,7\n540#1:917,3\n540#1:921,2\n552#1:929,3\n552#1:932,7\n552#1:940,3\n552#1:944,9\n552#1:953\n540#1:958,6\n540#1:964\n552#1:972,3\n552#1:975,7\n552#1:983,3\n552#1:987,9\n552#1:996\n563#1:1008,3\n563#1:1011,7\n563#1:1019,3\n563#1:1023,9\n563#1:1032\n581#1:1054,3\n581#1:1057,7\n581#1:1065,3\n581#1:1069,2\n581#1:1072,6\n581#1:1078\n596#1:1083,3\n596#1:1086,7\n596#1:1094,3\n596#1:1098,9\n596#1:1107\n540#1:760,6\n552#1:783,6\n552#1:814,4\n540#1:825\n552#1:826,6\n552#1:857,4\n540#1:861\n563#1:862,6\n563#1:893,4\n552#1:923,6\n552#1:954,4\n540#1:965\n552#1:966,6\n552#1:997,4\n540#1:1001\n563#1:1002,6\n563#1:1033,4\n581#1:1048,6\n581#1:1079,4\n533#1:905\n533#1:1037\n*E\n"})
    /* loaded from: classes.dex */
    public static final class ObservedScopeMap {
        @Nullable
        private Object currentScope;
        @Nullable
        private MutableObjectIntMap<Object> currentScopeReads;
        private int deriveStateScopeCount;
        @NotNull
        private final Function1<Object, Unit> onChanged;
        private int currentToken = -1;
        @NotNull
        private final MutableScatterMap<Object, Object> valueToScopes = ScopeMap.m1476constructorimpl$default(null, 1, null);
        @NotNull
        private final MutableScatterMap<Object, MutableObjectIntMap<Object>> scopeToValues = new MutableScatterMap<>(0, 1, null);
        @NotNull
        private final MutableScatterSet<Object> invalidated = new MutableScatterSet<>(0, 1, null);
        @NotNull
        private final MutableVector<DerivedState<?>> statesToReread = new MutableVector<>(new DerivedState[16], 0);
        @NotNull
        private final DerivedStateObserver derivedStateObserver = new DerivedStateObserver() { // from class: androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1
            @Override // androidx.compose.runtime.DerivedStateObserver
            public void done(DerivedState<?> derivedState) {
                int i10;
                i10 = SnapshotStateObserver.ObservedScopeMap.this.deriveStateScopeCount;
                SnapshotStateObserver.ObservedScopeMap.this.deriveStateScopeCount = i10 - 1;
            }

            @Override // androidx.compose.runtime.DerivedStateObserver
            public void start(DerivedState<?> derivedState) {
                int i10;
                i10 = SnapshotStateObserver.ObservedScopeMap.this.deriveStateScopeCount;
                SnapshotStateObserver.ObservedScopeMap.this.deriveStateScopeCount = i10 + 1;
            }
        };
        @NotNull
        private final MutableScatterMap<Object, Object> dependencyToDerivedStates = ScopeMap.m1476constructorimpl$default(null, 1, null);
        @NotNull
        private final HashMap<DerivedState<?>, Object> recordedDerivedStateValues = new HashMap<>();

        public ObservedScopeMap(@NotNull Function1<Object, Unit> function1) {
            this.onChanged = function1;
        }

        private final void clearObsoleteStateReads(Object obj) {
            boolean z10;
            int i10 = this.currentToken;
            MutableObjectIntMap<Object> mutableObjectIntMap = this.currentScopeReads;
            if (mutableObjectIntMap != null) {
                long[] jArr = mutableObjectIntMap.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i11 = 0;
                    while (true) {
                        long j10 = jArr[i11];
                        if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i12 = 8 - ((~(i11 - length)) >>> 31);
                            for (int i13 = 0; i13 < i12; i13++) {
                                if ((255 & j10) < 128) {
                                    int i14 = (i11 << 3) + i13;
                                    Object obj2 = mutableObjectIntMap.keys[i14];
                                    if (mutableObjectIntMap.values[i14] != i10) {
                                        z10 = true;
                                    } else {
                                        z10 = false;
                                    }
                                    if (z10) {
                                        removeObservation(obj, obj2);
                                    }
                                    if (z10) {
                                        mutableObjectIntMap.removeValueAt(i14);
                                    }
                                }
                                j10 >>= 8;
                            }
                            if (i12 != 8) {
                                return;
                            }
                        }
                        if (i11 != length) {
                            i11++;
                        } else {
                            return;
                        }
                    }
                }
            }
        }

        private final void removeObservation(Object obj, Object obj2) {
            ScopeMap.m1483removeimpl(this.valueToScopes, obj2, obj);
            if ((obj2 instanceof DerivedState) && !ScopeMap.m1477containsimpl(this.valueToScopes, obj2)) {
                ScopeMap.m1485removeScopeimpl(this.dependencyToDerivedStates, obj2);
                this.recordedDerivedStateValues.remove(obj2);
            }
        }

        public final void clear() {
            ScopeMap.m1474clearimpl(this.valueToScopes);
            this.scopeToValues.clear();
            ScopeMap.m1474clearimpl(this.dependencyToDerivedStates);
            this.recordedDerivedStateValues.clear();
        }

        public final void clearScopeObservations(@NotNull Object obj) {
            MutableObjectIntMap<Object> remove = this.scopeToValues.remove(obj);
            if (remove == null) {
                return;
            }
            Object[] objArr = remove.keys;
            int[] iArr = remove.values;
            long[] jArr = remove.metadata;
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
                                int i14 = iArr[i13];
                                removeObservation(obj, obj2);
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

        @NotNull
        public final DerivedStateObserver getDerivedStateObserver() {
            return this.derivedStateObserver;
        }

        @NotNull
        public final Function1<Object, Unit> getOnChanged() {
            return this.onChanged;
        }

        public final boolean hasScopeObservations() {
            return this.scopeToValues.isNotEmpty();
        }

        public final void notifyInvalidatedScopes() {
            MutableScatterSet<Object> mutableScatterSet = this.invalidated;
            Function1<Object, Unit> function1 = this.onChanged;
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
                                function1.invoke(objArr[(i10 << 3) + i12]);
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
            mutableScatterSet.clear();
        }

        public final void observe(@NotNull Object obj, @NotNull Function1<Object, Unit> function1, @NotNull Function0<Unit> function0) {
            Object obj2 = this.currentScope;
            MutableObjectIntMap<Object> mutableObjectIntMap = this.currentScopeReads;
            int i10 = this.currentToken;
            this.currentScope = obj;
            this.currentScopeReads = this.scopeToValues.get(obj);
            if (this.currentToken == -1) {
                this.currentToken = Long.hashCode(SnapshotKt.currentSnapshot().getSnapshotId());
            }
            DerivedStateObserver derivedStateObserver = this.derivedStateObserver;
            MutableVector<DerivedStateObserver> derivedStateObservers = SnapshotStateKt.derivedStateObservers();
            try {
                derivedStateObservers.add(derivedStateObserver);
                Snapshot.Companion.observe(function1, null, function0);
                derivedStateObservers.removeAt(derivedStateObservers.getSize() - 1);
                Object obj3 = this.currentScope;
                Intrinsics.checkNotNull(obj3);
                clearObsoleteStateReads(obj3);
                this.currentScope = obj2;
                this.currentScopeReads = mutableObjectIntMap;
                this.currentToken = i10;
            } catch (Throwable th2) {
                derivedStateObservers.removeAt(derivedStateObservers.getSize() - 1);
                throw th2;
            }
        }

        public final boolean recordInvalidation(@NotNull Set<? extends Object> set) {
            boolean z10;
            Iterator it;
            HashMap<DerivedState<?>, Object> hashMap;
            ScatterMap scatterMap;
            Object obj;
            int i10;
            char c10;
            Object obj2;
            int i11;
            char c11;
            HashMap<DerivedState<?>, Object> hashMap2;
            ScatterMap scatterMap2;
            long[] jArr;
            Object[] objArr;
            int i12;
            Iterator it2;
            HashMap<DerivedState<?>, Object> hashMap3;
            ScatterMap scatterMap3;
            Object obj3;
            MutableScatterMap<Object, Object> mutableScatterMap;
            long[] jArr2;
            Object[] objArr2;
            Object[] objArr3;
            char c12;
            long[] jArr3;
            MutableScatterMap<Object, Object> mutableScatterMap2;
            HashMap<DerivedState<?>, Object> hashMap4;
            ScatterMap scatterMap4;
            Object[] objArr4;
            String str;
            int i13;
            long[] jArr4;
            MutableScatterMap<Object, Object> mutableScatterMap3;
            HashMap<DerivedState<?>, Object> hashMap5;
            ScatterMap scatterMap5;
            Object[] objArr5;
            String str2;
            int i14;
            int i15;
            long j10;
            int i16;
            Object obj4;
            int i17;
            char c13;
            Object obj5;
            int i18;
            char c14;
            HashMap<DerivedState<?>, Object> hashMap6;
            ScatterMap scatterMap6;
            Object[] objArr6;
            int i19;
            MutableScatterMap<Object, Object> mutableScatterMap4;
            HashMap<DerivedState<?>, Object> hashMap7;
            ScatterMap scatterMap7;
            String str3;
            long j11;
            Object obj6;
            Object[] objArr7;
            ScatterMap scatterMap8;
            char c15;
            MutableScatterMap<Object, Object> mutableScatterMap5 = this.dependencyToDerivedStates;
            HashMap<DerivedState<?>, Object> hashMap8 = this.recordedDerivedStateValues;
            ScatterMap scatterMap9 = this.valueToScopes;
            MutableScatterSet<Object> mutableScatterSet = this.invalidated;
            String str4 = "null cannot be cast to non-null type androidx.compose.runtime.DerivedState<kotlin.Any?>";
            char c16 = 7;
            long j12 = -9187201950435737472L;
            if (set instanceof ScatterSetWrapper) {
                ScatterSet set$runtime = ((ScatterSetWrapper) set).getSet$runtime();
                Object[] objArr8 = set$runtime.elements;
                long[] jArr5 = set$runtime.metadata;
                int length = jArr5.length - 2;
                if (length >= 0) {
                    int i20 = 0;
                    z10 = false;
                    while (true) {
                        long j13 = jArr5[i20];
                        int i21 = length;
                        if ((((~j13) << c16) & j13 & j12) != j12) {
                            int i22 = 8 - ((~(i20 - i21)) >>> 31);
                            int i23 = 0;
                            while (i23 < i22) {
                                if ((j13 & 255) < 128) {
                                    Object obj7 = objArr8[(i20 << 3) + i23];
                                    if (!(obj7 instanceof StateObjectImpl) || ((StateObjectImpl) obj7).m1512isReadInh_f27i8$runtime(ReaderKind.m1500constructorimpl(2))) {
                                        if (ScopeMap.m1477containsimpl(mutableScatterMap5, obj7)) {
                                            Object obj8 = mutableScatterMap5.get(obj7);
                                            if (obj8 == null) {
                                                jArr4 = jArr5;
                                                mutableScatterMap3 = mutableScatterMap5;
                                                hashMap5 = hashMap8;
                                                scatterMap5 = scatterMap9;
                                                objArr5 = objArr8;
                                                str2 = str4;
                                                i14 = i22;
                                                i15 = i23;
                                                j10 = j13;
                                                i16 = i20;
                                                obj5 = obj7;
                                            } else if (obj8 instanceof MutableScatterSet) {
                                                MutableScatterSet mutableScatterSet2 = (MutableScatterSet) obj8;
                                                Object[] objArr9 = mutableScatterSet2.elements;
                                                long[] jArr6 = mutableScatterSet2.metadata;
                                                jArr4 = jArr5;
                                                int length2 = jArr6.length - 2;
                                                if (length2 >= 0) {
                                                    objArr5 = objArr8;
                                                    i14 = i22;
                                                    i15 = i23;
                                                    int i24 = 0;
                                                    while (true) {
                                                        long j14 = jArr6[i24];
                                                        long[] jArr7 = jArr6;
                                                        i16 = i20;
                                                        if ((((~j14) << 7) & j14 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                            int i25 = 8 - ((~(i24 - length2)) >>> 31);
                                                            int i26 = 0;
                                                            while (i26 < i25) {
                                                                if ((j14 & 255) < 128) {
                                                                    objArr7 = objArr9;
                                                                    DerivedState<?> derivedState = (DerivedState) objArr9[(i24 << 3) + i26];
                                                                    Intrinsics.checkNotNull(derivedState, str4);
                                                                    str3 = str4;
                                                                    Object obj9 = hashMap8.get(derivedState);
                                                                    SnapshotMutationPolicy<?> policy = derivedState.getPolicy();
                                                                    if (policy == null) {
                                                                        policy = SnapshotStateKt.structuralEqualityPolicy();
                                                                    }
                                                                    mutableScatterMap4 = mutableScatterMap5;
                                                                    j11 = j13;
                                                                    if (!policy.equivalent(derivedState.getCurrentRecord().getCurrentValue(), obj9)) {
                                                                        Object obj10 = scatterMap9.get(derivedState);
                                                                        if (obj10 != null) {
                                                                            if (obj10 instanceof MutableScatterSet) {
                                                                                MutableScatterSet mutableScatterSet3 = (MutableScatterSet) obj10;
                                                                                Object[] objArr10 = mutableScatterSet3.elements;
                                                                                long[] jArr8 = mutableScatterSet3.metadata;
                                                                                int length3 = jArr8.length - 2;
                                                                                if (length3 >= 0) {
                                                                                    obj6 = obj7;
                                                                                    int i27 = 0;
                                                                                    while (true) {
                                                                                        long j15 = jArr8[i27];
                                                                                        long[] jArr9 = jArr8;
                                                                                        hashMap7 = hashMap8;
                                                                                        if ((((~j15) << 7) & j15 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                                            int i28 = 8 - ((~(i27 - length3)) >>> 31);
                                                                                            int i29 = 0;
                                                                                            while (i29 < i28) {
                                                                                                if ((j15 & 255) < 128) {
                                                                                                    scatterMap8 = scatterMap9;
                                                                                                    mutableScatterSet.add(objArr10[(i27 << 3) + i29]);
                                                                                                    c15 = '\b';
                                                                                                    z10 = true;
                                                                                                } else {
                                                                                                    scatterMap8 = scatterMap9;
                                                                                                    c15 = '\b';
                                                                                                }
                                                                                                j15 >>= c15;
                                                                                                i29++;
                                                                                                scatterMap9 = scatterMap8;
                                                                                            }
                                                                                            scatterMap7 = scatterMap9;
                                                                                            if (i28 != 8) {
                                                                                                break;
                                                                                            }
                                                                                        } else {
                                                                                            scatterMap7 = scatterMap9;
                                                                                        }
                                                                                        if (i27 == length3) {
                                                                                            break;
                                                                                        }
                                                                                        i27++;
                                                                                        hashMap8 = hashMap7;
                                                                                        jArr8 = jArr9;
                                                                                        scatterMap9 = scatterMap7;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                hashMap7 = hashMap8;
                                                                                scatterMap7 = scatterMap9;
                                                                                obj6 = obj7;
                                                                                mutableScatterSet.add(obj10);
                                                                                z10 = true;
                                                                            }
                                                                            Unit unit = Unit.f60915a;
                                                                        }
                                                                        hashMap7 = hashMap8;
                                                                        scatterMap7 = scatterMap9;
                                                                        obj6 = obj7;
                                                                        Unit unit2 = Unit.f60915a;
                                                                    } else {
                                                                        hashMap7 = hashMap8;
                                                                        scatterMap7 = scatterMap9;
                                                                        obj6 = obj7;
                                                                        this.statesToReread.add(derivedState);
                                                                    }
                                                                } else {
                                                                    mutableScatterMap4 = mutableScatterMap5;
                                                                    hashMap7 = hashMap8;
                                                                    scatterMap7 = scatterMap9;
                                                                    str3 = str4;
                                                                    j11 = j13;
                                                                    obj6 = obj7;
                                                                    objArr7 = objArr9;
                                                                }
                                                                j14 >>= 8;
                                                                i26++;
                                                                str4 = str3;
                                                                objArr9 = objArr7;
                                                                obj7 = obj6;
                                                                mutableScatterMap5 = mutableScatterMap4;
                                                                j13 = j11;
                                                                hashMap8 = hashMap7;
                                                                scatterMap9 = scatterMap7;
                                                            }
                                                            mutableScatterMap3 = mutableScatterMap5;
                                                            hashMap6 = hashMap8;
                                                            scatterMap6 = scatterMap9;
                                                            str2 = str4;
                                                            j10 = j13;
                                                            obj5 = obj7;
                                                            objArr6 = objArr9;
                                                            i19 = 1;
                                                            if (i25 != 8) {
                                                                break;
                                                            }
                                                        } else {
                                                            mutableScatterMap3 = mutableScatterMap5;
                                                            hashMap6 = hashMap8;
                                                            scatterMap6 = scatterMap9;
                                                            str2 = str4;
                                                            j10 = j13;
                                                            obj5 = obj7;
                                                            objArr6 = objArr9;
                                                            i19 = 1;
                                                        }
                                                        if (i24 == length2) {
                                                            break;
                                                        }
                                                        i24 += i19;
                                                        i20 = i16;
                                                        jArr6 = jArr7;
                                                        str4 = str2;
                                                        objArr9 = objArr6;
                                                        obj7 = obj5;
                                                        mutableScatterMap5 = mutableScatterMap3;
                                                        j13 = j10;
                                                        hashMap8 = hashMap6;
                                                        scatterMap9 = scatterMap6;
                                                    }
                                                } else {
                                                    mutableScatterMap3 = mutableScatterMap5;
                                                    hashMap6 = hashMap8;
                                                    scatterMap6 = scatterMap9;
                                                    objArr5 = objArr8;
                                                    str2 = str4;
                                                    i14 = i22;
                                                    i15 = i23;
                                                    j10 = j13;
                                                    i16 = i20;
                                                    obj5 = obj7;
                                                }
                                                hashMap5 = hashMap6;
                                                scatterMap5 = scatterMap6;
                                            } else {
                                                jArr4 = jArr5;
                                                mutableScatterMap3 = mutableScatterMap5;
                                                ScatterMap scatterMap10 = scatterMap9;
                                                objArr5 = objArr8;
                                                str2 = str4;
                                                i14 = i22;
                                                i15 = i23;
                                                j10 = j13;
                                                i16 = i20;
                                                obj5 = obj7;
                                                DerivedState<?> derivedState2 = (DerivedState) obj8;
                                                hashMap5 = hashMap8;
                                                Object obj11 = hashMap5.get(derivedState2);
                                                SnapshotMutationPolicy<?> policy2 = derivedState2.getPolicy();
                                                if (policy2 == null) {
                                                    policy2 = SnapshotStateKt.structuralEqualityPolicy();
                                                }
                                                if (!policy2.equivalent(derivedState2.getCurrentRecord().getCurrentValue(), obj11)) {
                                                    scatterMap5 = scatterMap10;
                                                    Object obj12 = scatterMap5.get(derivedState2);
                                                    if (obj12 != null) {
                                                        if (obj12 instanceof MutableScatterSet) {
                                                            MutableScatterSet mutableScatterSet4 = (MutableScatterSet) obj12;
                                                            Object[] objArr11 = mutableScatterSet4.elements;
                                                            long[] jArr10 = mutableScatterSet4.metadata;
                                                            int length4 = jArr10.length - 2;
                                                            if (length4 >= 0) {
                                                                int i30 = 0;
                                                                while (true) {
                                                                    long j16 = jArr10[i30];
                                                                    if ((((~j16) << 7) & j16 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                        int i31 = 8 - ((~(i30 - length4)) >>> 31);
                                                                        for (int i32 = 0; i32 < i31; i32++) {
                                                                            if ((j16 & 255) < 128) {
                                                                                mutableScatterSet.add(objArr11[(i30 << 3) + i32]);
                                                                                c14 = '\b';
                                                                                z10 = true;
                                                                            } else {
                                                                                c14 = '\b';
                                                                            }
                                                                            j16 >>= c14;
                                                                        }
                                                                        i18 = 1;
                                                                        if (i31 != 8) {
                                                                            break;
                                                                        }
                                                                    } else {
                                                                        i18 = 1;
                                                                    }
                                                                    if (i30 == length4) {
                                                                        break;
                                                                    }
                                                                    i30 += i18;
                                                                }
                                                            }
                                                        } else {
                                                            mutableScatterSet.add(obj12);
                                                            z10 = true;
                                                        }
                                                    }
                                                    Unit unit3 = Unit.f60915a;
                                                } else {
                                                    scatterMap5 = scatterMap10;
                                                    this.statesToReread.add(derivedState2);
                                                }
                                            }
                                            obj4 = obj5;
                                        } else {
                                            jArr4 = jArr5;
                                            mutableScatterMap3 = mutableScatterMap5;
                                            hashMap5 = hashMap8;
                                            scatterMap5 = scatterMap9;
                                            objArr5 = objArr8;
                                            str2 = str4;
                                            i14 = i22;
                                            i15 = i23;
                                            j10 = j13;
                                            i16 = i20;
                                            obj4 = obj7;
                                        }
                                        Object obj13 = scatterMap5.get(obj4);
                                        if (obj13 != null) {
                                            if (obj13 instanceof MutableScatterSet) {
                                                MutableScatterSet mutableScatterSet5 = (MutableScatterSet) obj13;
                                                Object[] objArr12 = mutableScatterSet5.elements;
                                                long[] jArr11 = mutableScatterSet5.metadata;
                                                int length5 = jArr11.length - 2;
                                                if (length5 >= 0) {
                                                    int i33 = 0;
                                                    while (true) {
                                                        long j17 = jArr11[i33];
                                                        if ((((~j17) << 7) & j17 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                            int i34 = 8 - ((~(i33 - length5)) >>> 31);
                                                            for (int i35 = 0; i35 < i34; i35++) {
                                                                if ((j17 & 255) < 128) {
                                                                    mutableScatterSet.add(objArr12[(i33 << 3) + i35]);
                                                                    c13 = '\b';
                                                                    z10 = true;
                                                                } else {
                                                                    c13 = '\b';
                                                                }
                                                                j17 >>= c13;
                                                            }
                                                            i17 = 1;
                                                            if (i34 != 8) {
                                                                break;
                                                            }
                                                        } else {
                                                            i17 = 1;
                                                        }
                                                        if (i33 == length5) {
                                                            break;
                                                        }
                                                        i33 += i17;
                                                    }
                                                }
                                            } else {
                                                mutableScatterSet.add(obj13);
                                                z10 = true;
                                            }
                                        }
                                        j13 = j10 >> 8;
                                        i23 = i15 + 1;
                                        scatterMap9 = scatterMap5;
                                        jArr5 = jArr4;
                                        objArr8 = objArr5;
                                        i22 = i14;
                                        i20 = i16;
                                        str4 = str2;
                                        hashMap8 = hashMap5;
                                        mutableScatterMap5 = mutableScatterMap3;
                                    }
                                }
                                jArr4 = jArr5;
                                mutableScatterMap3 = mutableScatterMap5;
                                hashMap5 = hashMap8;
                                scatterMap5 = scatterMap9;
                                objArr5 = objArr8;
                                str2 = str4;
                                i14 = i22;
                                i15 = i23;
                                j10 = j13;
                                i16 = i20;
                                j13 = j10 >> 8;
                                i23 = i15 + 1;
                                scatterMap9 = scatterMap5;
                                jArr5 = jArr4;
                                objArr8 = objArr5;
                                i22 = i14;
                                i20 = i16;
                                str4 = str2;
                                hashMap8 = hashMap5;
                                mutableScatterMap5 = mutableScatterMap3;
                            }
                            jArr3 = jArr5;
                            mutableScatterMap2 = mutableScatterMap5;
                            hashMap4 = hashMap8;
                            scatterMap4 = scatterMap9;
                            objArr4 = objArr8;
                            str = str4;
                            int i36 = i20;
                            if (i22 != 8) {
                                break;
                            }
                            length = i21;
                            i13 = i36;
                        } else {
                            jArr3 = jArr5;
                            mutableScatterMap2 = mutableScatterMap5;
                            hashMap4 = hashMap8;
                            scatterMap4 = scatterMap9;
                            objArr4 = objArr8;
                            str = str4;
                            length = i21;
                            i13 = i20;
                        }
                        if (i13 == length) {
                            break;
                        }
                        i20 = i13 + 1;
                        scatterMap9 = scatterMap4;
                        jArr5 = jArr3;
                        objArr8 = objArr4;
                        str4 = str;
                        c16 = 7;
                        j12 = -9187201950435737472L;
                        hashMap8 = hashMap4;
                        mutableScatterMap5 = mutableScatterMap2;
                    }
                } else {
                    z10 = false;
                }
            } else {
                MutableScatterMap<Object, Object> mutableScatterMap6 = mutableScatterMap5;
                HashMap<DerivedState<?>, Object> hashMap9 = hashMap8;
                ScatterMap scatterMap11 = scatterMap9;
                Iterator it3 = set.iterator();
                z10 = false;
                while (it3.hasNext()) {
                    Object next = it3.next();
                    if (!(next instanceof StateObjectImpl) || ((StateObjectImpl) next).m1512isReadInh_f27i8$runtime(ReaderKind.m1500constructorimpl(2))) {
                        MutableScatterMap<Object, Object> mutableScatterMap7 = mutableScatterMap6;
                        if (ScopeMap.m1477containsimpl(mutableScatterMap7, next)) {
                            Object obj14 = mutableScatterMap7.get(next);
                            if (obj14 == null) {
                                it = it3;
                                hashMap = hashMap9;
                                scatterMap = scatterMap11;
                                obj2 = next;
                                mutableScatterMap6 = mutableScatterMap7;
                            } else if (obj14 instanceof MutableScatterSet) {
                                MutableScatterSet mutableScatterSet6 = (MutableScatterSet) obj14;
                                Object[] objArr13 = mutableScatterSet6.elements;
                                long[] jArr12 = mutableScatterSet6.metadata;
                                int length6 = jArr12.length - 2;
                                if (length6 >= 0) {
                                    int i37 = 0;
                                    while (true) {
                                        long j18 = jArr12[i37];
                                        if ((((~j18) << 7) & j18 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i38 = 8 - ((~(i37 - length6)) >>> 31);
                                            int i39 = 0;
                                            while (i39 < i38) {
                                                if ((j18 & 255) < 128) {
                                                    DerivedState<?> derivedState3 = (DerivedState) objArr13[(i37 << 3) + i39];
                                                    it2 = it3;
                                                    Intrinsics.checkNotNull(derivedState3, "null cannot be cast to non-null type androidx.compose.runtime.DerivedState<kotlin.Any?>");
                                                    Object obj15 = hashMap9.get(derivedState3);
                                                    SnapshotMutationPolicy<?> policy3 = derivedState3.getPolicy();
                                                    if (policy3 == null) {
                                                        policy3 = SnapshotStateKt.structuralEqualityPolicy();
                                                    }
                                                    mutableScatterMap = mutableScatterMap7;
                                                    jArr2 = jArr12;
                                                    if (!policy3.equivalent(derivedState3.getCurrentRecord().getCurrentValue(), obj15)) {
                                                        Object obj16 = scatterMap11.get(derivedState3);
                                                        if (obj16 != null) {
                                                            if (obj16 instanceof MutableScatterSet) {
                                                                MutableScatterSet mutableScatterSet7 = (MutableScatterSet) obj16;
                                                                Object[] objArr14 = mutableScatterSet7.elements;
                                                                long[] jArr13 = mutableScatterSet7.metadata;
                                                                int length7 = jArr13.length - 2;
                                                                if (length7 >= 0) {
                                                                    scatterMap3 = scatterMap11;
                                                                    obj3 = next;
                                                                    int i40 = 0;
                                                                    while (true) {
                                                                        long j19 = jArr13[i40];
                                                                        long[] jArr14 = jArr13;
                                                                        hashMap3 = hashMap9;
                                                                        if ((((~j19) << 7) & j19 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                            int i41 = 8 - ((~(i40 - length7)) >>> 31);
                                                                            int i42 = 0;
                                                                            while (i42 < i41) {
                                                                                if ((j19 & 255) < 128) {
                                                                                    objArr3 = objArr13;
                                                                                    mutableScatterSet.add(objArr14[(i40 << 3) + i42]);
                                                                                    c12 = '\b';
                                                                                    z10 = true;
                                                                                } else {
                                                                                    objArr3 = objArr13;
                                                                                    c12 = '\b';
                                                                                }
                                                                                j19 >>= c12;
                                                                                i42++;
                                                                                objArr13 = objArr3;
                                                                            }
                                                                            objArr2 = objArr13;
                                                                            if (i41 != 8) {
                                                                                break;
                                                                            }
                                                                        } else {
                                                                            objArr2 = objArr13;
                                                                        }
                                                                        if (i40 == length7) {
                                                                            break;
                                                                        }
                                                                        i40++;
                                                                        jArr13 = jArr14;
                                                                        objArr13 = objArr2;
                                                                        hashMap9 = hashMap3;
                                                                    }
                                                                }
                                                            } else {
                                                                hashMap3 = hashMap9;
                                                                scatterMap3 = scatterMap11;
                                                                obj3 = next;
                                                                objArr2 = objArr13;
                                                                mutableScatterSet.add(obj16);
                                                                z10 = true;
                                                            }
                                                            Unit unit4 = Unit.f60915a;
                                                        }
                                                        hashMap3 = hashMap9;
                                                        scatterMap3 = scatterMap11;
                                                        obj3 = next;
                                                        objArr2 = objArr13;
                                                        Unit unit42 = Unit.f60915a;
                                                    } else {
                                                        hashMap3 = hashMap9;
                                                        scatterMap3 = scatterMap11;
                                                        obj3 = next;
                                                        objArr2 = objArr13;
                                                        this.statesToReread.add(derivedState3);
                                                    }
                                                } else {
                                                    it2 = it3;
                                                    hashMap3 = hashMap9;
                                                    scatterMap3 = scatterMap11;
                                                    obj3 = next;
                                                    mutableScatterMap = mutableScatterMap7;
                                                    jArr2 = jArr12;
                                                    objArr2 = objArr13;
                                                }
                                                j18 >>= 8;
                                                i39++;
                                                it3 = it2;
                                                next = obj3;
                                                jArr12 = jArr2;
                                                objArr13 = objArr2;
                                                mutableScatterMap7 = mutableScatterMap;
                                                hashMap9 = hashMap3;
                                                scatterMap11 = scatterMap3;
                                            }
                                            it = it3;
                                            hashMap2 = hashMap9;
                                            scatterMap2 = scatterMap11;
                                            obj2 = next;
                                            mutableScatterMap6 = mutableScatterMap7;
                                            jArr = jArr12;
                                            objArr = objArr13;
                                            i12 = 1;
                                            if (i38 != 8) {
                                                break;
                                            }
                                        } else {
                                            it = it3;
                                            hashMap2 = hashMap9;
                                            scatterMap2 = scatterMap11;
                                            obj2 = next;
                                            mutableScatterMap6 = mutableScatterMap7;
                                            jArr = jArr12;
                                            objArr = objArr13;
                                            i12 = 1;
                                        }
                                        if (i37 == length6) {
                                            break;
                                        }
                                        i37 += i12;
                                        it3 = it;
                                        next = obj2;
                                        jArr12 = jArr;
                                        objArr13 = objArr;
                                        mutableScatterMap7 = mutableScatterMap6;
                                        hashMap9 = hashMap2;
                                        scatterMap11 = scatterMap2;
                                    }
                                } else {
                                    it = it3;
                                    hashMap2 = hashMap9;
                                    scatterMap2 = scatterMap11;
                                    obj2 = next;
                                    mutableScatterMap6 = mutableScatterMap7;
                                }
                                hashMap = hashMap2;
                                scatterMap = scatterMap2;
                            } else {
                                it = it3;
                                ScatterMap scatterMap12 = scatterMap11;
                                obj2 = next;
                                mutableScatterMap6 = mutableScatterMap7;
                                DerivedState<?> derivedState4 = (DerivedState) obj14;
                                hashMap = hashMap9;
                                Object obj17 = hashMap.get(derivedState4);
                                SnapshotMutationPolicy<?> policy4 = derivedState4.getPolicy();
                                if (policy4 == null) {
                                    policy4 = SnapshotStateKt.structuralEqualityPolicy();
                                }
                                if (!policy4.equivalent(derivedState4.getCurrentRecord().getCurrentValue(), obj17)) {
                                    scatterMap = scatterMap12;
                                    Object obj18 = scatterMap.get(derivedState4);
                                    if (obj18 != null) {
                                        if (obj18 instanceof MutableScatterSet) {
                                            MutableScatterSet mutableScatterSet8 = (MutableScatterSet) obj18;
                                            Object[] objArr15 = mutableScatterSet8.elements;
                                            long[] jArr15 = mutableScatterSet8.metadata;
                                            int length8 = jArr15.length - 2;
                                            if (length8 >= 0) {
                                                int i43 = 0;
                                                while (true) {
                                                    long j20 = jArr15[i43];
                                                    if ((((~j20) << 7) & j20 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                        int i44 = 8 - ((~(i43 - length8)) >>> 31);
                                                        for (int i45 = 0; i45 < i44; i45++) {
                                                            if ((j20 & 255) < 128) {
                                                                mutableScatterSet.add(objArr15[(i43 << 3) + i45]);
                                                                c11 = '\b';
                                                                z10 = true;
                                                            } else {
                                                                c11 = '\b';
                                                            }
                                                            j20 >>= c11;
                                                        }
                                                        i11 = 1;
                                                        if (i44 != 8) {
                                                            break;
                                                        }
                                                    } else {
                                                        i11 = 1;
                                                    }
                                                    if (i43 == length8) {
                                                        break;
                                                    }
                                                    i43 += i11;
                                                }
                                            }
                                        } else {
                                            mutableScatterSet.add(obj18);
                                            z10 = true;
                                        }
                                    }
                                    Unit unit5 = Unit.f60915a;
                                } else {
                                    scatterMap = scatterMap12;
                                    this.statesToReread.add(derivedState4);
                                }
                            }
                            obj = obj2;
                        } else {
                            it = it3;
                            hashMap = hashMap9;
                            scatterMap = scatterMap11;
                            mutableScatterMap6 = mutableScatterMap7;
                            obj = next;
                        }
                        Object obj19 = scatterMap.get(obj);
                        if (obj19 != null) {
                            if (obj19 instanceof MutableScatterSet) {
                                MutableScatterSet mutableScatterSet9 = (MutableScatterSet) obj19;
                                Object[] objArr16 = mutableScatterSet9.elements;
                                long[] jArr16 = mutableScatterSet9.metadata;
                                int length9 = jArr16.length - 2;
                                if (length9 >= 0) {
                                    while (true) {
                                        long j21 = jArr16[i10];
                                        if ((((~j21) << 7) & j21 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i46 = 8 - ((~(i10 - length9)) >>> 31);
                                            for (int i47 = 0; i47 < i46; i47++) {
                                                if ((j21 & 255) < 128) {
                                                    mutableScatterSet.add(objArr16[(i10 << 3) + i47]);
                                                    c10 = '\b';
                                                    z10 = true;
                                                } else {
                                                    c10 = '\b';
                                                }
                                                j21 >>= c10;
                                            }
                                            if (i46 != 8) {
                                                break;
                                            }
                                        }
                                        i10 = i10 != length9 ? i10 + 1 : 0;
                                    }
                                }
                            } else {
                                mutableScatterSet.add(obj19);
                                z10 = true;
                            }
                            scatterMap11 = scatterMap;
                            hashMap9 = hashMap;
                            it3 = it;
                        }
                    } else {
                        it = it3;
                        hashMap = hashMap9;
                        scatterMap = scatterMap11;
                    }
                    scatterMap11 = scatterMap;
                    hashMap9 = hashMap;
                    it3 = it;
                }
            }
            if (this.statesToReread.getSize() != 0) {
                MutableVector<DerivedState<?>> mutableVector = this.statesToReread;
                DerivedState<?>[] derivedStateArr = mutableVector.content;
                int size = mutableVector.getSize();
                for (int i48 = 0; i48 < size; i48++) {
                    rereadDerivedState(derivedStateArr[i48]);
                }
                this.statesToReread.clear();
            }
            return z10;
        }

        public final void recordRead(@NotNull Object obj) {
            Object obj2 = this.currentScope;
            Intrinsics.checkNotNull(obj2);
            int i10 = this.currentToken;
            MutableObjectIntMap<Object> mutableObjectIntMap = this.currentScopeReads;
            if (mutableObjectIntMap == null) {
                mutableObjectIntMap = new MutableObjectIntMap<>(0, 1, null);
                this.currentScopeReads = mutableObjectIntMap;
                this.scopeToValues.set(obj2, mutableObjectIntMap);
                Unit unit = Unit.f60915a;
            }
            recordRead(obj, i10, obj2, mutableObjectIntMap);
        }

        public final void removeScopeIf(@NotNull Function1<Object, Boolean> function1) {
            long[] jArr;
            int i10;
            long[] jArr2;
            int i11;
            long j10;
            int i12;
            long j11;
            int i13;
            MutableScatterMap<Object, MutableObjectIntMap<Object>> mutableScatterMap = this.scopeToValues;
            long[] jArr3 = mutableScatterMap.metadata;
            int length = jArr3.length - 2;
            if (length >= 0) {
                int i14 = 0;
                while (true) {
                    long j12 = jArr3[i14];
                    long j13 = -9187201950435737472L;
                    if ((((~j12) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i15 = 8;
                        int i16 = 8 - ((~(i14 - length)) >>> 31);
                        int i17 = 0;
                        while (i17 < i16) {
                            if ((j12 & 255) < 128) {
                                int i18 = (i14 << 3) + i17;
                                Object obj = mutableScatterMap.keys[i18];
                                MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) mutableScatterMap.values[i18];
                                Boolean invoke = function1.invoke(obj);
                                if (invoke.booleanValue()) {
                                    Object[] objArr = mutableObjectIntMap.keys;
                                    int[] iArr = mutableObjectIntMap.values;
                                    long[] jArr4 = mutableObjectIntMap.metadata;
                                    int length2 = jArr4.length - 2;
                                    jArr2 = jArr3;
                                    if (length2 >= 0) {
                                        i12 = i16;
                                        int i19 = 0;
                                        while (true) {
                                            long j14 = jArr4[i19];
                                            i11 = i14;
                                            j10 = j12;
                                            j11 = -9187201950435737472L;
                                            if ((((~j14) << 7) & j14 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                int i20 = 8 - ((~(i19 - length2)) >>> 31);
                                                for (int i21 = 0; i21 < i20; i21++) {
                                                    if ((j14 & 255) < 128) {
                                                        int i22 = (i19 << 3) + i21;
                                                        Object obj2 = objArr[i22];
                                                        int i23 = iArr[i22];
                                                        removeObservation(obj, obj2);
                                                    }
                                                    j14 >>= 8;
                                                }
                                                if (i20 != 8) {
                                                    break;
                                                }
                                            }
                                            if (i19 == length2) {
                                                break;
                                            }
                                            i19++;
                                            i14 = i11;
                                            j12 = j10;
                                        }
                                    } else {
                                        i11 = i14;
                                        j10 = j12;
                                        i12 = i16;
                                        j11 = -9187201950435737472L;
                                    }
                                } else {
                                    jArr2 = jArr3;
                                    i11 = i14;
                                    j10 = j12;
                                    i12 = i16;
                                    j11 = j13;
                                }
                                if (invoke.booleanValue()) {
                                    mutableScatterMap.removeValueAt(i18);
                                }
                                i13 = 8;
                            } else {
                                jArr2 = jArr3;
                                i11 = i14;
                                j10 = j12;
                                i12 = i16;
                                j11 = j13;
                                i13 = i15;
                            }
                            j12 = j10 >> i13;
                            i17++;
                            i15 = i13;
                            j13 = j11;
                            jArr3 = jArr2;
                            i16 = i12;
                            i14 = i11;
                        }
                        jArr = jArr3;
                        int i24 = i14;
                        if (i16 == i15) {
                            i10 = i24;
                        } else {
                            return;
                        }
                    } else {
                        jArr = jArr3;
                        i10 = i14;
                    }
                    if (i10 != length) {
                        i14 = i10 + 1;
                        jArr3 = jArr;
                    } else {
                        return;
                    }
                }
            }
        }

        public final void rereadDerivedState(@NotNull DerivedState<?> derivedState) {
            long[] jArr;
            long[] jArr2;
            int i10;
            MutableObjectIntMap<Object> mutableObjectIntMap;
            MutableScatterMap<Object, MutableObjectIntMap<Object>> mutableScatterMap = this.scopeToValues;
            int hashCode = Long.hashCode(SnapshotKt.currentSnapshot().getSnapshotId());
            Object obj = this.valueToScopes.get(derivedState);
            if (obj != null) {
                if (obj instanceof MutableScatterSet) {
                    MutableScatterSet mutableScatterSet = (MutableScatterSet) obj;
                    Object[] objArr = mutableScatterSet.elements;
                    long[] jArr3 = mutableScatterSet.metadata;
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
                                        Object obj2 = objArr[(i11 << 3) + i14];
                                        MutableObjectIntMap<Object> mutableObjectIntMap2 = mutableScatterMap.get(obj2);
                                        jArr2 = jArr3;
                                        if (mutableObjectIntMap2 == null) {
                                            mutableObjectIntMap = new MutableObjectIntMap<>(0, 1, null);
                                            mutableScatterMap.set(obj2, mutableObjectIntMap);
                                            Unit unit = Unit.f60915a;
                                        } else {
                                            mutableObjectIntMap = mutableObjectIntMap2;
                                        }
                                        recordRead(derivedState, hashCode, obj2, mutableObjectIntMap);
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
                                    return;
                                }
                            } else {
                                jArr = jArr3;
                            }
                            if (i11 != length) {
                                i11++;
                                jArr3 = jArr;
                            } else {
                                return;
                            }
                        }
                    }
                } else {
                    MutableObjectIntMap<Object> mutableObjectIntMap3 = mutableScatterMap.get(obj);
                    if (mutableObjectIntMap3 == null) {
                        mutableObjectIntMap3 = new MutableObjectIntMap<>(0, 1, null);
                        mutableScatterMap.set(obj, mutableObjectIntMap3);
                        Unit unit2 = Unit.f60915a;
                    }
                    recordRead(derivedState, hashCode, obj, mutableObjectIntMap3);
                }
            }
        }

        private final void recordRead(Object obj, int i10, Object obj2, MutableObjectIntMap<Object> mutableObjectIntMap) {
            int i11;
            int i12;
            if (this.deriveStateScopeCount > 0) {
                return;
            }
            int put = mutableObjectIntMap.put(obj, i10, -1);
            if (!(obj instanceof DerivedState) || put == i10) {
                i11 = -1;
            } else {
                DerivedState.Record currentRecord = ((DerivedState) obj).getCurrentRecord();
                this.recordedDerivedStateValues.put(obj, currentRecord.getCurrentValue());
                ObjectIntMap<StateObject> dependencies = currentRecord.getDependencies();
                MutableScatterMap<Object, Object> mutableScatterMap = this.dependencyToDerivedStates;
                ScopeMap.m1485removeScopeimpl(mutableScatterMap, obj);
                Object[] objArr = dependencies.keys;
                long[] jArr = dependencies.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i13 = 0;
                    while (true) {
                        long j10 = jArr[i13];
                        if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i14 = 8;
                            int i15 = 8 - ((~(i13 - length)) >>> 31);
                            int i16 = 0;
                            while (i16 < i15) {
                                if ((j10 & 255) < 128) {
                                    StateObject stateObject = (StateObject) objArr[(i13 << 3) + i16];
                                    if (stateObject instanceof StateObjectImpl) {
                                        ((StateObjectImpl) stateObject).m1513recordReadInh_f27i8$runtime(ReaderKind.m1500constructorimpl(2));
                                    }
                                    ScopeMap.m1470addimpl(mutableScatterMap, stateObject, obj);
                                    i12 = 8;
                                } else {
                                    i12 = i14;
                                }
                                j10 >>= i12;
                                i16++;
                                i14 = i12;
                            }
                            if (i15 != i14) {
                                break;
                            }
                        }
                        if (i13 == length) {
                            break;
                        }
                        i13++;
                    }
                }
                i11 = -1;
            }
            if (put == i11) {
                if (obj instanceof StateObjectImpl) {
                    ((StateObjectImpl) obj).m1513recordReadInh_f27i8$runtime(ReaderKind.m1500constructorimpl(2));
                }
                ScopeMap.m1470addimpl(this.valueToScopes, obj, obj2);
            }
        }
    }

    public final void clear() {
        synchronized (this.observedScopeMapsLock) {
            try {
                MutableVector<ObservedScopeMap> mutableVector = this.observedScopeMaps;
                ObservedScopeMap[] observedScopeMapArr = mutableVector.content;
                int size = mutableVector.getSize();
                for (int i10 = 0; i10 < size; i10++) {
                    observedScopeMapArr[i10].clear();
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
