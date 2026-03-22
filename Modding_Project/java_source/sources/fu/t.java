package fu;

import java.io.IOException;
import java.util.Objects;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OkHttpCall.java */
/* loaded from: classes8.dex */
public final class t<T> implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f52064a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f52065b;

    /* renamed from: c  reason: collision with root package name */
    private final Object[] f52066c;

    /* renamed from: d  reason: collision with root package name */
    private final Call.Factory f52067d;

    /* renamed from: e  reason: collision with root package name */
    private final h<ResponseBody, T> f52068e;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f52069f;

    /* renamed from: g  reason: collision with root package name */
    private Call f52070g;

    /* renamed from: h  reason: collision with root package name */
    private Throwable f52071h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f52072i;

    /* compiled from: OkHttpCall.java */
    /* loaded from: classes8.dex */
    class a implements Callback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f52073a;

        a(f fVar) {
            this.f52073a = fVar;
        }

        private void a(Throwable th2) {
            try {
                this.f52073a.a(t.this, th2);
            } catch (Throwable th3) {
                h0.t(th3);
                th3.printStackTrace();
            }
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            a(iOException);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) {
            try {
                try {
                    this.f52073a.b(t.this, t.this.e(response));
                } catch (Throwable th2) {
                    h0.t(th2);
                    th2.printStackTrace();
                }
            } catch (Throwable th3) {
                h0.t(th3);
                a(th3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpCall.java */
    /* loaded from: classes8.dex */
    public static final class b extends ResponseBody {

        /* renamed from: a  reason: collision with root package name */
        private final ResponseBody f52075a;

        /* renamed from: b  reason: collision with root package name */
        private final BufferedSource f52076b;

        /* renamed from: c  reason: collision with root package name */
        IOException f52077c;

        /* compiled from: OkHttpCall.java */
        /* loaded from: classes8.dex */
        class a extends ForwardingSource {
            a(Source source) {
                super(source);
            }

            @Override // okio.ForwardingSource, okio.Source
            public long read(Buffer buffer, long j10) throws IOException {
                try {
                    return super.read(buffer, j10);
                } catch (IOException e10) {
                    b.this.f52077c = e10;
                    throw e10;
                }
            }
        }

        b(ResponseBody responseBody) {
            this.f52075a = responseBody;
            this.f52076b = Okio.buffer(new a(responseBody.source()));
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f52075a.close();
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.f52075a.contentLength();
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            return this.f52075a.contentType();
        }

        @Override // okhttp3.ResponseBody
        public BufferedSource source() {
            return this.f52076b;
        }

        void throwIfCaught() throws IOException {
            IOException iOException = this.f52077c;
            if (iOException == null) {
                return;
            }
            throw iOException;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpCall.java */
    /* loaded from: classes8.dex */
    public static final class c extends ResponseBody {

        /* renamed from: a  reason: collision with root package name */
        private final MediaType f52079a;

        /* renamed from: b  reason: collision with root package name */
        private final long f52080b;

        c(MediaType mediaType, long j10) {
            this.f52079a = mediaType;
            this.f52080b = j10;
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.f52080b;
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            return this.f52079a;
        }

        @Override // okhttp3.ResponseBody
        public BufferedSource source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(b0 b0Var, Object obj, Object[] objArr, Call.Factory factory, h<ResponseBody, T> hVar) {
        this.f52064a = b0Var;
        this.f52065b = obj;
        this.f52066c = objArr;
        this.f52067d = factory;
        this.f52068e = hVar;
    }

    private Call b() throws IOException {
        Call a10 = this.f52067d.a(this.f52064a.a(this.f52065b, this.f52066c));
        if (a10 != null) {
            return a10;
        }
        throw new NullPointerException("Call.Factory returned null.");
    }

    private Call c() throws IOException {
        Call call = this.f52070g;
        if (call != null) {
            return call;
        }
        Throwable th2 = this.f52071h;
        if (th2 != null) {
            if (!(th2 instanceof IOException)) {
                if (th2 instanceof RuntimeException) {
                    throw ((RuntimeException) th2);
                }
                throw ((Error) th2);
            }
            throw ((IOException) th2);
        }
        try {
            Call b10 = b();
            this.f52070g = b10;
            return b10;
        } catch (IOException | Error | RuntimeException e10) {
            h0.t(e10);
            this.f52071h = e10;
            throw e10;
        }
    }

    @Override // fu.d
    /* renamed from: a */
    public t<T> m4853clone() {
        return new t<>(this.f52064a, this.f52065b, this.f52066c, this.f52067d, this.f52068e);
    }

    @Override // fu.d
    public void cancel() {
        Call call;
        this.f52069f = true;
        synchronized (this) {
            call = this.f52070g;
        }
        if (call != null) {
            call.cancel();
        }
    }

    @Override // fu.d
    public void d(f<T> fVar) {
        Call call;
        Throwable th2;
        Objects.requireNonNull(fVar, "callback == null");
        synchronized (this) {
            try {
                if (!this.f52072i) {
                    this.f52072i = true;
                    call = this.f52070g;
                    th2 = this.f52071h;
                    if (call == null && th2 == null) {
                        Call b10 = b();
                        this.f52070g = b10;
                        call = b10;
                    }
                } else {
                    throw new IllegalStateException("Already executed.");
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (th2 != null) {
            fVar.a(this, th2);
            return;
        }
        if (this.f52069f) {
            call.cancel();
        }
        call.o0(new a(fVar));
    }

    c0<T> e(Response response) throws IOException {
        ResponseBody d10 = response.d();
        Response c10 = response.F().b(new c(d10.contentType(), d10.contentLength())).c();
        int o10 = c10.o();
        if (o10 >= 200 && o10 < 300) {
            if (o10 != 204 && o10 != 205) {
                b bVar = new b(d10);
                try {
                    return c0.f(this.f52068e.convert(bVar), c10);
                } catch (RuntimeException e10) {
                    bVar.throwIfCaught();
                    throw e10;
                }
            }
            d10.close();
            return c0.f(null, c10);
        }
        try {
            return c0.c(h0.a(d10), c10);
        } finally {
            d10.close();
        }
    }

    @Override // fu.d
    public c0<T> execute() throws IOException {
        Call c10;
        synchronized (this) {
            if (!this.f52072i) {
                this.f52072i = true;
                c10 = c();
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (this.f52069f) {
            c10.cancel();
        }
        return e(c10.execute());
    }

    @Override // fu.d
    public boolean isCanceled() {
        boolean z10 = true;
        if (this.f52069f) {
            return true;
        }
        synchronized (this) {
            try {
                Call call = this.f52070g;
                if (call == null || !call.isCanceled()) {
                    z10 = false;
                }
            } finally {
            }
        }
        return z10;
    }

    @Override // fu.d
    public synchronized Request request() {
        try {
        } catch (IOException e10) {
            throw new RuntimeException("Unable to create request.", e10);
        }
        return c().request();
    }
}
