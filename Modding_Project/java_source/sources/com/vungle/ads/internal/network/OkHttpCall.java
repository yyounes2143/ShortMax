package com.vungle.ads.internal.network;

import com.vungle.ads.internal.network.converters.Converter;
import com.vungle.ads.internal.util.Logger;
import java.io.IOException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OkHttpCall.kt */
@Metadata
/* loaded from: classes7.dex */
public final class OkHttpCall<T> implements Call<T> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "OkHttpCall";
    private volatile boolean canceled;
    @NotNull
    private final okhttp3.Call rawCall;
    @NotNull
    private final Converter<ResponseBody, T> responseConverter;

    /* compiled from: OkHttpCall.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void throwIfFatal(Throwable th2) {
            if (!(th2 instanceof VirtualMachineError)) {
                if (!(th2 instanceof ThreadDeath)) {
                    if (!(th2 instanceof LinkageError)) {
                        return;
                    }
                    throw th2;
                }
                throw th2;
            }
            throw th2;
        }

        private Companion() {
        }
    }

    /* compiled from: OkHttpCall.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class ExceptionCatchingResponseBody extends ResponseBody {
        @NotNull
        private final ResponseBody delegate;
        @NotNull
        private final BufferedSource delegateSource;
        @Nullable
        private IOException thrownException;

        public ExceptionCatchingResponseBody(@NotNull ResponseBody delegate) {
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            this.delegate = delegate;
            this.delegateSource = Okio.buffer(new ForwardingSource(delegate.source()) { // from class: com.vungle.ads.internal.network.OkHttpCall.ExceptionCatchingResponseBody.1
                @Override // okio.ForwardingSource, okio.Source
                public long read(@NotNull Buffer sink, long j10) throws IOException {
                    Intrinsics.checkNotNullParameter(sink, "sink");
                    try {
                        return super.read(sink, j10);
                    } catch (IOException e10) {
                        ExceptionCatchingResponseBody.this.setThrownException(e10);
                        throw e10;
                    }
                }
            });
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.delegate.close();
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.delegate.contentLength();
        }

        @Override // okhttp3.ResponseBody
        @Nullable
        public MediaType contentType() {
            return this.delegate.contentType();
        }

        @Nullable
        public final IOException getThrownException() {
            return this.thrownException;
        }

        public final void setThrownException(@Nullable IOException iOException) {
            this.thrownException = iOException;
        }

        @Override // okhttp3.ResponseBody
        @NotNull
        public BufferedSource source() {
            return this.delegateSource;
        }

        public final void throwIfCaught() throws IOException {
            IOException iOException = this.thrownException;
            if (iOException == null) {
                return;
            }
            throw iOException;
        }
    }

    /* compiled from: OkHttpCall.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class NoContentResponseBody extends ResponseBody {
        private final long contentLength;
        @Nullable
        private final MediaType contentType;

        public NoContentResponseBody(@Nullable MediaType mediaType, long j10) {
            this.contentType = mediaType;
            this.contentLength = j10;
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.contentLength;
        }

        @Override // okhttp3.ResponseBody
        @Nullable
        public MediaType contentType() {
            return this.contentType;
        }

        @Override // okhttp3.ResponseBody
        @NotNull
        public BufferedSource source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    public OkHttpCall(@NotNull okhttp3.Call rawCall, @NotNull Converter<ResponseBody, T> responseConverter) {
        Intrinsics.checkNotNullParameter(rawCall, "rawCall");
        Intrinsics.checkNotNullParameter(responseConverter, "responseConverter");
        this.rawCall = rawCall;
        this.responseConverter = responseConverter;
    }

    private final ResponseBody buffer(ResponseBody responseBody) throws IOException {
        Buffer buffer = new Buffer();
        responseBody.source().readAll(buffer);
        return ResponseBody.Companion.f(buffer, responseBody.contentType(), responseBody.contentLength());
    }

    @Override // com.vungle.ads.internal.network.Call
    public void cancel() {
        okhttp3.Call call;
        this.canceled = true;
        synchronized (this) {
            call = this.rawCall;
            Unit unit = Unit.f60915a;
        }
        call.cancel();
    }

    @Override // com.vungle.ads.internal.network.Call
    public void enqueue(@NotNull final Callback<T> callback) {
        okhttp3.Call call;
        Intrinsics.checkNotNullParameter(callback, "callback");
        Objects.requireNonNull(callback, "callback == null");
        synchronized (this) {
            call = this.rawCall;
            Unit unit = Unit.f60915a;
        }
        if (this.canceled) {
            call.cancel();
        }
        call.o0(new okhttp3.Callback(this) { // from class: com.vungle.ads.internal.network.OkHttpCall$enqueue$2
            final /* synthetic */ OkHttpCall<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
            }

            private final void callFailure(Throwable th2) {
                try {
                    callback.onFailure(this.this$0, th2);
                } catch (Throwable th3) {
                    OkHttpCall.Companion.throwIfFatal(th3);
                    Logger.Companion.e("OkHttpCall", "Cannot pass failure to callback", th3);
                }
            }

            @Override // okhttp3.Callback
            public void onFailure(@NotNull okhttp3.Call call2, @NotNull IOException e10) {
                Intrinsics.checkNotNullParameter(call2, "call");
                Intrinsics.checkNotNullParameter(e10, "e");
                callFailure(e10);
            }

            @Override // okhttp3.Callback
            public void onResponse(@NotNull okhttp3.Call call2, @NotNull okhttp3.Response response) {
                Intrinsics.checkNotNullParameter(call2, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                try {
                    try {
                        callback.onResponse(this.this$0, this.this$0.parseResponse(response));
                    } catch (Throwable th2) {
                        OkHttpCall.Companion.throwIfFatal(th2);
                        Logger.Companion.e("OkHttpCall", "Cannot pass response to callback", th2);
                    }
                } catch (Throwable th3) {
                    OkHttpCall.Companion.throwIfFatal(th3);
                    callFailure(th3);
                }
            }
        });
    }

    @Override // com.vungle.ads.internal.network.Call
    @Nullable
    public Response<T> execute() throws IOException {
        okhttp3.Call call;
        synchronized (this) {
            call = this.rawCall;
            Unit unit = Unit.f60915a;
        }
        if (this.canceled) {
            call.cancel();
        }
        return parseResponse(call.execute());
    }

    @Override // com.vungle.ads.internal.network.Call
    public boolean isCanceled() {
        boolean isCanceled;
        if (this.canceled) {
            return true;
        }
        synchronized (this) {
            isCanceled = this.rawCall.isCanceled();
        }
        return isCanceled;
    }

    @Nullable
    public final Response<T> parseResponse(@NotNull okhttp3.Response rawResp) throws IOException {
        Intrinsics.checkNotNullParameter(rawResp, "rawResp");
        ResponseBody d10 = rawResp.d();
        if (d10 == null) {
            return null;
        }
        okhttp3.Response c10 = rawResp.F().b(new NoContentResponseBody(d10.contentType(), d10.contentLength())).c();
        int o10 = c10.o();
        if (o10 >= 200 && o10 < 300) {
            if (o10 != 204 && o10 != 205) {
                ExceptionCatchingResponseBody exceptionCatchingResponseBody = new ExceptionCatchingResponseBody(d10);
                try {
                    return Response.Companion.success(this.responseConverter.convert(exceptionCatchingResponseBody), c10);
                } catch (Throwable th2) {
                    exceptionCatchingResponseBody.throwIfCaught();
                    throw th2;
                }
            }
            d10.close();
            return Response.Companion.success(null, c10);
        }
        try {
            Response<T> error = Response.Companion.error(buffer(d10), c10);
            ws.b.a(d10, null);
            return error;
        } finally {
        }
    }
}
