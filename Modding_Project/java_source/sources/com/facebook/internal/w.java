package com.facebook.internal;

import com.facebook.LoggingBehavior;
import com.facebook.internal.i0;
import com.facebook.internal.w;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* compiled from: FileLruCache.kt */
@Metadata
/* loaded from: classes3.dex */
public final class w {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final c f16328i = new c(null);

    /* renamed from: j  reason: collision with root package name */
    private static final String f16329j = w.class.getSimpleName();
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private static final AtomicLong f16330k = new AtomicLong();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f16331a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final e f16332b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final File f16333c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f16334d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f16335e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final ReentrantLock f16336f;

    /* renamed from: g  reason: collision with root package name */
    private final Condition f16337g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final AtomicLong f16338h;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileLruCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f16339a = new a();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private static final FilenameFilter f16340b = new FilenameFilter() { // from class: com.facebook.internal.u
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean f10;
                f10 = w.a.f(file, str);
                return f10;
            }
        };
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private static final FilenameFilter f16341c = new FilenameFilter() { // from class: com.facebook.internal.v
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean g10;
                g10 = w.a.g(file, str);
                return g10;
            }
        };

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean f(File file, String filename) {
            Intrinsics.checkNotNullExpressionValue(filename, "filename");
            return !StringsKt.V(filename, "buffer", false, 2, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean g(File file, String filename) {
            Intrinsics.checkNotNullExpressionValue(filename, "filename");
            return StringsKt.V(filename, "buffer", false, 2, null);
        }

        public final void c(@NotNull File root) {
            Intrinsics.checkNotNullParameter(root, "root");
            File[] listFiles = root.listFiles(e());
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
        }

        @NotNull
        public final FilenameFilter d() {
            return f16340b;
        }

        @NotNull
        public final FilenameFilter e() {
            return f16341c;
        }

        @NotNull
        public final File h(@Nullable File file) {
            return new File(file, "buffer" + w.f16330k.incrementAndGet());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileLruCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b extends OutputStream {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final OutputStream f16342a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final g f16343b;

        public b(@NotNull OutputStream innerStream, @NotNull g callback) {
            Intrinsics.checkNotNullParameter(innerStream, "innerStream");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.f16342a = innerStream;
            this.f16343b = callback;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                this.f16342a.close();
            } finally {
                this.f16343b.onClose();
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.f16342a.flush();
        }

        @Override // java.io.OutputStream
        public void write(@NotNull byte[] buffer, int i10, int i11) throws IOException {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
            this.f16342a.write(buffer, i10, i11);
        }

        @Override // java.io.OutputStream
        public void write(@NotNull byte[] buffer) throws IOException {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
            this.f16342a.write(buffer);
        }

        @Override // java.io.OutputStream
        public void write(int i10) throws IOException {
            this.f16342a.write(i10);
        }
    }

    /* compiled from: FileLruCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return w.f16329j;
        }

        private c() {
        }
    }

    /* compiled from: FileLruCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private int f16346a = 1048576;

        /* renamed from: b  reason: collision with root package name */
        private int f16347b = 1024;

        public final int a() {
            return this.f16346a;
        }

        public final int b() {
            return this.f16347b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileLruCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class f implements Comparable<f> {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final a f16348c = new a(null);
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final File f16349a;

        /* renamed from: b  reason: collision with root package name */
        private final long f16350b;

        /* compiled from: FileLruCache.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        public f(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "file");
            this.f16349a = file;
            this.f16350b = file.lastModified();
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(@NotNull f another) {
            Intrinsics.checkNotNullParameter(another, "another");
            long j10 = this.f16350b;
            long j11 = another.f16350b;
            if (j10 < j11) {
                return -1;
            }
            if (j10 > j11) {
                return 1;
            }
            return this.f16349a.compareTo(another.f16349a);
        }

        @NotNull
        public final File b() {
            return this.f16349a;
        }

        public final long c() {
            return this.f16350b;
        }

        public boolean equals(@Nullable Object obj) {
            if ((obj instanceof f) && compareTo((f) obj) == 0) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return ((1073 + this.f16349a.hashCode()) * 37) + ((int) (this.f16350b % Integer.MAX_VALUE));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileLruCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface g {
        void onClose();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileLruCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class h {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final h f16351a = new h();

        private h() {
        }

        @Nullable
        public final JSONObject a(@NotNull InputStream stream) throws IOException {
            Intrinsics.checkNotNullParameter(stream, "stream");
            if (stream.read() != 0) {
                return null;
            }
            int i10 = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < 3; i12++) {
                int read = stream.read();
                if (read == -1) {
                    i0.a aVar = i0.f16209e;
                    LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                    String TAG = w.f16328i.a();
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    aVar.b(loggingBehavior, TAG, "readHeader: stream.read returned -1 while reading header size");
                    return null;
                }
                i11 = (i11 << 8) + (read & 255);
            }
            byte[] bArr = new byte[i11];
            while (i10 < i11) {
                int read2 = stream.read(bArr, i10, i11 - i10);
                if (read2 < 1) {
                    i0.a aVar2 = i0.f16209e;
                    LoggingBehavior loggingBehavior2 = LoggingBehavior.CACHE;
                    String TAG2 = w.f16328i.a();
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    aVar2.b(loggingBehavior2, TAG2, "readHeader: stream.read stopped at " + Integer.valueOf(i10) + " when expected " + i11);
                    return null;
                }
                i10 += read2;
            }
            try {
                Object nextValue = new JSONTokener(new String(bArr, Charsets.UTF_8)).nextValue();
                if (!(nextValue instanceof JSONObject)) {
                    i0.a aVar3 = i0.f16209e;
                    LoggingBehavior loggingBehavior3 = LoggingBehavior.CACHE;
                    String TAG3 = w.f16328i.a();
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    aVar3.b(loggingBehavior3, TAG3, "readHeader: expected JSONObject, got " + nextValue.getClass().getCanonicalName());
                    return null;
                }
                return (JSONObject) nextValue;
            } catch (JSONException e10) {
                throw new IOException(e10.getMessage());
            }
        }

        public final void b(@NotNull OutputStream stream, @NotNull JSONObject header) throws IOException {
            Intrinsics.checkNotNullParameter(stream, "stream");
            Intrinsics.checkNotNullParameter(header, "header");
            String jSONObject = header.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject, "header.toString()");
            byte[] bytes = jSONObject.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            stream.write(0);
            stream.write((bytes.length >> 16) & 255);
            stream.write((bytes.length >> 8) & 255);
            stream.write(bytes.length & 255);
            stream.write(bytes);
        }
    }

    /* compiled from: FileLruCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class i implements g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f16352a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ w f16353b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ File f16354c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f16355d;

        i(long j10, w wVar, File file, String str) {
            this.f16352a = j10;
            this.f16353b = wVar;
            this.f16354c = file;
            this.f16355d = str;
        }

        @Override // com.facebook.internal.w.g
        public void onClose() {
            if (this.f16352a >= this.f16353b.f16338h.get()) {
                this.f16353b.m(this.f16355d, this.f16354c);
            } else {
                this.f16354c.delete();
            }
        }
    }

    public w(@NotNull String tag, @NotNull e limits) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(limits, "limits");
        this.f16331a = tag;
        this.f16332b = limits;
        File file = new File(com.facebook.v.q(), tag);
        this.f16333c = file;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f16336f = reentrantLock;
        this.f16337g = reentrantLock.newCondition();
        this.f16338h = new AtomicLong(0L);
        if (file.mkdirs() || file.isDirectory()) {
            a.f16339a.c(file);
        }
    }

    public static /* synthetic */ InputStream g(w wVar, String str, String str2, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        return wVar.f(str, str2);
    }

    public static /* synthetic */ OutputStream j(w wVar, String str, String str2, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        return wVar.i(str, str2);
    }

    private final void k() {
        ReentrantLock reentrantLock = this.f16336f;
        reentrantLock.lock();
        try {
            if (!this.f16334d) {
                this.f16334d = true;
                com.facebook.v.u().execute(new Runnable() { // from class: com.facebook.internal.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.l(w.this);
                    }
                });
            }
            Unit unit = Unit.f60915a;
            reentrantLock.unlock();
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(w this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(String str, File file) {
        if (!file.renameTo(new File(this.f16333c, u0.n0(str)))) {
            file.delete();
        }
        k();
    }

    private final void n() {
        long j10;
        f fVar;
        ReentrantLock reentrantLock = this.f16336f;
        reentrantLock.lock();
        try {
            this.f16334d = false;
            this.f16335e = true;
            Unit unit = Unit.f60915a;
            reentrantLock.unlock();
            try {
                i0.a aVar = i0.f16209e;
                LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                String TAG = f16329j;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                aVar.b(loggingBehavior, TAG, "trim started");
                PriorityQueue priorityQueue = new PriorityQueue();
                File[] listFiles = this.f16333c.listFiles(a.f16339a.d());
                long j11 = 0;
                if (listFiles != null) {
                    int length = listFiles.length;
                    int i10 = 0;
                    j10 = 0;
                    while (i10 < length) {
                        File file = listFiles[i10];
                        Intrinsics.checkNotNullExpressionValue(file, "file");
                        priorityQueue.add(new f(file));
                        i0.a aVar2 = i0.f16209e;
                        LoggingBehavior loggingBehavior2 = LoggingBehavior.CACHE;
                        String TAG2 = f16329j;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        aVar2.b(loggingBehavior2, TAG2, "  trim considering time=" + Long.valueOf(fVar.c()) + " name=" + fVar.b().getName());
                        j11 += file.length();
                        j10++;
                        i10++;
                        listFiles = listFiles;
                    }
                } else {
                    j10 = 0;
                }
                while (true) {
                    if (j11 <= this.f16332b.a() && j10 <= this.f16332b.b()) {
                        this.f16336f.lock();
                        try {
                            this.f16335e = false;
                            this.f16337g.signalAll();
                            Unit unit2 = Unit.f60915a;
                            return;
                        } finally {
                        }
                    }
                    File b10 = ((f) priorityQueue.remove()).b();
                    i0.a aVar3 = i0.f16209e;
                    LoggingBehavior loggingBehavior3 = LoggingBehavior.CACHE;
                    String TAG3 = f16329j;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    aVar3.b(loggingBehavior3, TAG3, "  trim removing " + b10.getName());
                    j11 -= b10.length();
                    j10 += -1;
                    b10.delete();
                }
            } catch (Throwable th2) {
                this.f16336f.lock();
                try {
                    this.f16335e = false;
                    this.f16337g.signalAll();
                    Unit unit3 = Unit.f60915a;
                    throw th2;
                } finally {
                }
            }
        } finally {
        }
    }

    @Nullable
    public final InputStream f(@NotNull String key, @Nullable String str) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        File file = new File(this.f16333c, u0.n0(key));
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 8192);
            try {
                JSONObject a10 = h.f16351a.a(bufferedInputStream);
                if (a10 == null) {
                    return null;
                }
                if (!Intrinsics.areEqual(a10.optString("key"), key)) {
                    return null;
                }
                String optString = a10.optString(ITTVideoEngineEventSource.KEY_TAG, null);
                if (str == null && !Intrinsics.areEqual(str, optString)) {
                    return null;
                }
                long time = new Date().getTime();
                i0.a aVar = i0.f16209e;
                LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                String TAG = f16329j;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                aVar.b(loggingBehavior, TAG, "Setting lastModified to " + Long.valueOf(time) + " for " + file.getName());
                file.setLastModified(time);
                return bufferedInputStream;
            } finally {
                bufferedInputStream.close();
            }
        } catch (IOException unused) {
            return null;
        }
    }

    @NotNull
    public final InputStream h(@NotNull String key, @NotNull InputStream input) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(input, "input");
        return new d(input, j(this, key, null, 2, null));
    }

    @NotNull
    public final OutputStream i(@NotNull String key, @Nullable String str) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        File h10 = a.f16339a.h(this.f16333c);
        h10.delete();
        if (h10.createNewFile()) {
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new b(new FileOutputStream(h10), new i(System.currentTimeMillis(), this, h10, key)), 8192);
                try {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("key", key);
                        if (!u0.d0(str)) {
                            jSONObject.put(ITTVideoEngineEventSource.KEY_TAG, str);
                        }
                        h.f16351a.b(bufferedOutputStream, jSONObject);
                        return bufferedOutputStream;
                    } catch (JSONException e10) {
                        i0.a aVar = i0.f16209e;
                        LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                        String TAG = f16329j;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        aVar.a(loggingBehavior, 5, TAG, "Error creating JSON header for cache file: " + e10);
                        throw new IOException(e10.getMessage());
                    }
                } catch (Throwable th2) {
                    bufferedOutputStream.close();
                    throw th2;
                }
            } catch (FileNotFoundException e11) {
                i0.a aVar2 = i0.f16209e;
                LoggingBehavior loggingBehavior2 = LoggingBehavior.CACHE;
                String TAG2 = f16329j;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                aVar2.a(loggingBehavior2, 5, TAG2, "Error creating buffer output stream: " + e11);
                throw new IOException(e11.getMessage());
            }
        }
        throw new IOException("Could not create file at " + h10.getAbsolutePath());
    }

    @NotNull
    public String toString() {
        return "{FileLruCache: tag:" + this.f16331a + " file:" + this.f16333c.getName() + '}';
    }

    /* compiled from: FileLruCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    private static final class d extends InputStream {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final InputStream f16344a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final OutputStream f16345b;

        public d(@NotNull InputStream input, @NotNull OutputStream output) {
            Intrinsics.checkNotNullParameter(input, "input");
            Intrinsics.checkNotNullParameter(output, "output");
            this.f16344a = input;
            this.f16345b = output;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.f16344a.available();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                this.f16344a.close();
            } finally {
                this.f16345b.close();
            }
        }

        @Override // java.io.InputStream
        public void mark(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return false;
        }

        @Override // java.io.InputStream
        public int read(@NotNull byte[] buffer) throws IOException {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
            int read = this.f16344a.read(buffer);
            if (read > 0) {
                this.f16345b.write(buffer, 0, read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public long skip(long j10) throws IOException {
            byte[] bArr = new byte[1024];
            long j11 = 0;
            while (j11 < j10) {
                int read = read(bArr, 0, (int) Math.min(j10 - j11, 1024));
                if (read < 0) {
                    return j11;
                }
                j11 += read;
            }
            return j11;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            int read = this.f16344a.read();
            if (read >= 0) {
                this.f16345b.write(read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public int read(@NotNull byte[] buffer, int i10, int i11) throws IOException {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
            int read = this.f16344a.read(buffer, i10, i11);
            if (read > 0) {
                this.f16345b.write(buffer, i10, read);
            }
            return read;
        }
    }
}
