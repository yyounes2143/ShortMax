package androidx.lifecycle;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: LifecycleOwner.kt */
@Metadata
/* loaded from: classes2.dex */
public interface LifecycleOwner {
    @NotNull
    Lifecycle getLifecycle();
}
