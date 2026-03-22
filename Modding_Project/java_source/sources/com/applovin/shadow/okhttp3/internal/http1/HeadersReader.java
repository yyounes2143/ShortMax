package com.applovin.shadow.okhttp3.internal.http1;

import com.applovin.shadow.okhttp3.Headers;
import com.applovin.shadow.okio.BufferedSource;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HeadersReader.kt */
@Metadata
/* loaded from: classes2.dex */
public final class HeadersReader {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int HEADER_LIMIT = 262144;
    private long headerLimit;
    @NotNull
    private final BufferedSource source;

    /* compiled from: HeadersReader.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public HeadersReader(@NotNull BufferedSource source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.source = source;
        this.headerLimit = 262144L;
    }

    @NotNull
    public final BufferedSource getSource() {
        return this.source;
    }

    @NotNull
    public final Headers readHeaders() {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String readLine = readLine();
            if (readLine.length() == 0) {
                return builder.build();
            }
            builder.addLenient$okhttp(readLine);
        }
    }

    @NotNull
    public final String readLine() {
        String readUtf8LineStrict = this.source.readUtf8LineStrict(this.headerLimit);
        this.headerLimit -= readUtf8LineStrict.length();
        return readUtf8LineStrict;
    }
}
