package androidx.compose.runtime;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.runtime.DerivedState;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.internal.System_jvmKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.snapshots.StateRecord;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DerivedState.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDerivedState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DerivedState.kt\nandroidx/compose/runtime/DerivedSnapshotState\n+ 2 DerivedState.kt\nandroidx/compose/runtime/SnapshotStateKt__DerivedStateKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n+ 6 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 7 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 8 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n*L\n1#1,398:1\n370#2,2:399\n372#2,2:409\n82#2:411\n81#2,3:413\n375#2,2:441\n82#2:443\n81#2,3:445\n370#2,2:448\n372#2,5:458\n424#3,8:401\n424#3,8:450\n1#4:412\n1#4:444\n395#5,4:416\n367#5,6:420\n377#5,3:427\n380#5,9:431\n399#5:440\n1399#6:426\n1270#6:430\n1893#7:463\n1893#7:465\n2474#7:467\n2474#7:468\n2474#7:469\n33#8:464\n33#8:466\n*S KotlinDebug\n*F\n+ 1 DerivedState.kt\nandroidx/compose/runtime/DerivedSnapshotState\n*L\n188#1:399,2\n188#1:409,2\n190#1:411\n190#1:413,3\n188#1:441,2\n204#1:443\n204#1:445,3\n206#1:448,2\n206#1:458,5\n188#1:401,8\n206#1:450,8\n190#1:412\n204#1:444\n192#1:416,4\n192#1:420,6\n192#1:427,3\n192#1:431,9\n192#1:440\n192#1:426\n192#1:430\n231#1:463\n254#1:465\n296#1:467\n306#1:468\n312#1:469\n231#1:464\n254#1:466\n*E\n"})
/* loaded from: classes.dex */
public final class DerivedSnapshotState<T> extends StateObjectImpl implements DerivedState<T> {
    @NotNull
    private final Function0<T> calculation;
    @NotNull
    private ResultRecord<T> first = new ResultRecord<>(SnapshotKt.currentSnapshot().getSnapshotId());
    @Nullable
    private final SnapshotMutationPolicy<T> policy;

    /* compiled from: DerivedState.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    @SourceDebugExtension({"SMAP\nDerivedState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DerivedState.kt\nandroidx/compose/runtime/DerivedSnapshotState$ResultRecord\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 DerivedState.kt\nandroidx/compose/runtime/SnapshotStateKt__DerivedStateKt\n+ 5 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 6 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n+ 7 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,398:1\n1893#2:399\n1893#2:401\n1893#2:403\n33#3:400\n33#3:402\n33#3:404\n370#4,2:405\n372#4,2:415\n375#4,2:442\n424#5,8:407\n395#6,4:417\n367#6,6:421\n377#6,3:428\n380#6,9:432\n399#6:441\n1399#7:427\n1270#7:431\n*S KotlinDebug\n*F\n+ 1 DerivedState.kt\nandroidx/compose/runtime/DerivedSnapshotState$ResultRecord\n*L\n117#1:399\n126#1:401\n137#1:403\n117#1:400\n126#1:402\n137#1:404\n139#1:405,2\n139#1:415,2\n139#1:442,2\n139#1:407,8\n140#1:417,4\n140#1:421,6\n140#1:428,3\n140#1:432,9\n140#1:441\n140#1:427\n140#1:431\n*E\n"})
    /* loaded from: classes.dex */
    public static final class ResultRecord<T> extends StateRecord implements DerivedState.Record<T> {
        @NotNull
        private ObjectIntMap<StateObject> dependencies;
        @Nullable
        private Object result;
        private int resultHash;
        private long validSnapshotId;
        private int validSnapshotWriteCount;
        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int $stable = 8;
        @NotNull
        private static final Object Unset = new Object();

        /* compiled from: DerivedState.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final Object getUnset() {
                return ResultRecord.Unset;
            }

            private Companion() {
            }
        }

        public ResultRecord(long j10) {
            super(j10);
            this.dependencies = ObjectIntMapKt.emptyObjectIntMap();
            this.result = Unset;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void assign(@NotNull StateRecord stateRecord) {
            Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.DerivedSnapshotState.ResultRecord<T of androidx.compose.runtime.DerivedSnapshotState.ResultRecord>");
            ResultRecord resultRecord = (ResultRecord) stateRecord;
            setDependencies(resultRecord.getDependencies());
            this.result = resultRecord.result;
            this.resultHash = resultRecord.resultHash;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        @NotNull
        public StateRecord create() {
            return create(SnapshotKt.currentSnapshot().getSnapshotId());
        }

        @Override // androidx.compose.runtime.DerivedState.Record
        public T getCurrentValue() {
            return (T) this.result;
        }

        @Override // androidx.compose.runtime.DerivedState.Record
        @NotNull
        public ObjectIntMap<StateObject> getDependencies() {
            return this.dependencies;
        }

        @Nullable
        public final Object getResult() {
            return this.result;
        }

        public final int getResultHash() {
            return this.resultHash;
        }

        public final long getValidSnapshotId() {
            return this.validSnapshotId;
        }

        public final int getValidSnapshotWriteCount() {
            return this.validSnapshotWriteCount;
        }

        public final boolean isValid(@NotNull DerivedState<?> derivedState, @NotNull Snapshot snapshot) {
            boolean z10;
            boolean z11;
            synchronized (SnapshotKt.getLock()) {
                z10 = true;
                if (this.validSnapshotId == snapshot.getSnapshotId()) {
                    if (this.validSnapshotWriteCount == snapshot.getWriteCount$runtime()) {
                        z11 = false;
                    }
                }
                z11 = true;
            }
            if (this.result == Unset || (z11 && this.resultHash != readableHash(derivedState, snapshot))) {
                z10 = false;
            }
            if (z10 && z11) {
                synchronized (SnapshotKt.getLock()) {
                    this.validSnapshotId = snapshot.getSnapshotId();
                    this.validSnapshotWriteCount = snapshot.getWriteCount$runtime();
                    Unit unit = Unit.f60915a;
                }
            }
            return z10;
        }

        public final int readableHash(@NotNull DerivedState<?> derivedState, @NotNull Snapshot snapshot) {
            ObjectIntMap<StateObject> dependencies;
            int i10;
            int i11;
            StateRecord current;
            synchronized (SnapshotKt.getLock()) {
                dependencies = getDependencies();
            }
            char c10 = 7;
            if (dependencies.isNotEmpty()) {
                MutableVector<DerivedStateObserver> derivedStateObservers = SnapshotStateKt.derivedStateObservers();
                DerivedStateObserver[] derivedStateObserverArr = derivedStateObservers.content;
                int size = derivedStateObservers.getSize();
                for (int i12 = 0; i12 < size; i12++) {
                    derivedStateObserverArr[i12].start(derivedState);
                }
                try {
                    Object[] objArr = dependencies.keys;
                    int[] iArr = dependencies.values;
                    long[] jArr = dependencies.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i13 = 7;
                        int i14 = 0;
                        while (true) {
                            long j10 = jArr[i14];
                            if ((((~j10) << c10) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i15 = 8;
                                int i16 = 8 - ((~(i14 - length)) >>> 31);
                                int i17 = 0;
                                while (i17 < i16) {
                                    if ((j10 & 255) < 128) {
                                        int i18 = (i14 << 3) + i17;
                                        StateObject stateObject = (StateObject) objArr[i18];
                                        if (iArr[i18] == 1) {
                                            if (stateObject instanceof DerivedSnapshotState) {
                                                current = ((DerivedSnapshotState) stateObject).current(snapshot);
                                            } else {
                                                current = SnapshotKt.current(stateObject.getFirstStateRecord(), snapshot);
                                            }
                                            i13 = (((i13 * 31) + System_jvmKt.identityHashCode(current)) * 31) + Long.hashCode(current.getSnapshotId$runtime());
                                        }
                                        i11 = 8;
                                    } else {
                                        i11 = i15;
                                    }
                                    j10 >>= i11;
                                    i17++;
                                    i15 = i11;
                                }
                                if (i16 != i15) {
                                    break;
                                }
                            }
                            if (i14 == length) {
                                break;
                            }
                            i14++;
                            c10 = 7;
                        }
                        i10 = i13;
                    } else {
                        i10 = 7;
                    }
                    Unit unit = Unit.f60915a;
                    DerivedStateObserver[] derivedStateObserverArr2 = derivedStateObservers.content;
                    int size2 = derivedStateObservers.getSize();
                    for (int i19 = 0; i19 < size2; i19++) {
                        derivedStateObserverArr2[i19].done(derivedState);
                    }
                    return i10;
                } catch (Throwable th2) {
                    DerivedStateObserver[] derivedStateObserverArr3 = derivedStateObservers.content;
                    int size3 = derivedStateObservers.getSize();
                    for (int i20 = 0; i20 < size3; i20++) {
                        derivedStateObserverArr3[i20].done(derivedState);
                    }
                    throw th2;
                }
            }
            return 7;
        }

        public void setDependencies(@NotNull ObjectIntMap<StateObject> objectIntMap) {
            this.dependencies = objectIntMap;
        }

        public final void setResult(@Nullable Object obj) {
            this.result = obj;
        }

        public final void setResultHash(int i10) {
            this.resultHash = i10;
        }

        public final void setValidSnapshotId(long j10) {
            this.validSnapshotId = j10;
        }

        public final void setValidSnapshotWriteCount(int i10) {
            this.validSnapshotWriteCount = i10;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        @NotNull
        public StateRecord create(long j10) {
            return new ResultRecord(j10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DerivedSnapshotState(@NotNull Function0<? extends T> function0, @Nullable SnapshotMutationPolicy<T> snapshotMutationPolicy) {
        this.calculation = function0;
        this.policy = snapshotMutationPolicy;
    }

    /* JADX WARN: Finally extract failed */
    private final ResultRecord<T> currentRecord(ResultRecord<T> resultRecord, Snapshot snapshot, boolean z10, Function0<? extends T> function0) {
        Snapshot.Companion companion;
        SnapshotMutationPolicy<T> policy;
        int i10;
        int i11;
        ResultRecord<T> resultRecord2 = resultRecord;
        int i12 = 1;
        if (resultRecord2.isValid(this, snapshot)) {
            if (z10) {
                MutableVector<DerivedStateObserver> derivedStateObservers = SnapshotStateKt.derivedStateObservers();
                DerivedStateObserver[] derivedStateObserverArr = derivedStateObservers.content;
                int size = derivedStateObservers.getSize();
                for (int i13 = 0; i13 < size; i13++) {
                    derivedStateObserverArr[i13].start(this);
                }
                try {
                    ObjectIntMap<StateObject> dependencies = resultRecord.getDependencies();
                    IntRef intRef = (IntRef) SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel.get();
                    if (intRef == null) {
                        intRef = new IntRef(0);
                        SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel.set(intRef);
                    }
                    int element = intRef.getElement();
                    Object[] objArr = dependencies.keys;
                    int[] iArr = dependencies.values;
                    long[] jArr = dependencies.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i14 = 0;
                        while (true) {
                            long j10 = jArr[i14];
                            long[] jArr2 = jArr;
                            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i15 = 8;
                                int i16 = 8 - ((~(i14 - length)) >>> 31);
                                int i17 = 0;
                                while (i17 < i16) {
                                    if ((j10 & 255) < 128) {
                                        int i18 = (i14 << 3) + i17;
                                        StateObject stateObject = (StateObject) objArr[i18];
                                        intRef.setElement(element + iArr[i18]);
                                        Function1<Object, Unit> readObserver = snapshot.getReadObserver();
                                        if (readObserver != null) {
                                            readObserver.invoke(stateObject);
                                        }
                                        i11 = 8;
                                    } else {
                                        i11 = i15;
                                    }
                                    j10 >>= i11;
                                    i17++;
                                    i15 = i11;
                                    i12 = 1;
                                }
                                int i19 = i15;
                                i10 = i12;
                                if (i16 != i19) {
                                    break;
                                }
                            } else {
                                i10 = i12;
                            }
                            if (i14 == length) {
                                break;
                            }
                            i14 += i10;
                            i12 = i10;
                            jArr = jArr2;
                        }
                    }
                    intRef.setElement(element);
                    Unit unit = Unit.f60915a;
                    DerivedStateObserver[] derivedStateObserverArr2 = derivedStateObservers.content;
                    int size2 = derivedStateObservers.getSize();
                    for (int i20 = 0; i20 < size2; i20++) {
                        derivedStateObserverArr2[i20].done(this);
                    }
                } catch (Throwable th2) {
                    DerivedStateObserver[] derivedStateObserverArr3 = derivedStateObservers.content;
                    int size3 = derivedStateObservers.getSize();
                    for (int i21 = 0; i21 < size3; i21++) {
                        derivedStateObserverArr3[i21].done(this);
                    }
                    throw th2;
                }
            }
            return resultRecord2;
        }
        int i22 = 0;
        final MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
        final IntRef intRef2 = (IntRef) SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel.get();
        if (intRef2 == null) {
            intRef2 = new IntRef(0);
            SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel.set(intRef2);
        }
        final int element2 = intRef2.getElement();
        MutableVector<DerivedStateObserver> derivedStateObservers2 = SnapshotStateKt.derivedStateObservers();
        DerivedStateObserver[] derivedStateObserverArr4 = derivedStateObservers2.content;
        int size4 = derivedStateObservers2.getSize();
        for (int i23 = 0; i23 < size4; i23++) {
            derivedStateObserverArr4[i23].start(this);
        }
        try {
            intRef2.setElement(element2 + 1);
            T t10 = (T) Snapshot.Companion.observe(new Function1() { // from class: androidx.compose.runtime.n
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit currentRecord$lambda$5$lambda$4$lambda$3;
                    currentRecord$lambda$5$lambda$4$lambda$3 = DerivedSnapshotState.currentRecord$lambda$5$lambda$4$lambda$3(DerivedSnapshotState.this, intRef2, mutableObjectIntMap, element2, obj);
                    return currentRecord$lambda$5$lambda$4$lambda$3;
                }
            }, null, function0);
            intRef2.setElement(element2);
            DerivedStateObserver[] derivedStateObserverArr5 = derivedStateObservers2.content;
            int size5 = derivedStateObservers2.getSize();
            while (i22 < size5) {
                derivedStateObserverArr5[i22].done(this);
                i22++;
            }
            synchronized (SnapshotKt.getLock()) {
                try {
                    companion = Snapshot.Companion;
                    Snapshot current = companion.getCurrent();
                    if (resultRecord.getResult() != ResultRecord.Companion.getUnset() && (policy = getPolicy()) != null && policy.equivalent(t10, (T) resultRecord.getResult())) {
                        resultRecord2.setDependencies(mutableObjectIntMap);
                        resultRecord2.setResultHash(resultRecord2.readableHash(this, current));
                    } else {
                        resultRecord2 = (ResultRecord) SnapshotKt.newWritableRecord(this.first, this, current);
                        resultRecord2.setDependencies(mutableObjectIntMap);
                        resultRecord2.setResultHash(resultRecord2.readableHash(this, current));
                        resultRecord2.setResult(t10);
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            IntRef intRef3 = (IntRef) SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel.get();
            if (intRef3 != null && intRef3.getElement() == 0) {
                companion.notifyObjectsInitialized();
                synchronized (SnapshotKt.getLock()) {
                    Snapshot current2 = companion.getCurrent();
                    resultRecord2.setValidSnapshotId(current2.getSnapshotId());
                    resultRecord2.setValidSnapshotWriteCount(current2.getWriteCount$runtime());
                    Unit unit2 = Unit.f60915a;
                }
            }
            return resultRecord2;
        } catch (Throwable th4) {
            DerivedStateObserver[] derivedStateObserverArr6 = derivedStateObservers2.content;
            int size6 = derivedStateObservers2.getSize();
            while (i22 < size6) {
                derivedStateObserverArr6[i22].done(this);
                i22++;
            }
            throw th4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit currentRecord$lambda$5$lambda$4$lambda$3(DerivedSnapshotState derivedSnapshotState, IntRef intRef, MutableObjectIntMap mutableObjectIntMap, int i10, Object obj) {
        if (obj != derivedSnapshotState) {
            if (obj instanceof StateObject) {
                mutableObjectIntMap.set(obj, Math.min(intRef.getElement() - i10, mutableObjectIntMap.getOrDefault(obj, Integer.MAX_VALUE)));
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("A derived state calculation cannot read itself");
    }

    private final String displayValue() {
        ResultRecord resultRecord = (ResultRecord) SnapshotKt.current(this.first);
        if (resultRecord.isValid(this, Snapshot.Companion.getCurrent())) {
            return String.valueOf(resultRecord.getResult());
        }
        return "<Not calculated>";
    }

    @NotNull
    public final StateRecord current(@NotNull Snapshot snapshot) {
        return currentRecord((ResultRecord) SnapshotKt.current(this.first, snapshot), snapshot, false, this.calculation);
    }

    @Override // androidx.compose.runtime.DerivedState
    @NotNull
    public DerivedState.Record<T> getCurrentRecord() {
        Snapshot current = Snapshot.Companion.getCurrent();
        return currentRecord((ResultRecord) SnapshotKt.current(this.first, current), current, false, this.calculation);
    }

    @Nullable
    public final T getDebuggerDisplayValue() {
        ResultRecord resultRecord = (ResultRecord) SnapshotKt.current(this.first);
        if (resultRecord.isValid(this, Snapshot.Companion.getCurrent())) {
            return (T) resultRecord.getResult();
        }
        return null;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @NotNull
    public StateRecord getFirstStateRecord() {
        return this.first;
    }

    @Override // androidx.compose.runtime.DerivedState
    @Nullable
    public SnapshotMutationPolicy<T> getPolicy() {
        return this.policy;
    }

    @Override // androidx.compose.runtime.State
    public T getValue() {
        Snapshot.Companion companion = Snapshot.Companion;
        Function1<Object, Unit> readObserver = companion.getCurrent().getReadObserver();
        if (readObserver != null) {
            readObserver.invoke(this);
        }
        Snapshot current = companion.getCurrent();
        return (T) currentRecord((ResultRecord) SnapshotKt.current(this.first, current), current, true, this.calculation).getResult();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(@NotNull StateRecord stateRecord) {
        Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.DerivedSnapshotState.ResultRecord<T of androidx.compose.runtime.DerivedSnapshotState>");
        this.first = (ResultRecord) stateRecord;
    }

    @NotNull
    public String toString() {
        ResultRecord resultRecord = (ResultRecord) SnapshotKt.current(this.first);
        return "DerivedState(value=" + displayValue() + ")@" + hashCode();
    }

    public static /* synthetic */ void getDebuggerDisplayValue$annotations() {
    }
}
