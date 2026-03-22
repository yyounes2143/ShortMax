package v3;

import com.facebook.common.references.SharedReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NoOpCloseableReferenceLeakTracker.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b implements a {
    @Override // v3.a
    public void a(@NotNull SharedReference<Object> reference, @Nullable Throwable th2) {
        Intrinsics.checkNotNullParameter(reference, "reference");
    }

    @Override // v3.a
    public boolean b() {
        return false;
    }
}
