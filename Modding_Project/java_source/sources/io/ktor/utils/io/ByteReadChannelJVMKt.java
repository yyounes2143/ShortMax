package io.ktor.utils.io;

import io.ktor.utils.io.internal.SequentialCopyToKt;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ByteReadChannelJVM.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ByteReadChannelJVMKt {
    @Nullable
    public static final Object b(@NotNull ByteReadChannel byteReadChannel, @NotNull e eVar, long j10, @NotNull rs.c<? super Long> cVar) {
        if (byteReadChannel != eVar) {
            if (j10 == 0) {
                return kotlin.coroutines.jvm.internal.a.e(0L);
            }
            if ((byteReadChannel instanceof ByteBufferChannel) && (eVar instanceof ByteBufferChannel)) {
                return ((ByteBufferChannel) eVar).I((ByteBufferChannel) byteReadChannel, j10, null, cVar);
            }
            if ((byteReadChannel instanceof ByteChannelSequentialBase) && (eVar instanceof ByteChannelSequentialBase)) {
                return SequentialCopyToKt.b((ByteChannelSequentialBase) byteReadChannel, (ByteChannelSequentialBase) eVar, Long.MAX_VALUE, cVar);
            }
            return c(byteReadChannel, eVar, j10, cVar);
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008f A[Catch: all -> 0x00f2, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00f2, blocks: (B:37:0x00e8, B:39:0x00ee, B:25:0x008f), top: B:54:0x00e8 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c4 A[Catch: all -> 0x0048, TRY_LEAVE, TryCatch #2 {all -> 0x0048, blocks: (B:13:0x0040, B:29:0x00bb, B:31:0x00c4, B:46:0x0101, B:20:0x0067), top: B:58:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00db -> B:35:0x00e4). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(io.ktor.utils.io.ByteReadChannel r19, io.ktor.utils.io.e r20, long r21, rs.c<? super java.lang.Long> r23) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteReadChannelJVMKt.c(io.ktor.utils.io.ByteReadChannel, io.ktor.utils.io.e, long, rs.c):java.lang.Object");
    }
}
