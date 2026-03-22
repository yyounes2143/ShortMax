package androidx.compose.runtime.internal;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RememberManager;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.Stack;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.tooling.CompositionErrorContext;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RememberEventDispatcher.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nRememberEventDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RememberEventDispatcher.kt\nandroidx/compose/runtime/internal/RememberEventDispatcher\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Trace.kt\nandroidx/compose/runtime/internal/TraceKt\n*L\n1#1,293:1\n287#1,4:315\n291#1:320\n287#1,4:333\n291#1:338\n1107#2:294\n1085#2,2:295\n1107#2:297\n1085#2,2:298\n1107#2:300\n1085#2,2:301\n4802#3,4:303\n643#4,2:307\n519#4:310\n472#4:314\n519#4:322\n424#4,5:328\n429#4,3:339\n519#4:342\n424#4,8:346\n424#4,8:360\n1#5:309\n1#5:319\n1#5:337\n45#6,3:311\n49#6:321\n45#6,5:323\n45#6,3:343\n49#6:354\n45#6,5:355\n*S KotlinDebug\n*F\n+ 1 RememberEventDispatcher.kt\nandroidx/compose/runtime/internal/RememberEventDispatcher\n*L\n204#1:315,4\n204#1:320\n253#1:333,4\n253#1:338\n64#1:294\n64#1:295,2\n67#1:297\n67#1:298,2\n68#1:300\n68#1:301,2\n131#1:303,4\n146#1:307,2\n199#1:310\n203#1:314\n224#1:322\n250#1:328,5\n250#1:339,3\n258#1:342\n260#1:346,8\n120#1:360,8\n204#1:319\n253#1:337\n200#1:311,3\n200#1:321\n225#1:323,5\n259#1:343,3\n259#1:354\n269#1:355,5\n*E\n"})
/* loaded from: classes.dex */
public final class RememberEventDispatcher implements RememberManager {
    public static final int $stable = 8;
    @Nullable
    private Set<RememberObserver> abandoning;
    @NotNull
    private MutableVector<RememberObserverHolder> currentRememberingList;
    @Nullable
    private ScatterSet<RememberObserverHolder> ignoreLeavingSet;
    @NotNull
    private final MutableVector<Object> leaving;
    @Nullable
    private ArrayList nestedRemembersLists;
    @Nullable
    private MutableScatterMap<RecomposeScopeImpl, PausedCompositionRemembers> pausedPlaceholders;
    @Nullable
    private MutableScatterSet<ComposeNodeLifecycleCallback> releasing;
    @NotNull
    private MutableScatterSet<RememberObserverHolder> rememberSet;
    @NotNull
    private final MutableVector<RememberObserverHolder> remembering;
    @NotNull
    private final MutableVector<Function0<Unit>> sideEffects;
    @Nullable
    private CompositionErrorContext traceContext;

    public RememberEventDispatcher() {
        MutableVector<RememberObserverHolder> mutableVector = new MutableVector<>(new RememberObserverHolder[16], 0);
        this.remembering = mutableVector;
        this.rememberSet = ScatterSetKt.mutableScatterSetOf();
        this.currentRememberingList = mutableVector;
        this.leaving = new MutableVector<>(new Object[16], 0);
        this.sideEffects = new MutableVector<>(new Function0[16], 0);
    }

    private final void dispatchRememberList(MutableVector<RememberObserverHolder> mutableVector) {
        Set<RememberObserver> set = this.abandoning;
        if (set == null) {
            return;
        }
        RememberObserverHolder[] rememberObserverHolderArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i10 = 0; i10 < size; i10++) {
            RememberObserverHolder rememberObserverHolder = rememberObserverHolderArr[i10];
            RememberObserver wrapped = rememberObserverHolder.getWrapped();
            set.remove(wrapped);
            try {
                wrapped.onRemembered();
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                CompositionErrorContext compositionErrorContext = this.traceContext;
                if (compositionErrorContext != null) {
                    compositionErrorContext.attachComposeStackTrace(th2, rememberObserverHolder);
                }
                throw th2;
            }
        }
    }

    private static final boolean forgetting$removeFrom(RememberObserverHolder rememberObserverHolder, MutableVector<RememberObserverHolder> mutableVector) {
        RememberObserverHolder[] rememberObserverHolderArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i10 = 0; i10 < size; i10++) {
            RememberObserver wrapped = rememberObserverHolderArr[i10].getWrapped();
            if (wrapped instanceof PausedCompositionRemembers) {
                MutableVector<RememberObserverHolder> pausedRemembers = ((PausedCompositionRemembers) wrapped).getPausedRemembers();
                if (pausedRemembers.remove(rememberObserverHolder) || forgetting$removeFrom(rememberObserverHolder, pausedRemembers)) {
                    return true;
                }
            }
        }
        return false;
    }

    private final void recordLeaving(Object obj) {
        this.leaving.add(obj);
    }

    private final <T> T withComposeStackTrace(Object obj, Function0<? extends T> function0) {
        try {
            return function0.invoke();
        } catch (Throwable th2) {
            CompositionErrorContext compositionErrorContext = this.traceContext;
            if (compositionErrorContext != null) {
                compositionErrorContext.attachComposeStackTrace(th2, obj);
            }
            throw th2;
        }
    }

    public final void clear() {
        this.abandoning = null;
        this.traceContext = null;
        this.remembering.clear();
        this.rememberSet.clear();
        this.currentRememberingList = this.remembering;
        this.leaving.clear();
        this.sideEffects.clear();
        this.releasing = null;
        this.pausedPlaceholders = null;
        this.nestedRemembersLists = null;
    }

    @Override // androidx.compose.runtime.RememberManager
    public void deactivating(@NotNull ComposeNodeLifecycleCallback composeNodeLifecycleCallback) {
        recordLeaving(composeNodeLifecycleCallback);
    }

    public final void dispatchAbandons() {
        Set<RememberObserver> set = this.abandoning;
        if (set != null && !set.isEmpty()) {
            Object beginSection = Trace.INSTANCE.beginSection("Compose:abandons");
            try {
                Iterator<RememberObserver> it = set.iterator();
                while (it.hasNext()) {
                    it.remove();
                    it.next().onAbandoned();
                }
                Unit unit = Unit.f60915a;
                Trace.INSTANCE.endSection(beginSection);
            } catch (Throwable th2) {
                Trace.INSTANCE.endSection(beginSection);
                throw th2;
            }
        }
    }

    public final void dispatchOnDeactivateIfNecessary(@NotNull ComposeNodeLifecycleCallback composeNodeLifecycleCallback) {
        if (this.leaving.remove(composeNodeLifecycleCallback)) {
            composeNodeLifecycleCallback.onDeactivate();
        }
    }

    public final void dispatchRememberObservers() {
        Object beginSection;
        Set<RememberObserver> set = this.abandoning;
        if (set == null) {
            return;
        }
        this.ignoreLeavingSet = null;
        if (this.leaving.getSize() != 0) {
            beginSection = Trace.INSTANCE.beginSection("Compose:onForgotten");
            try {
                ScatterSet scatterSet = this.releasing;
                for (int size = this.leaving.getSize() - 1; -1 < size; size--) {
                    Object obj = this.leaving.content[size];
                    if (obj instanceof RememberObserverHolder) {
                        RememberObserver wrapped = ((RememberObserverHolder) obj).getWrapped();
                        set.remove(wrapped);
                        wrapped.onForgotten();
                    }
                    if (obj instanceof ComposeNodeLifecycleCallback) {
                        if (scatterSet != null && scatterSet.contains(obj)) {
                            ((ComposeNodeLifecycleCallback) obj).onRelease();
                        } else {
                            ((ComposeNodeLifecycleCallback) obj).onDeactivate();
                        }
                    }
                    Unit unit = Unit.f60915a;
                }
                Unit unit2 = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (this.remembering.getSize() != 0) {
            Trace trace = Trace.INSTANCE;
            beginSection = trace.beginSection("Compose:onRemembered");
            try {
                dispatchRememberList(this.remembering);
                Unit unit3 = Unit.f60915a;
                trace.endSection(beginSection);
            } finally {
                Trace.INSTANCE.endSection(beginSection);
            }
        }
    }

    public final void dispatchSideEffects() {
        if (this.sideEffects.getSize() != 0) {
            Object beginSection = Trace.INSTANCE.beginSection("Compose:sideeffects");
            try {
                MutableVector<Function0<Unit>> mutableVector = this.sideEffects;
                Function0<Unit>[] function0Arr = mutableVector.content;
                int size = mutableVector.getSize();
                for (int i10 = 0; i10 < size; i10++) {
                    function0Arr[i10].invoke();
                }
                this.sideEffects.clear();
                Unit unit = Unit.f60915a;
                Trace.INSTANCE.endSection(beginSection);
            } catch (Throwable th2) {
                Trace.INSTANCE.endSection(beginSection);
                throw th2;
            }
        }
    }

    @Override // androidx.compose.runtime.RememberManager
    public void endResumingScope(@NotNull RecomposeScopeImpl recomposeScopeImpl) {
        MutableVector<RememberObserverHolder> mutableVector;
        MutableScatterMap<RecomposeScopeImpl, PausedCompositionRemembers> mutableScatterMap = this.pausedPlaceholders;
        if (mutableScatterMap != null && mutableScatterMap.get(recomposeScopeImpl) != null) {
            ArrayList arrayList = this.nestedRemembersLists;
            if (arrayList != null && (mutableVector = (MutableVector) Stack.m1370popimpl(arrayList)) != null) {
                this.currentRememberingList = mutableVector;
            }
            mutableScatterMap.remove(recomposeScopeImpl);
        }
    }

    @Nullable
    public final ScatterSet<RememberObserverHolder> extractRememberSet() {
        if (this.rememberSet.isNotEmpty()) {
            MutableScatterSet<RememberObserverHolder> mutableScatterSet = this.rememberSet;
            this.rememberSet = ScatterSetKt.mutableScatterSetOf();
            this.remembering.clear();
            return mutableScatterSet;
        }
        return null;
    }

    @Override // androidx.compose.runtime.RememberManager
    public void forgetting(@NotNull RememberObserverHolder rememberObserverHolder) {
        if (this.rememberSet.contains(rememberObserverHolder)) {
            this.rememberSet.remove(rememberObserverHolder);
            if (!this.currentRememberingList.remove(rememberObserverHolder) && !this.remembering.remove(rememberObserverHolder)) {
                forgetting$removeFrom(rememberObserverHolder, this.remembering);
            }
            Set<RememberObserver> set = this.abandoning;
            if (set == null) {
                return;
            }
            set.add(rememberObserverHolder.getWrapped());
        }
        ScatterSet<RememberObserverHolder> scatterSet = this.ignoreLeavingSet;
        if (scatterSet == null || !scatterSet.contains(rememberObserverHolder)) {
            recordLeaving(rememberObserverHolder);
        }
    }

    public final void ignoreForgotten(@NotNull ScatterSet<RememberObserverHolder> scatterSet) {
        this.ignoreLeavingSet = scatterSet;
    }

    public final void prepare(@NotNull Set<RememberObserver> set, @Nullable CompositionErrorContext compositionErrorContext) {
        clear();
        this.abandoning = set;
        this.traceContext = compositionErrorContext;
    }

    @Override // androidx.compose.runtime.RememberManager
    public void releasing(@NotNull ComposeNodeLifecycleCallback composeNodeLifecycleCallback) {
        MutableScatterSet<ComposeNodeLifecycleCallback> mutableScatterSet = this.releasing;
        if (mutableScatterSet == null) {
            mutableScatterSet = ScatterSetKt.mutableScatterSetOf();
            this.releasing = mutableScatterSet;
        }
        mutableScatterSet.plusAssign((MutableScatterSet<ComposeNodeLifecycleCallback>) composeNodeLifecycleCallback);
        recordLeaving(composeNodeLifecycleCallback);
    }

    @Override // androidx.compose.runtime.RememberManager
    public void rememberPausingScope(@NotNull RecomposeScopeImpl recomposeScopeImpl) {
        Set<RememberObserver> set = this.abandoning;
        if (set == null) {
            return;
        }
        PausedCompositionRemembers pausedCompositionRemembers = new PausedCompositionRemembers(set);
        MutableScatterMap<RecomposeScopeImpl, PausedCompositionRemembers> mutableScatterMap = this.pausedPlaceholders;
        if (mutableScatterMap == null) {
            mutableScatterMap = ScatterMapKt.mutableScatterMapOf();
            this.pausedPlaceholders = mutableScatterMap;
        }
        mutableScatterMap.set(recomposeScopeImpl, pausedCompositionRemembers);
        this.currentRememberingList.add(new RememberObserverHolder(pausedCompositionRemembers, null));
    }

    @Override // androidx.compose.runtime.RememberManager
    public void remembering(@NotNull RememberObserverHolder rememberObserverHolder) {
        this.currentRememberingList.add(rememberObserverHolder);
        this.rememberSet.add(rememberObserverHolder);
    }

    @Override // androidx.compose.runtime.RememberManager
    public void sideEffect(@NotNull Function0<Unit> function0) {
        this.sideEffects.add(function0);
    }

    @Override // androidx.compose.runtime.RememberManager
    public void startResumingScope(@NotNull RecomposeScopeImpl recomposeScopeImpl) {
        PausedCompositionRemembers pausedCompositionRemembers;
        MutableScatterMap<RecomposeScopeImpl, PausedCompositionRemembers> mutableScatterMap = this.pausedPlaceholders;
        if (mutableScatterMap != null) {
            pausedCompositionRemembers = mutableScatterMap.get(recomposeScopeImpl);
        } else {
            pausedCompositionRemembers = null;
        }
        if (pausedCompositionRemembers != null) {
            ArrayList arrayList = this.nestedRemembersLists;
            if (arrayList == null) {
                arrayList = Stack.m1361constructorimpl$default(null, 1, null);
                this.nestedRemembersLists = arrayList;
            }
            Stack.m1371pushimpl(arrayList, this.currentRememberingList);
            this.currentRememberingList = pausedCompositionRemembers.getPausedRemembers();
        }
    }

    public final void use(@NotNull Set<RememberObserver> set, @Nullable CompositionErrorContext compositionErrorContext, @NotNull Function1<? super RememberEventDispatcher, Unit> function1) {
        try {
            prepare(set, compositionErrorContext);
            function1.invoke(this);
        } finally {
            InlineMarker.finallyStart(1);
            clear();
            InlineMarker.finallyEnd(1);
        }
    }
}
