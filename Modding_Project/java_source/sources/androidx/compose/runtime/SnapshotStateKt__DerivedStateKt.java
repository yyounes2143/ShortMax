package androidx.compose.runtime;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.SnapshotThreadLocal;
import androidx.compose.runtime.snapshots.StateFactoryMarker;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DerivedState.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDerivedState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DerivedState.kt\nandroidx/compose/runtime/SnapshotStateKt__DerivedStateKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,398:1\n1#2:399\n1086#3:400\n424#4,8:401\n424#4,8:409\n44#4:417\n*S KotlinDebug\n*F\n+ 1 DerivedState.kt\nandroidx/compose/runtime/SnapshotStateKt__DerivedStateKt\n*L\n367#1:400\n371#1:401,8\n375#1:409,8\n395#1:417\n*E\n"})
/* loaded from: classes.dex */
public final /* synthetic */ class SnapshotStateKt__DerivedStateKt {
    @NotNull
    private static final SnapshotThreadLocal<IntRef> calculationBlockNestedLevel = new SnapshotThreadLocal<>();
    @NotNull
    private static final SnapshotThreadLocal<MutableVector<DerivedStateObserver>> derivedStateObservers = new SnapshotThreadLocal<>();

    @NotNull
    public static final MutableVector<DerivedStateObserver> derivedStateObservers() {
        SnapshotThreadLocal<MutableVector<DerivedStateObserver>> snapshotThreadLocal = derivedStateObservers;
        MutableVector<DerivedStateObserver> mutableVector = snapshotThreadLocal.get();
        if (mutableVector == null) {
            MutableVector<DerivedStateObserver> mutableVector2 = new MutableVector<>(new DerivedStateObserver[0], 0);
            snapshotThreadLocal.set(mutableVector2);
            return mutableVector2;
        }
        return mutableVector;
    }

    @StateFactoryMarker
    @NotNull
    public static final <T> State<T> derivedStateOf(@NotNull Function0<? extends T> function0) {
        return new DerivedSnapshotState(function0, null);
    }

    private static final <R> R notifyObservers$SnapshotStateKt__DerivedStateKt(DerivedState<?> derivedState, Function0<? extends R> function0) {
        MutableVector<DerivedStateObserver> derivedStateObservers2 = SnapshotStateKt.derivedStateObservers();
        DerivedStateObserver[] derivedStateObserverArr = derivedStateObservers2.content;
        int size = derivedStateObservers2.getSize();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            derivedStateObserverArr[i11].start(derivedState);
        }
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            DerivedStateObserver[] derivedStateObserverArr2 = derivedStateObservers2.content;
            int size2 = derivedStateObservers2.getSize();
            while (i10 < size2) {
                derivedStateObserverArr2[i10].done(derivedState);
                i10++;
            }
            InlineMarker.finallyEnd(1);
        }
    }

    public static final <R> void observeDerivedStateRecalculations(@NotNull DerivedStateObserver derivedStateObserver, @NotNull Function0<? extends R> function0) {
        MutableVector<DerivedStateObserver> derivedStateObservers2 = SnapshotStateKt.derivedStateObservers();
        try {
            derivedStateObservers2.add(derivedStateObserver);
            function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            derivedStateObservers2.removeAt(derivedStateObservers2.getSize() - 1);
            InlineMarker.finallyEnd(1);
        }
    }

    private static final <T> T withCalculationNestedLevel$SnapshotStateKt__DerivedStateKt(Function1<? super IntRef, ? extends T> function1) {
        IntRef intRef = (IntRef) calculationBlockNestedLevel.get();
        if (intRef == null) {
            intRef = new IntRef(0);
            calculationBlockNestedLevel.set(intRef);
        }
        return function1.invoke(intRef);
    }

    @StateFactoryMarker
    @NotNull
    public static final <T> State<T> derivedStateOf(@NotNull SnapshotMutationPolicy<T> snapshotMutationPolicy, @NotNull Function0<? extends T> function0) {
        return new DerivedSnapshotState(function0, snapshotMutationPolicy);
    }
}
