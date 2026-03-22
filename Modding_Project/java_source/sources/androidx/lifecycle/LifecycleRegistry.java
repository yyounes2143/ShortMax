package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import androidx.arch.core.internal.FastSafeIterableMap;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.Lifecycle;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LifecycleRegistry.jvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLifecycleRegistry.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LifecycleRegistry.jvm.kt\nandroidx/lifecycle/LifecycleRegistry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,343:1\n1#2:344\n*E\n"})
/* loaded from: classes2.dex */
public class LifecycleRegistry extends Lifecycle {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final kt.e<Lifecycle.State> _currentStateFlow;
    private int addingObserverCounter;
    private final boolean enforceMainThread;
    private boolean handlingEvent;
    @NotNull
    private final WeakReference<LifecycleOwner> lifecycleOwner;
    private boolean newEventOccurred;
    @NotNull
    private FastSafeIterableMap<LifecycleObserver, ObserverWithState> observerMap;
    @NotNull
    private ArrayList<Lifecycle.State> parentStates;
    @NotNull
    private Lifecycle.State state;

    /* compiled from: LifecycleRegistry.jvm.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @VisibleForTesting
        @NotNull
        public final LifecycleRegistry createUnsafe(@NotNull LifecycleOwner owner) {
            Intrinsics.checkNotNullParameter(owner, "owner");
            return new LifecycleRegistry(owner, false, null);
        }

        @NotNull
        public final Lifecycle.State min$lifecycle_runtime_release(@NotNull Lifecycle.State state1, @Nullable Lifecycle.State state) {
            Intrinsics.checkNotNullParameter(state1, "state1");
            if (state != null && state.compareTo(state1) < 0) {
                return state;
            }
            return state1;
        }

        private Companion() {
        }
    }

    /* compiled from: LifecycleRegistry.jvm.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class ObserverWithState {
        @NotNull
        private LifecycleEventObserver lifecycleObserver;
        @NotNull
        private Lifecycle.State state;

        public ObserverWithState(@Nullable LifecycleObserver lifecycleObserver, @NotNull Lifecycle.State initialState) {
            Intrinsics.checkNotNullParameter(initialState, "initialState");
            Intrinsics.checkNotNull(lifecycleObserver);
            this.lifecycleObserver = Lifecycling.lifecycleEventObserver(lifecycleObserver);
            this.state = initialState;
        }

        public final void dispatchEvent(@Nullable LifecycleOwner lifecycleOwner, @NotNull Lifecycle.Event event) {
            Intrinsics.checkNotNullParameter(event, "event");
            Lifecycle.State targetState = event.getTargetState();
            this.state = LifecycleRegistry.Companion.min$lifecycle_runtime_release(this.state, targetState);
            LifecycleEventObserver lifecycleEventObserver = this.lifecycleObserver;
            Intrinsics.checkNotNull(lifecycleOwner);
            lifecycleEventObserver.onStateChanged(lifecycleOwner, event);
            this.state = targetState;
        }

        @NotNull
        public final LifecycleEventObserver getLifecycleObserver() {
            return this.lifecycleObserver;
        }

        @NotNull
        public final Lifecycle.State getState() {
            return this.state;
        }

        public final void setLifecycleObserver(@NotNull LifecycleEventObserver lifecycleEventObserver) {
            Intrinsics.checkNotNullParameter(lifecycleEventObserver, "<set-?>");
            this.lifecycleObserver = lifecycleEventObserver;
        }

        public final void setState(@NotNull Lifecycle.State state) {
            Intrinsics.checkNotNullParameter(state, "<set-?>");
            this.state = state;
        }
    }

    public /* synthetic */ LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(lifecycleOwner, z10);
    }

    private final void backwardPass(LifecycleOwner lifecycleOwner) {
        Iterator<Map.Entry<LifecycleObserver, ObserverWithState>> descendingIterator = this.observerMap.descendingIterator();
        Intrinsics.checkNotNullExpressionValue(descendingIterator, "descendingIterator(...)");
        while (descendingIterator.hasNext() && !this.newEventOccurred) {
            Map.Entry<LifecycleObserver, ObserverWithState> next = descendingIterator.next();
            Intrinsics.checkNotNull(next);
            LifecycleObserver key = next.getKey();
            ObserverWithState value = next.getValue();
            while (value.getState().compareTo(this.state) > 0 && !this.newEventOccurred && this.observerMap.contains(key)) {
                Lifecycle.Event downFrom = Lifecycle.Event.Companion.downFrom(value.getState());
                if (downFrom != null) {
                    pushParentState(downFrom.getTargetState());
                    value.dispatchEvent(lifecycleOwner, downFrom);
                    popParentState();
                } else {
                    throw new IllegalStateException("no event down from " + value.getState());
                }
            }
        }
    }

    private final Lifecycle.State calculateTargetState(LifecycleObserver lifecycleObserver) {
        Lifecycle.State state;
        ArrayList<Lifecycle.State> arrayList;
        ObserverWithState value;
        Map.Entry<LifecycleObserver, ObserverWithState> ceil = this.observerMap.ceil(lifecycleObserver);
        Lifecycle.State state2 = null;
        if (ceil != null && (value = ceil.getValue()) != null) {
            state = value.getState();
        } else {
            state = null;
        }
        if (!this.parentStates.isEmpty()) {
            state2 = this.parentStates.get(arrayList.size() - 1);
        }
        Companion companion = Companion;
        return companion.min$lifecycle_runtime_release(companion.min$lifecycle_runtime_release(this.state, state), state2);
    }

    @VisibleForTesting
    @NotNull
    public static final LifecycleRegistry createUnsafe(@NotNull LifecycleOwner lifecycleOwner) {
        return Companion.createUnsafe(lifecycleOwner);
    }

    private final void enforceMainThreadIfNeeded(String str) {
        if (this.enforceMainThread && !LifecycleRegistry_androidKt.isMainThread()) {
            throw new IllegalStateException(("Method " + str + " must be called on the main thread").toString());
        }
    }

    private final void forwardPass(LifecycleOwner lifecycleOwner) {
        SafeIterableMap<LifecycleObserver, ObserverWithState>.IteratorWithAdditions iteratorWithAdditions = this.observerMap.iteratorWithAdditions();
        Intrinsics.checkNotNullExpressionValue(iteratorWithAdditions, "iteratorWithAdditions(...)");
        while (iteratorWithAdditions.hasNext() && !this.newEventOccurred) {
            Map.Entry next = iteratorWithAdditions.next();
            LifecycleObserver lifecycleObserver = (LifecycleObserver) next.getKey();
            ObserverWithState observerWithState = (ObserverWithState) next.getValue();
            while (observerWithState.getState().compareTo(this.state) < 0 && !this.newEventOccurred && this.observerMap.contains(lifecycleObserver)) {
                pushParentState(observerWithState.getState());
                Lifecycle.Event upFrom = Lifecycle.Event.Companion.upFrom(observerWithState.getState());
                if (upFrom != null) {
                    observerWithState.dispatchEvent(lifecycleOwner, upFrom);
                    popParentState();
                } else {
                    throw new IllegalStateException("no event up from " + observerWithState.getState());
                }
            }
        }
    }

    private final boolean isSynced() {
        if (this.observerMap.size() == 0) {
            return true;
        }
        Map.Entry<LifecycleObserver, ObserverWithState> eldest = this.observerMap.eldest();
        Intrinsics.checkNotNull(eldest);
        Lifecycle.State state = eldest.getValue().getState();
        Map.Entry<LifecycleObserver, ObserverWithState> newest = this.observerMap.newest();
        Intrinsics.checkNotNull(newest);
        Lifecycle.State state2 = newest.getValue().getState();
        if (state == state2 && this.state == state2) {
            return true;
        }
        return false;
    }

    private final void moveToState(Lifecycle.State state) {
        if (this.state == state) {
            return;
        }
        LifecycleRegistryKt.checkLifecycleStateTransition(this.lifecycleOwner.get(), this.state, state);
        this.state = state;
        if (!this.handlingEvent && this.addingObserverCounter == 0) {
            this.handlingEvent = true;
            sync();
            this.handlingEvent = false;
            if (this.state == Lifecycle.State.DESTROYED) {
                this.observerMap = new FastSafeIterableMap<>();
                return;
            }
            return;
        }
        this.newEventOccurred = true;
    }

    private final void popParentState() {
        ArrayList<Lifecycle.State> arrayList = this.parentStates;
        arrayList.remove(arrayList.size() - 1);
    }

    private final void pushParentState(Lifecycle.State state) {
        this.parentStates.add(state);
    }

    private final void sync() {
        LifecycleOwner lifecycleOwner = this.lifecycleOwner.get();
        if (lifecycleOwner != null) {
            while (!isSynced()) {
                this.newEventOccurred = false;
                Lifecycle.State state = this.state;
                Map.Entry<LifecycleObserver, ObserverWithState> eldest = this.observerMap.eldest();
                Intrinsics.checkNotNull(eldest);
                if (state.compareTo(eldest.getValue().getState()) < 0) {
                    backwardPass(lifecycleOwner);
                }
                Map.Entry<LifecycleObserver, ObserverWithState> newest = this.observerMap.newest();
                if (!this.newEventOccurred && newest != null && this.state.compareTo(newest.getValue().getState()) > 0) {
                    forwardPass(lifecycleOwner);
                }
            }
            this.newEventOccurred = false;
            this._currentStateFlow.setValue(getCurrentState());
            return;
        }
        throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
    }

    @Override // androidx.lifecycle.Lifecycle
    @MainThread
    public void addObserver(@NotNull LifecycleObserver observer) {
        LifecycleOwner lifecycleOwner;
        boolean z10;
        Intrinsics.checkNotNullParameter(observer, "observer");
        enforceMainThreadIfNeeded("addObserver");
        Lifecycle.State state = this.state;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        ObserverWithState observerWithState = new ObserverWithState(observer, state2);
        if (this.observerMap.putIfAbsent(observer, observerWithState) != null || (lifecycleOwner = this.lifecycleOwner.get()) == null) {
            return;
        }
        if (this.addingObserverCounter == 0 && !this.handlingEvent) {
            z10 = false;
        } else {
            z10 = true;
        }
        Lifecycle.State calculateTargetState = calculateTargetState(observer);
        this.addingObserverCounter++;
        while (observerWithState.getState().compareTo(calculateTargetState) < 0 && this.observerMap.contains(observer)) {
            pushParentState(observerWithState.getState());
            Lifecycle.Event upFrom = Lifecycle.Event.Companion.upFrom(observerWithState.getState());
            if (upFrom != null) {
                observerWithState.dispatchEvent(lifecycleOwner, upFrom);
                popParentState();
                calculateTargetState = calculateTargetState(observer);
            } else {
                throw new IllegalStateException("no event up from " + observerWithState.getState());
            }
        }
        if (!z10) {
            sync();
        }
        this.addingObserverCounter--;
    }

    @Override // androidx.lifecycle.Lifecycle
    @NotNull
    public Lifecycle.State getCurrentState() {
        return this.state;
    }

    @Override // androidx.lifecycle.Lifecycle
    @NotNull
    public kt.i<Lifecycle.State> getCurrentStateFlow() {
        return kotlinx.coroutines.flow.c.d(this._currentStateFlow);
    }

    public int getObserverCount() {
        enforceMainThreadIfNeeded("getObserverCount");
        return this.observerMap.size();
    }

    public void handleLifecycleEvent(@NotNull Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        enforceMainThreadIfNeeded("handleLifecycleEvent");
        moveToState(event.getTargetState());
    }

    @ms.c
    @MainThread
    public void markState(@NotNull Lifecycle.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        enforceMainThreadIfNeeded("markState");
        setCurrentState(state);
    }

    @Override // androidx.lifecycle.Lifecycle
    @MainThread
    public void removeObserver(@NotNull LifecycleObserver observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        enforceMainThreadIfNeeded("removeObserver");
        this.observerMap.remove(observer);
    }

    public void setCurrentState(@NotNull Lifecycle.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        enforceMainThreadIfNeeded("setCurrentState");
        moveToState(state);
    }

    private LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z10) {
        this.enforceMainThread = z10;
        this.observerMap = new FastSafeIterableMap<>();
        Lifecycle.State state = Lifecycle.State.INITIALIZED;
        this.state = state;
        this.parentStates = new ArrayList<>();
        this.lifecycleOwner = new WeakReference<>(lifecycleOwner);
        this._currentStateFlow = kotlinx.coroutines.flow.o.a(state);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LifecycleRegistry(@NotNull LifecycleOwner provider) {
        this(provider, true);
        Intrinsics.checkNotNullParameter(provider, "provider");
    }
}
