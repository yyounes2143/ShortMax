package qt;

import kotlin.Metadata;
import kotlinx.coroutines.sync.MutexImpl;
import mt.a0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Mutex.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final a0 f65412a = new a0("NO_OWNER");
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final a0 f65413b = new a0("ALREADY_LOCKED_BY_OWNER");

    @NotNull
    public static final a a(boolean z10) {
        return new MutexImpl(z10);
    }

    public static /* synthetic */ a b(boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return a(z10);
    }
}
