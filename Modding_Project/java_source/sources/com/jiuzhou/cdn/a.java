package com.jiuzhou.cdn;

import bc.e;
import gt.i;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zb.f;
/* compiled from: CdnConnectivityChecker.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCdnConnectivityChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CdnConnectivityChecker.kt\ncom/jiuzhou/cdn/CdnConnectivityChecker\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,73:1\n426#2,11:74\n*S KotlinDebug\n*F\n+ 1 CdnConnectivityChecker.kt\ncom/jiuzhou/cdn/CdnConnectivityChecker\n*L\n53#1:74,11\n*E\n"})
/* loaded from: classes5.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f25566a = new a();

    /* compiled from: CdnConnectivityChecker.kt */
    @Metadata
    /* renamed from: com.jiuzhou.cdn.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0348a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f25567a;

        /* renamed from: b  reason: collision with root package name */
        private final long f25568b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f25569c;

        public C0348a(@NotNull String cdnUrl, long j10, boolean z10) {
            Intrinsics.checkNotNullParameter(cdnUrl, "cdnUrl");
            this.f25567a = cdnUrl;
            this.f25568b = j10;
            this.f25569c = z10;
        }

        @NotNull
        public final String a() {
            return this.f25567a;
        }

        public final long b() {
            return this.f25568b;
        }

        public final boolean c() {
            return this.f25569c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0348a)) {
                return false;
            }
            C0348a c0348a = (C0348a) obj;
            if (Intrinsics.areEqual(this.f25567a, c0348a.f25567a) && this.f25568b == c0348a.f25568b && this.f25569c == c0348a.f25569c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f25567a.hashCode() * 31) + Long.hashCode(this.f25568b)) * 31) + Boolean.hashCode(this.f25569c);
        }

        @NotNull
        public String toString() {
            return "Result(cdnUrl=" + this.f25567a + ", elapsedTime=" + this.f25568b + ", success=" + this.f25569c + ')';
        }
    }

    /* compiled from: CdnConnectivityChecker.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class b implements Callback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function1<Long, Unit> f25570a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function2<Long, Throwable, Unit> f25571b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ long f25572c;

        /* JADX WARN: Multi-variable type inference failed */
        b(Function1<? super Long, Unit> function1, Function2<? super Long, ? super Throwable, Unit> function2, long j10) {
            this.f25570a = function1;
            this.f25571b = function2;
            this.f25572c = j10;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException e10) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(e10, "e");
            this.f25571b.invoke(Long.valueOf(System.currentTimeMillis() - this.f25572c), e10);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws IOException {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            long T = response.T() - response.Y();
            e.a aVar = bc.e.f2600a;
            aVar.b("CDN", "CDN 连通性耗时：" + T + " 毫秒");
            if (response.isSuccessful()) {
                this.f25570a.invoke(Long.valueOf(T));
            } else {
                this.f25571b.invoke(Long.valueOf(T), null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CdnConnectivityChecker.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class c implements Function1<Throwable, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Call f25573a;

        c(Call call) {
            this.f25573a = call;
        }

        public final void a(Throwable th2) {
            this.f25573a.cancel();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
            a(th2);
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CdnConnectivityChecker.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class d implements Function2<Long, Throwable, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i<C0348a> f25574a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f25575b;

        /* JADX WARN: Multi-variable type inference failed */
        d(i<? super C0348a> iVar, String str) {
            this.f25574a = iVar;
            this.f25575b = str;
        }

        public final void a(long j10, Throwable th2) {
            if (this.f25574a.isActive() && !this.f25574a.isCompleted()) {
                this.f25574a.resumeWith(Result.d(new C0348a(this.f25575b, j10, false)));
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Long l10, Throwable th2) {
            a(l10.longValue(), th2);
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CdnConnectivityChecker.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class e implements Function1<Long, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i<C0348a> f25576a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f25577b;

        /* JADX WARN: Multi-variable type inference failed */
        e(i<? super C0348a> iVar, String str) {
            this.f25576a = iVar;
            this.f25577b = str;
        }

        public final void a(long j10) {
            if (this.f25576a.isActive()) {
                this.f25576a.resumeWith(Result.d(new C0348a(this.f25577b, j10, true)));
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Long l10) {
            a(l10.longValue());
            return Unit.f60915a;
        }
    }

    private a() {
    }

    @NotNull
    public static final Call a(@NotNull String cdnUrl, @NotNull String path, @NotNull Function1<? super Long, Unit> onSuccess, @NotNull Function2<? super Long, ? super Throwable, Unit> onError) {
        Intrinsics.checkNotNullParameter(cdnUrl, "cdnUrl");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        Intrinsics.checkNotNullParameter(onError, "onError");
        Request.Builder builder = new Request.Builder();
        Request b10 = builder.k(cdnUrl + path).b();
        long currentTimeMillis = System.currentTimeMillis();
        Call a10 = f.f71552a.f().a(b10);
        a10.o0(new b(onSuccess, onError, currentTimeMillis));
        return a10;
    }

    @Nullable
    public static final Object b(@NotNull String str, @NotNull String str2, @NotNull rs.c<? super C0348a> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        eVar.u(new c(a(str, str2, new e(eVar, str), new d(eVar, str))));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }
}
