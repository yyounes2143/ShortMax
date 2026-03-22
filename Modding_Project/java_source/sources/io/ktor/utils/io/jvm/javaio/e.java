package io.ktor.utils.io.jvm.javaio;

import gt.c0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Blocking.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e extends c0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f59627a = new e();

    private e() {
    }

    @Override // gt.c0
    public void dispatch(@NotNull CoroutineContext context, @NotNull Runnable block) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        block.run();
    }

    @Override // gt.c0
    public boolean isDispatchNeeded(@NotNull CoroutineContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return true;
    }
}
