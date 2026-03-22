package androidx.compose.runtime;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.internal.StabilityInferred;
import com.ss.ttvideoengine.log.VideoEventOnePlay;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RecomposeScopeImpl.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nRecomposeScopeImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n+ 6 ObjectIntMap.kt\nandroidx/collection/MutableObjectIntMap\n*L\n1#1,442:1\n405#1:443\n409#1,8:444\n405#1:452\n409#1,8:453\n405#1:461\n409#1,8:462\n405#1:470\n409#1,8:471\n405#1:479\n409#1,8:480\n405#1:488\n409#1,8:489\n405#1:497\n409#1,8:498\n405#1:506\n409#1,8:507\n405#1:515\n409#1,8:516\n405#1:524\n409#1,8:525\n405#1:533\n409#1,8:534\n1#2:542\n256#3,2:543\n231#3,3:545\n200#3,7:548\n211#3,3:556\n214#3,9:560\n234#3:569\n258#3:570\n1399#4:555\n1270#4:559\n1399#4:581\n1270#4:585\n1399#4:607\n1270#4:611\n1399#4:630\n1270#4:634\n395#5,4:571\n367#5,6:575\n377#5,3:582\n380#5,9:586\n399#5:595\n423#5:596\n395#5,4:597\n367#5,6:601\n377#5,3:608\n380#5,9:612\n399#5:621\n424#5:622\n367#5,6:624\n377#5,3:631\n380#5,2:635\n383#5,6:641\n775#6:623\n777#6,4:637\n781#6:647\n*S KotlinDebug\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImpl\n*L\n114#1:443\n116#1:444,8\n124#1:452\n126#1:453,8\n134#1:461\n136#1:462,8\n141#1:470\n143#1:471,8\n148#1:479\n150#1:480,8\n160#1:488\n162#1:489,8\n170#1:497\n172#1:498,8\n181#1:506\n183#1:507,8\n248#1:515\n250#1:516,8\n259#1:524\n261#1:525,8\n266#1:533\n268#1:534,8\n339#1:543,2\n339#1:545,3\n339#1:548,7\n339#1:556,3\n339#1:560,9\n339#1:569\n339#1:570\n339#1:555\n339#1:559\n361#1:581\n361#1:585\n381#1:607\n381#1:611\n388#1:630\n388#1:634\n361#1:571,4\n361#1:575,6\n361#1:582,3\n361#1:586,9\n361#1:595\n381#1:596\n381#1:597,4\n381#1:601,6\n381#1:608,3\n381#1:612,9\n381#1:621\n381#1:622\n388#1:624,6\n388#1:631,3\n388#1:635,2\n388#1:641,6\n388#1:623\n388#1:637,4\n388#1:647\n*E\n"})
/* loaded from: classes.dex */
public final class RecomposeScopeImpl implements ScopeUpdateScope, RecomposeScope {
    @Nullable
    private Anchor anchor;
    @Nullable
    private Function2<? super Composer, ? super Integer, Unit> block;
    private int currentToken;
    private int flags;
    @Nullable
    private RecomposeScopeOwner owner;
    @Nullable
    private MutableScatterMap<DerivedState<?>, Object> trackedDependencies;
    @Nullable
    private MutableObjectIntMap<Object> trackedInstances;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    /* compiled from: RecomposeScopeImpl.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRecomposeScopeImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImpl$Companion\n+ 2 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,442:1\n34#2,5:443\n91#2:448\n34#2,5:449\n92#2:454\n*S KotlinDebug\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImpl$Companion\n*L\n425#1:443,5\n436#1:448\n436#1:449,5\n436#1:454\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void adoptAnchoredScopes$runtime(@NotNull SlotWriter slotWriter, @NotNull List<Anchor> list, @NotNull RecomposeScopeOwner recomposeScopeOwner) {
            RecomposeScopeImpl recomposeScopeImpl;
            List<Anchor> list2 = list;
            if (!list2.isEmpty()) {
                int size = list2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Object slot = slotWriter.slot(list.get(i10), 0);
                    if (slot instanceof RecomposeScopeImpl) {
                        recomposeScopeImpl = (RecomposeScopeImpl) slot;
                    } else {
                        recomposeScopeImpl = null;
                    }
                    if (recomposeScopeImpl != null) {
                        recomposeScopeImpl.adoptedBy(recomposeScopeOwner);
                    }
                }
            }
        }

        public final boolean hasAnchoredRecomposeScopes$runtime(@NotNull SlotTable slotTable, @NotNull List<Anchor> list) {
            List<Anchor> list2 = list;
            if (list2.isEmpty()) {
                return false;
            }
            int size = list2.size();
            for (int i10 = 0; i10 < size; i10++) {
                Anchor anchor = list.get(i10);
                if (slotTable.ownsAnchor(anchor) && (slotTable.slot$runtime(slotTable.anchorIndex(anchor), 0) instanceof RecomposeScopeImpl)) {
                    return true;
                }
            }
            return false;
        }

        private Companion() {
        }
    }

    public RecomposeScopeImpl(@Nullable RecomposeScopeOwner recomposeScopeOwner) {
        this.owner = recomposeScopeOwner;
    }

    private final boolean checkDerivedStateChanged(DerivedState<?> derivedState, MutableScatterMap<DerivedState<?>, Object> mutableScatterMap) {
        Intrinsics.checkNotNull(derivedState, "null cannot be cast to non-null type androidx.compose.runtime.DerivedState<kotlin.Any?>");
        SnapshotMutationPolicy<?> policy = derivedState.getPolicy();
        if (policy == null) {
            policy = SnapshotStateKt.structuralEqualityPolicy();
        }
        return !policy.equivalent(derivedState.getCurrentRecord().getCurrentValue(), mutableScatterMap.get(derivedState));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit end$lambda$9$lambda$8(RecomposeScopeImpl recomposeScopeImpl, int i10, MutableObjectIntMap mutableObjectIntMap, Composition composition) {
        int i11;
        boolean z10;
        if (recomposeScopeImpl.currentToken == i10 && Intrinsics.areEqual(mutableObjectIntMap, recomposeScopeImpl.trackedInstances) && (composition instanceof CompositionImpl)) {
            long[] jArr = mutableObjectIntMap.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i12 = 0;
                while (true) {
                    long j10 = jArr[i12];
                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i13 = 8;
                        int i14 = 8 - ((~(i12 - length)) >>> 31);
                        int i15 = 0;
                        while (i15 < i14) {
                            if ((255 & j10) < 128) {
                                int i16 = (i12 << 3) + i15;
                                Object obj = mutableObjectIntMap.keys[i16];
                                if (mutableObjectIntMap.values[i16] != i10) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                if (z10) {
                                    CompositionImpl compositionImpl = (CompositionImpl) composition;
                                    compositionImpl.removeObservation$runtime(obj, recomposeScopeImpl);
                                    if (obj instanceof DerivedState) {
                                        compositionImpl.removeDerivedStateObservation$runtime((DerivedState) obj);
                                        MutableScatterMap<DerivedState<?>, Object> mutableScatterMap = recomposeScopeImpl.trackedDependencies;
                                        if (mutableScatterMap != 0) {
                                            mutableScatterMap.remove(obj);
                                        }
                                    }
                                }
                                if (z10) {
                                    mutableObjectIntMap.removeValueAt(i16);
                                }
                                i11 = 8;
                            } else {
                                i11 = i13;
                            }
                            j10 >>= i11;
                            i15++;
                            i13 = i11;
                        }
                        if (i14 != i13) {
                            break;
                        }
                    }
                    if (i12 == length) {
                        break;
                    }
                    i12++;
                }
            }
        }
        return Unit.f60915a;
    }

    private final boolean getFlag(int i10) {
        if ((i10 & this.flags) != 0) {
            return true;
        }
        return false;
    }

    private final boolean getRereading() {
        if ((this.flags & 32) != 0) {
            return true;
        }
        return false;
    }

    private final void setFlag(int i10, boolean z10) {
        int i11;
        int i12 = this.flags;
        if (z10) {
            i11 = i10 | i12;
        } else {
            i11 = (~i10) & i12;
        }
        this.flags = i11;
    }

    private final void setRereading(boolean z10) {
        int i10;
        int i11 = this.flags;
        if (z10) {
            i10 = i11 | 32;
        } else {
            i10 = i11 & (-33);
        }
        this.flags = i10;
    }

    private final void setSkipped(boolean z10) {
        int i10;
        int i11 = this.flags;
        if (z10) {
            i10 = i11 | 16;
        } else {
            i10 = i11 & (-17);
        }
        this.flags = i10;
    }

    public final void adoptedBy(@NotNull RecomposeScopeOwner recomposeScopeOwner) {
        this.owner = recomposeScopeOwner;
    }

    public final void compose(@NotNull Composer composer) {
        Function2<? super Composer, ? super Integer, Unit> function2 = this.block;
        if (function2 != null) {
            function2.invoke(composer, 1);
            return;
        }
        throw new IllegalStateException("Invalid restart scope");
    }

    @Nullable
    public final Function1<Composition, Unit> end(final int i10) {
        final MutableObjectIntMap<Object> mutableObjectIntMap = this.trackedInstances;
        if (mutableObjectIntMap == null || getSkipped$runtime()) {
            return null;
        }
        Object[] objArr = mutableObjectIntMap.keys;
        int[] iArr = mutableObjectIntMap.values;
        long[] jArr = mutableObjectIntMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return null;
        }
        int i11 = 0;
        while (true) {
            long j10 = jArr[i11];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8 - ((~(i11 - length)) >>> 31);
                for (int i13 = 0; i13 < i12; i13++) {
                    if ((255 & j10) < 128) {
                        int i14 = (i11 << 3) + i13;
                        Object obj = objArr[i14];
                        if (iArr[i14] != i10) {
                            return new Function1() { // from class: androidx.compose.runtime.s
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    Unit end$lambda$9$lambda$8;
                                    end$lambda$9$lambda$8 = RecomposeScopeImpl.end$lambda$9$lambda$8(RecomposeScopeImpl.this, i10, mutableObjectIntMap, (Composition) obj2);
                                    return end$lambda$9$lambda$8;
                                }
                            };
                        }
                    }
                    j10 >>= 8;
                }
                if (i12 != 8) {
                    return null;
                }
            }
            if (i11 == length) {
                return null;
            }
            i11++;
        }
    }

    @Nullable
    public final Anchor getAnchor() {
        return this.anchor;
    }

    public final boolean getCanRecompose() {
        if (this.block != null) {
            return true;
        }
        return false;
    }

    public final boolean getDefaultsInScope() {
        if ((this.flags & 2) != 0) {
            return true;
        }
        return false;
    }

    public final boolean getDefaultsInvalid() {
        if ((this.flags & 4) != 0) {
            return true;
        }
        return false;
    }

    public final boolean getForcedRecompose() {
        if ((this.flags & 64) != 0) {
            return true;
        }
        return false;
    }

    @Nullable
    public final RecomposeScopeOwner getOwner$runtime() {
        return this.owner;
    }

    public final boolean getPaused() {
        if ((this.flags & 256) != 0) {
            return true;
        }
        return false;
    }

    public final boolean getRequiresRecompose() {
        if ((this.flags & 8) != 0) {
            return true;
        }
        return false;
    }

    public final boolean getResetReusing() {
        if ((this.flags & 1024) != 0) {
            return true;
        }
        return false;
    }

    public final boolean getResuming() {
        if ((this.flags & 512) != 0) {
            return true;
        }
        return false;
    }

    public final boolean getReusing() {
        if ((this.flags & 128) != 0) {
            return true;
        }
        return false;
    }

    public final boolean getSkipped$runtime() {
        if ((this.flags & 16) != 0) {
            return true;
        }
        return false;
    }

    public final boolean getUsed() {
        if ((this.flags & 1) != 0) {
            return true;
        }
        return false;
    }

    public final boolean getValid() {
        boolean z10;
        if (this.owner == null) {
            return false;
        }
        Anchor anchor = this.anchor;
        if (anchor != null) {
            z10 = anchor.getValid();
        } else {
            z10 = false;
        }
        if (!z10) {
            return false;
        }
        return true;
    }

    @Override // androidx.compose.runtime.RecomposeScope
    public void invalidate() {
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        if (recomposeScopeOwner != null) {
            recomposeScopeOwner.invalidate(this, null);
        }
    }

    @NotNull
    public final InvalidationResult invalidateForResult(@Nullable Object obj) {
        InvalidationResult invalidate;
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        if (recomposeScopeOwner == null || (invalidate = recomposeScopeOwner.invalidate(this, obj)) == null) {
            return InvalidationResult.IGNORED;
        }
        return invalidate;
    }

    public final boolean isConditional() {
        if (this.trackedDependencies != null) {
            return true;
        }
        return false;
    }

    public final boolean isInvalidFor(@Nullable Object obj) {
        MutableScatterMap<DerivedState<?>, Object> mutableScatterMap;
        if (obj == null || (mutableScatterMap = this.trackedDependencies) == null) {
            return true;
        }
        if (obj instanceof DerivedState) {
            return checkDerivedStateChanged((DerivedState) obj, mutableScatterMap);
        }
        if (!(obj instanceof ScatterSet)) {
            return true;
        }
        ScatterSet scatterSet = (ScatterSet) obj;
        if (scatterSet.isNotEmpty()) {
            Object[] objArr = scatterSet.elements;
            long[] jArr = scatterSet.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i10 = 0;
                while (true) {
                    long j10 = jArr[i10];
                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i11 = 8 - ((~(i10 - length)) >>> 31);
                        for (int i12 = 0; i12 < i11; i12++) {
                            if ((255 & j10) < 128) {
                                Object obj2 = objArr[(i10 << 3) + i12];
                                if (!(obj2 instanceof DerivedState) || checkDerivedStateChanged((DerivedState) obj2, mutableScatterMap)) {
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
        }
        return false;
    }

    public final void recordDerivedStateValue(@NotNull DerivedState<?> derivedState, @Nullable Object obj) {
        MutableScatterMap<DerivedState<?>, Object> mutableScatterMap = this.trackedDependencies;
        if (mutableScatterMap == null) {
            mutableScatterMap = new MutableScatterMap<>(0, 1, null);
            this.trackedDependencies = mutableScatterMap;
        }
        mutableScatterMap.set(derivedState, obj);
    }

    public final boolean recordRead(@NotNull Object obj) {
        if (getRereading()) {
            return false;
        }
        MutableObjectIntMap<Object> mutableObjectIntMap = this.trackedInstances;
        if (mutableObjectIntMap == null) {
            mutableObjectIntMap = new MutableObjectIntMap<>(0, 1, null);
            this.trackedInstances = mutableObjectIntMap;
        }
        if (mutableObjectIntMap.put(obj, this.currentToken, -1) != this.currentToken) {
            return false;
        }
        return true;
    }

    public final void release() {
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        if (recomposeScopeOwner != null) {
            recomposeScopeOwner.recomposeScopeReleased(this);
        }
        this.owner = null;
        this.trackedInstances = null;
        this.trackedDependencies = null;
        this.block = null;
    }

    public final void rereadTrackedInstances() {
        MutableObjectIntMap<Object> mutableObjectIntMap;
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        if (recomposeScopeOwner != null && (mutableObjectIntMap = this.trackedInstances) != null) {
            setRereading(true);
            try {
                Object[] objArr = mutableObjectIntMap.keys;
                int[] iArr = mutableObjectIntMap.values;
                long[] jArr = mutableObjectIntMap.metadata;
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
                                    int i14 = iArr[i13];
                                    recomposeScopeOwner.recordReadOf(obj);
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
            } finally {
                setRereading(false);
            }
        }
    }

    public final void scopeSkipped() {
        if (!getReusing()) {
            setSkipped(true);
        }
    }

    public final void setAnchor(@Nullable Anchor anchor) {
        this.anchor = anchor;
    }

    public final void setDefaultsInScope(boolean z10) {
        int i10;
        int i11 = this.flags;
        if (z10) {
            i10 = i11 | 2;
        } else {
            i10 = i11 & (-3);
        }
        this.flags = i10;
    }

    public final void setDefaultsInvalid(boolean z10) {
        int i10;
        int i11 = this.flags;
        if (z10) {
            i10 = i11 | 4;
        } else {
            i10 = i11 & (-5);
        }
        this.flags = i10;
    }

    public final void setForcedRecompose(boolean z10) {
        int i10;
        int i11 = this.flags;
        if (z10) {
            i10 = i11 | 64;
        } else {
            i10 = i11 & (-65);
        }
        this.flags = i10;
    }

    public final void setOwner$runtime(@Nullable RecomposeScopeOwner recomposeScopeOwner) {
        this.owner = recomposeScopeOwner;
    }

    public final void setPaused(boolean z10) {
        int i10;
        int i11 = this.flags;
        if (z10) {
            i10 = i11 | 256;
        } else {
            i10 = i11 & (-257);
        }
        this.flags = i10;
    }

    public final void setRequiresRecompose(boolean z10) {
        int i10;
        int i11 = this.flags;
        if (z10) {
            i10 = i11 | 8;
        } else {
            i10 = i11 & (-9);
        }
        this.flags = i10;
    }

    public final void setResetReusing(boolean z10) {
        int i10;
        int i11 = this.flags;
        if (z10) {
            i10 = i11 | 1024;
        } else {
            i10 = i11 & VideoEventOnePlay.EXIT_CODE_BEFORE_SURFACE_NOT_SET;
        }
        this.flags = i10;
    }

    public final void setResuming(boolean z10) {
        int i10;
        int i11 = this.flags;
        if (z10) {
            i10 = i11 | 512;
        } else {
            i10 = i11 & (-513);
        }
        this.flags = i10;
    }

    public final void setReusing(boolean z10) {
        int i10;
        int i11 = this.flags;
        if (z10) {
            i10 = i11 | 128;
        } else {
            i10 = i11 & (-129);
        }
        this.flags = i10;
    }

    public final void setUsed(boolean z10) {
        int i10;
        int i11 = this.flags;
        if (z10) {
            i10 = i11 | 1;
        } else {
            i10 = i11 & (-2);
        }
        this.flags = i10;
    }

    public final void start(int i10) {
        this.currentToken = i10;
        setSkipped(false);
    }

    @Override // androidx.compose.runtime.ScopeUpdateScope
    public void updateScope(@NotNull Function2<? super Composer, ? super Integer, Unit> function2) {
        this.block = function2;
    }
}
