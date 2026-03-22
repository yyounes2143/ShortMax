package io.ktor.utils.io.internal;

import io.ktor.utils.io.ByteBufferChannel;
import is.a;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: WriteSessionImpl.kt */
@Metadata
/* loaded from: classes8.dex */
public final class j {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private ByteBufferChannel f59576a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer f59577b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private is.a f59578c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private h f59579d;

    public j(@NotNull ByteBufferChannel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        this.f59576a = channel.l0();
        a.d dVar = is.a.f60072j;
        this.f59577b = dVar.a().g();
        this.f59578c = dVar.a();
        this.f59579d = this.f59576a.J().f59557b;
    }
}
