package io.ktor.utils.io;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: ByteWriteChannel.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ClosedWriteChannelException extends CancellationException {
    public ClosedWriteChannelException(@Nullable String str) {
        super(str);
    }
}
