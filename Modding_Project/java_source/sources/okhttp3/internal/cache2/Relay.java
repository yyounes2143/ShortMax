package okhttp3.internal.cache2;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.ByteString;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Relay.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Relay {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final Companion f63717k = new Companion(null);
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final ByteString f63718l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final ByteString f63719m;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private RandomAccessFile f63720a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Source f63721b;

    /* renamed from: c  reason: collision with root package name */
    private long f63722c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final ByteString f63723d;

    /* renamed from: e  reason: collision with root package name */
    private final long f63724e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Thread f63725f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Buffer f63726g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f63727h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final Buffer f63728i;

    /* renamed from: j  reason: collision with root package name */
    private int f63729j;

    /* compiled from: Relay.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: Relay.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Relay.kt\nokhttp3/internal/cache2/Relay$RelaySource\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,356:1\n563#2:357\n*S KotlinDebug\n*F\n+ 1 Relay.kt\nokhttp3/internal/cache2/Relay$RelaySource\n*L\n267#1:357\n*E\n"})
    /* loaded from: classes8.dex */
    public final class RelaySource implements Source {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Timeout f63730a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private FileOperator f63731b;

        /* renamed from: c  reason: collision with root package name */
        private long f63732c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Relay f63733d;

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f63731b == null) {
                return;
            }
            RandomAccessFile randomAccessFile = null;
            this.f63731b = null;
            Relay relay = this.f63733d;
            synchronized (relay) {
                try {
                    relay.l(relay.f() - 1);
                    if (relay.f() == 0) {
                        RandomAccessFile e10 = relay.e();
                        relay.k(null);
                        randomAccessFile = e10;
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (randomAccessFile != null) {
                Util.m(randomAccessFile);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x0056, code lost:
            if (r0 != true) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0058, code lost:
            r10 = java.lang.Math.min(r23, r21.f63733d.i() - r21.f63732c);
            r2 = r21.f63731b;
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2);
            r2.a(r21.f63732c + 32, r22, r10);
            r21.f63732c += r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0078, code lost:
            return r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x007a, code lost:
            r0 = r21.f63733d.g();
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0);
            r11 = r0.read(r21.f63733d.h(), r21.f63733d.c());
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0095, code lost:
            if (r11 != (-1)) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0097, code lost:
            r0 = r21.f63733d;
            r0.a(r0.i());
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x00a0, code lost:
            r2 = r21.f63733d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00a2, code lost:
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00a3, code lost:
            r2.n(null);
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2, "null cannot be cast to non-null type java.lang.Object");
            r2.notifyAll();
            r0 = kotlin.Unit.f60915a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00b0, code lost:
            monitor-exit(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00b1, code lost:
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b5, code lost:
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00b8, code lost:
            r19 = java.lang.Math.min(r11, r23);
            r21.f63733d.h().copyTo(r22, 0, r19);
            r21.f63732c += r19;
            r13 = r21.f63731b;
            kotlin.jvm.internal.Intrinsics.checkNotNull(r13);
            r13.b(r21.f63733d.i() + 32, r21.f63733d.h().clone(), r11);
            r2 = r21.f63733d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00f0, code lost:
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00f1, code lost:
            r2.b().write(r2.h(), r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x010a, code lost:
            if (r2.b().size() <= r2.c()) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x010c, code lost:
            r2.b().skip(r2.b().size() - r2.c());
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0123, code lost:
            r2.m(r2.i() + r11);
            r0 = kotlin.Unit.f60915a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x012d, code lost:
            monitor-exit(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x012e, code lost:
            r2 = r21.f63733d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0130, code lost:
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0131, code lost:
            r2.n(null);
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2, "null cannot be cast to non-null type java.lang.Object");
            r2.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x013c, code lost:
            monitor-exit(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x013d, code lost:
            return r19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x0143, code lost:
            r2 = r21.f63733d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x0145, code lost:
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0146, code lost:
            r2.n(null);
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2, "null cannot be cast to non-null type java.lang.Object");
            r2.notifyAll();
            r3 = kotlin.Unit.f60915a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x0154, code lost:
            throw r0;
         */
        @Override // okio.Source
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long read(@org.jetbrains.annotations.NotNull okio.Buffer r22, long r23) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 387
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache2.Relay.RelaySource.read(okio.Buffer, long):long");
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return this.f63730a;
        }
    }

    static {
        ByteString.Companion companion = ByteString.Companion;
        f63718l = companion.encodeUtf8("OkHttp cache v1\n");
        f63719m = companion.encodeUtf8("OkHttp DIRTY :(\n");
    }

    private final void o(ByteString byteString, long j10, long j11) throws IOException {
        Buffer buffer = new Buffer();
        buffer.write(byteString);
        buffer.writeLong(j10);
        buffer.writeLong(j11);
        if (buffer.size() == 32) {
            RandomAccessFile randomAccessFile = this.f63720a;
            Intrinsics.checkNotNull(randomAccessFile);
            FileChannel channel = randomAccessFile.getChannel();
            Intrinsics.checkNotNullExpressionValue(channel, "file!!.channel");
            new FileOperator(channel).b(0L, buffer, 32L);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    private final void p(long j10) throws IOException {
        Buffer buffer = new Buffer();
        buffer.write(this.f63723d);
        RandomAccessFile randomAccessFile = this.f63720a;
        Intrinsics.checkNotNull(randomAccessFile);
        FileChannel channel = randomAccessFile.getChannel();
        Intrinsics.checkNotNullExpressionValue(channel, "file!!.channel");
        new FileOperator(channel).b(32 + j10, buffer, this.f63723d.size());
    }

    public final void a(long j10) throws IOException {
        p(j10);
        RandomAccessFile randomAccessFile = this.f63720a;
        Intrinsics.checkNotNull(randomAccessFile);
        randomAccessFile.getChannel().force(false);
        o(f63718l, j10, this.f63723d.size());
        RandomAccessFile randomAccessFile2 = this.f63720a;
        Intrinsics.checkNotNull(randomAccessFile2);
        randomAccessFile2.getChannel().force(false);
        synchronized (this) {
            this.f63727h = true;
            Unit unit = Unit.f60915a;
        }
        Source source = this.f63721b;
        if (source != null) {
            Util.m(source);
        }
        this.f63721b = null;
    }

    @NotNull
    public final Buffer b() {
        return this.f63728i;
    }

    public final long c() {
        return this.f63724e;
    }

    public final boolean d() {
        return this.f63727h;
    }

    @Nullable
    public final RandomAccessFile e() {
        return this.f63720a;
    }

    public final int f() {
        return this.f63729j;
    }

    @Nullable
    public final Source g() {
        return this.f63721b;
    }

    @NotNull
    public final Buffer h() {
        return this.f63726g;
    }

    public final long i() {
        return this.f63722c;
    }

    @Nullable
    public final Thread j() {
        return this.f63725f;
    }

    public final void k(@Nullable RandomAccessFile randomAccessFile) {
        this.f63720a = randomAccessFile;
    }

    public final void l(int i10) {
        this.f63729j = i10;
    }

    public final void m(long j10) {
        this.f63722c = j10;
    }

    public final void n(@Nullable Thread thread) {
        this.f63725f = thread;
    }
}
