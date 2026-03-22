package coil.disk;

import gt.c0;
import gt.g;
import gt.g0;
import gt.r1;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i;
import okio.BufferedSink;
import okio.FileSystem;
import okio.ForwardingFileSystem;
import okio.Okio;
import okio.Path;
import okio.Sink;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiskLruCache.kt */
@Metadata
/* loaded from: classes2.dex */
public final class DiskLruCache implements Closeable, Flushable {
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    public static final a f3899s = new a(null);
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private static final Regex f3900t = new Regex("[a-z0-9_-]{1,120}");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Path f3901a;

    /* renamed from: b  reason: collision with root package name */
    private final long f3902b;

    /* renamed from: c  reason: collision with root package name */
    private final int f3903c;

    /* renamed from: d  reason: collision with root package name */
    private final int f3904d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Path f3905e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Path f3906f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Path f3907g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final LinkedHashMap<String, c> f3908h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final g0 f3909i;

    /* renamed from: j  reason: collision with root package name */
    private long f3910j;

    /* renamed from: k  reason: collision with root package name */
    private int f3911k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private BufferedSink f3912l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f3913m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f3914n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f3915o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f3916p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f3917q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final e f3918r;

    /* compiled from: DiskLruCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DiskLruCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public final class b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final c f3919a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f3920b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final boolean[] f3921c;

        public b(@NotNull c cVar) {
            this.f3919a = cVar;
            this.f3921c = new boolean[DiskLruCache.this.f3904d];
        }

        private final void d(boolean z10) {
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                try {
                    if (!this.f3920b) {
                        if (Intrinsics.areEqual(this.f3919a.b(), this)) {
                            diskLruCache.u(this, z10);
                        }
                        this.f3920b = true;
                        Unit unit = Unit.f60915a;
                    } else {
                        throw new IllegalStateException("editor is closed");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public final void a() {
            d(false);
        }

        public final void b() {
            d(true);
        }

        @Nullable
        public final d c() {
            d x10;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                b();
                x10 = diskLruCache.x(this.f3919a.d());
            }
            return x10;
        }

        public final void e() {
            if (Intrinsics.areEqual(this.f3919a.b(), this)) {
                this.f3919a.m(true);
            }
        }

        @NotNull
        public final Path f(int i10) {
            Path path;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                if (!this.f3920b) {
                    this.f3921c[i10] = true;
                    Path path2 = this.f3919a.c().get(i10);
                    r0.e.a(diskLruCache.f3918r, path2);
                    path = path2;
                } else {
                    throw new IllegalStateException("editor is closed");
                }
            }
            return path;
        }

        @NotNull
        public final c g() {
            return this.f3919a;
        }

        @NotNull
        public final boolean[] h() {
            return this.f3921c;
        }
    }

    /* compiled from: DiskLruCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public final class c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f3923a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final long[] f3924b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final ArrayList<Path> f3925c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final ArrayList<Path> f3926d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f3927e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f3928f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private b f3929g;

        /* renamed from: h  reason: collision with root package name */
        private int f3930h;

        public c(@NotNull String str) {
            this.f3923a = str;
            this.f3924b = new long[DiskLruCache.this.f3904d];
            this.f3925c = new ArrayList<>(DiskLruCache.this.f3904d);
            this.f3926d = new ArrayList<>(DiskLruCache.this.f3904d);
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append('.');
            int length = sb2.length();
            int i10 = DiskLruCache.this.f3904d;
            for (int i11 = 0; i11 < i10; i11++) {
                sb2.append(i11);
                this.f3925c.add(DiskLruCache.this.f3901a.resolve(sb2.toString()));
                sb2.append(".tmp");
                this.f3926d.add(DiskLruCache.this.f3901a.resolve(sb2.toString()));
                sb2.setLength(length);
            }
        }

        @NotNull
        public final ArrayList<Path> a() {
            return this.f3925c;
        }

        @Nullable
        public final b b() {
            return this.f3929g;
        }

        @NotNull
        public final ArrayList<Path> c() {
            return this.f3926d;
        }

        @NotNull
        public final String d() {
            return this.f3923a;
        }

        @NotNull
        public final long[] e() {
            return this.f3924b;
        }

        public final int f() {
            return this.f3930h;
        }

        public final boolean g() {
            return this.f3927e;
        }

        public final boolean h() {
            return this.f3928f;
        }

        public final void i(@Nullable b bVar) {
            this.f3929g = bVar;
        }

        public final void j(@NotNull List<String> list) {
            if (list.size() == DiskLruCache.this.f3904d) {
                try {
                    int size = list.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        this.f3924b[i10] = Long.parseLong(list.get(i10));
                    }
                    return;
                } catch (NumberFormatException unused) {
                    throw new IOException("unexpected journal line: " + list);
                }
            }
            throw new IOException("unexpected journal line: " + list);
        }

        public final void k(int i10) {
            this.f3930h = i10;
        }

        public final void l(boolean z10) {
            this.f3927e = z10;
        }

        public final void m(boolean z10) {
            this.f3928f = z10;
        }

        @Nullable
        public final d n() {
            if (!this.f3927e || this.f3929g != null || this.f3928f) {
                return null;
            }
            ArrayList<Path> arrayList = this.f3925c;
            DiskLruCache diskLruCache = DiskLruCache.this;
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (!diskLruCache.f3918r.exists(arrayList.get(i10))) {
                    try {
                        diskLruCache.a0(this);
                    } catch (IOException unused) {
                    }
                    return null;
                }
            }
            this.f3930h++;
            return new d(this);
        }

        public final void o(@NotNull BufferedSink bufferedSink) {
            for (long j10 : this.f3924b) {
                bufferedSink.writeByte(32).writeDecimalLong(j10);
            }
        }
    }

    /* compiled from: DiskLruCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public final class d implements Closeable {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final c f3932a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f3933b;

        public d(@NotNull c cVar) {
            this.f3932a = cVar;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (!this.f3933b) {
                this.f3933b = true;
                DiskLruCache diskLruCache = DiskLruCache.this;
                synchronized (diskLruCache) {
                    try {
                        c cVar = this.f3932a;
                        cVar.k(cVar.f() - 1);
                        if (this.f3932a.f() == 0 && this.f3932a.h()) {
                            diskLruCache.a0(this.f3932a);
                        }
                        Unit unit = Unit.f60915a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        @Nullable
        public final b d() {
            b w10;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                close();
                w10 = diskLruCache.w(this.f3932a.d());
            }
            return w10;
        }

        @NotNull
        public final Path g(int i10) {
            if (!this.f3933b) {
                return this.f3932a.a().get(i10);
            }
            throw new IllegalStateException("snapshot is closed");
        }
    }

    /* compiled from: DiskLruCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class e extends ForwardingFileSystem {
        e(FileSystem fileSystem) {
            super(fileSystem);
        }

        @Override // okio.ForwardingFileSystem, okio.FileSystem
        @NotNull
        public Sink sink(@NotNull Path path, boolean z10) {
            Path parent = path.parent();
            if (parent != null) {
                createDirectories(parent);
            }
            return super.sink(path, z10);
        }
    }

    public DiskLruCache(@NotNull FileSystem fileSystem, @NotNull Path path, @NotNull c0 c0Var, long j10, int i10, int i11) {
        this.f3901a = path;
        this.f3902b = j10;
        this.f3903c = i10;
        this.f3904d = i11;
        if (j10 > 0) {
            if (i11 > 0) {
                this.f3905e = path.resolve("journal");
                this.f3906f = path.resolve("journal.tmp");
                this.f3907g = path.resolve("journal.bkp");
                this.f3908h = new LinkedHashMap<>(0, 0.75f, true);
                this.f3909i = i.a(r1.b(null, 1, null).plus(c0Var.limitedParallelism(1)));
                this.f3918r = new e(fileSystem);
                return;
            }
            throw new IllegalArgumentException("valueCount <= 0");
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean P() {
        if (this.f3911k >= 2000) {
            return true;
        }
        return false;
    }

    private final void R() {
        g.d(this.f3909i, null, null, new DiskLruCache$launchCleanup$1(this, null), 3, null);
    }

    private final BufferedSink T() {
        return Okio.buffer(new e0.b(this.f3918r.appendingSink(this.f3905e), new Function1<IOException, Unit>() { // from class: coil.disk.DiskLruCache$newJournalWriter$faultHidingSink$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(IOException iOException) {
                invoke2(iOException);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull IOException iOException) {
                DiskLruCache.this.f3913m = true;
            }
        }));
    }

    private final void W() {
        Iterator<c> it = this.f3908h.values().iterator();
        long j10 = 0;
        while (it.hasNext()) {
            c next = it.next();
            int i10 = 0;
            if (next.b() == null) {
                int i11 = this.f3904d;
                while (i10 < i11) {
                    j10 += next.e()[i10];
                    i10++;
                }
            } else {
                next.i(null);
                int i12 = this.f3904d;
                while (i10 < i12) {
                    this.f3918r.delete(next.a().get(i10));
                    this.f3918r.delete(next.c().get(i10));
                    i10++;
                }
                it.remove();
            }
        }
        this.f3910j = j10;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void Y() {
        /*
            r12 = this;
            java.lang.String r0 = ", "
            coil.disk.DiskLruCache$e r1 = r12.f3918r
            okio.Path r2 = r12.f3905e
            okio.Source r1 = r1.source(r2)
            okio.BufferedSource r1 = okio.Okio.buffer(r1)
            r2 = 0
            java.lang.String r3 = r1.readUtf8LineStrict()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r4 = r1.readUtf8LineStrict()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r5 = r1.readUtf8LineStrict()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r6 = r1.readUtf8LineStrict()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r7 = r1.readUtf8LineStrict()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r8 = "libcore.io.DiskLruCache"
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r3)     // Catch: java.lang.Throwable -> L5c
            if (r8 == 0) goto L7a
            java.lang.String r8 = "1"
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r4)     // Catch: java.lang.Throwable -> L5c
            if (r8 == 0) goto L7a
            int r8 = r12.f3903c     // Catch: java.lang.Throwable -> L5c
            java.lang.String r8 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> L5c
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r5)     // Catch: java.lang.Throwable -> L5c
            if (r8 == 0) goto L7a
            int r8 = r12.f3904d     // Catch: java.lang.Throwable -> L5c
            java.lang.String r8 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> L5c
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r6)     // Catch: java.lang.Throwable -> L5c
            if (r8 == 0) goto L7a
            int r8 = r7.length()     // Catch: java.lang.Throwable -> L5c
            if (r8 > 0) goto L7a
            r0 = 0
        L52:
            java.lang.String r3 = r1.readUtf8LineStrict()     // Catch: java.lang.Throwable -> L5c java.io.EOFException -> L5e
            r12.Z(r3)     // Catch: java.lang.Throwable -> L5c java.io.EOFException -> L5e
            int r0 = r0 + 1
            goto L52
        L5c:
            r0 = move-exception
            goto Laf
        L5e:
            java.util.LinkedHashMap<java.lang.String, coil.disk.DiskLruCache$c> r3 = r12.f3908h     // Catch: java.lang.Throwable -> L5c
            int r3 = r3.size()     // Catch: java.lang.Throwable -> L5c
            int r0 = r0 - r3
            r12.f3911k = r0     // Catch: java.lang.Throwable -> L5c
            boolean r0 = r1.exhausted()     // Catch: java.lang.Throwable -> L5c
            if (r0 != 0) goto L71
            r12.e0()     // Catch: java.lang.Throwable -> L5c
            goto L77
        L71:
            okio.BufferedSink r0 = r12.T()     // Catch: java.lang.Throwable -> L5c
            r12.f3912l = r0     // Catch: java.lang.Throwable -> L5c
        L77:
            kotlin.Unit r0 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L5c
            goto Lb2
        L7a:
            java.io.IOException r8 = new java.io.IOException     // Catch: java.lang.Throwable -> L5c
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c
            r9.<init>()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r10 = "unexpected journal header: ["
            r9.append(r10)     // Catch: java.lang.Throwable -> L5c
            r9.append(r3)     // Catch: java.lang.Throwable -> L5c
            r9.append(r0)     // Catch: java.lang.Throwable -> L5c
            r9.append(r4)     // Catch: java.lang.Throwable -> L5c
            r9.append(r0)     // Catch: java.lang.Throwable -> L5c
            r9.append(r5)     // Catch: java.lang.Throwable -> L5c
            r9.append(r0)     // Catch: java.lang.Throwable -> L5c
            r9.append(r6)     // Catch: java.lang.Throwable -> L5c
            r9.append(r0)     // Catch: java.lang.Throwable -> L5c
            r9.append(r7)     // Catch: java.lang.Throwable -> L5c
            r0 = 93
            r9.append(r0)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r0 = r9.toString()     // Catch: java.lang.Throwable -> L5c
            r8.<init>(r0)     // Catch: java.lang.Throwable -> L5c
            throw r8     // Catch: java.lang.Throwable -> L5c
        Laf:
            r11 = r2
            r2 = r0
            r0 = r11
        Lb2:
            if (r1 == 0) goto Lc0
            r1.close()     // Catch: java.lang.Throwable -> Lb8
            goto Lc0
        Lb8:
            r1 = move-exception
            if (r2 != 0) goto Lbd
            r2 = r1
            goto Lc0
        Lbd:
            ms.d.a(r2, r1)
        Lc0:
            if (r2 != 0) goto Lc6
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            return
        Lc6:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.disk.DiskLruCache.Y():void");
    }

    private final void Z(String str) {
        String substring;
        int p02 = StringsKt.p0(str, ' ', 0, false, 6, null);
        if (p02 != -1) {
            int i10 = p02 + 1;
            int p03 = StringsKt.p0(str, ' ', i10, false, 4, null);
            if (p03 == -1) {
                substring = str.substring(i10);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                if (p02 == 6 && StringsKt.V(str, "REMOVE", false, 2, null)) {
                    this.f3908h.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i10, p03);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            }
            LinkedHashMap<String, c> linkedHashMap = this.f3908h;
            c cVar = linkedHashMap.get(substring);
            if (cVar == null) {
                cVar = new c(substring);
                linkedHashMap.put(substring, cVar);
            }
            c cVar2 = cVar;
            if (p03 != -1 && p02 == 5 && StringsKt.V(str, "CLEAN", false, 2, null)) {
                String substring2 = str.substring(p03 + 1);
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                List<String> Y0 = StringsKt.Y0(substring2, new char[]{' '}, false, 0, 6, null);
                cVar2.l(true);
                cVar2.i(null);
                cVar2.j(Y0);
                return;
            } else if (p03 == -1 && p02 == 5 && StringsKt.V(str, "DIRTY", false, 2, null)) {
                cVar2.i(new b(cVar2));
                return;
            } else if (p03 == -1 && p02 == 4 && StringsKt.V(str, "READ", false, 2, null)) {
                return;
            } else {
                throw new IOException("unexpected journal line: " + str);
            }
        }
        throw new IOException("unexpected journal line: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a0(c cVar) {
        BufferedSink bufferedSink;
        if (cVar.f() > 0 && (bufferedSink = this.f3912l) != null) {
            bufferedSink.writeUtf8("DIRTY");
            bufferedSink.writeByte(32);
            bufferedSink.writeUtf8(cVar.d());
            bufferedSink.writeByte(10);
            bufferedSink.flush();
        }
        if (cVar.f() <= 0 && cVar.b() == null) {
            int i10 = this.f3904d;
            for (int i11 = 0; i11 < i10; i11++) {
                this.f3918r.delete(cVar.a().get(i11));
                this.f3910j -= cVar.e()[i11];
                cVar.e()[i11] = 0;
            }
            this.f3911k++;
            BufferedSink bufferedSink2 = this.f3912l;
            if (bufferedSink2 != null) {
                bufferedSink2.writeUtf8("REMOVE");
                bufferedSink2.writeByte(32);
                bufferedSink2.writeUtf8(cVar.d());
                bufferedSink2.writeByte(10);
            }
            this.f3908h.remove(cVar.d());
            if (P()) {
                R();
            }
            return true;
        }
        cVar.m(true);
        return true;
    }

    private final boolean b0() {
        for (c cVar : this.f3908h.values()) {
            if (!cVar.h()) {
                a0(cVar);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c0() {
        while (this.f3910j > this.f3902b) {
            if (!b0()) {
                return;
            }
        }
        this.f3916p = false;
    }

    private final void d0(String str) {
        if (f3900t.k(str)) {
            return;
        }
        throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + '\"').toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void e0() {
        Unit unit;
        try {
            BufferedSink bufferedSink = this.f3912l;
            if (bufferedSink != null) {
                bufferedSink.close();
            }
            BufferedSink buffer = Okio.buffer(this.f3918r.sink(this.f3906f, false));
            Throwable th2 = null;
            try {
                buffer.writeUtf8("libcore.io.DiskLruCache").writeByte(10);
                buffer.writeUtf8("1").writeByte(10);
                buffer.writeDecimalLong(this.f3903c).writeByte(10);
                buffer.writeDecimalLong(this.f3904d).writeByte(10);
                buffer.writeByte(10);
                for (c cVar : this.f3908h.values()) {
                    if (cVar.b() != null) {
                        buffer.writeUtf8("DIRTY");
                        buffer.writeByte(32);
                        buffer.writeUtf8(cVar.d());
                        buffer.writeByte(10);
                    } else {
                        buffer.writeUtf8("CLEAN");
                        buffer.writeByte(32);
                        buffer.writeUtf8(cVar.d());
                        cVar.o(buffer);
                        buffer.writeByte(10);
                    }
                }
                unit = Unit.f60915a;
            } catch (Throwable th3) {
                unit = null;
                th2 = th3;
            }
            if (buffer != null) {
                buffer.close();
            }
            if (th2 == null) {
                Intrinsics.checkNotNull(unit);
                if (this.f3918r.exists(this.f3905e)) {
                    this.f3918r.atomicMove(this.f3905e, this.f3907g);
                    this.f3918r.atomicMove(this.f3906f, this.f3905e);
                    this.f3918r.delete(this.f3907g);
                } else {
                    this.f3918r.atomicMove(this.f3906f, this.f3905e);
                }
                this.f3912l = T();
                this.f3911k = 0;
                this.f3913m = false;
                this.f3917q = false;
            } else {
                throw th2;
            }
        } finally {
        }
    }

    private final void t() {
        if (!this.f3915o) {
            return;
        }
        throw new IllegalStateException("cache is closed");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void u(b bVar, boolean z10) {
        long j10;
        c g10 = bVar.g();
        if (Intrinsics.areEqual(g10.b(), bVar)) {
            int i10 = 0;
            if (z10 && !g10.h()) {
                int i11 = this.f3904d;
                for (int i12 = 0; i12 < i11; i12++) {
                    if (bVar.h()[i12] && !this.f3918r.exists(g10.c().get(i12))) {
                        bVar.a();
                        return;
                    }
                }
                int i13 = this.f3904d;
                while (i10 < i13) {
                    Path path = g10.c().get(i10);
                    Path path2 = g10.a().get(i10);
                    if (this.f3918r.exists(path)) {
                        this.f3918r.atomicMove(path, path2);
                    } else {
                        r0.e.a(this.f3918r, g10.a().get(i10));
                    }
                    long j11 = g10.e()[i10];
                    Long size = this.f3918r.metadata(path2).getSize();
                    if (size != null) {
                        j10 = size.longValue();
                    } else {
                        j10 = 0;
                    }
                    g10.e()[i10] = j10;
                    this.f3910j = (this.f3910j - j11) + j10;
                    i10++;
                }
            } else {
                int i14 = this.f3904d;
                while (i10 < i14) {
                    this.f3918r.delete(g10.c().get(i10));
                    i10++;
                }
            }
            g10.i(null);
            if (g10.h()) {
                a0(g10);
                return;
            }
            this.f3911k++;
            BufferedSink bufferedSink = this.f3912l;
            Intrinsics.checkNotNull(bufferedSink);
            if (!z10 && !g10.g()) {
                this.f3908h.remove(g10.d());
                bufferedSink.writeUtf8("REMOVE");
                bufferedSink.writeByte(32);
                bufferedSink.writeUtf8(g10.d());
                bufferedSink.writeByte(10);
                bufferedSink.flush();
                if (this.f3910j <= this.f3902b || P()) {
                    R();
                }
                return;
            }
            g10.l(true);
            bufferedSink.writeUtf8("CLEAN");
            bufferedSink.writeByte(32);
            bufferedSink.writeUtf8(g10.d());
            g10.o(bufferedSink);
            bufferedSink.writeByte(10);
            bufferedSink.flush();
            if (this.f3910j <= this.f3902b) {
            }
            R();
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    private final void v() {
        close();
        r0.e.b(this.f3918r, this.f3901a);
    }

    public final synchronized void F() {
        try {
            if (this.f3914n) {
                return;
            }
            this.f3918r.delete(this.f3906f);
            if (this.f3918r.exists(this.f3907g)) {
                if (this.f3918r.exists(this.f3905e)) {
                    this.f3918r.delete(this.f3907g);
                } else {
                    this.f3918r.atomicMove(this.f3907g, this.f3905e);
                }
            }
            if (this.f3918r.exists(this.f3905e)) {
                try {
                    Y();
                    W();
                    this.f3914n = true;
                    return;
                } catch (IOException unused) {
                    v();
                    this.f3915o = false;
                }
            }
            e0();
            this.f3914n = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            if (this.f3914n && !this.f3915o) {
                Object[] array = this.f3908h.values().toArray(new c[0]);
                Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (c cVar : (c[]) array) {
                    b b10 = cVar.b();
                    if (b10 != null) {
                        b10.e();
                    }
                }
                c0();
                i.e(this.f3909i, null, 1, null);
                BufferedSink bufferedSink = this.f3912l;
                Intrinsics.checkNotNull(bufferedSink);
                bufferedSink.close();
                this.f3912l = null;
                this.f3915o = true;
                return;
            }
            this.f3915o = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.Flushable
    public synchronized void flush() {
        if (!this.f3914n) {
            return;
        }
        t();
        c0();
        BufferedSink bufferedSink = this.f3912l;
        Intrinsics.checkNotNull(bufferedSink);
        bufferedSink.flush();
    }

    @Nullable
    public final synchronized b w(@NotNull String str) {
        b bVar;
        t();
        d0(str);
        F();
        c cVar = this.f3908h.get(str);
        if (cVar != null) {
            bVar = cVar.b();
        } else {
            bVar = null;
        }
        if (bVar != null) {
            return null;
        }
        if (cVar != null && cVar.f() != 0) {
            return null;
        }
        if (!this.f3916p && !this.f3917q) {
            BufferedSink bufferedSink = this.f3912l;
            Intrinsics.checkNotNull(bufferedSink);
            bufferedSink.writeUtf8("DIRTY");
            bufferedSink.writeByte(32);
            bufferedSink.writeUtf8(str);
            bufferedSink.writeByte(10);
            bufferedSink.flush();
            if (this.f3913m) {
                return null;
            }
            if (cVar == null) {
                cVar = new c(str);
                this.f3908h.put(str, cVar);
            }
            b bVar2 = new b(cVar);
            cVar.i(bVar2);
            return bVar2;
        }
        R();
        return null;
    }

    @Nullable
    public final synchronized d x(@NotNull String str) {
        d n10;
        t();
        d0(str);
        F();
        c cVar = this.f3908h.get(str);
        if (cVar != null && (n10 = cVar.n()) != null) {
            this.f3911k++;
            BufferedSink bufferedSink = this.f3912l;
            Intrinsics.checkNotNull(bufferedSink);
            bufferedSink.writeUtf8("READ");
            bufferedSink.writeByte(32);
            bufferedSink.writeUtf8(str);
            bufferedSink.writeByte(10);
            if (P()) {
                R();
            }
            return n10;
        }
        return null;
    }
}
