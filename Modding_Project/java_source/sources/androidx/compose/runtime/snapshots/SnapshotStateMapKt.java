package androidx.compose.runtime.snapshots;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotStateMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotStateMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotStateMapKt\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n*L\n1#1,416:1\n25#2,5:417\n*S KotlinDebug\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotStateMapKt\n*L\n327#1:417,5\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotStateMapKt {
    @NotNull
    private static final Object sync = new Object();

    @NotNull
    public static final Void unsupported() {
        throw new UnsupportedOperationException();
    }
}
