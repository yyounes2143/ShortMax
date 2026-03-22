package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Applier.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nApplier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Applier.kt\nandroidx/compose/runtime/OffsetApplier\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,297:1\n4788#2,4:298\n*S KotlinDebug\n*F\n+ 1 Applier.kt\nandroidx/compose/runtime/OffsetApplier\n*L\n263#1:298,4\n*E\n"})
/* loaded from: classes.dex */
public final class OffsetApplier<N> implements Applier<N> {
    public static final int $stable = 8;
    @NotNull
    private final Applier<N> applier;
    private int nesting;
    private final int offset;

    public OffsetApplier(@NotNull Applier<N> applier, int i10) {
        this.applier = applier;
        this.offset = i10;
    }

    @Override // androidx.compose.runtime.Applier
    public void apply(@NotNull Function2<? super N, Object, Unit> function2, @Nullable Object obj) {
        this.applier.apply(function2, obj);
    }

    @Override // androidx.compose.runtime.Applier
    public void clear() {
        ComposerKt.composeImmediateRuntimeError("Clear is not valid on OffsetApplier");
    }

    @Override // androidx.compose.runtime.Applier
    public void down(N n10) {
        this.nesting++;
        this.applier.down(n10);
    }

    @Override // androidx.compose.runtime.Applier
    public N getCurrent() {
        return this.applier.getCurrent();
    }

    @Override // androidx.compose.runtime.Applier
    public void insertBottomUp(int i10, N n10) {
        int i11;
        Applier<N> applier = this.applier;
        if (this.nesting == 0) {
            i11 = this.offset;
        } else {
            i11 = 0;
        }
        applier.insertBottomUp(i10 + i11, n10);
    }

    @Override // androidx.compose.runtime.Applier
    public void insertTopDown(int i10, N n10) {
        int i11;
        Applier<N> applier = this.applier;
        if (this.nesting == 0) {
            i11 = this.offset;
        } else {
            i11 = 0;
        }
        applier.insertTopDown(i10 + i11, n10);
    }

    @Override // androidx.compose.runtime.Applier
    public void move(int i10, int i11, int i12) {
        int i13;
        if (this.nesting == 0) {
            i13 = this.offset;
        } else {
            i13 = 0;
        }
        this.applier.move(i10 + i13, i11 + i13, i12);
    }

    @Override // androidx.compose.runtime.Applier
    public void remove(int i10, int i11) {
        int i12;
        Applier<N> applier = this.applier;
        if (this.nesting == 0) {
            i12 = this.offset;
        } else {
            i12 = 0;
        }
        applier.remove(i10 + i12, i11);
    }

    @Override // androidx.compose.runtime.Applier
    public void reuse() {
        this.applier.reuse();
    }

    @Override // androidx.compose.runtime.Applier
    public void up() {
        boolean z10;
        if (this.nesting > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("OffsetApplier up called with no corresponding down");
        }
        this.nesting--;
        this.applier.up();
    }
}
