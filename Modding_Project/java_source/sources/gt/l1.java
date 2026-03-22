package gt;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Job.kt */
@Metadata
/* loaded from: classes8.dex */
public final class l1 implements s0, n {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final l1 f52546a = new l1();

    private l1() {
    }

    @Override // gt.n
    public boolean a(@NotNull Throwable th2) {
        return false;
    }

    @Override // gt.n
    @Nullable
    public kotlinx.coroutines.r getParent() {
        return null;
    }

    @NotNull
    public String toString() {
        return "NonDisposableHandle";
    }

    @Override // gt.s0
    public void dispose() {
    }
}
