package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: StateObjectImpl.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nStateObjectImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateObjectImpl.kt\nandroidx/compose/runtime/snapshots/StateObjectImpl\n+ 2 StateObjectImpl.kt\nandroidx/compose/runtime/snapshots/ReaderKind\n*L\n1#1,63:1\n50#2:64\n47#2:65\n50#2:66\n*S KotlinDebug\n*F\n+ 1 StateObjectImpl.kt\nandroidx/compose/runtime/snapshots/StateObjectImpl\n*L\n34#1:64\n36#1:65\n41#1:66\n*E\n"})
/* loaded from: classes.dex */
public abstract class StateObjectImpl implements StateObject {
    public static final int $stable = 8;
    @NotNull
    private final AtomicInt readerKind = new AtomicInt(0);

    /* renamed from: isReadIn-h_f27i8$runtime  reason: not valid java name */
    public final boolean m1512isReadInh_f27i8$runtime(int i10) {
        if ((i10 & ReaderKind.m1500constructorimpl(this.readerKind.get())) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: recordReadIn-h_f27i8$runtime  reason: not valid java name */
    public final void m1513recordReadInh_f27i8$runtime(int i10) {
        int m1500constructorimpl;
        do {
            m1500constructorimpl = ReaderKind.m1500constructorimpl(this.readerKind.get());
            if ((m1500constructorimpl & i10) != 0) {
                return;
            }
        } while (!this.readerKind.compareAndSet(m1500constructorimpl, ReaderKind.m1500constructorimpl(m1500constructorimpl | i10)));
    }
}
