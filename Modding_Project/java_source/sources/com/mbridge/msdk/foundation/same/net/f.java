package com.mbridge.msdk.foundation.same.net;

import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* compiled from: SocketManager.java */
/* loaded from: classes5.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    private static volatile AtomicInteger f27122b = new AtomicInteger(1);

    /* renamed from: a  reason: collision with root package name */
    private ThreadPoolExecutor f27123a;

    /* compiled from: SocketManager.java */
    /* loaded from: classes5.dex */
    class a implements ThreadFactory {
        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
            newThread.setName("SocketThreadPool");
            return newThread;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SocketManager.java */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f27125a;

        b(c cVar) {
            this.f27125a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f27125a.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SocketManager.java */
    /* loaded from: classes5.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private static f f27136a = new f(null);
    }

    /* synthetic */ f(a aVar) {
        this();
    }

    public static f b() {
        return d.f27136a;
    }

    private f() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 5L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new a(), new ThreadPoolExecutor.DiscardPolicy());
        this.f27123a = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    public byte[] a(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(str.getBytes());
        gZIPOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public String a(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
        byte[] bArr2 = new byte[1024];
        while (true) {
            int read = gZIPInputStream.read(bArr2, 0, 1024);
            if (read > 0) {
                byteArrayOutputStream.write(bArr2, 0, read);
            } else {
                gZIPInputStream.close();
                byteArrayInputStream.close();
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                return byteArrayOutputStream.toString();
            }
        }
    }

    public void a(String str, int i10, String str2, boolean z10, com.mbridge.msdk.foundation.same.net.b bVar) {
        this.f27123a.execute(new b(new c(str, i10, str2, z10, bVar)));
    }

    /* compiled from: SocketManager.java */
    /* loaded from: classes5.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        private ByteBuffer f27127a;

        /* renamed from: b  reason: collision with root package name */
        private String f27128b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f27129c;

        /* renamed from: d  reason: collision with root package name */
        private com.mbridge.msdk.foundation.same.net.b f27130d;

        /* renamed from: e  reason: collision with root package name */
        private OutputStream f27131e;

        /* renamed from: f  reason: collision with root package name */
        private int f27132f;

        /* renamed from: g  reason: collision with root package name */
        private Socket f27133g;

        /* renamed from: h  reason: collision with root package name */
        private String f27134h;

        c(String str, int i10, String str2, boolean z10, com.mbridge.msdk.foundation.same.net.b bVar) {
            this.f27128b = str;
            this.f27132f = i10;
            this.f27134h = str2;
            this.f27129c = z10;
            this.f27130d = bVar;
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0088 A[Catch: all -> 0x0036, TryCatch #2 {all -> 0x0036, blocks: (B:3:0x0005, B:5:0x0025, B:12:0x003a, B:14:0x0088, B:20:0x009a, B:22:0x00b0, B:28:0x00eb, B:35:0x013b, B:38:0x0175, B:41:0x0183, B:52:0x01a3, B:61:0x01cb, B:71:0x01ec, B:73:0x01f0, B:74:0x01fd, B:97:0x027d, B:23:0x00c2, B:25:0x00c6, B:27:0x00d5, B:26:0x00cf, B:15:0x008e, B:19:0x0097, B:83:0x021c, B:87:0x022b, B:89:0x0231, B:91:0x0238, B:86:0x0225), top: B:122:0x0005 }] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x008e A[Catch: all -> 0x0036, TryCatch #2 {all -> 0x0036, blocks: (B:3:0x0005, B:5:0x0025, B:12:0x003a, B:14:0x0088, B:20:0x009a, B:22:0x00b0, B:28:0x00eb, B:35:0x013b, B:38:0x0175, B:41:0x0183, B:52:0x01a3, B:61:0x01cb, B:71:0x01ec, B:73:0x01f0, B:74:0x01fd, B:97:0x027d, B:23:0x00c2, B:25:0x00c6, B:27:0x00d5, B:26:0x00cf, B:15:0x008e, B:19:0x0097, B:83:0x021c, B:87:0x022b, B:89:0x0231, B:91:0x0238, B:86:0x0225), top: B:122:0x0005 }] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00b0 A[Catch: all -> 0x0036, TryCatch #2 {all -> 0x0036, blocks: (B:3:0x0005, B:5:0x0025, B:12:0x003a, B:14:0x0088, B:20:0x009a, B:22:0x00b0, B:28:0x00eb, B:35:0x013b, B:38:0x0175, B:41:0x0183, B:52:0x01a3, B:61:0x01cb, B:71:0x01ec, B:73:0x01f0, B:74:0x01fd, B:97:0x027d, B:23:0x00c2, B:25:0x00c6, B:27:0x00d5, B:26:0x00cf, B:15:0x008e, B:19:0x0097, B:83:0x021c, B:87:0x022b, B:89:0x0231, B:91:0x0238, B:86:0x0225), top: B:122:0x0005 }] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00c2 A[Catch: all -> 0x0036, TryCatch #2 {all -> 0x0036, blocks: (B:3:0x0005, B:5:0x0025, B:12:0x003a, B:14:0x0088, B:20:0x009a, B:22:0x00b0, B:28:0x00eb, B:35:0x013b, B:38:0x0175, B:41:0x0183, B:52:0x01a3, B:61:0x01cb, B:71:0x01ec, B:73:0x01f0, B:74:0x01fd, B:97:0x027d, B:23:0x00c2, B:25:0x00c6, B:27:0x00d5, B:26:0x00cf, B:15:0x008e, B:19:0x0097, B:83:0x021c, B:87:0x022b, B:89:0x0231, B:91:0x0238, B:86:0x0225), top: B:122:0x0005 }] */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0133  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0135  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0138  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x013a  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0187  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x019f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a() {
            /*
                Method dump skipped, instructions count: 740
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.net.f.c.a():void");
        }

        private void a(String str) {
            if (this.f27130d != null) {
                if (TextUtils.isEmpty(str)) {
                    str = "Unknown exception";
                }
                this.f27130d.onError(new com.mbridge.msdk.foundation.same.net.exception.a(13, new com.mbridge.msdk.foundation.same.net.toolbox.a(404, str.getBytes(), null)));
            }
        }
    }
}
