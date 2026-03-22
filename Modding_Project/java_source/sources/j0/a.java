package j0;

import java.nio.ByteBuffer;
import kotlin.Metadata;
import m0.j;
import org.jetbrains.annotations.NotNull;
/* compiled from: ByteArrayMapper.kt */
@Metadata
/* loaded from: classes2.dex */
public final class a implements d<byte[], ByteBuffer> {
    @Override // j0.d
    @NotNull
    /* renamed from: b */
    public ByteBuffer a(@NotNull byte[] bArr, @NotNull j jVar) {
        return ByteBuffer.wrap(bArr);
    }
}
