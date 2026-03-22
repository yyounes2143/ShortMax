package androidx.compose.runtime;

import androidx.collection.MutableIntList;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PausableComposition.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nPausableComposition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PausableComposition.kt\nandroidx/compose/runtime/RecordingApplier\n+ 2 IntList.kt\nandroidx/collection/IntListKt\n+ 3 ObjectList.kt\nandroidx/collection/ObjectListKt\n+ 4 IntList.kt\nandroidx/collection/IntList\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,567:1\n905#2:568\n1516#3:569\n1516#3:571\n65#4:570\n4788#5,4:572\n*S KotlinDebug\n*F\n+ 1 PausableComposition.kt\nandroidx/compose/runtime/RecordingApplier\n*L\n345#1:568\n346#1:569\n404#1:571\n402#1:570\n459#1:572,4\n*E\n"})
/* loaded from: classes.dex */
public final class RecordingApplier<N> implements Applier<N> {
    public static final int APPLY = 7;
    public static final int CLEAR = 4;
    public static final int DOWN = 1;
    public static final int INSERT_BOTTOM_UP = 5;
    public static final int INSERT_TOP_DOWN = 6;
    public static final int MOVE = 3;
    public static final int REMOVE = 2;
    public static final int REUSE = 8;
    public static final int UP = 0;
    private N current;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    @NotNull
    private final MutableIntList operations = new MutableIntList(0, 1, null);
    @NotNull
    private final MutableObjectList<Object> instances = new MutableObjectList<>(0, 1, null);

    /* compiled from: PausableComposition.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public RecordingApplier(N n10) {
        this.current = n10;
    }

    @Override // androidx.compose.runtime.Applier
    public void apply(@NotNull Function2<? super N, Object, Unit> function2, @Nullable Object obj) {
        this.operations.add(7);
        this.instances.add(function2);
        this.instances.add(obj);
    }

    @Override // androidx.compose.runtime.Applier
    public void clear() {
        this.operations.add(4);
    }

    @Override // androidx.compose.runtime.Applier
    public void down(N n10) {
        this.operations.add(1);
        this.instances.add(n10);
    }

    @Override // androidx.compose.runtime.Applier
    public N getCurrent() {
        return this.current;
    }

    @Override // androidx.compose.runtime.Applier
    public void insertBottomUp(int i10, N n10) {
        this.operations.add(5);
        this.operations.add(i10);
        this.instances.add(n10);
    }

    @Override // androidx.compose.runtime.Applier
    public void insertTopDown(int i10, N n10) {
        this.operations.add(6);
        this.operations.add(i10);
        this.instances.add(n10);
    }

    @Override // androidx.compose.runtime.Applier
    public void move(int i10, int i11, int i12) {
        this.operations.add(3);
        this.operations.add(i10);
        this.operations.add(i11);
        this.operations.add(i12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void playTo(@NotNull Applier<N> applier, @NotNull RememberEventDispatcher rememberEventDispatcher) {
        Exception exc;
        int i10;
        int i11;
        MutableIntList mutableIntList = this.operations;
        int i12 = mutableIntList._size;
        MutableObjectList<Object> mutableObjectList = this.instances;
        boolean z10 = false;
        MutableObjectList mutableObjectList2 = new MutableObjectList(0, 1, null);
        applier.onBeginChanges();
        int i13 = 0;
        int i14 = 0;
        while (i13 < i12) {
            int i15 = i13 + 1;
            try {
                try {
                    switch (mutableIntList.get(i13)) {
                        case 0:
                            applier.up();
                            i13 = i15;
                            break;
                        case 1:
                            int i16 = i14 + 1;
                            applier.down(mutableObjectList.get(i14));
                            i14 = i16;
                            i13 = i15;
                            break;
                        case 2:
                            int i17 = i13 + 2;
                            i13 += 3;
                            applier.remove(mutableIntList.get(i15), mutableIntList.get(i17));
                            break;
                        case 3:
                            int i18 = i13 + 2;
                            try {
                                i10 = i13 + 3;
                            } catch (Exception e10) {
                                exc = e10;
                                i13 = i18;
                            }
                            try {
                                i13 += 4;
                                applier.move(mutableIntList.get(i15), mutableIntList.get(i18), mutableIntList.get(i10));
                                break;
                            } catch (Exception e11) {
                                exc = e11;
                                i13 = i10;
                                throw new ComposePausableCompositionException(mutableObjectList, mutableObjectList2, mutableIntList, i13, exc);
                            }
                        case 4:
                            applier.clear();
                            i13 = i15;
                            break;
                        case 5:
                            i13 += 2;
                            i11 = i14 + 1;
                            applier.insertBottomUp(mutableIntList.get(i15), mutableObjectList.get(i14));
                            i14 = i11;
                            break;
                        case 6:
                            i13 += 2;
                            try {
                                i11 = i14 + 1;
                                applier.insertTopDown(mutableIntList.get(i15), mutableObjectList.get(i14));
                                i14 = i11;
                                break;
                            } catch (Exception e12) {
                                exc = e12;
                                throw new ComposePausableCompositionException(mutableObjectList, mutableObjectList2, mutableIntList, i13, exc);
                            }
                        case 7:
                            int i19 = i14 + 1;
                            Object obj = mutableObjectList.get(i14);
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>");
                            i14 += 2;
                            applier.apply((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj, 2), mutableObjectList.get(i19));
                            i13 = i15;
                            break;
                        case 8:
                            Object current = applier.getCurrent();
                            if (current instanceof ComposeNodeLifecycleCallback) {
                                rememberEventDispatcher.dispatchOnDeactivateIfNecessary((ComposeNodeLifecycleCallback) current);
                            }
                            mutableObjectList2.add(current);
                            applier.reuse();
                            i13 = i15;
                            break;
                        default:
                            i13 = i15;
                            break;
                    }
                } catch (Throwable th2) {
                    applier.onEndChanges();
                    throw th2;
                }
            } catch (Exception e13) {
                exc = e13;
                i13 = i15;
            }
        }
        if (i14 == mutableObjectList.getSize()) {
            z10 = true;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Applier operation size mismatch");
        }
        mutableObjectList.clear();
        mutableIntList.clear();
        applier.onEndChanges();
    }

    @Override // androidx.compose.runtime.Applier
    public void remove(int i10, int i11) {
        this.operations.add(2);
        this.operations.add(i10);
        this.operations.add(i11);
    }

    @Override // androidx.compose.runtime.Applier
    public void reuse() {
        this.operations.add(8);
    }

    public void setCurrent(N n10) {
        this.current = n10;
    }

    @Override // androidx.compose.runtime.Applier
    public void up() {
        this.operations.add(0);
    }
}
