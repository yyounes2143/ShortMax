package en;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: StatsDataSource.java */
/* loaded from: classes8.dex */
public final class n implements d {

    /* renamed from: a  reason: collision with root package name */
    private final d f51443a;

    /* renamed from: b  reason: collision with root package name */
    private long f51444b;

    /* renamed from: c  reason: collision with root package name */
    private Uri f51445c = Uri.EMPTY;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, List<String>> f51446d = Collections.emptyMap();

    public n(d dVar) {
        this.f51443a = (d) cn.a.e(dVar);
    }

    @Override // en.d
    public long b(g gVar) throws IOException {
        this.f51445c = gVar.f51378a;
        this.f51446d = Collections.emptyMap();
        try {
            return this.f51443a.b(gVar);
        } finally {
            Uri uri = getUri();
            if (uri != null) {
                this.f51445c = uri;
            }
            this.f51446d = getResponseHeaders();
        }
    }

    @Override // en.d
    public void c(o oVar) {
        cn.a.e(oVar);
        this.f51443a.c(oVar);
    }

    @Override // en.d
    public void close() throws IOException {
        this.f51443a.close();
    }

    public long d() {
        return this.f51444b;
    }

    public Uri e() {
        return this.f51445c;
    }

    public Map<String, List<String>> f() {
        return this.f51446d;
    }

    public void g() {
        this.f51444b = 0L;
    }

    @Override // en.d
    public Map<String, List<String>> getResponseHeaders() {
        return this.f51443a.getResponseHeaders();
    }

    @Override // en.d
    @Nullable
    public Uri getUri() {
        return this.f51443a.getUri();
    }

    @Override // zm.h
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int read = this.f51443a.read(bArr, i10, i11);
        if (read != -1) {
            this.f51444b += read;
        }
        return read;
    }
}
