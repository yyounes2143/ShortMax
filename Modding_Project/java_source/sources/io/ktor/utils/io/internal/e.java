package io.ktor.utils.io.internal;

import io.ktor.utils.io.ByteBufferChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ReadSessionImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nReadSessionImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadSessionImpl.kt\nio/ktor/utils/io/internal/ReadSessionImpl\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,47:1\n69#2:48\n69#2:49\n*S KotlinDebug\n*F\n+ 1 ReadSessionImpl.kt\nio/ktor/utils/io/internal/ReadSessionImpl\n*L\n17#1:48\n22#1:49\n*E\n"})
/* loaded from: classes8.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ByteBufferChannel f59554a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private is.a f59555b;

    public e(@NotNull ByteBufferChannel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        this.f59554a = channel;
        this.f59555b = is.a.f60072j.a();
    }
}
