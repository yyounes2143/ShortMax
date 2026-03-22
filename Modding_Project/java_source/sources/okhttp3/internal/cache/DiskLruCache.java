package okhttp3.internal.cache;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal.Util;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.io.FileSystem;
import okhttp3.internal.platform.Platform;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ws.b;
/* compiled from: DiskLruCache.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokhttp3/internal/Util\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1065:1\n1#2:1066\n608#3,4:1067\n37#4,2:1071\n37#4,2:1073\n*S KotlinDebug\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache\n*L\n215#1:1067,4\n672#1:1071,2\n721#1:1073,2\n*E\n"})
/* loaded from: classes8.dex */
public final class DiskLruCache implements Closeable, Flushable {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final FileSystem f63663a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final File f63664b;

    /* renamed from: c  reason: collision with root package name */
    private final int f63665c;

    /* renamed from: d  reason: collision with root package name */
    private final int f63666d;

    /* renamed from: e  reason: collision with root package name */
    private long f63667e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final File f63668f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final File f63669g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final File f63670h;

    /* renamed from: i  reason: collision with root package name */
    private long f63671i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private BufferedSink f63672j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final LinkedHashMap<String, Entry> f63673k;

    /* renamed from: l  reason: collision with root package name */
    private int f63674l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f63675m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f63676n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f63677o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f63678p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f63679q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f63680r;

    /* renamed from: s  reason: collision with root package name */
    private long f63681s;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private final TaskQueue f63682t;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private final DiskLruCache$cleanupTask$1 f63683u;
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    public static final Companion f63658v = new Companion(null);
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final String f63659w = "journal";
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    public static final String f63660x = "journal.tmp";
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    public static final String f63661y = "journal.bkp";
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    public static final String f63662z = "libcore.io.DiskLruCache";
    @NotNull
    public static final String A = "1";
    public static final long B = -1;
    @NotNull
    public static final Regex C = new Regex("[a-z0-9_-]{1,120}");
    @NotNull
    public static final String D = "CLEAN";
    @NotNull
    public static final String E = "DIRTY";
    @NotNull
    public static final String F = "REMOVE";
    @NotNull
    public static final String G = "READ";

    /* compiled from: DiskLruCache.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: DiskLruCache.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public final class Editor {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Entry f63684a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final boolean[] f63685b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f63686c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ DiskLruCache f63687d;

        public Editor(@NotNull DiskLruCache diskLruCache, Entry entry) {
            boolean[] zArr;
            Intrinsics.checkNotNullParameter(entry, "entry");
            this.f63687d = diskLruCache;
            this.f63684a = entry;
            if (entry.g()) {
                zArr = null;
            } else {
                zArr = new boolean[diskLruCache.w()];
            }
            this.f63685b = zArr;
        }

        public final void a() throws IOException {
            DiskLruCache diskLruCache = this.f63687d;
            synchronized (diskLruCache) {
                try {
                    if (!this.f63686c) {
                        if (Intrinsics.areEqual(this.f63684a.b(), this)) {
                            diskLruCache.o(this, false);
                        }
                        this.f63686c = true;
                        Unit unit = Unit.f60915a;
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public final void b() throws IOException {
            DiskLruCache diskLruCache = this.f63687d;
            synchronized (diskLruCache) {
                try {
                    if (!this.f63686c) {
                        if (Intrinsics.areEqual(this.f63684a.b(), this)) {
                            diskLruCache.o(this, true);
                        }
                        this.f63686c = true;
                        Unit unit = Unit.f60915a;
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public final void c() {
            if (Intrinsics.areEqual(this.f63684a.b(), this)) {
                if (this.f63687d.f63676n) {
                    this.f63687d.o(this, false);
                } else {
                    this.f63684a.q(true);
                }
            }
        }

        @NotNull
        public final Entry d() {
            return this.f63684a;
        }

        @Nullable
        public final boolean[] e() {
            return this.f63685b;
        }

        @NotNull
        public final Sink f(int i10) {
            final DiskLruCache diskLruCache = this.f63687d;
            synchronized (diskLruCache) {
                if (!this.f63686c) {
                    if (!Intrinsics.areEqual(this.f63684a.b(), this)) {
                        return Okio.blackhole();
                    }
                    if (!this.f63684a.g()) {
                        boolean[] zArr = this.f63685b;
                        Intrinsics.checkNotNull(zArr);
                        zArr[i10] = true;
                    }
                    try {
                        return new FaultHidingSink(diskLruCache.v().sink(this.f63684a.c().get(i10)), new Function1<IOException, Unit>() { // from class: okhttp3.internal.cache.DiskLruCache$Editor$newSink$1$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(IOException iOException) {
                                invoke2(iOException);
                                return Unit.f60915a;
                            }

                            /* renamed from: invoke  reason: avoid collision after fix types in other method */
                            public final void invoke2(@NotNull IOException it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                DiskLruCache diskLruCache2 = DiskLruCache.this;
                                DiskLruCache.Editor editor = this;
                                synchronized (diskLruCache2) {
                                    editor.c();
                                    Unit unit = Unit.f60915a;
                                }
                            }
                        });
                    } catch (FileNotFoundException unused) {
                        return Okio.blackhole();
                    }
                }
                throw new IllegalStateException("Check failed.");
            }
        }
    }

    /* compiled from: DiskLruCache.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache$Entry\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,1065:1\n608#2,4:1066\n*S KotlinDebug\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache$Entry\n*L\n1001#1:1066,4\n*E\n"})
    /* loaded from: classes8.dex */
    public final class Entry {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f63690a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final long[] f63691b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final List<File> f63692c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final List<File> f63693d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f63694e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f63695f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private Editor f63696g;

        /* renamed from: h  reason: collision with root package name */
        private int f63697h;

        /* renamed from: i  reason: collision with root package name */
        private long f63698i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ DiskLruCache f63699j;

        public Entry(@NotNull DiskLruCache diskLruCache, String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.f63699j = diskLruCache;
            this.f63690a = key;
            this.f63691b = new long[diskLruCache.w()];
            this.f63692c = new ArrayList();
            this.f63693d = new ArrayList();
            StringBuilder sb2 = new StringBuilder(key);
            sb2.append('.');
            int length = sb2.length();
            int w10 = diskLruCache.w();
            for (int i10 = 0; i10 < w10; i10++) {
                sb2.append(i10);
                this.f63692c.add(new File(this.f63699j.u(), sb2.toString()));
                sb2.append(".tmp");
                this.f63693d.add(new File(this.f63699j.u(), sb2.toString()));
                sb2.setLength(length);
            }
        }

        private final Void j(List<String> list) throws IOException {
            throw new IOException("unexpected journal line: " + list);
        }

        private final Source k(int i10) {
            final Source source = this.f63699j.v().source(this.f63692c.get(i10));
            if (this.f63699j.f63676n) {
                return source;
            }
            this.f63697h++;
            final DiskLruCache diskLruCache = this.f63699j;
            return new ForwardingSource(source) { // from class: okhttp3.internal.cache.DiskLruCache$Entry$newSource$1

                /* renamed from: a  reason: collision with root package name */
                private boolean f63700a;

                @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    super.close();
                    if (!this.f63700a) {
                        this.f63700a = true;
                        DiskLruCache diskLruCache2 = diskLruCache;
                        DiskLruCache.Entry entry = this;
                        synchronized (diskLruCache2) {
                            try {
                                entry.n(entry.f() - 1);
                                if (entry.f() == 0 && entry.i()) {
                                    diskLruCache2.a0(entry);
                                }
                                Unit unit = Unit.f60915a;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                }
            };
        }

        @NotNull
        public final List<File> a() {
            return this.f63692c;
        }

        @Nullable
        public final Editor b() {
            return this.f63696g;
        }

        @NotNull
        public final List<File> c() {
            return this.f63693d;
        }

        @NotNull
        public final String d() {
            return this.f63690a;
        }

        @NotNull
        public final long[] e() {
            return this.f63691b;
        }

        public final int f() {
            return this.f63697h;
        }

        public final boolean g() {
            return this.f63694e;
        }

        public final long h() {
            return this.f63698i;
        }

        public final boolean i() {
            return this.f63695f;
        }

        public final void l(@Nullable Editor editor) {
            this.f63696g = editor;
        }

        public final void m(@NotNull List<String> strings) throws IOException {
            Intrinsics.checkNotNullParameter(strings, "strings");
            if (strings.size() == this.f63699j.w()) {
                try {
                    int size = strings.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        this.f63691b[i10] = Long.parseLong(strings.get(i10));
                    }
                    return;
                } catch (NumberFormatException unused) {
                    j(strings);
                    throw new KotlinNothingValueException();
                }
            }
            j(strings);
            throw new KotlinNothingValueException();
        }

        public final void n(int i10) {
            this.f63697h = i10;
        }

        public final void o(boolean z10) {
            this.f63694e = z10;
        }

        public final void p(long j10) {
            this.f63698i = j10;
        }

        public final void q(boolean z10) {
            this.f63695f = z10;
        }

        @Nullable
        public final Snapshot r() {
            DiskLruCache diskLruCache = this.f63699j;
            if (Util.f63634h && !Thread.holdsLock(diskLruCache)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + diskLruCache);
            } else if (!this.f63694e) {
                return null;
            } else {
                if (!this.f63699j.f63676n && (this.f63696g != null || this.f63695f)) {
                    return null;
                }
                ArrayList<Source> arrayList = new ArrayList();
                long[] jArr = (long[]) this.f63691b.clone();
                try {
                    int w10 = this.f63699j.w();
                    for (int i10 = 0; i10 < w10; i10++) {
                        arrayList.add(k(i10));
                    }
                    return new Snapshot(this.f63699j, this.f63690a, this.f63698i, arrayList, jArr);
                } catch (FileNotFoundException unused) {
                    for (Source source : arrayList) {
                        Util.m(source);
                    }
                    try {
                        this.f63699j.a0(this);
                    } catch (IOException unused2) {
                    }
                    return null;
                }
            }
        }

        public final void s(@NotNull BufferedSink writer) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            for (long j10 : this.f63691b) {
                writer.writeByte(32).writeDecimalLong(j10);
            }
        }
    }

    /* compiled from: DiskLruCache.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public final class Snapshot implements Closeable {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f63703a;

        /* renamed from: b  reason: collision with root package name */
        private final long f63704b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final List<Source> f63705c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final long[] f63706d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ DiskLruCache f63707e;

        /* JADX WARN: Multi-variable type inference failed */
        public Snapshot(@NotNull DiskLruCache diskLruCache, String key, @NotNull long j10, @NotNull List<? extends Source> sources, long[] lengths) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(sources, "sources");
            Intrinsics.checkNotNullParameter(lengths, "lengths");
            this.f63707e = diskLruCache;
            this.f63703a = key;
            this.f63704b = j10;
            this.f63705c = sources;
            this.f63706d = lengths;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (Source source : this.f63705c) {
                Util.m(source);
            }
        }

        @Nullable
        public final Editor d() throws IOException {
            return this.f63707e.q(this.f63703a, this.f63704b);
        }

        @NotNull
        public final Source g(int i10) {
            return this.f63705c.get(i10);
        }

        @NotNull
        public final String k() {
            return this.f63703a;
        }
    }

    /* JADX WARN: Type inference failed for: r5v4, types: [okhttp3.internal.cache.DiskLruCache$cleanupTask$1] */
    public DiskLruCache(@NotNull FileSystem fileSystem, @NotNull File directory, int i10, int i11, long j10, @NotNull TaskRunner taskRunner) {
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(directory, "directory");
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        this.f63663a = fileSystem;
        this.f63664b = directory;
        this.f63665c = i10;
        this.f63666d = i11;
        this.f63667e = j10;
        this.f63673k = new LinkedHashMap<>(0, 0.75f, true);
        this.f63682t = taskRunner.i();
        final String str = Util.f63635i + " Cache";
        this.f63683u = new Task(str) { // from class: okhttp3.internal.cache.DiskLruCache$cleanupTask$1
            @Override // okhttp3.internal.concurrent.Task
            public long f() {
                boolean z10;
                boolean F2;
                DiskLruCache diskLruCache = DiskLruCache.this;
                synchronized (diskLruCache) {
                    z10 = diskLruCache.f63677o;
                    if (!z10 || diskLruCache.t()) {
                        return -1L;
                    }
                    try {
                        diskLruCache.c0();
                    } catch (IOException unused) {
                        diskLruCache.f63679q = true;
                    }
                    try {
                        F2 = diskLruCache.F();
                        if (F2) {
                            diskLruCache.Y();
                            diskLruCache.f63674l = 0;
                        }
                    } catch (IOException unused2) {
                        diskLruCache.f63680r = true;
                        diskLruCache.f63672j = Okio.buffer(Okio.blackhole());
                    }
                    return -1L;
                }
            }
        };
        if (j10 > 0) {
            if (i11 > 0) {
                this.f63668f = new File(directory, f63659w);
                this.f63669g = new File(directory, f63660x);
                this.f63670h = new File(directory, f63661y);
                return;
            }
            throw new IllegalArgumentException("valueCount <= 0");
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean F() {
        int i10 = this.f63674l;
        if (i10 >= 2000 && i10 >= this.f63673k.size()) {
            return true;
        }
        return false;
    }

    private final BufferedSink P() throws FileNotFoundException {
        return Okio.buffer(new FaultHidingSink(this.f63663a.appendingSink(this.f63668f), new Function1<IOException, Unit>() { // from class: okhttp3.internal.cache.DiskLruCache$newJournalWriter$faultHidingSink$1
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
            public final void invoke2(@NotNull IOException it) {
                Intrinsics.checkNotNullParameter(it, "it");
                DiskLruCache diskLruCache = DiskLruCache.this;
                if (!Util.f63634h || Thread.holdsLock(diskLruCache)) {
                    DiskLruCache.this.f63675m = true;
                    return;
                }
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + diskLruCache);
            }
        }));
    }

    private final void R() throws IOException {
        this.f63663a.delete(this.f63669g);
        Iterator<Entry> it = this.f63673k.values().iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "i.next()");
            Entry entry = next;
            int i10 = 0;
            if (entry.b() == null) {
                int i11 = this.f63666d;
                while (i10 < i11) {
                    this.f63671i += entry.e()[i10];
                    i10++;
                }
            } else {
                entry.l(null);
                int i12 = this.f63666d;
                while (i10 < i12) {
                    this.f63663a.delete(entry.a().get(i10));
                    this.f63663a.delete(entry.c().get(i10));
                    i10++;
                }
                it.remove();
            }
        }
    }

    private final void T() throws IOException {
        BufferedSource buffer = Okio.buffer(this.f63663a.source(this.f63668f));
        try {
            String readUtf8LineStrict = buffer.readUtf8LineStrict();
            String readUtf8LineStrict2 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict3 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict4 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict5 = buffer.readUtf8LineStrict();
            if (Intrinsics.areEqual(f63662z, readUtf8LineStrict) && Intrinsics.areEqual(A, readUtf8LineStrict2) && Intrinsics.areEqual(String.valueOf(this.f63665c), readUtf8LineStrict3) && Intrinsics.areEqual(String.valueOf(this.f63666d), readUtf8LineStrict4) && readUtf8LineStrict5.length() <= 0) {
                int i10 = 0;
                while (true) {
                    try {
                        W(buffer.readUtf8LineStrict());
                        i10++;
                    } catch (EOFException unused) {
                        this.f63674l = i10 - this.f63673k.size();
                        if (!buffer.exhausted()) {
                            Y();
                        } else {
                            this.f63672j = P();
                        }
                        Unit unit = Unit.f60915a;
                        b.a(buffer, null);
                        return;
                    }
                }
            } else {
                throw new IOException("unexpected journal header: [" + readUtf8LineStrict + ", " + readUtf8LineStrict2 + ", " + readUtf8LineStrict4 + ", " + readUtf8LineStrict5 + ']');
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                b.a(buffer, th2);
                throw th3;
            }
        }
    }

    private final void W(String str) throws IOException {
        String substring;
        int p02 = StringsKt.p0(str, ' ', 0, false, 6, null);
        if (p02 != -1) {
            int i10 = p02 + 1;
            int p03 = StringsKt.p0(str, ' ', i10, false, 4, null);
            if (p03 == -1) {
                substring = str.substring(i10);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                String str2 = F;
                if (p02 == str2.length() && StringsKt.V(str, str2, false, 2, null)) {
                    this.f63673k.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i10, p03);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            }
            Entry entry = this.f63673k.get(substring);
            if (entry == null) {
                entry = new Entry(this, substring);
                this.f63673k.put(substring, entry);
            }
            if (p03 != -1) {
                String str3 = D;
                if (p02 == str3.length() && StringsKt.V(str, str3, false, 2, null)) {
                    String substring2 = str.substring(p03 + 1);
                    Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                    List<String> Y0 = StringsKt.Y0(substring2, new char[]{' '}, false, 0, 6, null);
                    entry.o(true);
                    entry.l(null);
                    entry.m(Y0);
                    return;
                }
            }
            if (p03 == -1) {
                String str4 = E;
                if (p02 == str4.length() && StringsKt.V(str, str4, false, 2, null)) {
                    entry.l(new Editor(this, entry));
                    return;
                }
            }
            if (p03 == -1) {
                String str5 = G;
                if (p02 == str5.length() && StringsKt.V(str, str5, false, 2, null)) {
                    return;
                }
            }
            throw new IOException("unexpected journal line: " + str);
        }
        throw new IOException("unexpected journal line: " + str);
    }

    private final boolean b0() {
        for (Entry toEvict : this.f63673k.values()) {
            if (!toEvict.i()) {
                Intrinsics.checkNotNullExpressionValue(toEvict, "toEvict");
                a0(toEvict);
                return true;
            }
        }
        return false;
    }

    private final void d0(String str) {
        if (C.k(str)) {
            return;
        }
        throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + '\"').toString());
    }

    private final synchronized void m() {
        if (this.f63678p) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public static /* synthetic */ Editor r(DiskLruCache diskLruCache, String str, long j10, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            j10 = B;
        }
        return diskLruCache.q(str, j10);
    }

    public final synchronized void Y() throws IOException {
        try {
            BufferedSink bufferedSink = this.f63672j;
            if (bufferedSink != null) {
                bufferedSink.close();
            }
            BufferedSink buffer = Okio.buffer(this.f63663a.sink(this.f63669g));
            buffer.writeUtf8(f63662z).writeByte(10);
            buffer.writeUtf8(A).writeByte(10);
            buffer.writeDecimalLong(this.f63665c).writeByte(10);
            buffer.writeDecimalLong(this.f63666d).writeByte(10);
            buffer.writeByte(10);
            for (Entry entry : this.f63673k.values()) {
                if (entry.b() != null) {
                    buffer.writeUtf8(E).writeByte(32);
                    buffer.writeUtf8(entry.d());
                    buffer.writeByte(10);
                } else {
                    buffer.writeUtf8(D).writeByte(32);
                    buffer.writeUtf8(entry.d());
                    entry.s(buffer);
                    buffer.writeByte(10);
                }
            }
            Unit unit = Unit.f60915a;
            b.a(buffer, null);
            if (this.f63663a.exists(this.f63668f)) {
                this.f63663a.rename(this.f63668f, this.f63670h);
            }
            this.f63663a.rename(this.f63669g, this.f63668f);
            this.f63663a.delete(this.f63670h);
            this.f63672j = P();
            this.f63675m = false;
            this.f63680r = false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized boolean Z(@NotNull String key) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        x();
        m();
        d0(key);
        Entry entry = this.f63673k.get(key);
        if (entry == null) {
            return false;
        }
        boolean a02 = a0(entry);
        if (a02 && this.f63671i <= this.f63667e) {
            this.f63679q = false;
        }
        return a02;
    }

    public final boolean a0(@NotNull Entry entry) throws IOException {
        BufferedSink bufferedSink;
        Intrinsics.checkNotNullParameter(entry, "entry");
        if (!this.f63676n) {
            if (entry.f() > 0 && (bufferedSink = this.f63672j) != null) {
                bufferedSink.writeUtf8(E);
                bufferedSink.writeByte(32);
                bufferedSink.writeUtf8(entry.d());
                bufferedSink.writeByte(10);
                bufferedSink.flush();
            }
            if (entry.f() > 0 || entry.b() != null) {
                entry.q(true);
                return true;
            }
        }
        Editor b10 = entry.b();
        if (b10 != null) {
            b10.c();
        }
        int i10 = this.f63666d;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f63663a.delete(entry.a().get(i11));
            this.f63671i -= entry.e()[i11];
            entry.e()[i11] = 0;
        }
        this.f63674l++;
        BufferedSink bufferedSink2 = this.f63672j;
        if (bufferedSink2 != null) {
            bufferedSink2.writeUtf8(F);
            bufferedSink2.writeByte(32);
            bufferedSink2.writeUtf8(entry.d());
            bufferedSink2.writeByte(10);
        }
        this.f63673k.remove(entry.d());
        if (F()) {
            TaskQueue.j(this.f63682t, this.f63683u, 0L, 2, null);
        }
        return true;
    }

    public final void c0() throws IOException {
        while (this.f63671i > this.f63667e) {
            if (!b0()) {
                return;
            }
        }
        this.f63679q = false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        Entry[] entryArr;
        Editor b10;
        try {
            if (this.f63677o && !this.f63678p) {
                Collection<Entry> values = this.f63673k.values();
                Intrinsics.checkNotNullExpressionValue(values, "lruEntries.values");
                for (Entry entry : (Entry[]) values.toArray(new Entry[0])) {
                    if (entry.b() != null && (b10 = entry.b()) != null) {
                        b10.c();
                    }
                }
                c0();
                BufferedSink bufferedSink = this.f63672j;
                Intrinsics.checkNotNull(bufferedSink);
                bufferedSink.close();
                this.f63672j = null;
                this.f63678p = true;
                return;
            }
            this.f63678p = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.Flushable
    public synchronized void flush() throws IOException {
        if (!this.f63677o) {
            return;
        }
        m();
        c0();
        BufferedSink bufferedSink = this.f63672j;
        Intrinsics.checkNotNull(bufferedSink);
        bufferedSink.flush();
    }

    public final synchronized void o(@NotNull Editor editor, boolean z10) throws IOException {
        Intrinsics.checkNotNullParameter(editor, "editor");
        Entry d10 = editor.d();
        if (Intrinsics.areEqual(d10.b(), editor)) {
            if (z10 && !d10.g()) {
                int i10 = this.f63666d;
                for (int i11 = 0; i11 < i10; i11++) {
                    boolean[] e10 = editor.e();
                    Intrinsics.checkNotNull(e10);
                    if (e10[i11]) {
                        if (!this.f63663a.exists(d10.c().get(i11))) {
                            editor.a();
                            return;
                        }
                    } else {
                        editor.a();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i11);
                    }
                }
            }
            int i12 = this.f63666d;
            for (int i13 = 0; i13 < i12; i13++) {
                File file = d10.c().get(i13);
                if (z10 && !d10.i()) {
                    if (this.f63663a.exists(file)) {
                        File file2 = d10.a().get(i13);
                        this.f63663a.rename(file, file2);
                        long j10 = d10.e()[i13];
                        long size = this.f63663a.size(file2);
                        d10.e()[i13] = size;
                        this.f63671i = (this.f63671i - j10) + size;
                    }
                } else {
                    this.f63663a.delete(file);
                }
            }
            d10.l(null);
            if (d10.i()) {
                a0(d10);
                return;
            }
            this.f63674l++;
            BufferedSink bufferedSink = this.f63672j;
            Intrinsics.checkNotNull(bufferedSink);
            if (!d10.g() && !z10) {
                this.f63673k.remove(d10.d());
                bufferedSink.writeUtf8(F).writeByte(32);
                bufferedSink.writeUtf8(d10.d());
                bufferedSink.writeByte(10);
                bufferedSink.flush();
                if (this.f63671i <= this.f63667e || F()) {
                    TaskQueue.j(this.f63682t, this.f63683u, 0L, 2, null);
                }
                return;
            }
            d10.o(true);
            bufferedSink.writeUtf8(D).writeByte(32);
            bufferedSink.writeUtf8(d10.d());
            d10.s(bufferedSink);
            bufferedSink.writeByte(10);
            if (z10) {
                long j11 = this.f63681s;
                this.f63681s = 1 + j11;
                d10.p(j11);
            }
            bufferedSink.flush();
            if (this.f63671i <= this.f63667e) {
            }
            TaskQueue.j(this.f63682t, this.f63683u, 0L, 2, null);
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final void p() throws IOException {
        close();
        this.f63663a.deleteContents(this.f63664b);
    }

    @Nullable
    public final synchronized Editor q(@NotNull String key, long j10) throws IOException {
        Editor editor;
        Intrinsics.checkNotNullParameter(key, "key");
        x();
        m();
        d0(key);
        Entry entry = this.f63673k.get(key);
        if (j10 != B && (entry == null || entry.h() != j10)) {
            return null;
        }
        if (entry != null) {
            editor = entry.b();
        } else {
            editor = null;
        }
        if (editor != null) {
            return null;
        }
        if (entry != null && entry.f() != 0) {
            return null;
        }
        if (!this.f63679q && !this.f63680r) {
            BufferedSink bufferedSink = this.f63672j;
            Intrinsics.checkNotNull(bufferedSink);
            bufferedSink.writeUtf8(E).writeByte(32).writeUtf8(key).writeByte(10);
            bufferedSink.flush();
            if (this.f63675m) {
                return null;
            }
            if (entry == null) {
                entry = new Entry(this, key);
                this.f63673k.put(key, entry);
            }
            Editor editor2 = new Editor(this, entry);
            entry.l(editor2);
            return editor2;
        }
        TaskQueue.j(this.f63682t, this.f63683u, 0L, 2, null);
        return null;
    }

    @Nullable
    public final synchronized Snapshot s(@NotNull String key) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        x();
        m();
        d0(key);
        Entry entry = this.f63673k.get(key);
        if (entry == null) {
            return null;
        }
        Snapshot r10 = entry.r();
        if (r10 == null) {
            return null;
        }
        this.f63674l++;
        BufferedSink bufferedSink = this.f63672j;
        Intrinsics.checkNotNull(bufferedSink);
        bufferedSink.writeUtf8(G).writeByte(32).writeUtf8(key).writeByte(10);
        if (F()) {
            TaskQueue.j(this.f63682t, this.f63683u, 0L, 2, null);
        }
        return r10;
    }

    public final boolean t() {
        return this.f63678p;
    }

    @NotNull
    public final File u() {
        return this.f63664b;
    }

    @NotNull
    public final FileSystem v() {
        return this.f63663a;
    }

    public final int w() {
        return this.f63666d;
    }

    public final synchronized void x() throws IOException {
        try {
            if (Util.f63634h && !Thread.holdsLock(this)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
            }
            if (this.f63677o) {
                return;
            }
            if (this.f63663a.exists(this.f63670h)) {
                if (this.f63663a.exists(this.f63668f)) {
                    this.f63663a.delete(this.f63670h);
                } else {
                    this.f63663a.rename(this.f63670h, this.f63668f);
                }
            }
            this.f63676n = Util.F(this.f63663a, this.f63670h);
            if (this.f63663a.exists(this.f63668f)) {
                try {
                    T();
                    R();
                    this.f63677o = true;
                    return;
                } catch (IOException e10) {
                    Platform g10 = Platform.f64128a.g();
                    g10.k("DiskLruCache " + this.f63664b + " is corrupt: " + e10.getMessage() + ", removing", 5, e10);
                    p();
                    this.f63678p = false;
                }
            }
            Y();
            this.f63677o = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
