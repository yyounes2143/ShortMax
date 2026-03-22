package io.ktor.utils.io.jvm.javaio;

import com.inmobi.commons.core.configs.AdConfig;
import gt.s;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteReadChannelKt;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import kotlinx.coroutines.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Blocking.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBlocking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/InputAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,316:1\n1#2:317\n*E\n"})
/* loaded from: classes8.dex */
final class InputAdapter extends InputStream {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ByteReadChannel f59596a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final s f59597b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final InputAdapter$loop$1 f59598c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private byte[] f59599d;

    public InputAdapter(@Nullable r rVar, @NotNull ByteReadChannel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        this.f59596a = channel;
        this.f59597b = t.a(rVar);
        this.f59598c = new InputAdapter$loop$1(rVar, this);
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f59596a.c();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            super.close();
            ByteReadChannelKt.a(this.f59596a);
            if (!this.f59597b.isCompleted()) {
                r.a.b(this.f59597b, null, 1, null);
            }
            this.f59598c.k();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.InputStream
    public synchronized int read() {
        try {
            byte[] bArr = this.f59599d;
            if (bArr == null) {
                bArr = new byte[1];
                this.f59599d = bArr;
            }
            int m10 = this.f59598c.m(bArr, 0, 1);
            if (m10 == -1) {
                return -1;
            }
            if (m10 == 1) {
                return bArr[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            }
            throw new IllegalStateException(("Expected a single byte or EOF. Got " + m10 + " bytes.").toString());
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.InputStream
    public synchronized int read(@Nullable byte[] bArr, int i10, int i11) {
        InputAdapter$loop$1 inputAdapter$loop$1;
        inputAdapter$loop$1 = this.f59598c;
        Intrinsics.checkNotNull(bArr);
        return inputAdapter$loop$1.m(bArr, i10, i11);
    }
}
