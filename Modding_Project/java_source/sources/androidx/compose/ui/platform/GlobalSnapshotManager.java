package androidx.compose.ui.platform;

import androidx.compose.runtime.snapshots.Snapshot;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: GlobalSnapshotManager.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class GlobalSnapshotManager {
    @NotNull
    public static final GlobalSnapshotManager INSTANCE = new GlobalSnapshotManager();
    @NotNull
    private static final AtomicBoolean started = new AtomicBoolean(false);

    private GlobalSnapshotManager() {
    }

    public final void ensureStarted() {
        if (started.compareAndSet(false, true)) {
            final jt.d b10 = jt.g.b(-1, null, null, 6, null);
            gt.g.d(kotlinx.coroutines.i.a(AndroidUiDispatcher.Companion.getMain()), null, null, new GlobalSnapshotManager$ensureStarted$1(b10, null), 3, null);
            Snapshot.Companion.registerGlobalWriteObserver(new Function1<Object, Unit>() { // from class: androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                    invoke2(obj);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Object it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    b10.h(Unit.f60915a);
                }
            });
        }
    }
}
