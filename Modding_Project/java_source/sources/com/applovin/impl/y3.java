package com.applovin.impl;

import android.os.Process;
import android.os.SystemClock;
import androidx.core.util.Consumer;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.y3;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public class y3 {

    /* renamed from: a  reason: collision with root package name */
    private final PriorityBlockingQueue f10602a = new PriorityBlockingQueue();

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f10603b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private final BlockingQueue f10604a;

        /* renamed from: b  reason: collision with root package name */
        private final com.applovin.impl.sdk.k f10605b;

        private void a() {
            b((c) this.f10604a.take());
        }

        private void b(final c cVar) {
            Throwable th2;
            HttpURLConnection httpURLConnection;
            byte[] bArr;
            long elapsedRealtime;
            byte[] bArr2;
            long elapsedRealtime2;
            long elapsedRealtime3 = SystemClock.elapsedRealtime();
            int i10 = 0;
            byte[] bArr3 = null;
            try {
                httpURLConnection = a(cVar);
                try {
                    if (cVar.f10610d != null && cVar.f10610d.length > 0) {
                        httpURLConnection.setDoOutput(true);
                        httpURLConnection.setFixedLengthStreamingMode(cVar.f10610d.length);
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        outputStream.write(cVar.f10610d);
                        outputStream.close();
                    }
                    elapsedRealtime3 = SystemClock.elapsedRealtime();
                    i10 = httpURLConnection.getResponseCode();
                    elapsedRealtime2 = SystemClock.elapsedRealtime();
                } catch (Throwable th3) {
                    th2 = th3;
                    bArr = null;
                }
            } catch (Throwable th4) {
                th2 = th4;
                httpURLConnection = null;
                bArr = null;
            }
            if (i10 > 0) {
                try {
                    InputStream inputStream = httpURLConnection.getInputStream();
                    bArr = r0.a(inputStream, this.f10605b);
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th5) {
                            th = th5;
                            try {
                                HashMap hashMap = new HashMap();
                                CollectionUtils.putStringIfValid("details", "responseDataInputStream", hashMap);
                                this.f10605b.E().a("NetworkCommunicationThread", "processRequest", th, hashMap);
                                throw th;
                            } catch (Throwable th6) {
                                th2 = th6;
                                try {
                                    elapsedRealtime = SystemClock.elapsedRealtime();
                                    this.f10605b.O().a("NetworkCommunicationThread", th2);
                                    this.f10605b.O();
                                    if (com.applovin.impl.sdk.o.a()) {
                                        this.f10605b.O().d("NetworkCommunicationThread", "Failed to make HTTP request", th2);
                                    }
                                    if (httpURLConnection != null) {
                                        InputStream errorStream = httpURLConnection.getErrorStream();
                                        bArr3 = r0.a(errorStream, this.f10605b);
                                        if (errorStream != null) {
                                            errorStream.close();
                                        }
                                    }
                                    bArr2 = bArr3;
                                    bArr3 = bArr;
                                    k7.a(httpURLConnection, this.f10605b);
                                    final d a10 = d.a().a(i10).a(bArr3).b(bArr2).a(elapsedRealtime - elapsedRealtime3).a(th2).a();
                                    cVar.f10613g.execute(new Runnable() { // from class: com.applovin.impl.cg
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            y3.b.a(y3.c.this, a10);
                                        }
                                    });
                                } catch (Throwable th7) {
                                    k7.a(httpURLConnection, this.f10605b);
                                    throw th7;
                                }
                            }
                        }
                    }
                    bArr2 = null;
                    elapsedRealtime = elapsedRealtime2;
                    th2 = null;
                    bArr3 = bArr;
                    k7.a(httpURLConnection, this.f10605b);
                    final d a102 = d.a().a(i10).a(bArr3).b(bArr2).a(elapsedRealtime - elapsedRealtime3).a(th2).a();
                    cVar.f10613g.execute(new Runnable() { // from class: com.applovin.impl.cg
                        @Override // java.lang.Runnable
                        public final void run() {
                            y3.b.a(y3.c.this, a102);
                        }
                    });
                } catch (Throwable th8) {
                    th = th8;
                    bArr = null;
                }
            } else {
                bArr2 = null;
                elapsedRealtime = elapsedRealtime2;
                th2 = null;
                k7.a(httpURLConnection, this.f10605b);
                final d a1022 = d.a().a(i10).a(bArr3).b(bArr2).a(elapsedRealtime - elapsedRealtime3).a(th2).a();
                cVar.f10613g.execute(new Runnable() { // from class: com.applovin.impl.cg
                    @Override // java.lang.Runnable
                    public final void run() {
                        y3.b.a(y3.c.this, a1022);
                    }
                });
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    a();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }

        private b(BlockingQueue blockingQueue, int i10, com.applovin.impl.sdk.k kVar) {
            super("AppLovinSdk:network");
            if (blockingQueue == null) {
                throw new IllegalArgumentException("No request queue specified");
            }
            if (kVar != null) {
                this.f10604a = blockingQueue;
                this.f10605b = kVar;
                setPriority(((Integer) kVar.a(v4.Q)).intValue());
                return;
            }
            throw new IllegalArgumentException("No sdk specified");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(c cVar, d dVar) {
            cVar.f10612f.accept(dVar);
        }

        private HttpURLConnection a(c cVar) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(cVar.f10607a).openConnection();
            httpURLConnection.setRequestMethod(cVar.f10608b);
            httpURLConnection.setConnectTimeout(cVar.f10611e);
            httpURLConnection.setReadTimeout(cVar.f10611e);
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.setDoInput(true);
            if (!cVar.f10609c.isEmpty()) {
                for (Map.Entry entry : cVar.f10609c.entrySet()) {
                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return httpURLConnection;
        }
    }

    /* loaded from: classes2.dex */
    public static class c implements Comparable {

        /* renamed from: i  reason: collision with root package name */
        private static final AtomicInteger f10606i = new AtomicInteger();

        /* renamed from: a  reason: collision with root package name */
        private final String f10607a;

        /* renamed from: b  reason: collision with root package name */
        private final String f10608b;

        /* renamed from: c  reason: collision with root package name */
        private final Map f10609c;

        /* renamed from: d  reason: collision with root package name */
        private final byte[] f10610d;

        /* renamed from: e  reason: collision with root package name */
        private final int f10611e;

        /* renamed from: f  reason: collision with root package name */
        private final Consumer f10612f;

        /* renamed from: g  reason: collision with root package name */
        private final Executor f10613g;

        /* renamed from: h  reason: collision with root package name */
        private final int f10614h;

        /* loaded from: classes2.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private String f10615a;

            /* renamed from: b  reason: collision with root package name */
            private String f10616b;

            /* renamed from: c  reason: collision with root package name */
            private Map f10617c = new HashMap();

            /* renamed from: d  reason: collision with root package name */
            private byte[] f10618d;

            /* renamed from: e  reason: collision with root package name */
            private int f10619e;

            /* renamed from: f  reason: collision with root package name */
            private Consumer f10620f;

            /* renamed from: g  reason: collision with root package name */
            private Executor f10621g;

            public a a(String str) {
                this.f10615a = str;
                return this;
            }

            public a b(String str) {
                this.f10616b = str;
                return this;
            }

            public a a(Map map) {
                if (map == null) {
                    map = new HashMap();
                }
                this.f10617c = map;
                return this;
            }

            public a a(String str, String str2) {
                this.f10617c.put(str, str2);
                return this;
            }

            public a a(byte[] bArr) {
                this.f10618d = bArr;
                return this;
            }

            public a a(int i10) {
                this.f10619e = i10;
                return this;
            }

            public a a(Consumer consumer) {
                this.f10620f = consumer;
                return this;
            }

            public a a(Executor executor) {
                this.f10621g = executor;
                return this;
            }

            public c a() {
                return new c(this);
            }
        }

        @Override // java.lang.Comparable
        /* renamed from: h */
        public int compareTo(c cVar) {
            return this.f10614h - cVar.f10614h;
        }

        private c(a aVar) {
            this.f10607a = aVar.f10615a;
            this.f10608b = aVar.f10616b;
            this.f10609c = aVar.f10617c != null ? aVar.f10617c : Collections.emptyMap();
            this.f10610d = aVar.f10618d;
            this.f10611e = aVar.f10619e;
            this.f10612f = aVar.f10620f;
            this.f10613g = aVar.f10621g;
            this.f10614h = f10606i.incrementAndGet();
        }
    }

    /* loaded from: classes2.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private final int f10622a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f10623b;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f10624c;

        /* renamed from: d  reason: collision with root package name */
        private final long f10625d;

        /* renamed from: e  reason: collision with root package name */
        private final Throwable f10626e;

        /* loaded from: classes2.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private int f10627a;

            /* renamed from: b  reason: collision with root package name */
            private byte[] f10628b;

            /* renamed from: c  reason: collision with root package name */
            private byte[] f10629c;

            /* renamed from: d  reason: collision with root package name */
            private long f10630d;

            /* renamed from: e  reason: collision with root package name */
            private Throwable f10631e;

            public a a(int i10) {
                this.f10627a = i10;
                return this;
            }

            public a b(byte[] bArr) {
                this.f10629c = bArr;
                return this;
            }

            public a a(byte[] bArr) {
                this.f10628b = bArr;
                return this;
            }

            public a a(Throwable th2) {
                this.f10631e = th2;
                return this;
            }

            public a a(long j10) {
                this.f10630d = j10;
                return this;
            }

            public d a() {
                return new d(this);
            }
        }

        public static a a() {
            return new a();
        }

        public int b() {
            return this.f10622a;
        }

        public int c() {
            Throwable th2 = this.f10626e;
            if (th2 == null) {
                return this.f10622a;
            }
            throw th2;
        }

        public byte[] d() {
            Throwable th2 = this.f10626e;
            if (th2 == null) {
                return this.f10623b;
            }
            throw th2;
        }

        public long e() {
            return this.f10625d;
        }

        public byte[] f() {
            return this.f10624c;
        }

        private d(a aVar) {
            this.f10622a = aVar.f10627a;
            this.f10623b = aVar.f10628b;
            this.f10624c = aVar.f10629c;
            this.f10625d = aVar.f10630d;
            this.f10626e = aVar.f10631e;
        }
    }

    public y3(com.applovin.impl.sdk.k kVar) {
        this.f10603b = kVar;
    }

    public void a() {
        for (int i10 = 0; i10 < ((Integer) this.f10603b.a(v4.P)).intValue(); i10++) {
            new b(this.f10602a, i10, this.f10603b).start();
        }
    }

    public void a(c cVar) {
        if (cVar != null) {
            this.f10602a.add(cVar);
            return;
        }
        throw new IllegalArgumentException("No request specified");
    }
}
