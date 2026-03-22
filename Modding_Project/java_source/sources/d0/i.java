package d0;

import java.io.InputStream;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ExifUtils.kt */
@Metadata
/* loaded from: classes2.dex */
final class i extends InputStream {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f49744a;

    /* renamed from: b  reason: collision with root package name */
    private int f49745b = 1073741824;

    public i(@NotNull InputStream inputStream) {
        this.f49744a = inputStream;
    }

    private final int a(int i10) {
        if (i10 == -1) {
            this.f49745b = 0;
        }
        return i10;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f49745b;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f49744a.close();
    }

    @Override // java.io.InputStream
    public int read() {
        return a(this.f49744a.read());
    }

    @Override // java.io.InputStream
    public long skip(long j10) {
        return this.f49744a.skip(j10);
    }

    @Override // java.io.InputStream
    public int read(@NotNull byte[] bArr) {
        return a(this.f49744a.read(bArr));
    }

    @Override // java.io.InputStream
    public int read(@NotNull byte[] bArr, int i10, int i11) {
        return a(this.f49744a.read(bArr, i10, i11));
    }
}
