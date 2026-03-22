package com.applovin.shadow.okhttp3;

import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.shadow.okhttp3.HttpUrl;
import com.applovin.shadow.okhttp3.internal.Util;
import com.applovin.shadow.okio.Buffer;
import com.applovin.shadow.okio.BufferedSink;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FormBody.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FormBody extends RequestBody {
    @NotNull
    private final List<String> encodedNames;
    @NotNull
    private final List<String> encodedValues;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final MediaType CONTENT_TYPE = MediaType.Companion.get(ShareTarget.ENCODING_TYPE_URL_ENCODED);

    /* compiled from: FormBody.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Builder {
        @Nullable
        private final Charset charset;
        @NotNull
        private final List<String> names;
        @NotNull
        private final List<String> values;

        public Builder() {
            this(null, 1, null);
        }

        @NotNull
        public final Builder add(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            HttpUrl.Companion companion = HttpUrl.Companion;
            this.names.add(HttpUrl.Companion.canonicalize$okhttp$default(companion, name, 0, 0, HttpUrl.FORM_ENCODE_SET, false, false, true, false, this.charset, 91, null));
            this.values.add(HttpUrl.Companion.canonicalize$okhttp$default(companion, value, 0, 0, HttpUrl.FORM_ENCODE_SET, false, false, true, false, this.charset, 91, null));
            return this;
        }

        @NotNull
        public final Builder addEncoded(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            HttpUrl.Companion companion = HttpUrl.Companion;
            this.names.add(HttpUrl.Companion.canonicalize$okhttp$default(companion, name, 0, 0, HttpUrl.FORM_ENCODE_SET, true, false, true, false, this.charset, 83, null));
            this.values.add(HttpUrl.Companion.canonicalize$okhttp$default(companion, value, 0, 0, HttpUrl.FORM_ENCODE_SET, true, false, true, false, this.charset, 83, null));
            return this;
        }

        @NotNull
        public final FormBody build() {
            return new FormBody(this.names, this.values);
        }

        public Builder(@Nullable Charset charset) {
            this.charset = charset;
            this.names = new ArrayList();
            this.values = new ArrayList();
        }

        public /* synthetic */ Builder(Charset charset, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : charset);
        }
    }

    /* compiled from: FormBody.kt */
    @Metadata
    /* loaded from: classes2.dex */
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
        this.encodedNames = Util.toImmutableList(encodedNames);
        this.encodedValues = Util.toImmutableList(encodedValues);
    }

    private final long writeOrCountBytes(BufferedSink bufferedSink, boolean z10) {
        Buffer buffer;
        if (z10) {
            buffer = new Buffer();
        } else {
            Intrinsics.checkNotNull(bufferedSink);
            buffer = bufferedSink.getBuffer();
        }
        int size = this.encodedNames.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 > 0) {
                buffer.writeByte(38);
            }
            buffer.writeUtf8(this.encodedNames.get(i10));
            buffer.writeByte(61);
            buffer.writeUtf8(this.encodedValues.get(i10));
        }
        if (z10) {
            long size2 = buffer.size();
            buffer.clear();
            return size2;
        }
        return 0L;
    }

    @ms.c
    /* renamed from: -deprecated_size  reason: not valid java name */
    public final int m4508deprecated_size() {
        return size();
    }

    @Override // com.applovin.shadow.okhttp3.RequestBody
    public long contentLength() {
        return writeOrCountBytes(null, true);
    }

    @Override // com.applovin.shadow.okhttp3.RequestBody
    @NotNull
    public MediaType contentType() {
        return CONTENT_TYPE;
    }

    @NotNull
    public final String encodedName(int i10) {
        return this.encodedNames.get(i10);
    }

    @NotNull
    public final String encodedValue(int i10) {
        return this.encodedValues.get(i10);
    }

    @NotNull
    public final String name(int i10) {
        return HttpUrl.Companion.percentDecode$okhttp$default(HttpUrl.Companion, encodedName(i10), 0, 0, true, 3, null);
    }

    public final int size() {
        return this.encodedNames.size();
    }

    @NotNull
    public final String value(int i10) {
        return HttpUrl.Companion.percentDecode$okhttp$default(HttpUrl.Companion, encodedValue(i10), 0, 0, true, 3, null);
    }

    @Override // com.applovin.shadow.okhttp3.RequestBody
    public void writeTo(@NotNull BufferedSink sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        writeOrCountBytes(sink, false);
    }
}
