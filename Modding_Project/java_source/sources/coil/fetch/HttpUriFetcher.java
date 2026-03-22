package coil.fetch;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import androidx.annotation.VisibleForTesting;
import androidx.webkit.ProxyConfig;
import androidx.webkit.internal.AssetHelper;
import coil.ImageLoader;
import coil.decode.DataSource;
import coil.network.CacheResponse;
import d0.m;
import d0.n;
import e0.a;
import g0.i;
import java.io.IOException;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import m0.j;
import ms.d;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpUriFetcher.kt */
@Metadata
/* loaded from: classes2.dex */
public final class HttpUriFetcher implements i {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f3951f = new a(null);
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final CacheControl f3952g = new CacheControl.Builder().d().e().a();
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final CacheControl f3953h = new CacheControl.Builder().d().f().a();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f3954a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final j f3955b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final ms.i<Call.Factory> f3956c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final ms.i<e0.a> f3957d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f3958e;

    /* compiled from: HttpUriFetcher.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: HttpUriFetcher.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class b implements i.a<Uri> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ms.i<Call.Factory> f3959a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final ms.i<e0.a> f3960b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f3961c;

        /* JADX WARN: Multi-variable type inference failed */
        public b(@NotNull ms.i<? extends Call.Factory> iVar, @NotNull ms.i<? extends e0.a> iVar2, boolean z10) {
            this.f3959a = iVar;
            this.f3960b = iVar2;
            this.f3961c = z10;
        }

        private final boolean c(Uri uri) {
            if (!Intrinsics.areEqual(uri.getScheme(), ProxyConfig.MATCH_HTTP) && !Intrinsics.areEqual(uri.getScheme(), "https")) {
                return false;
            }
            return true;
        }

        @Override // g0.i.a
        @Nullable
        /* renamed from: b */
        public i a(@NotNull Uri uri, @NotNull j jVar, @NotNull ImageLoader imageLoader) {
            if (!c(uri)) {
                return null;
            }
            return new HttpUriFetcher(uri.toString(), jVar, this.f3959a, this.f3960b, this.f3961c);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public HttpUriFetcher(@NotNull String str, @NotNull j jVar, @NotNull ms.i<? extends Call.Factory> iVar, @NotNull ms.i<? extends e0.a> iVar2, boolean z10) {
        this.f3954a = str;
        this.f3955b = jVar;
        this.f3956c = iVar;
        this.f3957d = iVar2;
        this.f3958e = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(okhttp3.Request r5, rs.c<? super okhttp3.Response> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof coil.fetch.HttpUriFetcher$executeNetworkRequest$1
            if (r0 == 0) goto L13
            r0 = r6
            coil.fetch.HttpUriFetcher$executeNetworkRequest$1 r0 = (coil.fetch.HttpUriFetcher$executeNetworkRequest$1) r0
            int r1 = r0.f3964j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f3964j = r1
            goto L18
        L13:
            coil.fetch.HttpUriFetcher$executeNetworkRequest$1 r0 = new coil.fetch.HttpUriFetcher$executeNetworkRequest$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f3962h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f3964j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r6)
            goto L72
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.f.b(r6)
            boolean r6 = r0.i.r()
            if (r6 == 0) goto L5d
            m0.j r6 = r4.f3955b
            coil.request.CachePolicy r6 = r6.k()
            boolean r6 = r6.getReadEnabled()
            if (r6 != 0) goto L57
            ms.i<okhttp3.Call$Factory> r6 = r4.f3956c
            java.lang.Object r6 = r6.getValue()
            okhttp3.Call$Factory r6 = (okhttp3.Call.Factory) r6
            okhttp3.Call r5 = r6.a(r5)
            okhttp3.Response r5 = r5.execute()
            goto L75
        L57:
            android.os.NetworkOnMainThreadException r5 = new android.os.NetworkOnMainThreadException
            r5.<init>()
            throw r5
        L5d:
            ms.i<okhttp3.Call$Factory> r6 = r4.f3956c
            java.lang.Object r6 = r6.getValue()
            okhttp3.Call$Factory r6 = (okhttp3.Call.Factory) r6
            okhttp3.Call r5 = r6.a(r5)
            r0.f3964j = r3
            java.lang.Object r6 = r0.b.a(r5, r0)
            if (r6 != r1) goto L72
            return r1
        L72:
            r5 = r6
            okhttp3.Response r5 = (okhttp3.Response) r5
        L75:
            boolean r6 = r5.isSuccessful()
            if (r6 != 0) goto L92
            int r6 = r5.o()
            r0 = 304(0x130, float:4.26E-43)
            if (r6 == r0) goto L92
            okhttp3.ResponseBody r6 = r5.d()
            if (r6 == 0) goto L8c
            r0.i.d(r6)
        L8c:
            coil.network.HttpException r6 = new coil.network.HttpException
            r6.<init>(r5)
            throw r6
        L92:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.fetch.HttpUriFetcher.c(okhttp3.Request, rs.c):java.lang.Object");
    }

    private final String d() {
        String h10 = this.f3955b.h();
        if (h10 == null) {
            return this.f3954a;
        }
        return h10;
    }

    private final FileSystem e() {
        e0.a value = this.f3957d.getValue();
        Intrinsics.checkNotNull(value);
        return value.a();
    }

    private final boolean g(Request request, Response response) {
        if (this.f3955b.i().getWriteEnabled() && (!this.f3958e || l0.a.f62055c.c(request, response))) {
            return true;
        }
        return false;
    }

    private final Request h() {
        Request.Builder f10 = new Request.Builder().k(this.f3954a).f(this.f3955b.j());
        for (Map.Entry<Class<?>, Object> entry : this.f3955b.o().a().entrySet()) {
            Class<?> key = entry.getKey();
            Intrinsics.checkNotNull(key, "null cannot be cast to non-null type java.lang.Class<kotlin.Any>");
            f10.j(key, entry.getValue());
        }
        boolean readEnabled = this.f3955b.i().getReadEnabled();
        boolean readEnabled2 = this.f3955b.k().getReadEnabled();
        if (!readEnabled2 && readEnabled) {
            f10.c(CacheControl.f63285p);
        } else if (readEnabled2 && !readEnabled) {
            if (this.f3955b.i().getWriteEnabled()) {
                f10.c(CacheControl.f63284o);
            } else {
                f10.c(f3952g);
            }
        } else if (!readEnabled2 && !readEnabled) {
            f10.c(f3953h);
        }
        return f10.b();
    }

    private final a.c i() {
        e0.a value;
        if (!this.f3955b.i().getReadEnabled() || (value = this.f3957d.getValue()) == null) {
            return null;
        }
        return value.get(d());
    }

    private final ResponseBody j(Response response) {
        ResponseBody d10 = response.d();
        if (d10 != null) {
            return d10;
        }
        throw new IllegalStateException("response body == null");
    }

    private final CacheResponse k(a.c cVar) {
        CacheResponse cacheResponse;
        try {
            BufferedSource buffer = Okio.buffer(e().source(cVar.getMetadata()));
            try {
                cacheResponse = new CacheResponse(buffer);
                th = null;
            } catch (Throwable th2) {
                th = th2;
                cacheResponse = null;
            }
            if (buffer != null) {
                buffer.close();
            }
            if (th == null) {
                Intrinsics.checkNotNull(cacheResponse);
                return cacheResponse;
            }
            throw th;
        } catch (IOException unused) {
            return null;
        }
    }

    private final DataSource l(Response response) {
        if (response.x() != null) {
            return DataSource.NETWORK;
        }
        return DataSource.DISK;
    }

    private final m m(a.c cVar) {
        return n.c(cVar.getData(), e(), d(), cVar);
    }

    private final m n(ResponseBody responseBody) {
        return n.a(responseBody.source(), this.f3955b.g());
    }

    private final a.c o(a.c cVar, Request request, Response response, CacheResponse cacheResponse) {
        a.b bVar;
        Unit unit;
        Long l10;
        Unit unit2;
        Throwable th2 = null;
        if (!g(request, response)) {
            if (cVar != null) {
                r0.i.d(cVar);
            }
            return null;
        }
        if (cVar != null) {
            bVar = cVar.L();
        } else {
            e0.a value = this.f3957d.getValue();
            if (value != null) {
                bVar = value.b(d());
            } else {
                bVar = null;
            }
        }
        try {
            if (bVar == null) {
                return null;
            }
            try {
                if (response.o() == 304 && cacheResponse != null) {
                    Response c10 = response.F().k(l0.a.f62055c.a(cacheResponse.d(), response.u())).c();
                    BufferedSink buffer = Okio.buffer(e().sink(bVar.getMetadata(), false));
                    try {
                        new CacheResponse(c10).g(buffer);
                        unit2 = Unit.f60915a;
                    } catch (Throwable th3) {
                        th2 = th3;
                        unit2 = null;
                    }
                    if (buffer != null) {
                        try {
                            buffer.close();
                        } catch (Throwable th4) {
                            if (th2 == null) {
                                th2 = th4;
                            } else {
                                d.a(th2, th4);
                            }
                        }
                    }
                    if (th2 == null) {
                        Intrinsics.checkNotNull(unit2);
                    } else {
                        throw th2;
                    }
                } else {
                    BufferedSink buffer2 = Okio.buffer(e().sink(bVar.getMetadata(), false));
                    try {
                        new CacheResponse(response).g(buffer2);
                        unit = Unit.f60915a;
                        th = null;
                    } catch (Throwable th5) {
                        th = th5;
                        unit = null;
                    }
                    if (buffer2 != null) {
                        try {
                            buffer2.close();
                        } catch (Throwable th6) {
                            if (th == null) {
                                th = th6;
                            } else {
                                d.a(th, th6);
                            }
                        }
                    }
                    if (th == null) {
                        Intrinsics.checkNotNull(unit);
                        BufferedSink buffer3 = Okio.buffer(e().sink(bVar.getData(), false));
                        try {
                            ResponseBody d10 = response.d();
                            Intrinsics.checkNotNull(d10);
                            l10 = Long.valueOf(d10.source().readAll(buffer3));
                        } catch (Throwable th7) {
                            th2 = th7;
                            l10 = null;
                        }
                        if (buffer3 != null) {
                            try {
                                buffer3.close();
                            } catch (Throwable th8) {
                                if (th2 == null) {
                                    th2 = th8;
                                } else {
                                    d.a(th2, th8);
                                }
                            }
                        }
                        if (th2 == null) {
                            Intrinsics.checkNotNull(l10);
                        } else {
                            throw th2;
                        }
                    } else {
                        throw th;
                    }
                }
                a.c a10 = bVar.a();
                r0.i.d(response);
                return a10;
            } catch (Exception e10) {
                r0.i.a(bVar);
                throw e10;
            }
        } catch (Throwable th9) {
            r0.i.d(response);
            throw th9;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012c A[Catch: Exception -> 0x013f, TryCatch #0 {Exception -> 0x013f, blocks: (B:72:0x0188, B:54:0x011e, B:56:0x012c, B:58:0x013a, B:61:0x0143, B:63:0x014d, B:65:0x0155, B:67:0x016d), top: B:81:0x011e }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x014d A[Catch: Exception -> 0x013f, TryCatch #0 {Exception -> 0x013f, blocks: (B:72:0x0188, B:54:0x011e, B:56:0x012c, B:58:0x013a, B:61:0x0143, B:63:0x014d, B:65:0x0155, B:67:0x016d), top: B:81:0x011e }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01ac  */
    @Override // g0.i
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(@org.jetbrains.annotations.NotNull rs.c<? super g0.h> r13) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.fetch.HttpUriFetcher.a(rs.c):java.lang.Object");
    }

    @VisibleForTesting
    @Nullable
    public final String f(@NotNull String str, @Nullable MediaType mediaType) {
        String str2;
        String j10;
        if (mediaType != null) {
            str2 = mediaType.toString();
        } else {
            str2 = null;
        }
        if ((str2 == null || StringsKt.V(str2, AssetHelper.DEFAULT_MIME_TYPE, false, 2, null)) && (j10 = r0.i.j(MimeTypeMap.getSingleton(), str)) != null) {
            return j10;
        }
        if (str2 == null) {
            return null;
        }
        return StringsKt.o1(str2, ';', null, 2, null);
    }
}
