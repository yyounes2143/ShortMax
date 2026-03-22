package g2;

import com.facebook.cache.common.CacheEventListener;
import java.io.IOException;
/* compiled from: SettableCacheEvent.java */
/* loaded from: classes3.dex */
public class f implements com.facebook.cache.common.a {

    /* renamed from: i  reason: collision with root package name */
    private static final Object f52182i = new Object();

    /* renamed from: j  reason: collision with root package name */
    private static f f52183j;

    /* renamed from: k  reason: collision with root package name */
    private static int f52184k;

    /* renamed from: a  reason: collision with root package name */
    private f2.a f52185a;

    /* renamed from: b  reason: collision with root package name */
    private String f52186b;

    /* renamed from: c  reason: collision with root package name */
    private long f52187c;

    /* renamed from: d  reason: collision with root package name */
    private long f52188d;

    /* renamed from: e  reason: collision with root package name */
    private long f52189e;

    /* renamed from: f  reason: collision with root package name */
    private IOException f52190f;

    /* renamed from: g  reason: collision with root package name */
    private CacheEventListener.EvictionReason f52191g;

    /* renamed from: h  reason: collision with root package name */
    private f f52192h;

    private f() {
    }

    public static f a() {
        synchronized (f52182i) {
            try {
                f fVar = f52183j;
                if (fVar != null) {
                    f52183j = fVar.f52192h;
                    fVar.f52192h = null;
                    f52184k--;
                    return fVar;
                }
                return new f();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void c() {
        this.f52185a = null;
        this.f52186b = null;
        this.f52187c = 0L;
        this.f52188d = 0L;
        this.f52189e = 0L;
        this.f52190f = null;
        this.f52191g = null;
    }

    public void b() {
        synchronized (f52182i) {
            try {
                if (f52184k < 5) {
                    c();
                    f52184k++;
                    f fVar = f52183j;
                    if (fVar != null) {
                        this.f52192h = fVar;
                    }
                    f52183j = this;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public f d(f2.a aVar) {
        this.f52185a = aVar;
        return this;
    }

    public f e(long j10) {
        this.f52188d = j10;
        return this;
    }

    public f f(long j10) {
        this.f52189e = j10;
        return this;
    }

    public f g(CacheEventListener.EvictionReason evictionReason) {
        this.f52191g = evictionReason;
        return this;
    }

    public f h(IOException iOException) {
        this.f52190f = iOException;
        return this;
    }

    public f i(long j10) {
        this.f52187c = j10;
        return this;
    }

    public f j(String str) {
        this.f52186b = str;
        return this;
    }
}
