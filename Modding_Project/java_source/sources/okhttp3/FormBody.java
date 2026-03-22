package okhttp3;

import androidx.browser.trusted.sharing.ShareTarget;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSink;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FormBody.kt */
@Metadata
/* loaded from: classes8.dex */
public final class FormBody extends RequestBody {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final Companion f63439c = new Companion(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final MediaType f63440d = MediaType.f63480e.a(ShareTarget.ENCODING_TYPE_URL_ENCODED);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f63441a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f63442b;

    /* compiled from: FormBody.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Builder {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Charset f63443a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final List<String> f63444b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final List<String> f63445c;

        public Builder() {
            this(null, 1, null);
        }

        @NotNull
        public final Builder a(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            HttpUrl.Companion companion = HttpUrl.f63457k;
            this.f63444b.add(HttpUrl.Companion.b(companion, name, 0, 0, com.applovin.shadow.okhttp3.HttpUrl.FORM_ENCODE_SET, false, false, true, false, this.f63443a, 91, null));
            this.f63445c.add(HttpUrl.Companion.b(companion, value, 0, 0, com.applovin.shadow.okhttp3.HttpUrl.FORM_ENCODE_SET, false, false, true, false, this.f63443a, 91, null));
            return this;
        }

        @NotNull
        public final Builder b(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            HttpUrl.Companion companion = HttpUrl.f63457k;
            this.f63444b.add(HttpUrl.Companion.b(companion, name, 0, 0, com.applovin.shadow.okhttp3.HttpUrl.FORM_ENCODE_SET, true, false, true, false, this.f63443a, 83, null));
            this.f63445c.add(HttpUrl.Companion.b(companion, value, 0, 0, com.applovin.shadow.okhttp3.HttpUrl.FORM_ENCODE_SET, true, false, true, false, this.f63443a, 83, null));
            return this;
        }

        @NotNull
        public final FormBody c() {
            return new FormBody(this.f63444b, this.f63445c);
        }

        public Builder(@Nullable Charset charset) {
            this.f63443a = charset;
            this.f63444b = new ArrayList();
            this.f63445c = new ArrayList();
        }

        public /* synthetic */ Builder(Charset charset, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : charset);
        }
    }

    /* compiled from: FormBody.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public FormBody(@NotNull List<String> encodedNames, @NotNull List<String> encodedValues) {
        Intrinsics.checkNotNullParameter(encodedNames, "encodedNames");
        Intrinsics.checkNotNullParameter(encodedValues, "encodedValues");
        this.f63441a = Util.V(encodedNames);
        this.f63442b = Util.V(encodedValues);
    }

    private final long f(BufferedSink bufferedSink, boolean z10) {
        Buffer buffer;
        if (z10) {
            buffer = new Buffer();
        } else {
            Intrinsics.checkNotNull(bufferedSink);
            buffer = bufferedSink.getBuffer();
        }
        int size = this.f63441a.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 > 0) {
                buffer.writeByte(38);
            }
            buffer.writeUtf8(this.f63441a.get(i10));
            buffer.writeByte(61);
            buffer.writeUtf8(this.f63442b.get(i10));
        }
        if (z10) {
            long size2 = buffer.size();
            buffer.clear();
            return size2;
        }
        return 0L;
    }

    @NotNull
    public final String a(int i10) {
        return this.f63441a.get(i10);
    }

    @NotNull
    public final String b(int i10) {
        return this.f63442b.get(i10);
    }

    @NotNull
    public final String c(int i10) {
        return HttpUrl.Companion.h(HttpUrl.f63457k, a(i10), 0, 0, true, 3, null);
    }

    @Override // okhttp3.RequestBody
    public long contentLength() {
        return f(null, true);
    }

    @Override // okhttp3.RequestBody
    @NotNull
    public MediaType contentType() {
        return f63440d;
    }

    public final int d() {
        return this.f63441a.size();
    }

    @NotNull
    public final String e(int i10) {
        return HttpUrl.Companion.h(HttpUrl.f63457k, b(i10), 0, 0, true, 3, null);
    }

    @Override // okhttp3.RequestBody
    public void writeTo(@NotNull BufferedSink sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        f(sink, false);
    }
}
