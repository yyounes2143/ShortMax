package v3;

import com.facebook.common.references.SharedReference;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CloseableReferenceLeakTracker.kt */
@Metadata
/* loaded from: classes3.dex */
public interface a {
    void a(@NotNull SharedReference<Object> sharedReference, @Nullable Throwable th2);

    boolean b();
}
