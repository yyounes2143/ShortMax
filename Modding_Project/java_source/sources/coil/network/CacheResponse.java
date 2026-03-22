package coil.network;

import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import ms.i;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.Response;
import okio.BufferedSink;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CacheResponse.kt */
@Metadata
/* loaded from: classes2.dex */
public final class CacheResponse {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final i f4074a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final i f4075b;

    /* renamed from: c  reason: collision with root package name */
    private final long f4076c;

    /* renamed from: d  reason: collision with root package name */
    private final long f4077d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f4078e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Headers f4079f;

    public CacheResponse(@NotNull BufferedSource bufferedSource) {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.f4074a = c.a(lazyThreadSafetyMode, new Function0<CacheControl>() { // from class: coil.network.CacheResponse$cacheControl$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: b */
            public final CacheControl invoke() {
                return CacheControl.f63283n.b(CacheResponse.this.d());
            }
        });
        this.f4075b = c.a(lazyThreadSafetyMode, new Function0<MediaType>() { // from class: coil.network.CacheResponse$contentType$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            /* renamed from: b */
            public final MediaType invoke() {
                String a10 = CacheResponse.this.d().a(CommonGatewayClient.HEADER_CONTENT_TYPE);
                if (a10 != null) {
                    return MediaType.f63480e.b(a10);
                }
                return null;
            }
        });
        this.f4076c = Long.parseLong(bufferedSource.readUtf8LineStrict());
        this.f4077d = Long.parseLong(bufferedSource.readUtf8LineStrict());
        this.f4078e = Integer.parseInt(bufferedSource.readUtf8LineStrict()) > 0;
        int parseInt = Integer.parseInt(bufferedSource.readUtf8LineStrict());
        Headers.Builder builder = new Headers.Builder();
        for (int i10 = 0; i10 < parseInt; i10++) {
            r0.i.b(builder, bufferedSource.readUtf8LineStrict());
        }
        this.f4079f = builder.f();
    }

    @NotNull
    public final CacheControl a() {
        return (CacheControl) this.f4074a.getValue();
    }

    @Nullable
    public final MediaType b() {
        return (MediaType) this.f4075b.getValue();
    }

    public final long c() {
        return this.f4077d;
    }

    @NotNull
    public final Headers d() {
        return this.f4079f;
    }

    public final long e() {
        return this.f4076c;
    }

    public final boolean f() {
        return this.f4078e;
    }

    public final void g(@NotNull BufferedSink bufferedSink) {
        long j10;
        bufferedSink.writeDecimalLong(this.f4076c).writeByte(10);
        bufferedSink.writeDecimalLong(this.f4077d).writeByte(10);
        if (this.f4078e) {
            j10 = 1;
        } else {
            j10 = 0;
        }
        bufferedSink.writeDecimalLong(j10).writeByte(10);
        bufferedSink.writeDecimalLong(this.f4079f.size()).writeByte(10);
        int size = this.f4079f.size();
        for (int i10 = 0; i10 < size; i10++) {
            bufferedSink.writeUtf8(this.f4079f.d(i10)).writeUtf8(": ").writeUtf8(this.f4079f.i(i10)).writeByte(10);
        }
    }

    public CacheResponse(@NotNull Response response) {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.f4074a = c.a(lazyThreadSafetyMode, new Function0<CacheControl>() { // from class: coil.network.CacheResponse$cacheControl$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: b */
            public final CacheControl invoke() {
                return CacheControl.f63283n.b(CacheResponse.this.d());
            }
        });
        this.f4075b = c.a(lazyThreadSafetyMode, new Function0<MediaType>() { // from class: coil.network.CacheResponse$contentType$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            /* renamed from: b */
            public final MediaType invoke() {
                String a10 = CacheResponse.this.d().a(CommonGatewayClient.HEADER_CONTENT_TYPE);
                if (a10 != null) {
                    return MediaType.f63480e.b(a10);
                }
                return null;
            }
        });
        this.f4076c = response.Y();
        this.f4077d = response.T();
        this.f4078e = response.q() != null;
        this.f4079f = response.u();
    }
}
