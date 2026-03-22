package io.ktor.utils.io;

import gt.g0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Coroutines.kt */
@Metadata
/* loaded from: classes8.dex */
final class h implements m, o, g0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final b f59513a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ g0 f59514b;

    public h(@NotNull g0 delegate, @NotNull b channel) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(channel, "channel");
        this.f59513a = channel;
        this.f59514b = delegate;
    }

    @Override // io.ktor.utils.io.o
    @NotNull
    /* renamed from: a */
    public b mo4948getChannel() {
        return this.f59513a;
    }

    @Override // gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f59514b.getCoroutineContext();
    }
}
