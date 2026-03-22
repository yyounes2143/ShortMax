package androidx.compose.runtime.internal;

import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.collection.MutableVector;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: RememberEventDispatcher.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nRememberEventDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RememberEventDispatcher.kt\nandroidx/compose/runtime/internal/PausedCompositionRemembers\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,293:1\n1107#2:294\n1085#2,2:295\n424#3,8:297\n*S KotlinDebug\n*F\n+ 1 RememberEventDispatcher.kt\nandroidx/compose/runtime/internal/PausedCompositionRemembers\n*L\n44#1:294\n44#1:295,2\n47#1:297,8\n*E\n"})
/* loaded from: classes.dex */
public final class PausedCompositionRemembers implements RememberObserver {
    public static final int $stable = 8;
    @NotNull
    private final Set<RememberObserver> abandoning;
    @NotNull
    private final MutableVector<RememberObserverHolder> pausedRemembers = new MutableVector<>(new RememberObserverHolder[16], 0);

    public PausedCompositionRemembers(@NotNull Set<RememberObserver> set) {
        this.abandoning = set;
    }

    @NotNull
    public final MutableVector<RememberObserverHolder> getPausedRemembers() {
        return this.pausedRemembers;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        MutableVector<RememberObserverHolder> mutableVector = this.pausedRemembers;
        RememberObserverHolder[] rememberObserverHolderArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i10 = 0; i10 < size; i10++) {
            RememberObserver wrapped = rememberObserverHolderArr[i10].getWrapped();
            this.abandoning.remove(wrapped);
            wrapped.onRemembered();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
    }
}
