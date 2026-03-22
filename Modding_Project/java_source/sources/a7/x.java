package a7;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: StatsDataSource.java */
/* loaded from: classes4.dex */
public final class x implements h {

    /* renamed from: a  reason: collision with root package name */
    private final h f308a;

    /* renamed from: b  reason: collision with root package name */
    private long f309b;

    /* renamed from: c  reason: collision with root package name */
    private Uri f310c = Uri.EMPTY;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, List<String>> f311d = Collections.emptyMap();

    public x(h hVar) {
        this.f308a = (h) b7.a.e(hVar);
    }

    @Override // a7.h
    public long b(k kVar) throws IOException {
        this.f310c = kVar.f198a;
        this.f311d = Collections.emptyMap();
        long b10 = this.f308a.b(kVar);
        this.f310c = (Uri) b7.a.e(getUri());
        this.f311d = getResponseHeaders();
        return b10;
    }

    @Override // a7.h
    public void c(y yVar) {
        b7.a.e(yVar);
        this.f308a.c(yVar);
    }

    @Override // a7.h
    public void close() throws IOException {
        this.f308a.close();
    }

    public long d() {
        return this.f309b;
    }

    public Uri e() {
        return this.f310c;
    }

    public Map<String, List<String>> f() {
        return this.f311d;
    }

    public void g() {
        this.f309b = 0L;
    }

    @Override // a7.h
    public Map<String, List<String>> getResponseHeaders() {
        return this.f308a.getResponseHeaders();
    }

    @Override // a7.h
    @Nullable
    public Uri getUri() {
        return this.f308a.getUri();
    }

    @Override // a7.f
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int read = this.f308a.read(bArr, i10, i11);
        if (read != -1) {
            this.f309b += read;
        }
        return read;
    }
}
