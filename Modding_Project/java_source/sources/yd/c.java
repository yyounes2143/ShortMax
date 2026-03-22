package yd;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FrescoRequestListener.kt */
@Metadata
/* loaded from: classes6.dex */
public class c implements a4.e {
    @Override // com.facebook.imagepipeline.producers.f1
    public void a(@NotNull String requestId, @NotNull String producerName) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(producerName, "producerName");
    }

    @Override // com.facebook.imagepipeline.producers.f1
    public void c(@NotNull String requestId, @NotNull String producerName, @Nullable Throwable th2, @Nullable Map<String, String> map) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(producerName, "producerName");
    }

    @Override // com.facebook.imagepipeline.producers.f1
    public void d(@NotNull String requestId, @NotNull String producerName, @NotNull String eventName) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(producerName, "producerName");
        Intrinsics.checkNotNullParameter(eventName, "eventName");
    }

    @Override // com.facebook.imagepipeline.producers.f1
    public boolean f(@NotNull String requestId) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        return false;
    }

    @Override // com.facebook.imagepipeline.producers.f1
    public void g(@NotNull String requestId, @NotNull String producerName, @Nullable Map<String, String> map) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(producerName, "producerName");
    }

    @Override // com.facebook.imagepipeline.producers.f1
    public void h(@NotNull String requestId, @NotNull String producerName, @Nullable Map<String, String> map) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(producerName, "producerName");
    }

    @Override // com.facebook.imagepipeline.producers.f1
    public void i(@NotNull String requestId, @NotNull String producerName, boolean z10) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(producerName, "producerName");
    }
}
