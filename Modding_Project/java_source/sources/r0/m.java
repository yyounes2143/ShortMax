package r0;

import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: HardwareBitmaps.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class m {
    public /* synthetic */ m(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @MainThread
    public abstract boolean a(@NotNull n0.g gVar);

    @WorkerThread
    public abstract boolean b();

    private m() {
    }
}
