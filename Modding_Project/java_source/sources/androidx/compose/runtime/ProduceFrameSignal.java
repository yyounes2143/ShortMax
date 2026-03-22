package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Recomposer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/ProduceFrameSignal\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n*L\n1#1,1894:1\n33#2:1895\n33#2:1905\n318#3,9:1896\n327#3,2:1906\n49#4,4:1908\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/ProduceFrameSignal\n*L\n1816#1:1895\n1823#1:1905\n1822#1:1896,9\n1822#1:1906,2\n1841#1:1908,4\n*E\n"})
/* loaded from: classes.dex */
public final class ProduceFrameSignal {
    @Nullable
    private Object pendingFrameContinuation;

    @Nullable
    public final Object awaitFrameRequest(@NotNull Object obj, @NotNull rs.c<? super Unit> cVar) {
        Object obj2;
        Object obj3;
        kotlinx.coroutines.e eVar;
        Object obj4;
        Object obj5;
        synchronized (obj) {
            Object obj6 = this.pendingFrameContinuation;
            obj2 = RecomposerKt.ProduceAnotherFrame;
            if (obj6 == obj2) {
                obj5 = RecomposerKt.FramePending;
                this.pendingFrameContinuation = obj5;
                return Unit.f60915a;
            }
            Unit unit = Unit.f60915a;
            kotlinx.coroutines.e eVar2 = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
            eVar2.H();
            synchronized (obj) {
                try {
                    Object obj7 = this.pendingFrameContinuation;
                    obj3 = RecomposerKt.ProduceAnotherFrame;
                    if (obj7 == obj3) {
                        obj4 = RecomposerKt.FramePending;
                        this.pendingFrameContinuation = obj4;
                        eVar = eVar2;
                    } else {
                        this.pendingFrameContinuation = eVar2;
                        eVar = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (eVar != null) {
                Result.a aVar = Result.f60901b;
                eVar.resumeWith(Result.d(Unit.f60915a));
            }
            Object B = eVar2.B();
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                kotlin.coroutines.jvm.internal.f.c(cVar);
            }
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                return B;
            }
            return Unit.f60915a;
        }
    }

    @Nullable
    public final rs.c<Unit> requestFrameLocked() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5 = this.pendingFrameContinuation;
        if (obj5 instanceof rs.c) {
            obj4 = RecomposerKt.FramePending;
            this.pendingFrameContinuation = obj4;
            return (rs.c) obj5;
        }
        obj = RecomposerKt.ProduceAnotherFrame;
        if (!Intrinsics.areEqual(obj5, obj)) {
            obj2 = RecomposerKt.FramePending;
            if (!Intrinsics.areEqual(obj5, obj2)) {
                if (obj5 == null) {
                    obj3 = RecomposerKt.ProduceAnotherFrame;
                    this.pendingFrameContinuation = obj3;
                } else {
                    throw new IllegalStateException(("invalid pendingFrameContinuation " + obj5).toString());
                }
            }
        }
        return null;
    }

    public final void takeFrameRequestLocked() {
        Object obj;
        boolean z10;
        Object obj2 = this.pendingFrameContinuation;
        obj = RecomposerKt.FramePending;
        if (obj2 == obj) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalStateException("frame not pending");
        }
        this.pendingFrameContinuation = null;
    }
}
