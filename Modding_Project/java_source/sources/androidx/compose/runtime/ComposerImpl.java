package androidx.compose.runtime;

import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.changelist.ChangeList;
import androidx.compose.runtime.changelist.ComposerChangeListWriter;
import androidx.compose.runtime.changelist.FixupList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.PersistentCompositionLocalMapKt;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.internal.Trace;
import androidx.compose.runtime.snapshots.ListUtilsKt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.tooling.ComposeStackTraceBuilderKt;
import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionErrorContext;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.compose.runtime.tooling.CompositionErrorContextKt;
import androidx.compose.runtime.tooling.CompositionObserver;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.runtime.tooling.ObjectLocation;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
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
/* compiled from: Composer.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 4 CompositeKeyHashCode.jvm.kt\nandroidx/compose/runtime/CompositeKeyHashCode_jvmKt\n+ 5 BitwiseOperators.kt\nandroidx/compose/runtime/BitwiseOperatorsKt\n+ 6 Trace.kt\nandroidx/compose/runtime/internal/TraceKt\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 8 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 9 CompositionLocalMap.kt\nandroidx/compose/runtime/CompositionLocalMapKt\n+ 10 Composer.kt\nandroidx/compose/runtime/GroupKind\n+ 11 IntIntMap.kt\nandroidx/collection/IntIntMap\n+ 12 ComposerChangeListWriter.kt\nandroidx/compose/runtime/changelist/ComposerChangeListWriter\n+ 13 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 14 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 15 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 16 DerivedState.kt\nandroidx/compose/runtime/SnapshotStateKt__DerivedStateKt\n+ 17 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 18 Stack.kt\nandroidx/compose/runtime/IntStack\n+ 19 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,5012:1\n4286#1,11:5021\n4297#1:5034\n4289#1,9:5035\n4286#1,11:5068\n4297#1:5081\n4289#1,9:5082\n4305#1,11:5093\n4316#1:5106\n4308#1,9:5107\n4305#1,11:5116\n4316#1:5129\n4308#1,9:5130\n4286#1,11:5149\n4297#1:5162\n4289#1,9:5163\n4305#1,11:5172\n4316#1:5185\n4308#1,9:5186\n3631#1,8:5221\n3640#1,3:5244\n4295#1,2:5353\n4297#1:5357\n4295#1,2:5358\n4297#1:5362\n4295#1,2:5363\n4297#1:5367\n4295#1,2:5368\n4297#1:5372\n4314#1,2:5375\n4316#1:5379\n4314#1,2:5380\n4316#1:5384\n4314#1,2:5385\n4316#1:5389\n4314#1,2:5390\n4316#1:5394\n3631#1,8:5404\n3640#1,3:5420\n1#2:5013\n159#3,7:5014\n159#3,7:5211\n159#3,3:5218\n163#3,3:5247\n159#3,7:5259\n159#3,7:5266\n159#3,3:5335\n163#3,3:5346\n33#4:5032\n30#4:5044\n33#4:5079\n36#4:5104\n36#4:5127\n30#4:5140\n44#4:5141\n39#4:5143\n39#4:5145\n39#4:5147\n33#4:5160\n36#4:5183\n30#4:5203\n33#4:5355\n33#4:5360\n33#4:5365\n33#4:5370\n33#4:5373\n36#4:5377\n36#4:5382\n36#4:5387\n36#4:5392\n36#4:5395\n35#5:5033\n35#5:5080\n27#5:5105\n27#5:5128\n35#5:5142\n35#5:5144\n35#5:5146\n35#5:5148\n35#5:5161\n27#5:5184\n35#5:5356\n35#5:5361\n35#5:5366\n35#5:5371\n35#5:5374\n27#5:5378\n27#5:5383\n27#5:5388\n27#5:5393\n27#5:5396\n45#6,5:5045\n45#6,3:5314\n49#6:5326\n4788#7,4:5050\n4788#7,4:5054\n4809#7:5063\n4788#7,4:5064\n4788#7,4:5195\n4788#7,4:5199\n4788#7,4:5273\n4788#7,4:5277\n4788#7,4:5281\n4788#7,4:5310\n4788#7,4:5327\n4788#7,4:5331\n4788#7,4:5349\n4636#7,9:5426\n34#8,4:5058\n80#9:5062\n4718#10:5091\n4721#10:5092\n430#11:5139\n173#12,4:5204\n173#12,4:5229\n183#12,8:5233\n178#12,3:5241\n178#12,3:5251\n173#12,8:5338\n173#12,4:5400\n183#12,8:5412\n178#12,3:5423\n34#13,3:5208\n38#13:5250\n34#13,5:5254\n357#14,4:5285\n329#14,6:5289\n339#14,3:5296\n342#14,9:5300\n361#14:5309\n1399#15:5295\n1270#15:5299\n390#16,6:5317\n396#16,2:5324\n44#17:5323\n53#18:5397\n53#18:5398\n53#18:5399\n1863#19,2:5435\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl\n*L\n1551#1:5021,11\n1551#1:5034\n1551#1:5035,9\n2529#1:5068,11\n2529#1:5081\n2529#1:5082,9\n2672#1:5093,11\n2672#1:5106\n2672#1:5107,9\n2680#1:5116,11\n2680#1:5129\n2680#1:5130,9\n3229#1:5149,11\n3229#1:5162\n3229#1:5163,9\n3233#1:5172,11\n3233#1:5185\n3233#1:5186,9\n3593#1:5221,8\n3593#1:5244,3\n4288#1:5353,2\n4288#1:5357\n4289#1:5358,2\n4289#1:5362\n4290#1:5363,2\n4290#1:5367\n4291#1:5368,2\n4291#1:5372\n4307#1:5375,2\n4307#1:5379\n4308#1:5380,2\n4308#1:5384\n4309#1:5385,2\n4309#1:5389\n4310#1:5390,2\n4310#1:5394\n3542#1:5404,8\n3542#1:5420,3\n1486#1:5014,7\n3536#1:5211,7\n3592#1:5218,3\n3592#1:5247,3\n3720#1:5259,7\n3728#1:5266,7\n4080#1:5335,3\n4080#1:5346,3\n1551#1:5032\n1745#1:5044\n2529#1:5079\n2672#1:5104\n2680#1:5127\n3146#1:5140\n3151#1:5141\n3157#1:5143\n3164#1:5145\n3165#1:5147\n3229#1:5160\n3233#1:5183\n3442#1:5203\n4288#1:5355\n4289#1:5360\n4290#1:5365\n4291#1:5370\n4296#1:5373\n4307#1:5377\n4308#1:5382\n4309#1:5387\n4310#1:5392\n4315#1:5395\n1551#1:5033\n2529#1:5080\n2672#1:5105\n2680#1:5128\n3151#1:5142\n3157#1:5144\n3164#1:5146\n3165#1:5148\n3229#1:5161\n3233#1:5184\n4288#1:5356\n4289#1:5361\n4290#1:5366\n4291#1:5371\n4296#1:5374\n4307#1:5378\n4308#1:5383\n4309#1:5388\n4310#1:5393\n4315#1:5396\n1810#1:5045,5\n3821#1:5314,3\n3821#1:5326\n1881#1:5050,4\n1892#1:5054,4\n2501#1:5063\n2501#1:5064,4\n3277#1:5195,4\n3296#1:5199,4\n3744#1:5273,4\n3754#1:5277,4\n3771#1:5281,4\n3819#1:5310,4\n3881#1:5327,4\n3888#1:5331,4\n4092#1:5349,4\n3929#1:5426,9\n1937#1:5058,4\n2322#1:5062\n2535#1:5091\n2560#1:5092\n3051#1:5139\n3513#1:5204,4\n3598#1:5229,4\n3599#1:5233,8\n3598#1:5241,3\n3513#1:5251,3\n4082#1:5338,8\n3541#1:5400,4\n3543#1:5412,8\n3541#1:5423,3\n3515#1:5208,3\n3515#1:5250\n3658#1:5254,5\n3803#1:5285,4\n3803#1:5289,6\n3803#1:5296,3\n3803#1:5300,9\n3803#1:5309\n3803#1:5295\n3803#1:5299\n3840#1:5317,6\n3840#1:5324,2\n3840#1:5323\n4320#1:5397\n4322#1:5398\n4324#1:5399\n4011#1:5435,2\n*E\n"})
/* loaded from: classes.dex */
public final class ComposerImpl implements Composer {
    public static final int $stable = 8;
    @Nullable
    private CompositionData _compositionData;
    @NotNull
    private final Set<RememberObserver> abandonSet;
    @NotNull
    private final Applier<?> applier;
    @NotNull
    private final CoroutineContext applyCoroutineContext;
    @NotNull
    private final ComposerChangeListWriter changeListWriter;
    @NotNull
    private ChangeList changes;
    private int childrenComposing;
    private long compositeKeyHashCode;
    @NotNull
    private final CompositionImpl composition;
    private int compositionToken;
    @Nullable
    private ChangeList deferredChanges;
    @NotNull
    private final ComposerImpl$derivedStateObserver$1 derivedStateObserver;
    @Nullable
    private final CompositionErrorContextImpl errorContext;
    private boolean forceRecomposeScopes;
    private boolean forciblyRecompose;
    private int groupNodeCount;
    @NotNull
    private Anchor insertAnchor;
    @NotNull
    private FixupList insertFixups;
    @NotNull
    private SlotTable insertTable;
    private boolean inserting;
    @NotNull
    private final ArrayList invalidateStack;
    private boolean isComposing;
    private boolean isDisposed;
    @NotNull
    private ChangeList lateChanges;
    @Nullable
    private int[] nodeCountOverrides;
    @Nullable
    private MutableIntIntMap nodeCountVirtualOverrides;
    private boolean nodeExpected;
    private int nodeIndex;
    @NotNull
    private final CompositionObserverHolder observerHolder;
    @NotNull
    private final CompositionContext parentContext;
    private boolean pausable;
    @Nullable
    private Pending pending;
    @Nullable
    private PersistentCompositionLocalMap providerCache;
    @Nullable
    private MutableIntObjectMap<PersistentCompositionLocalMap> providerUpdates;
    private boolean providersInvalid;
    private int rGroupIndex;
    @NotNull
    private SlotReader reader;
    private boolean reusing;
    @Nullable
    private ShouldPauseCallback shouldPauseCallback;
    @NotNull
    private final SlotTable slotTable;
    private boolean sourceMarkersEnabled;
    @NotNull
    private SlotWriter writer;
    private boolean writerHasAProvider;
    @NotNull
    private final ArrayList pendingStack = Stack.m1361constructorimpl$default(null, 1, null);
    @NotNull
    private final IntStack parentStateStack = new IntStack();
    @NotNull
    private final List<Invalidation> invalidations = new ArrayList();
    @NotNull
    private final IntStack entersStack = new IntStack();
    @NotNull
    private PersistentCompositionLocalMap rootProvider = PersistentCompositionLocalMapKt.persistentCompositionLocalHashMapOf();
    @NotNull
    private final IntStack providersInvalidStack = new IntStack();
    private int reusingGroup = -1;

    /* JADX WARN: Type inference failed for: r5v11, types: [androidx.compose.runtime.ComposerImpl$derivedStateObserver$1] */
    public ComposerImpl(@NotNull Applier<?> applier, @NotNull CompositionContext compositionContext, @NotNull SlotTable slotTable, @NotNull Set<RememberObserver> set, @NotNull ChangeList changeList, @NotNull ChangeList changeList2, @NotNull CompositionObserverHolder compositionObserverHolder, @NotNull CompositionImpl compositionImpl) {
        boolean z10;
        this.applier = applier;
        this.parentContext = compositionContext;
        this.slotTable = slotTable;
        this.abandonSet = set;
        this.changes = changeList;
        this.lateChanges = changeList2;
        this.observerHolder = compositionObserverHolder;
        this.composition = compositionImpl;
        if (!compositionContext.getCollectingSourceInformation$runtime() && !compositionContext.getCollectingCallByInformation$runtime()) {
            z10 = false;
        } else {
            z10 = true;
        }
        this.sourceMarkersEnabled = z10;
        this.derivedStateObserver = new DerivedStateObserver() { // from class: androidx.compose.runtime.ComposerImpl$derivedStateObserver$1
            @Override // androidx.compose.runtime.DerivedStateObserver
            public void done(DerivedState<?> derivedState) {
                ComposerImpl.this.childrenComposing--;
            }

            @Override // androidx.compose.runtime.DerivedStateObserver
            public void start(DerivedState<?> derivedState) {
                ComposerImpl.this.childrenComposing++;
            }
        };
        this.invalidateStack = Stack.m1361constructorimpl$default(null, 1, null);
        SlotReader openReader = slotTable.openReader();
        openReader.close();
        this.reader = openReader;
        SlotTable slotTable2 = new SlotTable();
        if (compositionContext.getCollectingSourceInformation$runtime()) {
            slotTable2.collectSourceInformation();
        }
        if (compositionContext.getCollectingCallByInformation$runtime()) {
            slotTable2.collectCalledByInformation();
        }
        this.insertTable = slotTable2;
        SlotWriter openWriter = slotTable2.openWriter();
        openWriter.close(true);
        this.writer = openWriter;
        this.changeListWriter = new ComposerChangeListWriter(this, this.changes);
        SlotReader openReader2 = this.insertTable.openReader();
        try {
            Anchor anchor = openReader2.anchor(0);
            openReader2.close();
            this.insertAnchor = anchor;
            this.insertFixups = new FixupList();
            this.errorContext = new CompositionErrorContextImpl(this);
            CoroutineContext effectCoroutineContext = compositionContext.getEffectCoroutineContext();
            CoroutineContext errorContext$runtime = getErrorContext$runtime();
            this.applyCoroutineContext = effectCoroutineContext.plus(errorContext$runtime == null ? EmptyCoroutineContext.f61040a : errorContext$runtime);
        } catch (Throwable th2) {
            openReader2.close();
            throw th2;
        }
    }

    private final void abortRoot() {
        cleanUpCompose();
        Stack.m1359clearimpl(this.pendingStack);
        this.parentStateStack.clear();
        this.entersStack.clear();
        this.providersInvalidStack.clear();
        this.providerUpdates = null;
        this.insertFixups.clear();
        this.compositeKeyHashCode = 0;
        this.childrenComposing = 0;
        this.nodeExpected = false;
        this.inserting = false;
        this.reusing = false;
        this.isComposing = false;
        this.forciblyRecompose = false;
        this.reusingGroup = -1;
        if (!this.reader.getClosed()) {
            this.reader.close();
        }
        if (!this.writer.getClosed()) {
            forceFreshInsertTable();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void addRecomposeScope() {
        /*
            r4 = this;
            boolean r0 = r4.getInserting()
            java.lang.String r1 = "null cannot be cast to non-null type androidx.compose.runtime.CompositionImpl"
            if (r0 == 0) goto L21
            androidx.compose.runtime.RecomposeScopeImpl r0 = new androidx.compose.runtime.RecomposeScopeImpl
            androidx.compose.runtime.CompositionImpl r2 = r4.getComposition()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2, r1)
            r0.<init>(r2)
            java.util.ArrayList r1 = r4.invalidateStack
            androidx.compose.runtime.Stack.m1371pushimpl(r1, r0)
            r4.updateValue(r0)
            r4.enterRecomposeScope(r0)
            goto L94
        L21:
            java.util.List<androidx.compose.runtime.Invalidation> r0 = r4.invalidations
            androidx.compose.runtime.SlotReader r2 = r4.reader
            int r2 = r2.getParent()
            androidx.compose.runtime.Invalidation r0 = androidx.compose.runtime.ComposerKt.access$removeLocation(r0, r2)
            androidx.compose.runtime.SlotReader r2 = r4.reader
            java.lang.Object r2 = r2.next()
            androidx.compose.runtime.Composer$Companion r3 = androidx.compose.runtime.Composer.Companion
            java.lang.Object r3 = r3.getEmpty()
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r3 == 0) goto L4f
            androidx.compose.runtime.RecomposeScopeImpl r2 = new androidx.compose.runtime.RecomposeScopeImpl
            androidx.compose.runtime.CompositionImpl r3 = r4.getComposition()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3, r1)
            r2.<init>(r3)
            r4.updateValue(r2)
            goto L56
        L4f:
            java.lang.String r1 = "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2, r1)
            androidx.compose.runtime.RecomposeScopeImpl r2 = (androidx.compose.runtime.RecomposeScopeImpl) r2
        L56:
            r1 = 0
            r3 = 1
            if (r0 != 0) goto L68
            boolean r0 = r2.getForcedRecompose()
            if (r0 == 0) goto L63
            r2.setForcedRecompose(r1)
        L63:
            if (r0 == 0) goto L66
            goto L68
        L66:
            r0 = r1
            goto L69
        L68:
            r0 = r3
        L69:
            r2.setRequiresRecompose(r0)
            java.util.ArrayList r0 = r4.invalidateStack
            androidx.compose.runtime.Stack.m1371pushimpl(r0, r2)
            r4.enterRecomposeScope(r2)
            boolean r0 = r2.getPaused()
            if (r0 == 0) goto L94
            r2.setPaused(r1)
            r2.setResuming(r3)
            androidx.compose.runtime.changelist.ComposerChangeListWriter r0 = r4.changeListWriter
            r0.startResumingScope(r2)
            boolean r0 = r4.reusing
            if (r0 != 0) goto L94
            boolean r0 = r2.getReusing()
            if (r0 == 0) goto L94
            r4.reusing = r3
            r2.setResetReusing(r3)
        L94:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ComposerImpl.addRecomposeScope():void");
    }

    private final void cleanUpCompose() {
        this.pending = null;
        this.nodeIndex = 0;
        this.groupNodeCount = 0;
        this.compositeKeyHashCode = 0L;
        this.nodeExpected = false;
        this.changeListWriter.resetTransientState();
        Stack.m1359clearimpl(this.invalidateStack);
        clearUpdatedNodeCounts();
    }

    private final void clearUpdatedNodeCounts() {
        this.nodeCountOverrides = null;
        this.nodeCountVirtualOverrides = null;
    }

    private final long compositeKeyOf(int i10, int i11, long j10) {
        long rotateLeft;
        int rGroupIndexOf;
        long j11 = 0;
        int i12 = 3;
        int i13 = 0;
        while (i10 >= 0) {
            if (i10 == i11) {
                rotateLeft = Long.rotateLeft(j10, i13);
            } else {
                int groupCompositeKeyPart = groupCompositeKeyPart(this.reader, i10);
                if (groupCompositeKeyPart == 126665345) {
                    rotateLeft = Long.rotateLeft(groupCompositeKeyPart, i13);
                } else {
                    if (this.reader.hasObjectKey(i10)) {
                        rGroupIndexOf = 0;
                    } else {
                        rGroupIndexOf = rGroupIndexOf(i10);
                    }
                    j11 = (j11 ^ Long.rotateLeft(groupCompositeKeyPart, i12)) ^ Long.rotateLeft(rGroupIndexOf, i13);
                    i12 = (i12 + 6) % 64;
                    i13 = (i13 + 6) % 64;
                    i10 = this.reader.parent(i10);
                }
            }
            return rotateLeft ^ j11;
        }
        return j11;
    }

    private final void createFreshInsertTable() {
        if (!this.writer.getClosed()) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        forceFreshInsertTable();
    }

    private final PersistentCompositionLocalMap currentCompositionLocalScope() {
        PersistentCompositionLocalMap persistentCompositionLocalMap = this.providerCache;
        return persistentCompositionLocalMap != null ? persistentCompositionLocalMap : currentCompositionLocalScope(this.reader.getParent());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<ComposeStackTraceFrame> currentStackTrace() {
        if (!this.sourceMarkersEnabled) {
            return CollectionsKt.n();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(ComposeStackTraceBuilderKt.buildTrace$default(this.writer, null, 0, null, 7, null));
        arrayList.addAll(ComposeStackTraceBuilderKt.buildTrace(this.reader));
        arrayList.addAll(parentStackTrace());
        return arrayList;
    }

    /* renamed from: doCompose-aFTiNEg  reason: not valid java name */
    private final void m1315doComposeaFTiNEg(MutableScatterMap<Object, Object> mutableScatterMap, Function2<? super Composer, ? super Integer, Unit> function2) {
        if (this.isComposing) {
            ComposerKt.composeImmediateRuntimeError("Reentrant composition is not supported");
        }
        CompositionObserver current = this.observerHolder.current();
        Trace trace = Trace.INSTANCE;
        Object beginSection = trace.beginSection("Compose:recompose");
        try {
            this.compositionToken = Long.hashCode(SnapshotKt.currentSnapshot().getSnapshotId());
            this.providerUpdates = null;
            m1319updateComposerInvalidationsRY85e9Y(mutableScatterMap);
            this.nodeIndex = 0;
            this.isComposing = true;
            if (current != null) {
                current.onBeginComposition(getComposition());
            }
            startRoot();
            Object nextSlot = nextSlot();
            if (nextSlot != function2 && function2 != null) {
                Function2<? super Composer, ? super Integer, Unit> function22 = function2;
                updateValue(function2);
            }
            ComposerImpl$derivedStateObserver$1 composerImpl$derivedStateObserver$1 = this.derivedStateObserver;
            MutableVector<DerivedStateObserver> derivedStateObservers = SnapshotStateKt.derivedStateObservers();
            derivedStateObservers.add(composerImpl$derivedStateObserver$1);
            if (function2 != null) {
                startGroup(200, ComposerKt.getInvocation());
                Expect_jvmKt.invokeComposable(this, function2);
                endGroup();
            } else if ((this.forciblyRecompose || this.providersInvalid) && nextSlot != null && !Intrinsics.areEqual(nextSlot, Composer.Companion.getEmpty())) {
                startGroup(200, ComposerKt.getInvocation());
                Expect_jvmKt.invokeComposable(this, (Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(nextSlot, 2));
                endGroup();
            } else {
                skipCurrentGroup();
            }
            derivedStateObservers.removeAt(derivedStateObservers.getSize() - 1);
            endRoot();
            if (current != null) {
                current.onEndComposition(getComposition());
            }
            this.isComposing = false;
            this.invalidations.clear();
            createFreshInsertTable();
            Unit unit = Unit.f60915a;
            trace.endSection(beginSection);
        } catch (Throwable th2) {
            Trace.INSTANCE.endSection(beginSection);
            throw th2;
        }
    }

    private final void doRecordDownsFor(int i10, int i11) {
        if (i10 > 0 && i10 != i11) {
            doRecordDownsFor(this.reader.parent(i10), i11);
            if (this.reader.isNode(i10)) {
                this.changeListWriter.moveDown(nodeAt(this.reader, i10));
            }
        }
    }

    private final void end(boolean z10) {
        int hashCode;
        long rotateRight;
        long j10;
        int remainingSlots;
        Set set;
        List<KeyInfo> list;
        int hashCode2;
        long rotateRight2;
        long j11;
        int peek2 = this.parentStateStack.peek2() - 1;
        if (getInserting()) {
            int parent = this.writer.getParent();
            int groupKey = this.writer.groupKey(parent);
            Object groupObjectKey = this.writer.groupObjectKey(parent);
            Object groupAux = this.writer.groupAux(parent);
            if (groupObjectKey == null) {
                if (groupAux != null && groupKey == 207 && !Intrinsics.areEqual(groupAux, Composer.Companion.getEmpty())) {
                    this.compositeKeyHashCode = Long.rotateRight(groupAux.hashCode() ^ Long.rotateRight(getCompositeKeyHashCode() ^ peek2, 3), 3);
                } else {
                    rotateRight2 = Long.rotateRight(getCompositeKeyHashCode() ^ peek2, 3);
                    j11 = groupKey;
                }
            } else {
                if (groupObjectKey instanceof Enum) {
                    hashCode2 = ((Enum) groupObjectKey).ordinal();
                } else {
                    hashCode2 = groupObjectKey.hashCode();
                }
                rotateRight2 = Long.rotateRight(getCompositeKeyHashCode() ^ 0, 3);
                j11 = hashCode2;
            }
            this.compositeKeyHashCode = Long.rotateRight(rotateRight2 ^ j11, 3);
        } else {
            int parent2 = this.reader.getParent();
            int groupKey2 = this.reader.groupKey(parent2);
            Object groupObjectKey2 = this.reader.groupObjectKey(parent2);
            Object groupAux2 = this.reader.groupAux(parent2);
            if (groupObjectKey2 == null) {
                if (groupAux2 != null && groupKey2 == 207 && !Intrinsics.areEqual(groupAux2, Composer.Companion.getEmpty())) {
                    this.compositeKeyHashCode = Long.rotateRight(groupAux2.hashCode() ^ Long.rotateRight(getCompositeKeyHashCode() ^ peek2, 3), 3);
                } else {
                    rotateRight = Long.rotateRight(getCompositeKeyHashCode() ^ peek2, 3);
                    j10 = groupKey2;
                }
            } else {
                if (groupObjectKey2 instanceof Enum) {
                    hashCode = ((Enum) groupObjectKey2).ordinal();
                } else {
                    hashCode = groupObjectKey2.hashCode();
                }
                rotateRight = Long.rotateRight(getCompositeKeyHashCode() ^ 0, 3);
                j10 = hashCode;
            }
            this.compositeKeyHashCode = Long.rotateRight(rotateRight ^ j10, 3);
        }
        int i10 = this.groupNodeCount;
        Pending pending = this.pending;
        if (pending != null && pending.getKeyInfos().size() > 0) {
            List<KeyInfo> keyInfos = pending.getKeyInfos();
            List<KeyInfo> used = pending.getUsed();
            Set fastToSet = ListUtilsKt.fastToSet(used);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int size = used.size();
            int size2 = keyInfos.size();
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            while (i11 < size2) {
                KeyInfo keyInfo = keyInfos.get(i11);
                if (!fastToSet.contains(keyInfo)) {
                    this.changeListWriter.removeNode(pending.nodePositionOf(keyInfo) + pending.getStartIndex(), keyInfo.getNodes());
                    pending.updateNodeCount(keyInfo.getLocation(), 0);
                    this.changeListWriter.moveReaderRelativeTo(keyInfo.getLocation());
                    this.reader.reposition(keyInfo.getLocation());
                    recordDelete();
                    this.reader.skipGroup();
                    set = fastToSet;
                    ComposerKt.removeRange(this.invalidations, keyInfo.getLocation(), keyInfo.getLocation() + this.reader.groupSize(keyInfo.getLocation()));
                } else {
                    set = fastToSet;
                    if (!linkedHashSet.contains(keyInfo)) {
                        if (i12 < size) {
                            KeyInfo keyInfo2 = used.get(i12);
                            if (keyInfo2 != keyInfo) {
                                int nodePositionOf = pending.nodePositionOf(keyInfo2);
                                linkedHashSet.add(keyInfo2);
                                if (nodePositionOf != i13) {
                                    int updatedNodeCountOf = pending.updatedNodeCountOf(keyInfo2);
                                    list = used;
                                    this.changeListWriter.moveNode(pending.getStartIndex() + nodePositionOf, i13 + pending.getStartIndex(), updatedNodeCountOf);
                                    pending.registerMoveNode(nodePositionOf, i13, updatedNodeCountOf);
                                } else {
                                    list = used;
                                }
                            } else {
                                list = used;
                                i11++;
                            }
                            i12++;
                            i13 += pending.updatedNodeCountOf(keyInfo2);
                            fastToSet = set;
                            used = list;
                        }
                        fastToSet = set;
                    }
                }
                i11++;
                fastToSet = set;
            }
            this.changeListWriter.endNodeMovement();
            if (keyInfos.size() > 0) {
                this.changeListWriter.moveReaderRelativeTo(this.reader.getGroupEnd());
                this.reader.skipToGroupEnd();
            }
        }
        boolean inserting = getInserting();
        if (!inserting && (remainingSlots = this.reader.getRemainingSlots()) > 0) {
            this.changeListWriter.trimValues(remainingSlots);
        }
        int i14 = this.nodeIndex;
        while (!this.reader.isGroupEnd()) {
            int currentGroup = this.reader.getCurrentGroup();
            recordDelete();
            this.changeListWriter.removeNode(i14, this.reader.skipGroup());
            ComposerKt.removeRange(this.invalidations, currentGroup, this.reader.getCurrentGroup());
        }
        if (inserting) {
            if (z10) {
                this.insertFixups.endNodeInsert();
                i10 = 1;
            }
            this.reader.endEmpty();
            int parent3 = this.writer.getParent();
            this.writer.endGroup();
            if (!this.reader.getInEmpty()) {
                int insertedGroupVirtualIndex = insertedGroupVirtualIndex(parent3);
                this.writer.endInsert();
                this.writer.close(true);
                recordInsert(this.insertAnchor);
                this.inserting = false;
                if (!this.slotTable.isEmpty()) {
                    updateNodeCount(insertedGroupVirtualIndex, 0);
                    updateNodeCountOverrides(insertedGroupVirtualIndex, i10);
                }
            }
        } else {
            if (z10) {
                this.changeListWriter.moveUp();
            }
            this.changeListWriter.endCurrentGroup();
            int parent4 = this.reader.getParent();
            if (i10 != updatedNodeCount(parent4)) {
                updateNodeCountOverrides(parent4, i10);
            }
            if (z10) {
                i10 = 1;
            }
            this.reader.endGroup();
            this.changeListWriter.endNodeMovement();
        }
        exitGroup(i10, inserting);
    }

    private final void endGroup() {
        end(false);
    }

    private final void endRoot() {
        boolean asBool;
        endGroup();
        this.parentContext.doneComposing$runtime();
        endGroup();
        this.changeListWriter.endRoot();
        finalizeCompose();
        this.reader.close();
        this.forciblyRecompose = false;
        asBool = ComposerKt.asBool(this.providersInvalidStack.pop());
        this.providersInvalid = asBool;
    }

    private final void ensureWriter() {
        if (this.writer.getClosed()) {
            SlotWriter openWriter = this.insertTable.openWriter();
            this.writer = openWriter;
            openWriter.skipToGroupEnd();
            this.writerHasAProvider = false;
            this.providerCache = null;
        }
    }

    private final void enterGroup(boolean z10, Pending pending) {
        Stack.m1371pushimpl(this.pendingStack, this.pending);
        this.pending = pending;
        this.parentStateStack.push(this.groupNodeCount);
        this.parentStateStack.push(this.rGroupIndex);
        this.parentStateStack.push(this.nodeIndex);
        if (z10) {
            this.nodeIndex = 0;
        }
        this.groupNodeCount = 0;
        this.rGroupIndex = 0;
    }

    private final void enterRecomposeScope(RecomposeScopeImpl recomposeScopeImpl) {
        recomposeScopeImpl.start(this.compositionToken);
        CompositionObserver current = this.observerHolder.current();
        if (current != null) {
            current.onScopeEnter(recomposeScopeImpl);
        }
    }

    private final void exitGroup(int i10, boolean z10) {
        Pending pending = (Pending) Stack.m1370popimpl(this.pendingStack);
        if (pending != null && !z10) {
            pending.setGroupIndex(pending.getGroupIndex() + 1);
        }
        this.pending = pending;
        this.nodeIndex = this.parentStateStack.pop() + i10;
        this.rGroupIndex = this.parentStateStack.pop();
        this.groupNodeCount = this.parentStateStack.pop() + i10;
    }

    private final Function1<Composition, Unit> exitRecomposeScope(RecomposeScopeImpl recomposeScopeImpl) {
        CompositionObserver current = this.observerHolder.current();
        if (current != null) {
            current.onScopeExit(recomposeScopeImpl);
        }
        return recomposeScopeImpl.end(this.compositionToken);
    }

    private final void finalizeCompose() {
        this.changeListWriter.finalizeComposition();
        if (!Stack.m1366isEmptyimpl(this.pendingStack)) {
            ComposerKt.composeImmediateRuntimeError("Start/end imbalance");
        }
        cleanUpCompose();
    }

    private final void forceFreshInsertTable() {
        SlotTable slotTable = new SlotTable();
        if (this.sourceMarkersEnabled) {
            slotTable.collectSourceInformation();
        }
        if (this.parentContext.getCollectingCallByInformation$runtime()) {
            slotTable.collectCalledByInformation();
        }
        this.insertTable = slotTable;
        SlotWriter openWriter = slotTable.openWriter();
        openWriter.close(true);
        this.writer = openWriter;
    }

    private final Object getNode(SlotReader slotReader) {
        return slotReader.node(slotReader.getParent());
    }

    private final int groupCompositeKeyPart(SlotReader slotReader, int i10) {
        Object groupAux;
        if (slotReader.hasObjectKey(i10)) {
            Object groupObjectKey = slotReader.groupObjectKey(i10);
            if (groupObjectKey != null) {
                if (groupObjectKey instanceof Enum) {
                    return ((Enum) groupObjectKey).ordinal();
                }
                if (groupObjectKey instanceof MovableContent) {
                    return MovableContentKt.movableContentKey;
                }
                return groupObjectKey.hashCode();
            }
            return 0;
        }
        int groupKey = slotReader.groupKey(i10);
        if (groupKey == 207 && (groupAux = slotReader.groupAux(i10)) != null && !Intrinsics.areEqual(groupAux, Composer.Companion.getEmpty())) {
            groupKey = groupAux.hashCode();
        }
        return groupKey;
    }

    private final void insertMovableContentGuarded(List<Pair<MovableContentStateReference, MovableContentStateReference>> list) {
        ComposerChangeListWriter composerChangeListWriter;
        ChangeList changeList;
        ComposerChangeListWriter composerChangeListWriter2;
        ChangeList changeList2;
        SlotTable slotTable$runtime;
        Anchor anchor$runtime;
        List<? extends Object> collectNodesFrom;
        SlotReader slotReader;
        MutableIntObjectMap<PersistentCompositionLocalMap> mutableIntObjectMap;
        int[] iArr;
        ComposerChangeListWriter composerChangeListWriter3;
        ChangeList changeList3;
        int i10;
        ControlledComposition composition$runtime;
        ControlledComposition composition$runtime2;
        Integer valueOf;
        int i11;
        SlotTable slotTable$runtime2;
        SlotReader slotReader2;
        List<Pair<MovableContentStateReference, MovableContentStateReference>> list2 = list;
        int i12 = 1;
        ComposerChangeListWriter composerChangeListWriter4 = this.changeListWriter;
        ChangeList changeList4 = this.lateChanges;
        ChangeList changeList5 = composerChangeListWriter4.getChangeList();
        try {
            composerChangeListWriter4.setChangeList(changeList4);
            this.changeListWriter.resetSlots();
            int size = list2.size();
            int i13 = 0;
            int i14 = 0;
            while (i14 < size) {
                try {
                    Pair<MovableContentStateReference, MovableContentStateReference> pair = list2.get(i14);
                    final MovableContentStateReference b10 = pair.b();
                    MovableContentStateReference d10 = pair.d();
                    Anchor anchor$runtime2 = b10.getAnchor$runtime();
                    int anchorIndex = b10.getSlotTable$runtime().anchorIndex(anchor$runtime2);
                    IntRef intRef = new IntRef(i13, i12, null);
                    this.changeListWriter.determineMovableContentNodeIndex(intRef, anchor$runtime2);
                    if (d10 == null) {
                        if (Intrinsics.areEqual(b10.getSlotTable$runtime(), this.insertTable)) {
                            createFreshInsertTable();
                        }
                        final SlotReader openReader = b10.getSlotTable$runtime().openReader();
                        try {
                            openReader.reposition(anchorIndex);
                            this.changeListWriter.moveReaderToAbsolute(anchorIndex);
                            final ChangeList changeList6 = new ChangeList();
                            slotReader2 = openReader;
                            try {
                                recomposeMovableContent$default(this, null, null, null, null, new Function0() { // from class: androidx.compose.runtime.c
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object invoke() {
                                        Unit insertMovableContentGuarded$lambda$41$lambda$40$lambda$34$lambda$33;
                                        insertMovableContentGuarded$lambda$41$lambda$40$lambda$34$lambda$33 = ComposerImpl.insertMovableContentGuarded$lambda$41$lambda$40$lambda$34$lambda$33(ComposerImpl.this, changeList6, openReader, b10);
                                        return insertMovableContentGuarded$lambda$41$lambda$40$lambda$34$lambda$33;
                                    }
                                }, 15, null);
                                this.changeListWriter.includeOperationsIn(changeList6, intRef);
                                Unit unit = Unit.f60915a;
                                slotReader2.close();
                                composerChangeListWriter2 = composerChangeListWriter4;
                                changeList2 = changeList5;
                                i10 = size;
                                i11 = i14;
                            } catch (Throwable th2) {
                                th = th2;
                                slotReader2.close();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            slotReader2 = openReader;
                        }
                    } else {
                        MovableContentState movableContentStateResolve$runtime = this.parentContext.movableContentStateResolve$runtime(d10);
                        if (movableContentStateResolve$runtime == null || (slotTable$runtime = movableContentStateResolve$runtime.getSlotTable$runtime()) == null) {
                            slotTable$runtime = d10.getSlotTable$runtime();
                        }
                        if (movableContentStateResolve$runtime == null || (slotTable$runtime2 = movableContentStateResolve$runtime.getSlotTable$runtime()) == null || (anchor$runtime = slotTable$runtime2.anchor(0)) == null) {
                            anchor$runtime = d10.getAnchor$runtime();
                        }
                        collectNodesFrom = ComposerKt.collectNodesFrom(slotTable$runtime, anchor$runtime);
                        if (!collectNodesFrom.isEmpty()) {
                            this.changeListWriter.copyNodesToNewAnchorLocation(collectNodesFrom, intRef);
                            if (Intrinsics.areEqual(b10.getSlotTable$runtime(), this.slotTable)) {
                                int anchorIndex2 = this.slotTable.anchorIndex(anchor$runtime2);
                                updateNodeCount(anchorIndex2, updatedNodeCount(anchorIndex2) + collectNodesFrom.size());
                            }
                        }
                        this.changeListWriter.copySlotTableToAnchorLocation(movableContentStateResolve$runtime, this.parentContext, d10, b10);
                        SlotReader openReader2 = slotTable$runtime.openReader();
                        try {
                            SlotReader slotReader3 = this.reader;
                            int[] iArr2 = this.nodeCountOverrides;
                            MutableIntObjectMap<PersistentCompositionLocalMap> mutableIntObjectMap2 = this.providerUpdates;
                            this.nodeCountOverrides = null;
                            this.providerUpdates = null;
                            try {
                                this.reader = openReader2;
                                int anchorIndex3 = slotTable$runtime.anchorIndex(anchor$runtime);
                                openReader2.reposition(anchorIndex3);
                                this.changeListWriter.moveReaderToAbsolute(anchorIndex3);
                                ChangeList changeList7 = new ChangeList();
                                ComposerChangeListWriter composerChangeListWriter5 = this.changeListWriter;
                                ChangeList changeList8 = composerChangeListWriter5.getChangeList();
                                try {
                                    composerChangeListWriter5.setChangeList(changeList7);
                                    i10 = size;
                                    ComposerChangeListWriter composerChangeListWriter6 = this.changeListWriter;
                                    composerChangeListWriter2 = composerChangeListWriter4;
                                    try {
                                        boolean implicitRootStart = composerChangeListWriter6.getImplicitRootStart();
                                        try {
                                            composerChangeListWriter6.setImplicitRootStart(false);
                                            d10.transferPendingInvalidations$runtime();
                                            composition$runtime = d10.getComposition$runtime();
                                            composition$runtime2 = b10.getComposition$runtime();
                                            valueOf = Integer.valueOf(openReader2.getCurrentGroup());
                                            changeList2 = changeList5;
                                            changeList3 = changeList8;
                                            i11 = i14;
                                            slotReader = openReader2;
                                            iArr = iArr2;
                                            composerChangeListWriter3 = composerChangeListWriter5;
                                        } catch (Throwable th4) {
                                            th = th4;
                                            mutableIntObjectMap = mutableIntObjectMap2;
                                            composerChangeListWriter3 = composerChangeListWriter5;
                                            slotReader = openReader2;
                                            changeList3 = changeList8;
                                            iArr = iArr2;
                                        }
                                        try {
                                            recomposeMovableContent(composition$runtime, composition$runtime2, valueOf, d10.getInvalidations$runtime(), new Function0() { // from class: androidx.compose.runtime.d
                                                @Override // kotlin.jvm.functions.Function0
                                                public final Object invoke() {
                                                    Unit insertMovableContentGuarded$lambda$41$lambda$40$lambda$39$lambda$38$lambda$37$lambda$36$lambda$35;
                                                    insertMovableContentGuarded$lambda$41$lambda$40$lambda$39$lambda$38$lambda$37$lambda$36$lambda$35 = ComposerImpl.insertMovableContentGuarded$lambda$41$lambda$40$lambda$39$lambda$38$lambda$37$lambda$36$lambda$35(ComposerImpl.this, b10);
                                                    return insertMovableContentGuarded$lambda$41$lambda$40$lambda$39$lambda$38$lambda$37$lambda$36$lambda$35;
                                                }
                                            });
                                            try {
                                                composerChangeListWriter6.setImplicitRootStart(implicitRootStart);
                                                try {
                                                    composerChangeListWriter3.setChangeList(changeList3);
                                                    this.changeListWriter.includeOperationsIn(changeList7, intRef);
                                                    Unit unit2 = Unit.f60915a;
                                                    try {
                                                        this.reader = slotReader3;
                                                        this.nodeCountOverrides = iArr;
                                                        this.providerUpdates = mutableIntObjectMap2;
                                                        try {
                                                            slotReader.close();
                                                        } catch (Throwable th5) {
                                                            th = th5;
                                                            composerChangeListWriter = composerChangeListWriter2;
                                                            changeList = changeList2;
                                                            composerChangeListWriter.setChangeList(changeList);
                                                            throw th;
                                                        }
                                                    } catch (Throwable th6) {
                                                        th = th6;
                                                        slotReader.close();
                                                        throw th;
                                                    }
                                                } catch (Throwable th7) {
                                                    th = th7;
                                                    mutableIntObjectMap = mutableIntObjectMap2;
                                                    this.reader = slotReader3;
                                                    this.nodeCountOverrides = iArr;
                                                    this.providerUpdates = mutableIntObjectMap;
                                                    throw th;
                                                }
                                            } catch (Throwable th8) {
                                                th = th8;
                                                mutableIntObjectMap = mutableIntObjectMap2;
                                                try {
                                                    composerChangeListWriter3.setChangeList(changeList3);
                                                    throw th;
                                                } catch (Throwable th9) {
                                                    th = th9;
                                                    this.reader = slotReader3;
                                                    this.nodeCountOverrides = iArr;
                                                    this.providerUpdates = mutableIntObjectMap;
                                                    throw th;
                                                }
                                            }
                                        } catch (Throwable th10) {
                                            th = th10;
                                            mutableIntObjectMap = mutableIntObjectMap2;
                                            try {
                                                composerChangeListWriter6.setImplicitRootStart(implicitRootStart);
                                                throw th;
                                            } catch (Throwable th11) {
                                                th = th11;
                                                composerChangeListWriter3.setChangeList(changeList3);
                                                throw th;
                                            }
                                        }
                                    } catch (Throwable th12) {
                                        th = th12;
                                        mutableIntObjectMap = mutableIntObjectMap2;
                                        composerChangeListWriter3 = composerChangeListWriter5;
                                        slotReader = openReader2;
                                        changeList3 = changeList8;
                                        iArr = iArr2;
                                        composerChangeListWriter3.setChangeList(changeList3);
                                        throw th;
                                    }
                                } catch (Throwable th13) {
                                    th = th13;
                                    mutableIntObjectMap = mutableIntObjectMap2;
                                    composerChangeListWriter3 = composerChangeListWriter5;
                                    slotReader = openReader2;
                                }
                            } catch (Throwable th14) {
                                th = th14;
                                mutableIntObjectMap = mutableIntObjectMap2;
                                slotReader = openReader2;
                                iArr = iArr2;
                            }
                        } catch (Throwable th15) {
                            th = th15;
                            slotReader = openReader2;
                        }
                    }
                    this.changeListWriter.skipToEndOfCurrentGroup();
                    i14 = i11 + 1;
                    list2 = list;
                    i12 = 1;
                    size = i10;
                    composerChangeListWriter4 = composerChangeListWriter2;
                    changeList5 = changeList2;
                    i13 = 0;
                } catch (Throwable th16) {
                    th = th16;
                    composerChangeListWriter2 = composerChangeListWriter4;
                    changeList2 = changeList5;
                }
            }
            ComposerChangeListWriter composerChangeListWriter7 = composerChangeListWriter4;
            ChangeList changeList9 = changeList5;
            this.changeListWriter.endMovableContentPlacement();
            this.changeListWriter.moveReaderToAbsolute(0);
            composerChangeListWriter7.setChangeList(changeList9);
        } catch (Throwable th17) {
            th = th17;
            composerChangeListWriter = composerChangeListWriter4;
            changeList = changeList5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit insertMovableContentGuarded$lambda$41$lambda$40$lambda$34$lambda$33(ComposerImpl composerImpl, ChangeList changeList, SlotReader slotReader, MovableContentStateReference movableContentStateReference) {
        ComposerChangeListWriter composerChangeListWriter = composerImpl.changeListWriter;
        ChangeList changeList2 = composerChangeListWriter.getChangeList();
        try {
            composerChangeListWriter.setChangeList(changeList);
            SlotReader slotReader2 = composerImpl.reader;
            int[] iArr = composerImpl.nodeCountOverrides;
            MutableIntObjectMap<PersistentCompositionLocalMap> mutableIntObjectMap = composerImpl.providerUpdates;
            composerImpl.nodeCountOverrides = null;
            composerImpl.providerUpdates = null;
            composerImpl.reader = slotReader;
            ComposerChangeListWriter composerChangeListWriter2 = composerImpl.changeListWriter;
            boolean implicitRootStart = composerChangeListWriter2.getImplicitRootStart();
            try {
                composerChangeListWriter2.setImplicitRootStart(false);
                composerImpl.invokeMovableContentLambda(movableContentStateReference.getContent$runtime(), movableContentStateReference.getLocals$runtime(), movableContentStateReference.getParameter$runtime(), true);
                composerChangeListWriter2.setImplicitRootStart(implicitRootStart);
                Unit unit = Unit.f60915a;
                composerImpl.reader = slotReader2;
                composerImpl.nodeCountOverrides = iArr;
                composerImpl.providerUpdates = mutableIntObjectMap;
                composerChangeListWriter.setChangeList(changeList2);
                return Unit.f60915a;
            } catch (Throwable th2) {
                composerChangeListWriter2.setImplicitRootStart(implicitRootStart);
                throw th2;
            }
        } catch (Throwable th3) {
            composerChangeListWriter.setChangeList(changeList2);
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit insertMovableContentGuarded$lambda$41$lambda$40$lambda$39$lambda$38$lambda$37$lambda$36$lambda$35(ComposerImpl composerImpl, MovableContentStateReference movableContentStateReference) {
        composerImpl.invokeMovableContentLambda(movableContentStateReference.getContent$runtime(), movableContentStateReference.getLocals$runtime(), movableContentStateReference.getParameter$runtime(), true);
        return Unit.f60915a;
    }

    private final int insertedGroupVirtualIndex(int i10) {
        return (-2) - i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
        recordProviderUpdate(r17);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void invokeMovableContentLambda(final androidx.compose.runtime.MovableContent<java.lang.Object> r16, androidx.compose.runtime.PersistentCompositionLocalMap r17, final java.lang.Object r18, boolean r19) {
        /*
            r15 = this;
            r1 = r15
            r0 = r16
            r2 = r17
            r4 = r18
            r3 = 126665345(0x78cc281, float:2.1179178E-34)
            r15.startMovableGroup(r3, r0)
            r15.updateSlot(r4)
            long r11 = r15.getCompositeKeyHashCode()
            long r5 = (long) r3
            r13 = 0
            r1.compositeKeyHashCode = r5     // Catch: java.lang.Throwable -> L26
            boolean r3 = r15.getInserting()     // Catch: java.lang.Throwable -> L26
            r5 = 0
            r6 = 1
            if (r3 == 0) goto L29
            androidx.compose.runtime.SlotWriter r3 = r1.writer     // Catch: java.lang.Throwable -> L26
            androidx.compose.runtime.SlotWriter.markGroup$default(r3, r5, r6, r13)     // Catch: java.lang.Throwable -> L26
            goto L29
        L26:
            r0 = move-exception
            goto Laa
        L29:
            boolean r3 = r15.getInserting()     // Catch: java.lang.Throwable -> L26
            if (r3 == 0) goto L30
            goto L3d
        L30:
            androidx.compose.runtime.SlotReader r3 = r1.reader     // Catch: java.lang.Throwable -> L26
            java.lang.Object r3 = r3.getGroupAux()     // Catch: java.lang.Throwable -> L26
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r2)     // Catch: java.lang.Throwable -> L26
            if (r3 != 0) goto L3d
            r5 = r6
        L3d:
            if (r5 == 0) goto L42
            r15.recordProviderUpdate(r2)     // Catch: java.lang.Throwable -> L26
        L42:
            java.lang.Object r3 = androidx.compose.runtime.ComposerKt.getCompositionLocalMap()     // Catch: java.lang.Throwable -> L26
            androidx.compose.runtime.GroupKind$Companion r7 = androidx.compose.runtime.GroupKind.Companion     // Catch: java.lang.Throwable -> L26
            int r7 = r7.m1330getGroupULZAiWs()     // Catch: java.lang.Throwable -> L26
            r8 = 202(0xca, float:2.83E-43)
            r15.m1316startBaiHCIY(r8, r3, r7, r2)     // Catch: java.lang.Throwable -> L26
            r1.providerCache = r13     // Catch: java.lang.Throwable -> L26
            boolean r2 = r15.getInserting()     // Catch: java.lang.Throwable -> L26
            if (r2 == 0) goto L8a
            if (r19 != 0) goto L8a
            r1.writerHasAProvider = r6     // Catch: java.lang.Throwable -> L26
            androidx.compose.runtime.SlotWriter r2 = r1.writer     // Catch: java.lang.Throwable -> L26
            int r3 = r2.getParent()     // Catch: java.lang.Throwable -> L26
            int r3 = r2.parent(r3)     // Catch: java.lang.Throwable -> L26
            androidx.compose.runtime.Anchor r7 = r2.anchor(r3)     // Catch: java.lang.Throwable -> L26
            androidx.compose.runtime.MovableContentStateReference r14 = new androidx.compose.runtime.MovableContentStateReference     // Catch: java.lang.Throwable -> L26
            androidx.compose.runtime.CompositionImpl r5 = r15.getComposition()     // Catch: java.lang.Throwable -> L26
            androidx.compose.runtime.SlotTable r6 = r1.insertTable     // Catch: java.lang.Throwable -> L26
            java.util.List r8 = kotlin.collections.CollectionsKt.n()     // Catch: java.lang.Throwable -> L26
            androidx.compose.runtime.PersistentCompositionLocalMap r9 = r15.currentCompositionLocalScope()     // Catch: java.lang.Throwable -> L26
            r10 = 0
            r2 = r14
            r3 = r16
            r4 = r18
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L26
            androidx.compose.runtime.CompositionContext r0 = r1.parentContext     // Catch: java.lang.Throwable -> L26
            r0.insertMovableContent$runtime(r14)     // Catch: java.lang.Throwable -> L26
            goto L9f
        L8a:
            boolean r2 = r1.providersInvalid     // Catch: java.lang.Throwable -> L26
            r1.providersInvalid = r5     // Catch: java.lang.Throwable -> L26
            androidx.compose.runtime.ComposerImpl$invokeMovableContentLambda$1 r3 = new androidx.compose.runtime.ComposerImpl$invokeMovableContentLambda$1     // Catch: java.lang.Throwable -> L26
            r3.<init>()     // Catch: java.lang.Throwable -> L26
            r0 = 316014703(0x12d6006f, float:1.3505406E-27)
            androidx.compose.runtime.internal.ComposableLambda r0 = androidx.compose.runtime.internal.ComposableLambdaKt.composableLambdaInstance(r0, r6, r3)     // Catch: java.lang.Throwable -> L26
            androidx.compose.runtime.internal.Expect_jvmKt.invokeComposable(r15, r0)     // Catch: java.lang.Throwable -> L26
            r1.providersInvalid = r2     // Catch: java.lang.Throwable -> L26
        L9f:
            r15.endGroup()
            r1.providerCache = r13
            r1.compositeKeyHashCode = r11
            r15.endMovableGroup()
            return
        Laa:
            androidx.compose.runtime.b r2 = new androidx.compose.runtime.b     // Catch: java.lang.Throwable -> Lb4
            r2.<init>()     // Catch: java.lang.Throwable -> Lb4
            java.lang.Throwable r0 = androidx.compose.runtime.tooling.ComposeStackTraceKt.attachComposeStackTrace(r0, r2)     // Catch: java.lang.Throwable -> Lb4
            throw r0     // Catch: java.lang.Throwable -> Lb4
        Lb4:
            r0 = move-exception
            r15.endGroup()
            r1.providerCache = r13
            r1.compositeKeyHashCode = r11
            r15.endMovableGroup()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ComposerImpl.invokeMovableContentLambda(androidx.compose.runtime.MovableContent, androidx.compose.runtime.PersistentCompositionLocalMap, java.lang.Object, boolean):void");
    }

    private final Object nodeAt(SlotReader slotReader, int i10) {
        return slotReader.node(i10);
    }

    private final int nodeIndexOf(int i10, int i11, int i12, int i13) {
        int updatedNodeCount;
        int parent = this.reader.parent(i11);
        while (parent != i12 && !this.reader.isNode(parent)) {
            parent = this.reader.parent(parent);
        }
        if (this.reader.isNode(parent)) {
            i13 = 0;
        }
        if (parent == i11) {
            return i13;
        }
        int updatedNodeCount2 = (updatedNodeCount(parent) - this.reader.nodeCount(i11)) + i13;
        loop1: while (i13 < updatedNodeCount2 && parent != i10) {
            parent++;
            while (parent < i10) {
                int groupSize = this.reader.groupSize(parent) + parent;
                if (i10 >= groupSize) {
                    if (this.reader.isNode(parent)) {
                        updatedNodeCount = 1;
                    } else {
                        updatedNodeCount = updatedNodeCount(parent);
                    }
                    i13 += updatedNodeCount;
                    parent = groupSize;
                }
            }
            break loop1;
        }
        return i13;
    }

    private final int rGroupIndexOf(int i10) {
        int parent = this.reader.parent(i10) + 1;
        int i11 = 0;
        while (parent < i10) {
            if (!this.reader.hasObjectKey(parent)) {
                i11++;
            }
            parent += this.reader.groupSize(parent);
        }
        return i11;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
        if (r7 == null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final <R> R recomposeMovableContent(androidx.compose.runtime.ControlledComposition r7, androidx.compose.runtime.ControlledComposition r8, java.lang.Integer r9, java.util.List<? extends kotlin.Pair<androidx.compose.runtime.RecomposeScopeImpl, ? extends java.lang.Object>> r10, kotlin.jvm.functions.Function0<? extends R> r11) {
        /*
            r6 = this;
            boolean r0 = r6.isComposing
            int r1 = r6.nodeIndex
            r2 = 1
            r6.isComposing = r2     // Catch: java.lang.Throwable -> L29
            r2 = 0
            r6.nodeIndex = r2     // Catch: java.lang.Throwable -> L29
            r3 = r10
            java.util.Collection r3 = (java.util.Collection) r3     // Catch: java.lang.Throwable -> L29
            int r3 = r3.size()     // Catch: java.lang.Throwable -> L29
        L11:
            if (r2 >= r3) goto L32
            java.lang.Object r4 = r10.get(r2)     // Catch: java.lang.Throwable -> L29
            kotlin.Pair r4 = (kotlin.Pair) r4     // Catch: java.lang.Throwable -> L29
            java.lang.Object r5 = r4.b()     // Catch: java.lang.Throwable -> L29
            androidx.compose.runtime.RecomposeScopeImpl r5 = (androidx.compose.runtime.RecomposeScopeImpl) r5     // Catch: java.lang.Throwable -> L29
            java.lang.Object r4 = r4.d()     // Catch: java.lang.Throwable -> L29
            if (r4 == 0) goto L2b
            r6.tryImminentInvalidation$runtime(r5, r4)     // Catch: java.lang.Throwable -> L29
            goto L2f
        L29:
            r7 = move-exception
            goto L4b
        L2b:
            r4 = 0
            r6.tryImminentInvalidation$runtime(r5, r4)     // Catch: java.lang.Throwable -> L29
        L2f:
            int r2 = r2 + 1
            goto L11
        L32:
            if (r7 == 0) goto L42
            if (r9 == 0) goto L3b
            int r9 = r9.intValue()     // Catch: java.lang.Throwable -> L29
            goto L3c
        L3b:
            r9 = -1
        L3c:
            java.lang.Object r7 = r7.delegateInvalidations(r8, r9, r11)     // Catch: java.lang.Throwable -> L29
            if (r7 != 0) goto L46
        L42:
            java.lang.Object r7 = r11.invoke()     // Catch: java.lang.Throwable -> L29
        L46:
            r6.isComposing = r0
            r6.nodeIndex = r1
            return r7
        L4b:
            r6.isComposing = r0
            r6.nodeIndex = r1
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ComposerImpl.recomposeMovableContent(androidx.compose.runtime.ControlledComposition, androidx.compose.runtime.ControlledComposition, java.lang.Integer, java.util.List, kotlin.jvm.functions.Function0):java.lang.Object");
    }

    static /* synthetic */ Object recomposeMovableContent$default(ComposerImpl composerImpl, ControlledComposition controlledComposition, ControlledComposition controlledComposition2, Integer num, List list, Function0 function0, int i10, Object obj) {
        ControlledComposition controlledComposition3;
        ControlledComposition controlledComposition4;
        Integer num2;
        if ((i10 & 1) != 0) {
            controlledComposition3 = null;
        } else {
            controlledComposition3 = controlledComposition;
        }
        if ((i10 & 2) != 0) {
            controlledComposition4 = null;
        } else {
            controlledComposition4 = controlledComposition2;
        }
        if ((i10 & 4) != 0) {
            num2 = null;
        } else {
            num2 = num;
        }
        List list2 = list;
        if ((i10 & 8) != 0) {
            list2 = CollectionsKt.n();
        }
        return composerImpl.recomposeMovableContent(controlledComposition3, controlledComposition4, num2, list2, function0);
    }

    private final void recomposeToGroupEnd() {
        Invalidation firstInRange;
        boolean z10 = this.isComposing;
        this.isComposing = true;
        int parent = this.reader.getParent();
        int groupSize = this.reader.groupSize(parent) + parent;
        int i10 = this.nodeIndex;
        long compositeKeyHashCode = getCompositeKeyHashCode();
        int i11 = this.groupNodeCount;
        int i12 = this.rGroupIndex;
        firstInRange = ComposerKt.firstInRange(this.invalidations, this.reader.getCurrentGroup(), groupSize);
        boolean z11 = false;
        int i13 = parent;
        while (firstInRange != null) {
            int location = firstInRange.getLocation();
            RecomposeScopeImpl scope = firstInRange.getScope();
            ComposerKt.removeLocation(this.invalidations, location);
            if (firstInRange.isInvalid()) {
                this.reader.reposition(location);
                int currentGroup = this.reader.getCurrentGroup();
                recordUpsAndDowns(i13, currentGroup, parent);
                this.nodeIndex = nodeIndexOf(location, currentGroup, parent, i10);
                this.rGroupIndex = rGroupIndexOf(currentGroup);
                this.compositeKeyHashCode = compositeKeyOf(this.reader.parent(currentGroup), parent, compositeKeyHashCode);
                this.providerCache = null;
                scope.compose(this);
                this.providerCache = null;
                this.reader.restoreParent(parent);
                z11 = true;
                i13 = currentGroup;
            } else {
                Stack.m1371pushimpl(this.invalidateStack, scope);
                CompositionObserver current = this.observerHolder.current();
                if (current != null) {
                    try {
                        current.onScopeEnter(scope);
                        scope.rereadTrackedInstances();
                    } finally {
                        current.onScopeExit(scope);
                    }
                } else {
                    scope.rereadTrackedInstances();
                }
                Stack.m1370popimpl(this.invalidateStack);
            }
            firstInRange = ComposerKt.firstInRange(this.invalidations, this.reader.getCurrentGroup(), groupSize);
        }
        if (z11) {
            recordUpsAndDowns(i13, parent, parent);
            this.reader.skipToGroupEnd();
            int updatedNodeCount = updatedNodeCount(parent);
            this.nodeIndex = i10 + updatedNodeCount;
            this.groupNodeCount = i11 + updatedNodeCount;
            this.rGroupIndex = i12;
        } else {
            skipReaderToGroupEnd();
        }
        this.compositeKeyHashCode = compositeKeyHashCode;
        this.isComposing = z10;
    }

    private final void recordDelete() {
        reportFreeMovableContent(this.reader.getCurrentGroup());
        this.changeListWriter.removeCurrentGroup();
    }

    private final void recordInsert(Anchor anchor) {
        if (this.insertFixups.isEmpty()) {
            this.changeListWriter.insertSlots(anchor, this.insertTable);
            return;
        }
        this.changeListWriter.insertSlots(anchor, this.insertTable, this.insertFixups);
        this.insertFixups = new FixupList();
    }

    private final void recordProviderUpdate(PersistentCompositionLocalMap persistentCompositionLocalMap) {
        MutableIntObjectMap<PersistentCompositionLocalMap> mutableIntObjectMap = this.providerUpdates;
        if (mutableIntObjectMap == null) {
            mutableIntObjectMap = new MutableIntObjectMap<>(0, 1, null);
            this.providerUpdates = mutableIntObjectMap;
        }
        mutableIntObjectMap.set(this.reader.getCurrentGroup(), persistentCompositionLocalMap);
    }

    private final void recordUpsAndDowns(int i10, int i11, int i12) {
        int nearestCommonRootOf;
        SlotReader slotReader = this.reader;
        nearestCommonRootOf = ComposerKt.nearestCommonRootOf(slotReader, i10, i11, i12);
        while (i10 > 0 && i10 != nearestCommonRootOf) {
            if (slotReader.isNode(i10)) {
                this.changeListWriter.moveUp();
            }
            i10 = slotReader.parent(i10);
        }
        doRecordDownsFor(i11, nearestCommonRootOf);
    }

    private final Anchor rememberObserverAnchor() {
        int i10;
        int i11;
        if (getInserting()) {
            if (!ComposerKt.isAfterFirstChild(this.writer)) {
                return null;
            }
            int currentGroup = this.writer.getCurrentGroup() - 1;
            int parent = this.writer.parent(currentGroup);
            while (true) {
                int i12 = parent;
                i11 = currentGroup;
                currentGroup = i12;
                if (currentGroup == this.writer.getParent() || currentGroup < 0) {
                    break;
                }
                parent = this.writer.parent(currentGroup);
            }
            return this.writer.anchor(i11);
        } else if (!ComposerKt.isAfterFirstChild(this.reader)) {
            return null;
        } else {
            int currentGroup2 = this.reader.getCurrentGroup() - 1;
            int parent2 = this.reader.parent(currentGroup2);
            while (true) {
                int i13 = parent2;
                i10 = currentGroup2;
                currentGroup2 = i13;
                if (currentGroup2 == this.reader.getParent() || currentGroup2 < 0) {
                    break;
                }
                parent2 = this.reader.parent(currentGroup2);
            }
            return this.reader.anchor(i10);
        }
    }

    private final void reportAllMovableContent() {
        if (this.slotTable.containsMark()) {
            getComposition().updateMovingInvalidations$runtime();
            ChangeList changeList = new ChangeList();
            this.deferredChanges = changeList;
            SlotReader openReader = this.slotTable.openReader();
            try {
                this.reader = openReader;
                ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
                ChangeList changeList2 = composerChangeListWriter.getChangeList();
                composerChangeListWriter.setChangeList(changeList);
                reportFreeMovableContent(0);
                this.changeListWriter.releaseMovableContent();
                composerChangeListWriter.setChangeList(changeList2);
                Unit unit = Unit.f60915a;
            } finally {
                openReader.close();
            }
        }
    }

    private final void reportFreeMovableContent(int i10) {
        boolean isNode = this.reader.isNode(i10);
        if (isNode) {
            this.changeListWriter.endNodeMovement();
            this.changeListWriter.moveDown(this.reader.node(i10));
        }
        reportFreeMovableContent$reportGroup(this, i10, i10, isNode, 0);
        this.changeListWriter.endNodeMovement();
        if (isNode) {
            this.changeListWriter.moveUp();
        }
    }

    private static final MovableContentStateReference reportFreeMovableContent$createMovableContentReferenceForGroup(ComposerImpl composerImpl, int i10, List<MovableContentStateReference> list) {
        Object groupObjectKey = composerImpl.reader.groupObjectKey(i10);
        Intrinsics.checkNotNull(groupObjectKey, "null cannot be cast to non-null type androidx.compose.runtime.MovableContent<kotlin.Any?>");
        MovableContent movableContent = (MovableContent) groupObjectKey;
        Object groupGet = composerImpl.reader.groupGet(i10, 0);
        Anchor anchor = composerImpl.reader.anchor(i10);
        int groupSize = composerImpl.reader.groupSize(i10) + i10;
        ArrayList arrayList = new ArrayList();
        List<Invalidation> list2 = composerImpl.invalidations;
        for (int findInsertLocation = ComposerKt.findInsertLocation(list2, i10); findInsertLocation < list2.size(); findInsertLocation++) {
            Invalidation invalidation = list2.get(findInsertLocation);
            if (invalidation.getLocation() >= groupSize) {
                break;
            }
            arrayList.add(ms.k.a(invalidation.getScope(), invalidation.getInstances()));
        }
        return new MovableContentStateReference(movableContent, groupGet, composerImpl.getComposition(), composerImpl.slotTable, anchor, arrayList, composerImpl.currentCompositionLocalScope(i10), list);
    }

    private static final MovableContentStateReference reportFreeMovableContent$movableContentReferenceFor(ComposerImpl composerImpl, int i10) {
        int groupKey = composerImpl.reader.groupKey(i10);
        Object groupObjectKey = composerImpl.reader.groupObjectKey(i10);
        ArrayList arrayList = null;
        if (groupKey != 126665345 || !(groupObjectKey instanceof MovableContent)) {
            return null;
        }
        if (composerImpl.reader.containsMark(i10)) {
            ArrayList arrayList2 = new ArrayList();
            reportFreeMovableContent$movableContentReferenceFor$traverseGroups(composerImpl, arrayList2, i10);
            if (!arrayList2.isEmpty()) {
                arrayList = arrayList2;
            }
        }
        return reportFreeMovableContent$createMovableContentReferenceForGroup(composerImpl, i10, arrayList);
    }

    private static final void reportFreeMovableContent$movableContentReferenceFor$traverseGroups(ComposerImpl composerImpl, List<MovableContentStateReference> list, int i10) {
        int groupSize = composerImpl.reader.groupSize(i10) + i10;
        int i11 = i10 + 1;
        while (i11 < groupSize) {
            if (composerImpl.reader.hasMark(i11)) {
                MovableContentStateReference reportFreeMovableContent$movableContentReferenceFor = reportFreeMovableContent$movableContentReferenceFor(composerImpl, i11);
                if (reportFreeMovableContent$movableContentReferenceFor != null) {
                    list.add(reportFreeMovableContent$movableContentReferenceFor);
                }
            } else if (composerImpl.reader.containsMark(i11)) {
                reportFreeMovableContent$movableContentReferenceFor$traverseGroups(composerImpl, list, i11);
            }
            i11 += composerImpl.reader.groupSize(i11);
        }
    }

    private static final int reportFreeMovableContent$reportGroup(ComposerImpl composerImpl, int i10, int i11, boolean z10, int i12) {
        boolean z11;
        int i13;
        CompositionContextHolder compositionContextHolder;
        SlotReader slotReader = composerImpl.reader;
        if (slotReader.hasMark(i11)) {
            int groupKey = slotReader.groupKey(i11);
            Object groupObjectKey = slotReader.groupObjectKey(i11);
            if (groupKey == 126665345 && (groupObjectKey instanceof MovableContent)) {
                MovableContentStateReference reportFreeMovableContent$movableContentReferenceFor = reportFreeMovableContent$movableContentReferenceFor(composerImpl, i11);
                if (reportFreeMovableContent$movableContentReferenceFor != null) {
                    composerImpl.parentContext.deletedMovableContent$runtime(reportFreeMovableContent$movableContentReferenceFor);
                    composerImpl.changeListWriter.recordSlotEditing();
                    composerImpl.changeListWriter.releaseMovableGroupAtCurrent(composerImpl.getComposition(), composerImpl.parentContext, reportFreeMovableContent$movableContentReferenceFor);
                }
                if (z10 && i11 != i10) {
                    composerImpl.changeListWriter.endNodeMovementAndDeleteNode(i12, i11);
                    return 0;
                }
                return slotReader.nodeCount(i11);
            } else if (groupKey == 206 && Intrinsics.areEqual(groupObjectKey, ComposerKt.getReference())) {
                Object groupGet = slotReader.groupGet(i11, 0);
                if (groupGet instanceof CompositionContextHolder) {
                    compositionContextHolder = (CompositionContextHolder) groupGet;
                } else {
                    compositionContextHolder = null;
                }
                if (compositionContextHolder != null) {
                    for (ComposerImpl composerImpl2 : compositionContextHolder.getRef().getComposers()) {
                        composerImpl2.reportAllMovableContent();
                        composerImpl.parentContext.reportRemovedComposition$runtime(composerImpl2.getComposition());
                    }
                }
                return slotReader.nodeCount(i11);
            } else if (slotReader.isNode(i11)) {
                return 1;
            } else {
                return slotReader.nodeCount(i11);
            }
        } else if (slotReader.containsMark(i11)) {
            int groupSize = slotReader.groupSize(i11) + i11;
            int i14 = 0;
            for (int i15 = i11 + 1; i15 < groupSize; i15 += slotReader.groupSize(i15)) {
                boolean isNode = slotReader.isNode(i15);
                if (isNode) {
                    composerImpl.changeListWriter.endNodeMovement();
                    composerImpl.changeListWriter.moveDown(slotReader.node(i15));
                }
                if (!isNode && !z10) {
                    z11 = false;
                } else {
                    z11 = true;
                }
                if (isNode) {
                    i13 = 0;
                } else {
                    i13 = i12 + i14;
                }
                i14 += reportFreeMovableContent$reportGroup(composerImpl, i10, i15, z11, i13);
                if (isNode) {
                    composerImpl.changeListWriter.endNodeMovement();
                    composerImpl.changeListWriter.moveUp();
                }
            }
            if (slotReader.isNode(i11)) {
                return 1;
            }
            return i14;
        } else if (slotReader.isNode(i11)) {
            return 1;
        } else {
            return slotReader.nodeCount(i11);
        }
    }

    private final void skipGroup() {
        this.groupNodeCount += this.reader.skipGroup();
    }

    private final void skipReaderToGroupEnd() {
        this.groupNodeCount = this.reader.getParentNodes();
        this.reader.skipToGroupEnd();
    }

    private final List<ComposeStackTraceFrame> stackTraceForGroup(int i10, Integer num) {
        if (!this.sourceMarkersEnabled) {
            return CollectionsKt.n();
        }
        SlotReader openReader = this.slotTable.openReader();
        try {
            return ComposeStackTraceBuilderKt.traceForGroup(openReader, i10, num);
        } finally {
            openReader.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean stackTraceForValue$lambda$43(Object obj, Object obj2) {
        RememberObserverHolder rememberObserverHolder;
        if (obj2 != obj) {
            RememberObserver rememberObserver = null;
            if (obj2 instanceof RememberObserverHolder) {
                rememberObserverHolder = (RememberObserverHolder) obj2;
            } else {
                rememberObserverHolder = null;
            }
            if (rememberObserverHolder != null) {
                rememberObserver = rememberObserverHolder.getWrapped();
            }
            if (rememberObserver != obj) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e9  */
    /* renamed from: start-BaiHCIY  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m1316startBaiHCIY(int r14, java.lang.Object r15, int r16, java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ComposerImpl.m1316startBaiHCIY(int, java.lang.Object, int, java.lang.Object):void");
    }

    private final void startGroup(int i10) {
        m1316startBaiHCIY(i10, null, GroupKind.Companion.m1330getGroupULZAiWs(), null);
    }

    private final void startReaderGroup(boolean z10, Object obj) {
        if (z10) {
            this.reader.startNode();
            return;
        }
        if (obj != null && this.reader.getGroupAux() != obj) {
            this.changeListWriter.updateAuxData(obj);
        }
        this.reader.startGroup();
    }

    private final void startRoot() {
        int asInt;
        this.rGroupIndex = 0;
        this.reader = this.slotTable.openReader();
        startGroup(100);
        this.parentContext.startComposing$runtime();
        PersistentCompositionLocalMap compositionLocalScope$runtime = this.parentContext.getCompositionLocalScope$runtime();
        IntStack intStack = this.providersInvalidStack;
        asInt = ComposerKt.asInt(this.providersInvalid);
        intStack.push(asInt);
        this.providersInvalid = changed(compositionLocalScope$runtime);
        this.providerCache = null;
        if (!this.forceRecomposeScopes) {
            this.forceRecomposeScopes = this.parentContext.getCollectingParameterInformation$runtime();
        }
        if (!this.sourceMarkersEnabled) {
            this.sourceMarkersEnabled = this.parentContext.getCollectingSourceInformation$runtime();
        }
        if (this.sourceMarkersEnabled) {
            CompositionLocal<CompositionErrorContext> localCompositionErrorContext = CompositionErrorContextKt.getLocalCompositionErrorContext();
            Intrinsics.checkNotNull(localCompositionErrorContext, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>");
            compositionLocalScope$runtime = compositionLocalScope$runtime.putValue(localCompositionErrorContext, new StaticValueHolder(getErrorContext$runtime()));
        }
        this.rootProvider = compositionLocalScope$runtime;
        Set<CompositionData> set = (Set) CompositionLocalMapKt.read(compositionLocalScope$runtime, InspectionTablesKt.getLocalInspectionTables());
        if (set != null) {
            set.add(getCompositionData());
            this.parentContext.recordInspectionTable$runtime(set);
        }
        startGroup(Long.hashCode(this.parentContext.getCompositeKeyHashCode$runtime()));
    }

    private final void updateCompositeKeyWhenWeEnterGroup(int i10, int i11, Object obj, Object obj2) {
        if (obj == null) {
            if (obj2 != null && i10 == 207 && !Intrinsics.areEqual(obj2, Composer.Companion.getEmpty())) {
                this.compositeKeyHashCode = i11 ^ Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ obj2.hashCode(), 3);
                return;
            }
            this.compositeKeyHashCode = i11 ^ Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ i10, 3);
        } else if (obj instanceof Enum) {
            this.compositeKeyHashCode = 0 ^ Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((Enum) obj).ordinal(), 3);
        } else {
            this.compositeKeyHashCode = 0 ^ Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ obj.hashCode(), 3);
        }
    }

    private final void updateCompositeKeyWhenWeEnterGroupKeyHash(int i10, int i11) {
        this.compositeKeyHashCode = i11 ^ Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ i10, 3);
    }

    private final void updateCompositeKeyWhenWeExitGroup(int i10, int i11, Object obj, Object obj2) {
        if (obj == null) {
            if (obj2 != null && i10 == 207 && !Intrinsics.areEqual(obj2, Composer.Companion.getEmpty())) {
                this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode() ^ i11, 3) ^ obj2.hashCode(), 3);
                return;
            }
            this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode() ^ i11, 3) ^ i10, 3);
        } else if (obj instanceof Enum) {
            this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode() ^ 0, 3) ^ ((Enum) obj).ordinal(), 3);
        } else {
            this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode() ^ 0, 3) ^ obj.hashCode(), 3);
        }
    }

    private final void updateCompositeKeyWhenWeExitGroupKeyHash(int i10, int i11) {
        this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode() ^ i11, 3) ^ i10, 3);
    }

    private final void updateNodeCount(int i10, int i11) {
        if (updatedNodeCount(i10) != i11) {
            if (i10 < 0) {
                MutableIntIntMap mutableIntIntMap = this.nodeCountVirtualOverrides;
                if (mutableIntIntMap == null) {
                    mutableIntIntMap = new MutableIntIntMap(0, 1, null);
                    this.nodeCountVirtualOverrides = mutableIntIntMap;
                }
                mutableIntIntMap.set(i10, i11);
                return;
            }
            int[] iArr = this.nodeCountOverrides;
            if (iArr == null) {
                iArr = new int[this.reader.getSize()];
                kotlin.collections.n.F(iArr, -1, 0, 0, 6, null);
                this.nodeCountOverrides = iArr;
            }
            iArr[i10] = i11;
        }
    }

    private final void updateNodeCountOverrides(int i10, int i11) {
        int updatedNodeCount = updatedNodeCount(i10);
        if (updatedNodeCount != i11) {
            int i12 = i11 - updatedNodeCount;
            int m1364getSizeimpl = Stack.m1364getSizeimpl(this.pendingStack) - 1;
            while (i10 != -1) {
                int updatedNodeCount2 = updatedNodeCount(i10) + i12;
                updateNodeCount(i10, updatedNodeCount2);
                int i13 = m1364getSizeimpl;
                while (true) {
                    if (-1 < i13) {
                        Pending pending = (Pending) Stack.m1369peekimpl(this.pendingStack, i13);
                        if (pending != null && pending.updateNodeCount(i10, updatedNodeCount2)) {
                            m1364getSizeimpl = i13 - 1;
                            break;
                        }
                        i13--;
                    } else {
                        break;
                    }
                }
                if (i10 < 0) {
                    i10 = this.reader.getParent();
                } else if (!this.reader.isNode(i10)) {
                    i10 = this.reader.parent(i10);
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.compose.runtime.PersistentCompositionLocalMap, java.lang.Object] */
    private final PersistentCompositionLocalMap updateProviderMapGroup(PersistentCompositionLocalMap persistentCompositionLocalMap, PersistentCompositionLocalMap persistentCompositionLocalMap2) {
        PersistentMap.Builder<CompositionLocal<Object>, ValueHolder<Object>> builder = persistentCompositionLocalMap.builder();
        builder.putAll(persistentCompositionLocalMap2);
        ?? build = builder.build();
        startGroup(204, ComposerKt.getProviderMaps());
        updateSlot(build);
        updateSlot(persistentCompositionLocalMap2);
        endGroup();
        return build;
    }

    private final void updateSlot(Object obj) {
        nextSlot();
        updateValue(obj);
    }

    private final int updatedNodeCount(int i10) {
        int i11;
        if (i10 < 0) {
            MutableIntIntMap mutableIntIntMap = this.nodeCountVirtualOverrides;
            if (mutableIntIntMap == null || !mutableIntIntMap.containsKey(i10)) {
                return 0;
            }
            return mutableIntIntMap.get(i10);
        }
        int[] iArr = this.nodeCountOverrides;
        if (iArr != null && (i11 = iArr[i10]) >= 0) {
            return i11;
        }
        return this.reader.nodeCount(i10);
    }

    private final void validateNodeExpected() {
        if (!this.nodeExpected) {
            ComposerKt.composeImmediateRuntimeError("A call to createNode(), emitNode() or useNode() expected was not expected");
        }
        this.nodeExpected = false;
    }

    private final void validateNodeNotExpected() {
        if (this.nodeExpected) {
            ComposerKt.composeImmediateRuntimeError("A call to createNode(), emitNode() or useNode() expected");
        }
    }

    private final <R> R withReader(SlotReader slotReader, Function0<? extends R> function0) {
        SlotReader slotReader2 = this.reader;
        int[] iArr = this.nodeCountOverrides;
        MutableIntObjectMap<PersistentCompositionLocalMap> mutableIntObjectMap = this.providerUpdates;
        this.nodeCountOverrides = null;
        this.providerUpdates = null;
        try {
            this.reader = slotReader;
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            this.reader = slotReader2;
            this.nodeCountOverrides = iArr;
            this.providerUpdates = mutableIntObjectMap;
            InlineMarker.finallyEnd(1);
        }
    }

    @Override // androidx.compose.runtime.Composer
    public <V, T> void apply(V v10, @NotNull Function2<? super T, ? super V, Unit> function2) {
        if (getInserting()) {
            this.insertFixups.updateNode(v10, function2);
        } else {
            this.changeListWriter.updateNode(v10, function2);
        }
    }

    @Override // androidx.compose.runtime.Composer
    @NotNull
    public CompositionContext buildContext() {
        CompositionContextHolder compositionContextHolder;
        startGroup(206, ComposerKt.getReference());
        CompositionObserverHolder compositionObserverHolder = null;
        if (getInserting()) {
            SlotWriter.markGroup$default(this.writer, 0, 1, null);
        }
        Object nextSlot = nextSlot();
        if (nextSlot instanceof CompositionContextHolder) {
            compositionContextHolder = (CompositionContextHolder) nextSlot;
        } else {
            compositionContextHolder = null;
        }
        if (compositionContextHolder == null) {
            long compositeKeyHashCode = getCompositeKeyHashCode();
            boolean z10 = this.forceRecomposeScopes;
            boolean z11 = this.sourceMarkersEnabled;
            CompositionImpl composition = getComposition();
            if (composition == null) {
                composition = null;
            }
            if (composition != null) {
                compositionObserverHolder = composition.getObserverHolder$runtime();
            }
            compositionContextHolder = new CompositionContextHolder(new CompositionContextImpl(compositeKeyHashCode, z10, z11, compositionObserverHolder));
            updateValue(compositionContextHolder);
        }
        compositionContextHolder.getRef().updateCompositionLocalScope(currentCompositionLocalScope());
        endGroup();
        return compositionContextHolder.getRef();
    }

    @ComposeCompilerApi
    public final <T> T cache(boolean z10, @NotNull Function0<? extends T> function0) {
        T t10 = (T) nextSlotForCache();
        if (t10 == Composer.Companion.getEmpty() || z10) {
            T invoke = function0.invoke();
            updateCachedValue(invoke);
            return invoke;
        }
        return t10;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(@Nullable Object obj) {
        if (Intrinsics.areEqual(nextSlot(), obj)) {
            return false;
        }
        updateValue(obj);
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changedInstance(@Nullable Object obj) {
        if (nextSlot() != obj) {
            updateValue(obj);
            return true;
        }
        return false;
    }

    public final void changesApplied$runtime() {
        this.providerUpdates = null;
    }

    @Override // androidx.compose.runtime.Composer
    public void collectParameterInformation() {
        this.forceRecomposeScopes = true;
        this.sourceMarkersEnabled = true;
        this.slotTable.collectSourceInformation();
        this.insertTable.collectSourceInformation();
        this.writer.updateToTableMaps();
    }

    /* renamed from: composeContent--ZbOJvo$runtime  reason: not valid java name */
    public final void m1317composeContentZbOJvo$runtime(@NotNull MutableScatterMap<Object, Object> mutableScatterMap, @NotNull Function2<? super Composer, ? super Integer, Unit> function2, @Nullable ShouldPauseCallback shouldPauseCallback) {
        if (!this.changes.isEmpty()) {
            ComposerKt.composeImmediateRuntimeError("Expected applyChanges() to have been called");
        }
        this.shouldPauseCallback = shouldPauseCallback;
        try {
            m1315doComposeaFTiNEg(mutableScatterMap, function2);
        } finally {
            this.shouldPauseCallback = null;
        }
    }

    @Override // androidx.compose.runtime.Composer
    @InternalComposeApi
    public <T> T consume(@NotNull CompositionLocal<T> compositionLocal) {
        return (T) CompositionLocalMapKt.read(currentCompositionLocalScope(), compositionLocal);
    }

    @Override // androidx.compose.runtime.Composer
    public <T> void createNode(@NotNull Function0<? extends T> function0) {
        validateNodeExpected();
        if (!getInserting()) {
            ComposerKt.composeImmediateRuntimeError("createNode() can only be called when inserting");
        }
        int peek = this.parentStateStack.peek();
        SlotWriter slotWriter = this.writer;
        Anchor anchor = slotWriter.anchor(slotWriter.getParent());
        this.groupNodeCount++;
        this.insertFixups.createAndInsertNode(function0, peek, anchor);
    }

    public final void deactivate$runtime() {
        Stack.m1359clearimpl(this.invalidateStack);
        this.invalidations.clear();
        this.changes.clear();
        this.providerUpdates = null;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void deactivateToEndGroup(boolean z10) {
        boolean z11;
        if (this.groupNodeCount == 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z11) {
            ComposerKt.composeImmediateRuntimeError("No nodes can be emitted before calling dactivateToEndGroup");
        }
        if (!getInserting()) {
            if (!z10) {
                skipReaderToGroupEnd();
                return;
            }
            int currentGroup = this.reader.getCurrentGroup();
            int currentEnd = this.reader.getCurrentEnd();
            this.changeListWriter.deactivateCurrentGroup();
            ComposerKt.removeRange(this.invalidations, currentGroup, currentEnd);
            this.reader.skipToGroupEnd();
        }
    }

    @Override // androidx.compose.runtime.Composer
    public void disableReusing() {
        this.reusing = false;
    }

    @Override // androidx.compose.runtime.Composer
    public void disableSourceInformation() {
        this.sourceMarkersEnabled = false;
    }

    public final void dispose$runtime() {
        Trace trace = Trace.INSTANCE;
        Object beginSection = trace.beginSection("Compose:Composer.dispose");
        try {
            this.parentContext.unregisterComposer$runtime(this);
            deactivate$runtime();
            getApplier().clear();
            this.isDisposed = true;
            Unit unit = Unit.f60915a;
            trace.endSection(beginSection);
        } catch (Throwable th2) {
            Trace.INSTANCE.endSection(beginSection);
            throw th2;
        }
    }

    @Override // androidx.compose.runtime.Composer
    public void enableReusing() {
        boolean z10;
        if (this.reusingGroup >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.reusing = z10;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void endDefaults() {
        endGroup();
        RecomposeScopeImpl currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime();
        if (currentRecomposeScope$runtime != null && currentRecomposeScope$runtime.getUsed()) {
            currentRecomposeScope$runtime.setDefaultsInScope(true);
        }
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void endMovableGroup() {
        endGroup();
    }

    @Override // androidx.compose.runtime.Composer
    public void endNode() {
        end(true);
    }

    @Override // androidx.compose.runtime.Composer
    @InternalComposeApi
    public void endProvider() {
        boolean asBool;
        endGroup();
        endGroup();
        asBool = ComposerKt.asBool(this.providersInvalidStack.pop());
        this.providersInvalid = asBool;
        this.providerCache = null;
    }

    @Override // androidx.compose.runtime.Composer
    @InternalComposeApi
    public void endProviders() {
        boolean asBool;
        endGroup();
        endGroup();
        asBool = ComposerKt.asBool(this.providersInvalidStack.pop());
        this.providersInvalid = asBool;
        this.providerCache = null;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void endReplaceGroup() {
        endGroup();
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void endReplaceableGroup() {
        endGroup();
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    @Nullable
    public ScopeUpdateScope endRestartGroup() {
        RecomposeScopeImpl recomposeScopeImpl;
        Anchor anchor;
        RecomposeScopeImpl recomposeScopeImpl2 = null;
        if (Stack.m1367isNotEmptyimpl(this.invalidateStack)) {
            recomposeScopeImpl = (RecomposeScopeImpl) Stack.m1370popimpl(this.invalidateStack);
        } else {
            recomposeScopeImpl = null;
        }
        if (recomposeScopeImpl != null) {
            recomposeScopeImpl.setRequiresRecompose(false);
            Function1<Composition, Unit> exitRecomposeScope = exitRecomposeScope(recomposeScopeImpl);
            if (exitRecomposeScope != null) {
                this.changeListWriter.endCompositionScope(exitRecomposeScope, getComposition());
            }
            if (recomposeScopeImpl.getResuming()) {
                recomposeScopeImpl.setResuming(false);
                this.changeListWriter.endResumingScope(recomposeScopeImpl);
                recomposeScopeImpl.setReusing(false);
                if (recomposeScopeImpl.getResetReusing()) {
                    recomposeScopeImpl.setResetReusing(false);
                    this.reusing = false;
                }
            }
        }
        if (recomposeScopeImpl != null && !recomposeScopeImpl.getSkipped$runtime() && (recomposeScopeImpl.getUsed() || this.forceRecomposeScopes)) {
            if (recomposeScopeImpl.getAnchor() == null) {
                if (getInserting()) {
                    SlotWriter slotWriter = this.writer;
                    anchor = slotWriter.anchor(slotWriter.getParent());
                } else {
                    SlotReader slotReader = this.reader;
                    anchor = slotReader.anchor(slotReader.getParent());
                }
                recomposeScopeImpl.setAnchor(anchor);
            }
            recomposeScopeImpl.setDefaultsInvalid(false);
            recomposeScopeImpl2 = recomposeScopeImpl;
        }
        end(false);
        return recomposeScopeImpl2;
    }

    @Override // androidx.compose.runtime.Composer
    public void endReusableGroup() {
        if (this.reusing && this.reader.getParent() == this.reusingGroup) {
            this.reusingGroup = -1;
            this.reusing = false;
        }
        end(false);
    }

    public final void endReuseFromRoot() {
        boolean z10;
        if (!this.isComposing && this.reusingGroup == 100) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalArgumentException("Cannot disable reuse from root if it was caused by other groups");
        }
        this.reusingGroup = -1;
        this.reusing = false;
    }

    @Override // androidx.compose.runtime.Composer
    public void endToMarker(int i10) {
        if (i10 < 0) {
            int i11 = -i10;
            SlotWriter slotWriter = this.writer;
            while (true) {
                int parent = slotWriter.getParent();
                if (parent > i11) {
                    end(slotWriter.isNode(parent));
                } else {
                    return;
                }
            }
        } else {
            if (getInserting()) {
                SlotWriter slotWriter2 = this.writer;
                while (getInserting()) {
                    end(slotWriter2.isNode(slotWriter2.getParent()));
                }
            }
            SlotReader slotReader = this.reader;
            while (true) {
                int parent2 = slotReader.getParent();
                if (parent2 > i10) {
                    end(slotReader.isNode(parent2));
                } else {
                    return;
                }
            }
        }
    }

    public final boolean forceRecomposeScopes$runtime() {
        if (!this.forceRecomposeScopes) {
            this.forceRecomposeScopes = true;
            this.forciblyRecompose = true;
            return true;
        }
        return false;
    }

    @Override // androidx.compose.runtime.Composer
    @NotNull
    public Applier<?> getApplier() {
        return this.applier;
    }

    @Override // androidx.compose.runtime.Composer
    @NotNull
    public CoroutineContext getApplyCoroutineContext() {
        return this.applyCoroutineContext;
    }

    public final boolean getAreChildrenComposing$runtime() {
        if (this.childrenComposing > 0) {
            return true;
        }
        return false;
    }

    public final int getChangeCount$runtime() {
        return this.changes.getSize();
    }

    @Override // androidx.compose.runtime.Composer
    public long getCompositeKeyHashCode() {
        return this.compositeKeyHashCode;
    }

    @Override // androidx.compose.runtime.Composer
    @NotNull
    public CompositionData getCompositionData() {
        CompositionData compositionData = this._compositionData;
        if (compositionData == null) {
            CompositionDataImpl compositionDataImpl = new CompositionDataImpl(getComposition());
            this._compositionData = compositionDataImpl;
            return compositionDataImpl;
        }
        return compositionData;
    }

    @Override // androidx.compose.runtime.Composer
    @NotNull
    public CompositionLocalMap getCurrentCompositionLocalMap() {
        return currentCompositionLocalScope();
    }

    @Override // androidx.compose.runtime.Composer
    public int getCurrentMarker() {
        if (getInserting()) {
            return -this.writer.getParent();
        }
        return this.reader.getParent();
    }

    @Nullable
    public final RecomposeScopeImpl getCurrentRecomposeScope$runtime() {
        ArrayList arrayList = this.invalidateStack;
        if (this.childrenComposing == 0 && Stack.m1367isNotEmptyimpl(arrayList)) {
            return (RecomposeScopeImpl) Stack.m1368peekimpl(arrayList);
        }
        return null;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean getDefaultsInvalid() {
        if (!getSkipping() || this.providersInvalid) {
            return true;
        }
        RecomposeScopeImpl currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime();
        if (currentRecomposeScope$runtime != null && currentRecomposeScope$runtime.getDefaultsInvalid()) {
            return true;
        }
        return false;
    }

    @Nullable
    public final ChangeList getDeferredChanges$runtime() {
        return this.deferredChanges;
    }

    @Nullable
    public final CompositionErrorContextImpl getErrorContext$runtime() {
        if (this.sourceMarkersEnabled) {
            return this.errorContext;
        }
        return null;
    }

    public final boolean getHasInvalidations() {
        return !this.invalidations.isEmpty();
    }

    public final boolean getHasPendingChanges$runtime() {
        return this.changes.isNotEmpty();
    }

    @NotNull
    public final SlotTable getInsertTable$runtime() {
        return this.insertTable;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean getInserting() {
        return this.inserting;
    }

    @NotNull
    public final SlotReader getReader$runtime() {
        return this.reader;
    }

    @Override // androidx.compose.runtime.Composer
    @Nullable
    public RecomposeScope getRecomposeScope() {
        return getCurrentRecomposeScope$runtime();
    }

    @Override // androidx.compose.runtime.Composer
    @Nullable
    public Object getRecomposeScopeIdentity() {
        RecomposeScopeImpl currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime();
        if (currentRecomposeScope$runtime != null) {
            return currentRecomposeScope$runtime.getAnchor();
        }
        return null;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean getSkipping() {
        RecomposeScopeImpl currentRecomposeScope$runtime;
        if (!getInserting() && !this.reusing && !this.providersInvalid && (currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime()) != null && !currentRecomposeScope$runtime.getRequiresRecompose() && !this.forciblyRecompose) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.runtime.Composer
    @InternalComposeApi
    public void insertMovableContent(@NotNull MovableContent<?> movableContent, @Nullable Object obj) {
        Intrinsics.checkNotNull(movableContent, "null cannot be cast to non-null type androidx.compose.runtime.MovableContent<kotlin.Any?>");
        invokeMovableContentLambda(movableContent, currentCompositionLocalScope(), obj, false);
    }

    @Override // androidx.compose.runtime.Composer
    @InternalComposeApi
    public void insertMovableContentReferences(@NotNull List<Pair<MovableContentStateReference, MovableContentStateReference>> list) {
        try {
            insertMovableContentGuarded(list);
            cleanUpCompose();
        } catch (Throwable th2) {
            abortRoot();
            throw th2;
        }
    }

    public final boolean isComposing$runtime() {
        return this.isComposing;
    }

    public final boolean isDisposed$runtime() {
        return this.isDisposed;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    @NotNull
    public Object joinKey(@Nullable Object obj, @Nullable Object obj2) {
        Object key;
        key = ComposerKt.getKey(this.reader.getGroupObjectKey(), obj, obj2);
        if (key == null) {
            return new JoinedKey(obj, obj2);
        }
        return key;
    }

    @Nullable
    public final Object nextSlot() {
        if (getInserting()) {
            validateNodeNotExpected();
            return Composer.Companion.getEmpty();
        }
        Object next = this.reader.next();
        if (this.reusing && !(next instanceof ReusableRememberObserver)) {
            return Composer.Companion.getEmpty();
        }
        return next;
    }

    @Nullable
    public final Object nextSlotForCache() {
        if (getInserting()) {
            validateNodeNotExpected();
            return Composer.Companion.getEmpty();
        }
        Object next = this.reader.next();
        if (this.reusing && !(next instanceof ReusableRememberObserver)) {
            return Composer.Companion.getEmpty();
        }
        if (next instanceof RememberObserverHolder) {
            return ((RememberObserverHolder) next).getWrapped();
        }
        return next;
    }

    @TestOnly
    public final int parentKey$runtime() {
        if (getInserting()) {
            SlotWriter slotWriter = this.writer;
            return slotWriter.groupKey(slotWriter.getParent());
        }
        SlotReader slotReader = this.reader;
        return slotReader.groupKey(slotReader.getParent());
    }

    @NotNull
    public final List<ComposeStackTraceFrame> parentStackTrace() {
        CompositionImpl compositionImpl;
        Composition composition$runtime = this.parentContext.getComposition$runtime();
        if (composition$runtime instanceof CompositionImpl) {
            compositionImpl = (CompositionImpl) composition$runtime;
        } else {
            compositionImpl = null;
        }
        if (compositionImpl == null) {
            return CollectionsKt.n();
        }
        Integer findSubcompositionContextGroup = ComposeStackTraceBuilderKt.findSubcompositionContextGroup(compositionImpl.getSlotTable$runtime(), this.parentContext);
        if (findSubcompositionContextGroup != null) {
            SlotReader openReader = compositionImpl.getSlotTable$runtime().openReader();
            try {
                return ComposeStackTraceBuilderKt.traceForGroup(openReader, findSubcompositionContextGroup.intValue(), 0);
            } finally {
                openReader.close();
            }
        }
        return CollectionsKt.n();
    }

    public final void prepareCompose$runtime(@NotNull Function0<Unit> function0) {
        if (this.isComposing) {
            ComposerKt.composeImmediateRuntimeError("Preparing a composition while composing is not supported");
        }
        this.isComposing = true;
        try {
            function0.invoke();
        } finally {
            this.isComposing = false;
        }
    }

    /* renamed from: recompose-aFTiNEg$runtime  reason: not valid java name */
    public final boolean m1318recomposeaFTiNEg$runtime(@NotNull MutableScatterMap<Object, Object> mutableScatterMap, @Nullable ShouldPauseCallback shouldPauseCallback) {
        if (!this.changes.isEmpty()) {
            ComposerKt.composeImmediateRuntimeError("Expected applyChanges() to have been called");
        }
        if (ScopeMap.m1481getSizeimpl(mutableScatterMap) <= 0 && this.invalidations.isEmpty() && !this.forciblyRecompose) {
            return false;
        }
        this.shouldPauseCallback = shouldPauseCallback;
        try {
            m1315doComposeaFTiNEg(mutableScatterMap, null);
            this.shouldPauseCallback = null;
            return this.changes.isNotEmpty();
        } catch (Throwable th2) {
            this.shouldPauseCallback = null;
            throw th2;
        }
    }

    @Override // androidx.compose.runtime.Composer
    public void recordSideEffect(@NotNull Function0<Unit> function0) {
        this.changeListWriter.sideEffect(function0);
    }

    @Override // androidx.compose.runtime.Composer
    public void recordUsed(@NotNull RecomposeScope recomposeScope) {
        RecomposeScopeImpl recomposeScopeImpl;
        if (recomposeScope instanceof RecomposeScopeImpl) {
            recomposeScopeImpl = (RecomposeScopeImpl) recomposeScope;
        } else {
            recomposeScopeImpl = null;
        }
        if (recomposeScopeImpl != null) {
            recomposeScopeImpl.setUsed(true);
        }
    }

    @Override // androidx.compose.runtime.Composer
    @Nullable
    public Object rememberedValue() {
        return nextSlotForCache();
    }

    public final void setDeferredChanges$runtime(@Nullable ChangeList changeList) {
        this.deferredChanges = changeList;
    }

    public final void setInsertTable$runtime(@NotNull SlotTable slotTable) {
        this.insertTable = slotTable;
    }

    public final void setReader$runtime(@NotNull SlotReader slotReader) {
        this.reader = slotReader;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean shouldExecute(boolean z10, int i10) {
        RecomposeScopeImpl currentRecomposeScope$runtime;
        if ((i10 & 1) == 0 && (getInserting() || this.reusing)) {
            ShouldPauseCallback shouldPauseCallback = this.shouldPauseCallback;
            if (shouldPauseCallback == null || (currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime()) == null || !shouldPauseCallback.shouldPause()) {
                return true;
            }
            currentRecomposeScope$runtime.setUsed(true);
            currentRecomposeScope$runtime.setReusing(this.reusing);
            currentRecomposeScope$runtime.setPaused(true);
            this.changeListWriter.rememberPausingScope(currentRecomposeScope$runtime);
            this.parentContext.reportPausedScope$runtime(currentRecomposeScope$runtime);
            return false;
        } else if (z10 || !getSkipping()) {
            return true;
        } else {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ca  */
    @Override // androidx.compose.runtime.Composer
    @androidx.compose.runtime.ComposeCompilerApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void skipCurrentGroup() {
        /*
            r13 = this;
            java.util.List<androidx.compose.runtime.Invalidation> r0 = r13.invalidations
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Ld
            r13.skipGroup()
            goto Le7
        Ld:
            androidx.compose.runtime.SlotReader r0 = r13.reader
            int r1 = r0.getGroupKey()
            java.lang.Object r2 = r0.getGroupObjectKey()
            java.lang.Object r3 = r0.getGroupAux()
            int r4 = r13.rGroupIndex
            r5 = 207(0xcf, float:2.9E-43)
            r6 = 0
            r7 = 3
            if (r2 != 0) goto L5e
            if (r3 == 0) goto L4b
            if (r1 != r5) goto L4b
            androidx.compose.runtime.Composer$Companion r8 = androidx.compose.runtime.Composer.Companion
            java.lang.Object r8 = r8.getEmpty()
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r8)
            if (r8 != 0) goto L4b
            int r8 = r3.hashCode()
            long r9 = r13.getCompositeKeyHashCode()
            long r9 = java.lang.Long.rotateLeft(r9, r7)
            long r11 = (long) r8
            long r8 = r9 ^ r11
            long r8 = java.lang.Long.rotateLeft(r8, r7)
            long r10 = (long) r4
            long r8 = r8 ^ r10
            r13.compositeKeyHashCode = r8
            goto L7f
        L4b:
            long r8 = r13.getCompositeKeyHashCode()
            long r8 = java.lang.Long.rotateLeft(r8, r7)
            long r10 = (long) r1
            long r8 = r8 ^ r10
            long r8 = java.lang.Long.rotateLeft(r8, r7)
            long r10 = (long) r4
        L5a:
            long r8 = r8 ^ r10
            r13.compositeKeyHashCode = r8
            goto L7f
        L5e:
            boolean r8 = r2 instanceof java.lang.Enum
            if (r8 == 0) goto L7a
            r8 = r2
            java.lang.Enum r8 = (java.lang.Enum) r8
            int r8 = r8.ordinal()
        L69:
            long r9 = r13.getCompositeKeyHashCode()
            long r9 = java.lang.Long.rotateLeft(r9, r7)
            long r11 = (long) r8
            long r8 = r9 ^ r11
            long r8 = java.lang.Long.rotateLeft(r8, r7)
            long r10 = (long) r6
            goto L5a
        L7a:
            int r8 = r2.hashCode()
            goto L69
        L7f:
            boolean r8 = r0.isNode()
            r9 = 0
            r13.startReaderGroup(r8, r9)
            r13.recomposeToGroupEnd()
            r0.endGroup()
            if (r2 != 0) goto Lca
            if (r3 == 0) goto Lb7
            if (r1 != r5) goto Lb7
            androidx.compose.runtime.Composer$Companion r0 = androidx.compose.runtime.Composer.Companion
            java.lang.Object r0 = r0.getEmpty()
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r0)
            if (r0 != 0) goto Lb7
            int r0 = r3.hashCode()
            long r1 = r13.getCompositeKeyHashCode()
            long r3 = (long) r4
            long r1 = r1 ^ r3
            long r1 = java.lang.Long.rotateRight(r1, r7)
            long r3 = (long) r0
            long r0 = r1 ^ r3
            long r0 = java.lang.Long.rotateRight(r0, r7)
            r13.compositeKeyHashCode = r0
            goto Le7
        Lb7:
            long r2 = r13.getCompositeKeyHashCode()
            long r4 = (long) r4
            long r2 = r2 ^ r4
            long r2 = java.lang.Long.rotateRight(r2, r7)
            long r0 = (long) r1
            long r0 = r0 ^ r2
        Lc3:
            long r0 = java.lang.Long.rotateRight(r0, r7)
            r13.compositeKeyHashCode = r0
            goto Le7
        Lca:
            boolean r0 = r2 instanceof java.lang.Enum
            if (r0 == 0) goto Le2
            java.lang.Enum r2 = (java.lang.Enum) r2
            int r0 = r2.ordinal()
        Ld4:
            long r1 = r13.getCompositeKeyHashCode()
            long r3 = (long) r6
            long r1 = r1 ^ r3
            long r1 = java.lang.Long.rotateRight(r1, r7)
            long r3 = (long) r0
            long r0 = r1 ^ r3
            goto Lc3
        Le2:
            int r0 = r2.hashCode()
            goto Ld4
        Le7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ComposerImpl.skipCurrentGroup():void");
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void skipToGroupEnd() {
        boolean z10;
        if (this.groupNodeCount == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("No nodes can be emitted before calling skipAndEndGroup");
        }
        if (!getInserting()) {
            RecomposeScopeImpl currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime();
            if (currentRecomposeScope$runtime != null) {
                currentRecomposeScope$runtime.scopeSkipped();
            }
            if (this.invalidations.isEmpty()) {
                skipReaderToGroupEnd();
            } else {
                recomposeToGroupEnd();
            }
        }
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void sourceInformation(@NotNull String str) {
        if (getInserting() && this.sourceMarkersEnabled) {
            this.writer.recordGroupSourceInformation(str);
        }
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void sourceInformationMarkerEnd() {
        if (getInserting() && this.sourceMarkersEnabled) {
            this.writer.recordGrouplessCallSourceInformationEnd();
        }
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void sourceInformationMarkerStart(int i10, @NotNull String str) {
        if (getInserting() && this.sourceMarkersEnabled) {
            this.writer.recordGrouplessCallSourceInformationStart(i10, str);
        }
    }

    @NotNull
    public final List<ComposeStackTraceFrame> stackTraceForValue$runtime(@Nullable final Object obj) {
        List<ComposeStackTraceFrame> K0;
        if (!this.sourceMarkersEnabled) {
            return CollectionsKt.n();
        }
        ObjectLocation findLocation = ComposeStackTraceBuilderKt.findLocation(this.slotTable, new Function1() { // from class: androidx.compose.runtime.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                boolean stackTraceForValue$lambda$43;
                stackTraceForValue$lambda$43 = ComposerImpl.stackTraceForValue$lambda$43(obj, obj2);
                return Boolean.valueOf(stackTraceForValue$lambda$43);
            }
        });
        if (findLocation == null || (K0 = CollectionsKt.K0(stackTraceForGroup(findLocation.component1(), findLocation.component2()), parentStackTrace())) == null) {
            return CollectionsKt.n();
        }
        return K0;
    }

    public final int stacksSize$runtime() {
        return this.entersStack.tos + Stack.m1364getSizeimpl(this.invalidateStack) + this.providersInvalidStack.tos + Stack.m1364getSizeimpl(this.pendingStack) + this.parentStateStack.tos;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void startDefaults() {
        m1316startBaiHCIY(ComposerKt.defaultsKey, null, GroupKind.Companion.m1330getGroupULZAiWs(), null);
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void startMovableGroup(int i10, @Nullable Object obj) {
        m1316startBaiHCIY(i10, obj, GroupKind.Companion.m1330getGroupULZAiWs(), null);
    }

    @Override // androidx.compose.runtime.Composer
    public void startNode() {
        m1316startBaiHCIY(125, null, GroupKind.Companion.m1331getNodeULZAiWs(), null);
        this.nodeExpected = true;
    }

    @Override // androidx.compose.runtime.Composer
    @InternalComposeApi
    public void startProvider(@NotNull ProvidedValue<?> providedValue) {
        ValueHolder<Object> valueHolder;
        int asInt;
        PersistentCompositionLocalMap currentCompositionLocalScope = currentCompositionLocalScope();
        startGroup(201, ComposerKt.getProvider());
        Object rememberedValue = rememberedValue();
        if (Intrinsics.areEqual(rememberedValue, Composer.Companion.getEmpty())) {
            valueHolder = null;
        } else {
            Intrinsics.checkNotNull(rememberedValue, "null cannot be cast to non-null type androidx.compose.runtime.ValueHolder<kotlin.Any?>");
            valueHolder = (ValueHolder) rememberedValue;
        }
        CompositionLocal<Object> compositionLocal = providedValue.getCompositionLocal();
        Intrinsics.checkNotNull(compositionLocal, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>");
        Intrinsics.checkNotNull(providedValue, "null cannot be cast to non-null type androidx.compose.runtime.ProvidedValue<kotlin.Any?>");
        ValueHolder<Object> updatedStateOf$runtime = compositionLocal.updatedStateOf$runtime(providedValue, valueHolder);
        boolean areEqual = Intrinsics.areEqual(updatedStateOf$runtime, valueHolder);
        if (!areEqual) {
            updateRememberedValue(updatedStateOf$runtime);
        }
        boolean z10 = true;
        boolean z11 = false;
        if (getInserting()) {
            if (providedValue.getCanOverride() || !CompositionLocalMapKt.contains(currentCompositionLocalScope, compositionLocal)) {
                currentCompositionLocalScope = currentCompositionLocalScope.putValue(compositionLocal, updatedStateOf$runtime);
            }
            this.writerHasAProvider = true;
        } else {
            SlotReader slotReader = this.reader;
            Object groupAux = slotReader.groupAux(slotReader.getCurrentGroup());
            Intrinsics.checkNotNull(groupAux, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap");
            PersistentCompositionLocalMap persistentCompositionLocalMap = (PersistentCompositionLocalMap) groupAux;
            if ((getSkipping() && areEqual) || (!providedValue.getCanOverride() && CompositionLocalMapKt.contains(currentCompositionLocalScope, compositionLocal))) {
                if ((areEqual && !this.providersInvalid) || !this.providersInvalid) {
                    currentCompositionLocalScope = persistentCompositionLocalMap;
                }
            } else {
                currentCompositionLocalScope = currentCompositionLocalScope.putValue(compositionLocal, updatedStateOf$runtime);
            }
            if (!this.reusing && persistentCompositionLocalMap == currentCompositionLocalScope) {
                z10 = false;
            }
            z11 = z10;
        }
        if (z11 && !getInserting()) {
            recordProviderUpdate(currentCompositionLocalScope);
        }
        IntStack intStack = this.providersInvalidStack;
        asInt = ComposerKt.asInt(this.providersInvalid);
        intStack.push(asInt);
        this.providersInvalid = z11;
        this.providerCache = currentCompositionLocalScope;
        m1316startBaiHCIY(202, ComposerKt.getCompositionLocalMap(), GroupKind.Companion.m1330getGroupULZAiWs(), currentCompositionLocalScope);
    }

    @Override // androidx.compose.runtime.Composer
    @InternalComposeApi
    public void startProviders(@NotNull ProvidedValue<?>[] providedValueArr) {
        PersistentCompositionLocalMap updateProviderMapGroup;
        int asInt;
        PersistentCompositionLocalMap currentCompositionLocalScope = currentCompositionLocalScope();
        startGroup(201, ComposerKt.getProvider());
        boolean z10 = true;
        boolean z11 = false;
        if (getInserting()) {
            updateProviderMapGroup = updateProviderMapGroup(currentCompositionLocalScope, CompositionLocalMapKt.updateCompositionMap$default(providedValueArr, currentCompositionLocalScope, null, 4, null));
            this.writerHasAProvider = true;
        } else {
            Object groupGet = this.reader.groupGet(0);
            Intrinsics.checkNotNull(groupGet, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap");
            PersistentCompositionLocalMap persistentCompositionLocalMap = (PersistentCompositionLocalMap) groupGet;
            Object groupGet2 = this.reader.groupGet(1);
            Intrinsics.checkNotNull(groupGet2, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap");
            PersistentCompositionLocalMap persistentCompositionLocalMap2 = (PersistentCompositionLocalMap) groupGet2;
            PersistentCompositionLocalMap updateCompositionMap = CompositionLocalMapKt.updateCompositionMap(providedValueArr, currentCompositionLocalScope, persistentCompositionLocalMap2);
            if (getSkipping() && !this.reusing && Intrinsics.areEqual(persistentCompositionLocalMap2, updateCompositionMap)) {
                skipGroup();
                updateProviderMapGroup = persistentCompositionLocalMap;
            } else {
                updateProviderMapGroup = updateProviderMapGroup(currentCompositionLocalScope, updateCompositionMap);
                if (!this.reusing && Intrinsics.areEqual(updateProviderMapGroup, persistentCompositionLocalMap)) {
                    z10 = false;
                }
                z11 = z10;
            }
        }
        if (z11 && !getInserting()) {
            recordProviderUpdate(updateProviderMapGroup);
        }
        IntStack intStack = this.providersInvalidStack;
        asInt = ComposerKt.asInt(this.providersInvalid);
        intStack.push(asInt);
        this.providersInvalid = z11;
        this.providerCache = updateProviderMapGroup;
        m1316startBaiHCIY(202, ComposerKt.getCompositionLocalMap(), GroupKind.Companion.m1330getGroupULZAiWs(), updateProviderMapGroup);
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void startReplaceGroup(int i10) {
        if (this.pending != null) {
            m1316startBaiHCIY(i10, null, GroupKind.Companion.m1330getGroupULZAiWs(), null);
            return;
        }
        validateNodeNotExpected();
        this.compositeKeyHashCode = Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ i10, 3) ^ this.rGroupIndex;
        this.rGroupIndex++;
        SlotReader slotReader = this.reader;
        if (getInserting()) {
            slotReader.beginEmpty();
            this.writer.startGroup(i10, Composer.Companion.getEmpty());
            enterGroup(false, null);
        } else if (slotReader.getGroupKey() == i10 && !slotReader.getHasObjectKey()) {
            slotReader.startGroup();
            enterGroup(false, null);
        } else {
            if (!slotReader.isGroupEnd()) {
                int i11 = this.nodeIndex;
                int currentGroup = slotReader.getCurrentGroup();
                recordDelete();
                this.changeListWriter.removeNode(i11, slotReader.skipGroup());
                ComposerKt.removeRange(this.invalidations, currentGroup, slotReader.getCurrentGroup());
            }
            slotReader.beginEmpty();
            this.inserting = true;
            this.providerCache = null;
            ensureWriter();
            SlotWriter slotWriter = this.writer;
            slotWriter.beginInsert();
            int currentGroup2 = slotWriter.getCurrentGroup();
            slotWriter.startGroup(i10, Composer.Companion.getEmpty());
            this.insertAnchor = slotWriter.anchor(currentGroup2);
            enterGroup(false, null);
        }
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void startReplaceableGroup(int i10) {
        m1316startBaiHCIY(i10, null, GroupKind.Companion.m1330getGroupULZAiWs(), null);
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    @NotNull
    public Composer startRestartGroup(int i10) {
        startReplaceGroup(i10);
        addRecomposeScope();
        return this;
    }

    @Override // androidx.compose.runtime.Composer
    public void startReusableGroup(int i10, @Nullable Object obj) {
        if (!getInserting() && this.reader.getGroupKey() == i10 && !Intrinsics.areEqual(this.reader.getGroupAux(), obj) && this.reusingGroup < 0) {
            this.reusingGroup = this.reader.getCurrentGroup();
            this.reusing = true;
        }
        m1316startBaiHCIY(i10, null, GroupKind.Companion.m1330getGroupULZAiWs(), obj);
    }

    @Override // androidx.compose.runtime.Composer
    public void startReusableNode() {
        m1316startBaiHCIY(125, null, GroupKind.Companion.m1332getReusableNodeULZAiWs(), null);
        this.nodeExpected = true;
    }

    public final void startReuseFromRoot() {
        this.reusingGroup = 100;
        this.reusing = true;
    }

    public final boolean tryImminentInvalidation$runtime(@NotNull RecomposeScopeImpl recomposeScopeImpl, @Nullable Object obj) {
        Anchor anchor = recomposeScopeImpl.getAnchor();
        if (anchor == null) {
            return false;
        }
        int indexFor = anchor.toIndexFor(this.reader.getTable$runtime());
        if (this.isComposing && indexFor >= this.reader.getCurrentGroup()) {
            ComposerKt.insertIfMissing(this.invalidations, indexFor, recomposeScopeImpl, obj);
            return true;
        }
        return false;
    }

    public final void updateCachedValue(@Nullable Object obj) {
        if (obj instanceof RememberObserver) {
            RememberObserverHolder rememberObserverHolder = new RememberObserverHolder((RememberObserver) obj, rememberObserverAnchor());
            if (getInserting()) {
                this.changeListWriter.remember(rememberObserverHolder);
            }
            this.abandonSet.add(obj);
            obj = rememberObserverHolder;
        }
        updateValue(obj);
    }

    /* renamed from: updateComposerInvalidations-RY85e9Y  reason: not valid java name */
    public final void m1319updateComposerInvalidationsRY85e9Y(@NotNull MutableScatterMap<Object, Object> mutableScatterMap) {
        Comparator comparator;
        for (int p10 = CollectionsKt.p(this.invalidations); -1 < p10; p10--) {
            Invalidation invalidation = this.invalidations.get(p10);
            Anchor anchor = invalidation.getScope().getAnchor();
            if (anchor != null && anchor.getValid()) {
                if (invalidation.getLocation() != anchor.getLocation$runtime()) {
                    invalidation.setLocation(anchor.getLocation$runtime());
                }
            } else {
                this.invalidations.remove(p10);
            }
        }
        Object[] objArr = mutableScatterMap.keys;
        Object[] objArr2 = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
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
                            Object obj2 = objArr2[i13];
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl");
                            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj;
                            Anchor anchor2 = recomposeScopeImpl.getAnchor();
                            if (anchor2 != null) {
                                int location$runtime = anchor2.getLocation$runtime();
                                List<Invalidation> list = this.invalidations;
                                if (obj2 == ScopeInvalidated.INSTANCE) {
                                    obj2 = null;
                                }
                                list.add(new Invalidation(recomposeScopeImpl, location$runtime, obj2));
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
        List<Invalidation> list2 = this.invalidations;
        comparator = ComposerKt.InvalidationLocationAscending;
        CollectionsKt.D(list2, comparator);
    }

    @Override // androidx.compose.runtime.Composer
    public void updateRememberedValue(@Nullable Object obj) {
        updateCachedValue(obj);
    }

    public final void updateValue(@Nullable Object obj) {
        if (getInserting()) {
            this.writer.update(obj);
        } else if (this.reader.getHadNext()) {
            int groupSlotIndex = this.reader.getGroupSlotIndex() - 1;
            if (this.changeListWriter.getPastParent()) {
                ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
                SlotReader slotReader = this.reader;
                composerChangeListWriter.updateAnchoredValue(obj, slotReader.anchor(slotReader.getParent()), groupSlotIndex);
                return;
            }
            this.changeListWriter.updateValue(obj, groupSlotIndex);
        } else {
            ComposerChangeListWriter composerChangeListWriter2 = this.changeListWriter;
            SlotReader slotReader2 = this.reader;
            composerChangeListWriter2.appendValue(slotReader2.anchor(slotReader2.getParent()), obj);
        }
    }

    @Override // androidx.compose.runtime.Composer
    public void useNode() {
        validateNodeExpected();
        if (getInserting()) {
            ComposerKt.composeImmediateRuntimeError("useNode() called while inserting");
        }
        Object node = getNode(this.reader);
        this.changeListWriter.moveDown(node);
        if (this.reusing && (node instanceof ComposeNodeLifecycleCallback)) {
            this.changeListWriter.useNode(node);
        }
    }

    public final void verifyConsistent$runtime() {
        this.insertTable.verifyWellFormed();
    }

    private final void startGroup(int i10, Object obj) {
        m1316startBaiHCIY(i10, obj, GroupKind.Companion.m1330getGroupULZAiWs(), null);
    }

    @Override // androidx.compose.runtime.Composer
    @NotNull
    public CompositionImpl getComposition() {
        return this.composition;
    }

    private final PersistentCompositionLocalMap currentCompositionLocalScope(int i10) {
        PersistentCompositionLocalMap persistentCompositionLocalMap;
        if (getInserting() && this.writerHasAProvider) {
            int parent = this.writer.getParent();
            while (parent > 0) {
                if (this.writer.groupKey(parent) == 202 && Intrinsics.areEqual(this.writer.groupObjectKey(parent), ComposerKt.getCompositionLocalMap())) {
                    Object groupAux = this.writer.groupAux(parent);
                    Intrinsics.checkNotNull(groupAux, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap");
                    PersistentCompositionLocalMap persistentCompositionLocalMap2 = (PersistentCompositionLocalMap) groupAux;
                    this.providerCache = persistentCompositionLocalMap2;
                    return persistentCompositionLocalMap2;
                }
                parent = this.writer.parent(parent);
            }
        }
        if (this.reader.getSize() > 0) {
            while (i10 > 0) {
                if (this.reader.groupKey(i10) == 202 && Intrinsics.areEqual(this.reader.groupObjectKey(i10), ComposerKt.getCompositionLocalMap())) {
                    MutableIntObjectMap<PersistentCompositionLocalMap> mutableIntObjectMap = this.providerUpdates;
                    if (mutableIntObjectMap == null || (persistentCompositionLocalMap = mutableIntObjectMap.get(i10)) == null) {
                        Object groupAux2 = this.reader.groupAux(i10);
                        Intrinsics.checkNotNull(groupAux2, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap");
                        persistentCompositionLocalMap = (PersistentCompositionLocalMap) groupAux2;
                    }
                    this.providerCache = persistentCompositionLocalMap;
                    return persistentCompositionLocalMap;
                }
                i10 = this.reader.parent(i10);
            }
        }
        PersistentCompositionLocalMap persistentCompositionLocalMap3 = this.rootProvider;
        this.providerCache = persistentCompositionLocalMap3;
        return persistentCompositionLocalMap3;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(char c10) {
        Object nextSlot = nextSlot();
        if ((nextSlot instanceof Character) && c10 == ((Character) nextSlot).charValue()) {
            return false;
        }
        updateValue(Character.valueOf(c10));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(byte b10) {
        Object nextSlot = nextSlot();
        if ((nextSlot instanceof Byte) && b10 == ((Number) nextSlot).byteValue()) {
            return false;
        }
        updateValue(Byte.valueOf(b10));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(short s10) {
        Object nextSlot = nextSlot();
        if ((nextSlot instanceof Short) && s10 == ((Number) nextSlot).shortValue()) {
            return false;
        }
        updateValue(Short.valueOf(s10));
        return true;
    }

    /* compiled from: Composer.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class CompositionContextHolder implements ReusableRememberObserver {
        public static final int $stable = 8;
        @NotNull
        private final CompositionContextImpl ref;

        public CompositionContextHolder(@NotNull CompositionContextImpl compositionContextImpl) {
            this.ref = compositionContextImpl;
        }

        @NotNull
        public final CompositionContextImpl getRef() {
            return this.ref;
        }

        @Override // androidx.compose.runtime.RememberObserver
        public void onAbandoned() {
            this.ref.dispose();
        }

        @Override // androidx.compose.runtime.RememberObserver
        public void onForgotten() {
            this.ref.dispose();
        }

        @Override // androidx.compose.runtime.RememberObserver
        public void onRemembered() {
        }
    }

    /* compiled from: Composer.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl$CompositionContextImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,5012:1\n1863#2,2:5013\n85#3:5015\n117#3,2:5016\n1#4:5018\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerImpl$CompositionContextImpl\n*L\n4159#1:5013,2\n4226#1:5015\n4226#1:5016,2\n*E\n"})
    /* loaded from: classes.dex */
    public final class CompositionContextImpl extends CompositionContext {
        private final boolean collectingParameterInformation;
        private final boolean collectingSourceInformation;
        private final long compositeKeyHashCode;
        @Nullable
        private Set<Set<CompositionData>> inspectionTables;
        @Nullable
        private final CompositionObserverHolder observerHolder;
        @NotNull
        private final Set<ComposerImpl> composers = new LinkedHashSet();
        @NotNull
        private final MutableState compositionLocalScope$delegate = SnapshotStateKt.mutableStateOf(PersistentCompositionLocalMapKt.persistentCompositionLocalHashMapOf(), SnapshotStateKt.referentialEqualityPolicy());

        public CompositionContextImpl(long j10, boolean z10, boolean z11, @Nullable CompositionObserverHolder compositionObserverHolder) {
            this.compositeKeyHashCode = j10;
            this.collectingParameterInformation = z10;
            this.collectingSourceInformation = z11;
            this.observerHolder = compositionObserverHolder;
        }

        private final PersistentCompositionLocalMap getCompositionLocalScope() {
            return (PersistentCompositionLocalMap) this.compositionLocalScope$delegate.getValue();
        }

        private final void setCompositionLocalScope(PersistentCompositionLocalMap persistentCompositionLocalMap) {
            this.compositionLocalScope$delegate.setValue(persistentCompositionLocalMap);
        }

        @Override // androidx.compose.runtime.CompositionContext
        @ComposableInferredTarget(scheme = "[0[0]]")
        public void composeInitial$runtime(@NotNull ControlledComposition controlledComposition, @NotNull Function2<? super Composer, ? super Integer, Unit> function2) {
            ComposerImpl.this.parentContext.composeInitial$runtime(controlledComposition, function2);
        }

        @Override // androidx.compose.runtime.CompositionContext
        @ComposableInferredTarget(scheme = "[0[0]]")
        @NotNull
        public ScatterSet<RecomposeScopeImpl> composeInitialPaused$runtime(@NotNull ControlledComposition controlledComposition, @NotNull ShouldPauseCallback shouldPauseCallback, @NotNull Function2<? super Composer, ? super Integer, Unit> function2) {
            return ComposerImpl.this.parentContext.composeInitialPaused$runtime(controlledComposition, shouldPauseCallback, function2);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void deletedMovableContent$runtime(@NotNull MovableContentStateReference movableContentStateReference) {
            ComposerImpl.this.parentContext.deletedMovableContent$runtime(movableContentStateReference);
        }

        public final void dispose() {
            if (!this.composers.isEmpty()) {
                Set<Set<CompositionData>> set = this.inspectionTables;
                if (set != null) {
                    for (ComposerImpl composerImpl : this.composers) {
                        for (Set<CompositionData> set2 : set) {
                            set2.remove(composerImpl.slotTable);
                        }
                    }
                }
                this.composers.clear();
            }
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void doneComposing$runtime() {
            ComposerImpl.this.childrenComposing--;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public boolean getCollectingCallByInformation$runtime() {
            return ComposerImpl.this.parentContext.getCollectingCallByInformation$runtime();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public boolean getCollectingParameterInformation$runtime() {
            return this.collectingParameterInformation;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public boolean getCollectingSourceInformation$runtime() {
            return this.collectingSourceInformation;
        }

        @NotNull
        public final Set<ComposerImpl> getComposers() {
            return this.composers;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public long getCompositeKeyHashCode$runtime() {
            return this.compositeKeyHashCode;
        }

        @Override // androidx.compose.runtime.CompositionContext
        @NotNull
        public Composition getComposition$runtime() {
            return ComposerImpl.this.getComposition();
        }

        @Override // androidx.compose.runtime.CompositionContext
        @NotNull
        public PersistentCompositionLocalMap getCompositionLocalScope$runtime() {
            return getCompositionLocalScope();
        }

        @Override // androidx.compose.runtime.CompositionContext
        @NotNull
        public CoroutineContext getEffectCoroutineContext() {
            return ComposerImpl.this.parentContext.getEffectCoroutineContext();
        }

        @Nullable
        public final Set<Set<CompositionData>> getInspectionTables() {
            return this.inspectionTables;
        }

        @Override // androidx.compose.runtime.CompositionContext
        @Nullable
        public CompositionObserverHolder getObserverHolder$runtime() {
            return this.observerHolder;
        }

        @Override // androidx.compose.runtime.CompositionContext
        @NotNull
        public CoroutineContext getRecomposeCoroutineContext$runtime() {
            return CompositionKt.getRecomposeCoroutineContext(ComposerImpl.this.getComposition());
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void insertMovableContent$runtime(@NotNull MovableContentStateReference movableContentStateReference) {
            ComposerImpl.this.parentContext.insertMovableContent$runtime(movableContentStateReference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void invalidate$runtime(@NotNull ControlledComposition controlledComposition) {
            ComposerImpl.this.parentContext.invalidate$runtime(ComposerImpl.this.getComposition());
            ComposerImpl.this.parentContext.invalidate$runtime(controlledComposition);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void invalidateScope$runtime(@NotNull RecomposeScopeImpl recomposeScopeImpl) {
            ComposerImpl.this.parentContext.invalidateScope$runtime(recomposeScopeImpl);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void movableContentStateReleased$runtime(@NotNull MovableContentStateReference movableContentStateReference, @NotNull MovableContentState movableContentState, @NotNull Applier<?> applier) {
            ComposerImpl.this.parentContext.movableContentStateReleased$runtime(movableContentStateReference, movableContentState, applier);
        }

        @Override // androidx.compose.runtime.CompositionContext
        @Nullable
        public MovableContentState movableContentStateResolve$runtime(@NotNull MovableContentStateReference movableContentStateReference) {
            return ComposerImpl.this.parentContext.movableContentStateResolve$runtime(movableContentStateReference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        @NotNull
        public ScatterSet<RecomposeScopeImpl> recomposePaused$runtime(@NotNull ControlledComposition controlledComposition, @NotNull ShouldPauseCallback shouldPauseCallback, @NotNull ScatterSet<RecomposeScopeImpl> scatterSet) {
            return ComposerImpl.this.parentContext.recomposePaused$runtime(controlledComposition, shouldPauseCallback, scatterSet);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void recordInspectionTable$runtime(@NotNull Set<CompositionData> set) {
            Set set2 = this.inspectionTables;
            if (set2 == null) {
                set2 = new HashSet();
                this.inspectionTables = set2;
            }
            set2.add(set);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void registerComposer$runtime(@NotNull Composer composer) {
            Intrinsics.checkNotNull(composer, "null cannot be cast to non-null type androidx.compose.runtime.ComposerImpl");
            super.registerComposer$runtime((ComposerImpl) composer);
            this.composers.add(composer);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void registerComposition$runtime(@NotNull ControlledComposition controlledComposition) {
            ComposerImpl.this.parentContext.registerComposition$runtime(controlledComposition);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void reportPausedScope$runtime(@NotNull RecomposeScopeImpl recomposeScopeImpl) {
            ComposerImpl.this.parentContext.reportPausedScope$runtime(recomposeScopeImpl);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void reportRemovedComposition$runtime(@NotNull ControlledComposition controlledComposition) {
            ComposerImpl.this.parentContext.reportRemovedComposition$runtime(controlledComposition);
        }

        public final void setInspectionTables(@Nullable Set<Set<CompositionData>> set) {
            this.inspectionTables = set;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void startComposing$runtime() {
            ComposerImpl.this.childrenComposing++;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void unregisterComposer$runtime(@NotNull Composer composer) {
            Set<Set<CompositionData>> set = this.inspectionTables;
            if (set != null) {
                Iterator<T> it = set.iterator();
                while (it.hasNext()) {
                    Intrinsics.checkNotNull(composer, "null cannot be cast to non-null type androidx.compose.runtime.ComposerImpl");
                    ((Set) it.next()).remove(((ComposerImpl) composer).slotTable);
                }
            }
            TypeIntrinsics.asMutableCollection(this.composers).remove(composer);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void unregisterComposition$runtime(@NotNull ControlledComposition controlledComposition) {
            ComposerImpl.this.parentContext.unregisterComposition$runtime(controlledComposition);
        }

        public final void updateCompositionLocalScope(@NotNull PersistentCompositionLocalMap persistentCompositionLocalMap) {
            setCompositionLocalScope(persistentCompositionLocalMap);
        }

        public static /* synthetic */ void getRecomposeCoroutineContext$runtime$annotations() {
        }
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(boolean z10) {
        Object nextSlot = nextSlot();
        if ((nextSlot instanceof Boolean) && z10 == ((Boolean) nextSlot).booleanValue()) {
            return false;
        }
        updateValue(Boolean.valueOf(z10));
        return true;
    }

    @InternalComposeApi
    public static /* synthetic */ void getCompositeKeyHashCode$annotations() {
    }

    @ComposeCompilerApi
    public static /* synthetic */ void getDefaultsInvalid$annotations() {
    }

    @ComposeCompilerApi
    public static /* synthetic */ void getInserting$annotations() {
    }

    @ComposeCompilerApi
    public static /* synthetic */ void getSkipping$annotations() {
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(float f10) {
        Object nextSlot = nextSlot();
        if ((nextSlot instanceof Float) && f10 == ((Number) nextSlot).floatValue()) {
            return false;
        }
        updateValue(Float.valueOf(f10));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(long j10) {
        Object nextSlot = nextSlot();
        if ((nextSlot instanceof Long) && j10 == ((Number) nextSlot).longValue()) {
            return false;
        }
        updateValue(Long.valueOf(j10));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(double d10) {
        Object nextSlot = nextSlot();
        if ((nextSlot instanceof Double) && d10 == ((Number) nextSlot).doubleValue()) {
            return false;
        }
        updateValue(Double.valueOf(d10));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(int i10) {
        Object nextSlot = nextSlot();
        if ((nextSlot instanceof Integer) && i10 == ((Number) nextSlot).intValue()) {
            return false;
        }
        updateValue(Integer.valueOf(i10));
        return true;
    }
}
