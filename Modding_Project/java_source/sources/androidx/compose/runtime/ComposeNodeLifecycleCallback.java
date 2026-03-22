package androidx.compose.runtime;

import kotlin.Metadata;
/* compiled from: ComposeNodeLifecycleCallback.kt */
@Metadata
/* loaded from: classes.dex */
public interface ComposeNodeLifecycleCallback {
    void onDeactivate();

    void onRelease();

    void onReuse();
}
