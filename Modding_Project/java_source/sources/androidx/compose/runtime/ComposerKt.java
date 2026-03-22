package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Composer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n*L\n1#1,5012:1\n4788#1,4:5014\n4802#1,4:5025\n4788#1,4:5029\n1#2:5013\n1#2:5037\n1#2:5045\n159#3,7:5018\n175#3,4:5033\n180#3,3:5038\n175#3,4:5041\n180#3,3:5046\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n4536#1:5014,4\n4807#1:5025,4\n4809#1:5029,4\n4899#1:5037\n4959#1:5045\n4652#1:5018,7\n4899#1:5033,4\n4899#1:5038,3\n4959#1:5041,4\n4959#1:5046,3\n*E\n"})
/* loaded from: classes.dex */
public final class ComposerKt {
    public static final boolean EnableDebugRuntimeChecks = false;
    private static boolean composeStackTraceEnabled = false;
    public static final int compositionLocalMapKey = 202;
    @Nullable
    private static CompositionTracer compositionTracer = null;
    public static final int defaultsKey = -127;
    private static final int invalidGroupLocation = -2;
    public static final int invocationKey = 200;
    private static final int nodeKey = 125;
    public static final int providerKey = 201;
    public static final int providerMapsKey = 204;
    public static final int providerValuesKey = 203;
    public static final int referenceKey = 206;
    public static final int reuseKey = 207;
    private static final int rootKey = 100;
    @NotNull
    private static final Object invocation = new OpaqueKey("provider");
    @NotNull
    private static final Object provider = new OpaqueKey("provider");
    @NotNull
    private static final Object compositionLocalMap = new OpaqueKey("compositionLocalMap");
    @NotNull
    private static final Object providerValues = new OpaqueKey("providerValues");
    @NotNull
    private static final Object providerMaps = new OpaqueKey("providers");
    @NotNull
    private static final Object reference = new OpaqueKey(TypedValues.Custom.S_REFERENCE);
    @NotNull
    private static final Comparator<Invalidation> InvalidationLocationAscending = new Comparator() { // from class: androidx.compose.runtime.h
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int InvalidationLocationAscending$lambda$13;
            InvalidationLocationAscending$lambda$13 = ComposerKt.InvalidationLocationAscending$lambda$13((Invalidation) obj, (Invalidation) obj2);
            return InvalidationLocationAscending$lambda$13;
        }
    };

    public static final int InvalidationLocationAscending$lambda$13(Invalidation invalidation, Invalidation invalidation2) {
        return Intrinsics.compare(invalidation.getLocation(), invalidation2.getLocation());
    }

    public static final boolean asBool(int i10) {
        if (i10 != 0) {
            return true;
        }
        return false;
    }

    @ComposeCompilerApi
    public static final <T> T cache(@NotNull Composer composer, boolean z10, @NotNull Function0<? extends T> function0) {
        T t10 = (T) composer.rememberedValue();
        if (z10 || t10 == Composer.Companion.getEmpty()) {
            T invoke = function0.invoke();
            composer.updateRememberedValue(invoke);
            return invoke;
        }
        return t10;
    }

    public static final List<Object> collectNodesFrom(SlotTable slotTable, Anchor anchor) {
        ArrayList arrayList = new ArrayList();
        SlotReader openReader = slotTable.openReader();
        try {
            collectNodesFrom$lambda$8$collectFromGroup(openReader, arrayList, slotTable.anchorIndex(anchor));
            Unit unit = Unit.f60915a;
            return arrayList;
        } finally {
            openReader.close();
        }
    }

    private static final void collectNodesFrom$lambda$8$collectFromGroup(SlotReader slotReader, List<Object> list, int i10) {
        if (slotReader.isNode(i10)) {
            list.add(slotReader.node(i10));
            return;
        }
        int i11 = i10 + 1;
        int groupSize = i10 + slotReader.groupSize(i10);
        while (i11 < groupSize) {
            collectNodesFrom$lambda$8$collectFromGroup(slotReader, list, i11);
            i11 += slotReader.groupSize(i11);
        }
    }

    public static final void composeImmediateRuntimeError(@NotNull String str) {
        throw new ComposeRuntimeError("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (" + str + "). Please report to Google or use https://goo.gle/compose-feedback");
    }

    @NotNull
    public static final Void composeRuntimeError(@NotNull String str) {
        throw new ComposeRuntimeError("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (" + str + "). Please report to Google or use https://goo.gle/compose-feedback");
    }

    public static final void deactivateCurrentGroup(@NotNull final SlotWriter slotWriter, @NotNull final RememberManager rememberManager) {
        slotWriter.forAllDataInRememberOrder(slotWriter.getCurrentGroup(), new Function2() { // from class: androidx.compose.runtime.g
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit deactivateCurrentGroup$lambda$3;
                deactivateCurrentGroup$lambda$3 = ComposerKt.deactivateCurrentGroup$lambda$3(RememberManager.this, slotWriter, ((Integer) obj).intValue(), obj2);
                return deactivateCurrentGroup$lambda$3;
            }
        });
    }

    public static final Unit deactivateCurrentGroup$lambda$3(RememberManager rememberManager, SlotWriter slotWriter, int i10, Object obj) {
        if (obj instanceof ComposeNodeLifecycleCallback) {
            rememberManager.deactivating((ComposeNodeLifecycleCallback) obj);
        } else if (obj instanceof RememberObserverHolder) {
            RememberObserverHolder rememberObserverHolder = (RememberObserverHolder) obj;
            if (!(rememberObserverHolder.getWrapped() instanceof ReusableRememberObserver)) {
                removeData(slotWriter, i10, obj);
                rememberManager.forgetting(rememberObserverHolder);
            }
        } else if (obj instanceof RecomposeScopeImpl) {
            removeData(slotWriter, i10, obj);
            ((RecomposeScopeImpl) obj).release();
        }
        return Unit.f60915a;
    }

    public static final void debugRuntimeCheck(boolean z10) {
    }

    private static final int distanceFrom(SlotReader slotReader, int i10, int i11) {
        int i12 = 0;
        while (i10 > 0 && i10 != i11) {
            i10 = slotReader.parent(i10);
            i12++;
        }
        return i12;
    }

    @NotNull
    public static final MovableContentState extractMovableContentAtCurrent(@NotNull final ControlledComposition controlledComposition, @NotNull final MovableContentStateReference movableContentStateReference, @NotNull SlotWriter slotWriter, @Nullable Applier<?> applier) {
        int nodeCount;
        int nodeCount2;
        SlotTable slotTable = new SlotTable();
        if (slotWriter.getCollectingSourceInformation()) {
            slotTable.collectSourceInformation();
        }
        if (slotWriter.getCollectingCalledInformation()) {
            slotTable.collectCalledByInformation();
        }
        int currentGroup = slotWriter.getCurrentGroup();
        if (applier != null && slotWriter.nodeCount(currentGroup) > 0) {
            int parent = slotWriter.getParent();
            while (parent > 0 && !slotWriter.isNode(parent)) {
                parent = slotWriter.parent(parent);
            }
            if (parent >= 0 && slotWriter.isNode(parent)) {
                Object node = slotWriter.node(parent);
                int i10 = parent + 1;
                int groupSize = parent + slotWriter.groupSize(parent);
                int i11 = 0;
                while (i10 < groupSize) {
                    int groupSize2 = slotWriter.groupSize(i10) + i10;
                    if (groupSize2 > currentGroup) {
                        break;
                    }
                    if (slotWriter.isNode(i10)) {
                        nodeCount2 = 1;
                    } else {
                        nodeCount2 = slotWriter.nodeCount(i10);
                    }
                    i11 += nodeCount2;
                    i10 = groupSize2;
                }
                if (slotWriter.isNode(currentGroup)) {
                    nodeCount = 1;
                } else {
                    nodeCount = slotWriter.nodeCount(currentGroup);
                }
                applier.down(node);
                applier.remove(i11, nodeCount);
                applier.up();
            }
        }
        SlotWriter openWriter = slotTable.openWriter();
        try {
            openWriter.beginInsert();
            openWriter.startGroup(MovableContentKt.movableContentKey, movableContentStateReference.getContent$runtime());
            SlotWriter.markGroup$default(openWriter, 0, 1, null);
            openWriter.update(movableContentStateReference.getParameter$runtime());
            List<Anchor> moveTo = slotWriter.moveTo(movableContentStateReference.getAnchor$runtime(), 1, openWriter);
            openWriter.skipGroup();
            openWriter.endGroup();
            openWriter.endInsert();
            openWriter.close(true);
            MovableContentState movableContentState = new MovableContentState(slotTable);
            RecomposeScopeImpl.Companion companion = RecomposeScopeImpl.Companion;
            if (companion.hasAnchoredRecomposeScopes$runtime(slotTable, moveTo)) {
                RecomposeScopeOwner recomposeScopeOwner = new RecomposeScopeOwner() { // from class: androidx.compose.runtime.ComposerKt$extractMovableContentAtCurrent$movableContentRecomposeScopeOwner$1
                    @Override // androidx.compose.runtime.RecomposeScopeOwner
                    public InvalidationResult invalidate(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
                        RecomposeScopeOwner recomposeScopeOwner2;
                        InvalidationResult invalidationResult;
                        ControlledComposition controlledComposition2 = ControlledComposition.this;
                        if (controlledComposition2 instanceof RecomposeScopeOwner) {
                            recomposeScopeOwner2 = (RecomposeScopeOwner) controlledComposition2;
                        } else {
                            recomposeScopeOwner2 = null;
                        }
                        if (recomposeScopeOwner2 == null || (invalidationResult = recomposeScopeOwner2.invalidate(recomposeScopeImpl, obj)) == null) {
                            invalidationResult = InvalidationResult.IGNORED;
                        }
                        if (invalidationResult == InvalidationResult.IGNORED) {
                            MovableContentStateReference movableContentStateReference2 = movableContentStateReference;
                            movableContentStateReference2.setInvalidations$runtime(CollectionsKt.L0(movableContentStateReference2.getInvalidations$runtime(), ms.k.a(recomposeScopeImpl, obj)));
                            return InvalidationResult.SCHEDULED;
                        }
                        return invalidationResult;
                    }

                    @Override // androidx.compose.runtime.RecomposeScopeOwner
                    public void recomposeScopeReleased(RecomposeScopeImpl recomposeScopeImpl) {
                    }

                    @Override // androidx.compose.runtime.RecomposeScopeOwner
                    public void recordReadOf(Object obj) {
                    }
                };
                openWriter = slotTable.openWriter();
                try {
                    companion.adoptAnchoredScopes$runtime(openWriter, moveTo, recomposeScopeOwner);
                    Unit unit = Unit.f60915a;
                    openWriter.close(true);
                } finally {
                }
            }
            return movableContentState;
        } finally {
        }
    }

    public static final int findInsertLocation(List<Invalidation> list, int i10) {
        int findLocation = findLocation(list, i10);
        if (findLocation < 0) {
            return -(findLocation + 1);
        }
        return findLocation;
    }

    private static final int findLocation(List<Invalidation> list, int i10) {
        int size = list.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) >>> 1;
            int compare = Intrinsics.compare(list.get(i12).getLocation(), i10);
            if (compare < 0) {
                i11 = i12 + 1;
            } else if (compare > 0) {
                size = i12 - 1;
            } else {
                return i12;
            }
        }
        return -(i11 + 1);
    }

    public static final Invalidation firstInRange(List<Invalidation> list, int i10, int i11) {
        int findInsertLocation = findInsertLocation(list, i10);
        if (findInsertLocation < list.size()) {
            Invalidation invalidation = list.get(findInsertLocation);
            if (invalidation.getLocation() < i11) {
                return invalidation;
            }
            return null;
        }
        return null;
    }

    private static final void forEachInRange(List<Invalidation> list, int i10, int i11, Function1<? super Invalidation, Unit> function1) {
        for (int findInsertLocation = findInsertLocation(list, i10); findInsertLocation < list.size(); findInsertLocation++) {
            Invalidation invalidation = list.get(findInsertLocation);
            if (invalidation.getLocation() < i11) {
                function1.invoke(invalidation);
            } else {
                return;
            }
        }
    }

    public static final boolean getComposeStackTraceEnabled() {
        return composeStackTraceEnabled;
    }

    @NotNull
    public static final Object getCompositionLocalMap() {
        return compositionLocalMap;
    }

    @NotNull
    public static final Object getInvocation() {
        return invocation;
    }

    public static final Object getJoinedKey(KeyInfo keyInfo) {
        if (keyInfo.getObjectKey() != null) {
            return new JoinedKey(Integer.valueOf(keyInfo.getKey()), keyInfo.getObjectKey());
        }
        return Integer.valueOf(keyInfo.getKey());
    }

    public static final Object getKey(Object obj, Object obj2, Object obj3) {
        JoinedKey joinedKey;
        if (obj instanceof JoinedKey) {
            joinedKey = (JoinedKey) obj;
        } else {
            joinedKey = null;
        }
        if (joinedKey == null) {
            return null;
        }
        if ((!Intrinsics.areEqual(joinedKey.getLeft(), obj2) || !Intrinsics.areEqual(joinedKey.getRight(), obj3)) && (obj = getKey(joinedKey.getLeft(), obj2, obj3)) == null) {
            obj = getKey(joinedKey.getRight(), obj2, obj3);
        }
        return obj;
    }

    public static final int getNextGroup(SlotWriter slotWriter) {
        return slotWriter.getCurrentGroup() + slotWriter.groupSize(slotWriter.getCurrentGroup());
    }

    @NotNull
    public static final Object getProvider() {
        return provider;
    }

    @NotNull
    public static final Object getProviderMaps() {
        return providerMaps;
    }

    @NotNull
    public static final Object getProviderValues() {
        return providerValues;
    }

    @NotNull
    public static final Object getReference() {
        return reference;
    }

    public static final void insertIfMissing(List<Invalidation> list, int i10, RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        int findLocation = findLocation(list, i10);
        if (findLocation < 0) {
            int i11 = -(findLocation + 1);
            if (!(obj instanceof DerivedState)) {
                obj = null;
            }
            list.add(i11, new Invalidation(recomposeScopeImpl, i10, obj));
            return;
        }
        Invalidation invalidation = list.get(findLocation);
        if (obj instanceof DerivedState) {
            Object instances = invalidation.getInstances();
            if (instances == null) {
                invalidation.setInstances(obj);
                return;
            } else if (instances instanceof MutableScatterSet) {
                ((MutableScatterSet) instances).add(obj);
                return;
            } else {
                invalidation.setInstances(ScatterSetKt.mutableScatterSetOf(instances, obj));
                return;
            }
        }
        invalidation.setInstances(null);
    }

    public static final boolean isAfterFirstChild(@NotNull SlotWriter slotWriter) {
        return slotWriter.getCurrentGroup() > slotWriter.getParent() + 1;
    }

    @ComposeCompilerApi
    public static final boolean isTraceInProgress() {
        CompositionTracer compositionTracer2 = compositionTracer;
        if (compositionTracer2 != null && compositionTracer2.isTraceInProgress()) {
            return true;
        }
        return false;
    }

    public static final <K, V> MutableScatterMap<Object, Object> multiMap(int i10) {
        return MultiValueMap.m1454constructorimpl(new MutableScatterMap(i10));
    }

    public static final int nearestCommonRootOf(SlotReader slotReader, int i10, int i11, int i12) {
        if (i10 == i11) {
            return i10;
        }
        if (i10 != i12 && i11 != i12) {
            if (slotReader.parent(i10) == i11) {
                return i11;
            }
            if (slotReader.parent(i11) == i10) {
                return i10;
            }
            if (slotReader.parent(i10) == slotReader.parent(i11)) {
                return slotReader.parent(i10);
            }
            int distanceFrom = distanceFrom(slotReader, i10, i12);
            int distanceFrom2 = distanceFrom(slotReader, i11, i12);
            int i13 = distanceFrom - distanceFrom2;
            for (int i14 = 0; i14 < i13; i14++) {
                i10 = slotReader.parent(i10);
            }
            int i15 = distanceFrom2 - distanceFrom;
            for (int i16 = 0; i16 < i15; i16++) {
                i11 = slotReader.parent(i11);
            }
            while (i10 != i11) {
                i10 = slotReader.parent(i10);
                i11 = slotReader.parent(i11);
            }
            return i10;
        }
        return i12;
    }

    public static final void removeCurrentGroup(@NotNull SlotWriter slotWriter, @NotNull final RememberManager rememberManager) {
        slotWriter.forAllDataInRememberOrder(slotWriter.getCurrentGroup(), new Function2() { // from class: androidx.compose.runtime.i
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit removeCurrentGroup$lambda$2;
                removeCurrentGroup$lambda$2 = ComposerKt.removeCurrentGroup$lambda$2(RememberManager.this, ((Integer) obj).intValue(), obj2);
                return removeCurrentGroup$lambda$2;
            }
        });
        slotWriter.removeGroup();
    }

    public static final Unit removeCurrentGroup$lambda$2(RememberManager rememberManager, int i10, Object obj) {
        if (obj instanceof ComposeNodeLifecycleCallback) {
            rememberManager.releasing((ComposeNodeLifecycleCallback) obj);
        }
        if (obj instanceof RememberObserverHolder) {
            rememberManager.forgetting((RememberObserverHolder) obj);
        }
        if (obj instanceof RecomposeScopeImpl) {
            ((RecomposeScopeImpl) obj).release();
        }
        return Unit.f60915a;
    }

    private static final void removeData(SlotWriter slotWriter, int i10, Object obj) {
        boolean z10;
        Object clear = slotWriter.clear(i10);
        if (obj == clear) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            composeImmediateRuntimeError("Slot table is out of sync (expected " + obj + ", got " + clear + ')');
        }
    }

    public static final Invalidation removeLocation(List<Invalidation> list, int i10) {
        int findLocation = findLocation(list, i10);
        if (findLocation >= 0) {
            return list.remove(findLocation);
        }
        return null;
    }

    public static final void removeRange(List<Invalidation> list, int i10, int i11) {
        int findInsertLocation = findInsertLocation(list, i10);
        while (findInsertLocation < list.size() && list.get(findInsertLocation).getLocation() < i11) {
            list.remove(findInsertLocation);
        }
    }

    public static final void runtimeCheck(boolean z10, @NotNull Function0<String> function0) {
        if (z10) {
            return;
        }
        composeImmediateRuntimeError(function0.invoke());
    }

    public static final void setComposeStackTraceEnabled(boolean z10) {
        composeStackTraceEnabled = z10;
    }

    @ComposeCompilerApi
    public static final void sourceInformation(@NotNull Composer composer, @NotNull String str) {
        composer.sourceInformation(str);
    }

    @ComposeCompilerApi
    public static final void sourceInformationMarkerEnd(@NotNull Composer composer) {
        composer.sourceInformationMarkerEnd();
    }

    @ComposeCompilerApi
    public static final void sourceInformationMarkerStart(@NotNull Composer composer, int i10, @NotNull String str) {
        composer.sourceInformationMarkerStart(i10, str);
    }

    @ComposeCompilerApi
    public static final void traceEventEnd() {
        CompositionTracer compositionTracer2 = compositionTracer;
        if (compositionTracer2 != null) {
            compositionTracer2.traceEventEnd();
        }
    }

    public static final <R> void withAfterAnchorInfo(@NotNull SlotWriter slotWriter, @Nullable Anchor anchor, @NotNull Function2<? super Integer, ? super Integer, ? extends R> function2) {
        int i10;
        int i11;
        if (anchor != null && anchor.getValid()) {
            i10 = slotWriter.anchorIndex(anchor);
            i11 = slotWriter.getSlotsSize() - slotWriter.slotsEndAllIndex$runtime(i10);
        } else {
            i10 = -1;
            i11 = -1;
        }
        function2.invoke(Integer.valueOf(i10), Integer.valueOf(i11));
    }

    public static final void debugRuntimeCheck(boolean z10, @NotNull Function0<String> function0) {
    }

    public static final boolean isAfterFirstChild(@NotNull SlotReader slotReader) {
        return slotReader.getCurrentGroup() > slotReader.getParent() + 1;
    }

    public static final void runtimeCheck(boolean z10) {
        if (z10) {
            return;
        }
        composeImmediateRuntimeError("Check failed");
    }

    @ComposeCompilerApi
    public static final void traceEventStart(int i10, int i11, int i12, @NotNull String str) {
        CompositionTracer compositionTracer2 = compositionTracer;
        if (compositionTracer2 != null) {
            compositionTracer2.traceEventStart(i10, i11, i12, str);
        }
    }

    public static /* synthetic */ void getCompositionLocalMap$annotations() {
    }

    public static /* synthetic */ void getCompositionLocalMapKey$annotations() {
    }

    private static /* synthetic */ void getCompositionTracer$annotations() {
    }

    public static /* synthetic */ void getInvocation$annotations() {
    }

    public static /* synthetic */ void getInvocationKey$annotations() {
    }

    public static /* synthetic */ void getProvider$annotations() {
    }

    public static /* synthetic */ void getProviderKey$annotations() {
    }

    public static /* synthetic */ void getProviderMaps$annotations() {
    }

    public static /* synthetic */ void getProviderMapsKey$annotations() {
    }

    public static /* synthetic */ void getProviderValues$annotations() {
    }

    public static /* synthetic */ void getProviderValuesKey$annotations() {
    }

    public static /* synthetic */ void getReference$annotations() {
    }

    public static /* synthetic */ void getReferenceKey$annotations() {
    }

    public static /* synthetic */ void getReuseKey$annotations() {
    }

    public static final int asInt(boolean z10) {
        return z10 ? 1 : 0;
    }
}
