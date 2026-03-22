package okhttp3;

import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MultipartReader.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMultipartReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipartReader.kt\nokhttp3/MultipartReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,210:1\n1#2:211\n*E\n"})
/* loaded from: classes8.dex */
public final class MultipartReader implements Closeable {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final Companion f63507e = new Companion(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final Options f63508f;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final BufferedSource f63509a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ByteString f63510b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f63511c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private PartSource f63512d;

    /* compiled from: MultipartReader.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: MultipartReader.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Part implements Closeable {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final BufferedSource f63513a;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f63513a.close();
        }
    }

    /* compiled from: MultipartReader.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nMultipartReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipartReader.kt\nokhttp3/MultipartReader$PartSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Timeout.kt\nokio/Timeout\n*L\n1#1,210:1\n1#2:211\n268#3,26:212\n*S KotlinDebug\n*F\n+ 1 MultipartReader.kt\nokhttp3/MultipartReader$PartSource\n*L\n159#1:212,26\n*E\n"})
    /* loaded from: classes8.dex */
    private final class PartSource implements Source {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Timeout f63514a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MultipartReader f63515b;

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (Intrinsics.areEqual(this.f63515b.f63512d, this)) {
                this.f63515b.f63512d = null;
            }
        }

        @Override // okio.Source
        public long read(@NotNull Buffer sink, long j10) {
            long read;
            long read2;
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (j10 >= 0) {
                if (Intrinsics.areEqual(this.f63515b.f63512d, this)) {
                    Timeout timeout = this.f63515b.f63509a.timeout();
                    Timeout timeout2 = this.f63514a;
                    MultipartReader multipartReader = this.f63515b;
                    long timeoutNanos = timeout.timeoutNanos();
                    long minTimeout = Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos());
                    TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                    timeout.timeout(minTimeout, timeUnit);
                    if (timeout.hasDeadline()) {
                        long deadlineNanoTime = timeout.deadlineNanoTime();
                        if (timeout2.hasDeadline()) {
                            timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                        }
                        try {
                            long g10 = multipartReader.g(j10);
                            if (g10 == 0) {
                                read2 = -1;
                            } else {
                                read2 = multipartReader.f63509a.read(sink, g10);
                            }
                            timeout.timeout(timeoutNanos, timeUnit);
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(deadlineNanoTime);
                            }
                            return read2;
                        } catch (Throwable th2) {
                            timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(deadlineNanoTime);
                            }
                            throw th2;
                        }
                    }
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                    }
                    try {
                        long g11 = multipartReader.g(j10);
                        if (g11 == 0) {
                            read = -1;
                        } else {
                            read = multipartReader.f63509a.read(sink, g11);
                        }
                        timeout.timeout(timeoutNanos, timeUnit);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                        return read;
                    } catch (Throwable th3) {
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                        throw th3;
                    }
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return this.f63514a;
        }
    }

    static {
        Options.Companion companion = Options.Companion;
        ByteString.Companion companion2 = ByteString.Companion;
        f63508f = companion.of(companion2.encodeUtf8("\r\n"), companion2.encodeUtf8("--"), companion2.encodeUtf8(" "), companion2.encodeUtf8("\t"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long g(long j10) {
        this.f63509a.require(this.f63510b.size());
        long indexOf = this.f63509a.getBuffer().indexOf(this.f63510b);
        if (indexOf == -1) {
            return Math.min(j10, (this.f63509a.getBuffer().size() - this.f63510b.size()) + 1);
        }
        return Math.min(j10, indexOf);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f63511c) {
            return;
        }
        this.f63511c = true;
        this.f63512d = null;
        this.f63509a.close();
    }
}
