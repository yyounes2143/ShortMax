package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.Lifecycle;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Lifecycle.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLifecycle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Lifecycle.kt\nandroidx/lifecycle/Lifecycle\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,376:1\n1#2:377\n*E\n"})
/* loaded from: classes2.dex */
public abstract class Lifecycle {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    private AtomicReference<Object> internalScopeRef = new AtomicReference<>(null);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Lifecycle.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Event {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ Event[] $VALUES;
        @NotNull
        public static final Companion Companion;
        public static final Event ON_CREATE = new Event("ON_CREATE", 0);
        public static final Event ON_START = new Event("ON_START", 1);
        public static final Event ON_RESUME = new Event("ON_RESUME", 2);
        public static final Event ON_PAUSE = new Event("ON_PAUSE", 3);
        public static final Event ON_STOP = new Event("ON_STOP", 4);
        public static final Event ON_DESTROY = new Event("ON_DESTROY", 5);
        public static final Event ON_ANY = new Event("ON_ANY", 6);

        /* compiled from: Lifecycle.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {

            /* compiled from: Lifecycle.kt */
            @Metadata
            /* loaded from: classes2.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[State.values().length];
                    try {
                        iArr[State.CREATED.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[State.STARTED.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[State.RESUMED.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[State.DESTROYED.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[State.INITIALIZED.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @Nullable
            public final Event downFrom(@NotNull State state) {
                Intrinsics.checkNotNullParameter(state, "state");
                int i10 = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            return null;
                        }
                        return Event.ON_PAUSE;
                    }
                    return Event.ON_STOP;
                }
                return Event.ON_DESTROY;
            }

            @Nullable
            public final Event downTo(@NotNull State state) {
                Intrinsics.checkNotNullParameter(state, "state");
                int i10 = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 4) {
                            return null;
                        }
                        return Event.ON_DESTROY;
                    }
                    return Event.ON_PAUSE;
                }
                return Event.ON_STOP;
            }

            @Nullable
            public final Event upFrom(@NotNull State state) {
                Intrinsics.checkNotNullParameter(state, "state");
                int i10 = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 5) {
                            return null;
                        }
                        return Event.ON_CREATE;
                    }
                    return Event.ON_RESUME;
                }
                return Event.ON_START;
            }

            @Nullable
            public final Event upTo(@NotNull State state) {
                Intrinsics.checkNotNullParameter(state, "state");
                int i10 = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            return null;
                        }
                        return Event.ON_RESUME;
                    }
                    return Event.ON_START;
                }
                return Event.ON_CREATE;
            }

            private Companion() {
            }
        }

        /* compiled from: Lifecycle.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Event.values().length];
                try {
                    iArr[Event.ON_CREATE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Event.ON_STOP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Event.ON_START.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Event.ON_PAUSE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[Event.ON_RESUME.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[Event.ON_DESTROY.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[Event.ON_ANY.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        private static final /* synthetic */ Event[] $values() {
            return new Event[]{ON_CREATE, ON_START, ON_RESUME, ON_PAUSE, ON_STOP, ON_DESTROY, ON_ANY};
        }

        static {
            Event[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
            Companion = new Companion(null);
        }

        private Event(String str, int i10) {
        }

        @Nullable
        public static final Event downFrom(@NotNull State state) {
            return Companion.downFrom(state);
        }

        @Nullable
        public static final Event downTo(@NotNull State state) {
            return Companion.downTo(state);
        }

        @NotNull
        public static ss.a<Event> getEntries() {
            return $ENTRIES;
        }

        @Nullable
        public static final Event upFrom(@NotNull State state) {
            return Companion.upFrom(state);
        }

        @Nullable
        public static final Event upTo(@NotNull State state) {
            return Companion.upTo(state);
        }

        public static Event valueOf(String str) {
            return (Event) Enum.valueOf(Event.class, str);
        }

        public static Event[] values() {
            return (Event[]) $VALUES.clone();
        }

        @NotNull
        public final State getTargetState() {
            switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
                case 1:
                case 2:
                    return State.CREATED;
                case 3:
                case 4:
                    return State.STARTED;
                case 5:
                    return State.RESUMED;
                case 6:
                    return State.DESTROYED;
                case 7:
                    throw new IllegalArgumentException(this + " has no target state");
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Lifecycle.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class State {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ State[] $VALUES;
        public static final State DESTROYED = new State("DESTROYED", 0);
        public static final State INITIALIZED = new State("INITIALIZED", 1);
        public static final State CREATED = new State("CREATED", 2);
        public static final State STARTED = new State("STARTED", 3);
        public static final State RESUMED = new State("RESUMED", 4);

        private static final /* synthetic */ State[] $values() {
            return new State[]{DESTROYED, INITIALIZED, CREATED, STARTED, RESUMED};
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

        public final boolean isAtLeast(@NotNull State state) {
            Intrinsics.checkNotNullParameter(state, "state");
            if (compareTo(state) >= 0) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _get_currentStateFlow_$lambda$0(kt.e eVar, LifecycleOwner lifecycleOwner, Event event) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<unused var>");
        Intrinsics.checkNotNullParameter(event, "event");
        eVar.setValue(event.getTargetState());
    }

    @MainThread
    public abstract void addObserver(@NotNull LifecycleObserver lifecycleObserver);

    @MainThread
    @NotNull
    public abstract State getCurrentState();

    @NotNull
    public kt.i<State> getCurrentStateFlow() {
        final kt.e a10 = kotlinx.coroutines.flow.o.a(getCurrentState());
        addObserver(new LifecycleEventObserver() { // from class: androidx.lifecycle.g
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                Lifecycle._get_currentStateFlow_$lambda$0(kt.e.this, lifecycleOwner, event);
            }
        });
        return kotlinx.coroutines.flow.c.d(a10);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final AtomicReference<Object> getInternalScopeRef() {
        return this.internalScopeRef;
    }

    @MainThread
    public abstract void removeObserver(@NotNull LifecycleObserver lifecycleObserver);

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void setInternalScopeRef(@NotNull AtomicReference<Object> atomicReference) {
        Intrinsics.checkNotNullParameter(atomicReference, "<set-?>");
        this.internalScopeRef = atomicReference;
    }
}
