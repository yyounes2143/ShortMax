package okhttp3.internal.http1;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
/* compiled from: HeadersReader.kt */
@Metadata
/* loaded from: classes8.dex */
public final class HeadersReader {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final Companion f63887c = new Companion(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final BufferedSource f63888a;

    /* renamed from: b  reason: collision with root package name */
    private long f63889b;

    /* compiled from: HeadersReader.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public HeadersReader(@NotNull BufferedSource source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.f63888a = source;
        this.f63889b = 262144L;
    }

    @NotNull
    public final Headers a() {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String b10 = b();
            if (b10.length() == 0) {
                return builder.f();
            }
            builder.c(b10);
        }
    }

    @NotNull
    public final String b() {
        String readUtf8LineStrict = this.f63888a.readUtf8LineStrict(this.f63889b);
        this.f63889b -= readUtf8LineStrict.length();
        return readUtf8LineStrict;
    }
}
