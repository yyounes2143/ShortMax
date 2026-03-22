package io.ktor.client.plugins;

import io.ktor.client.HttpClient;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpRedirect.kt */
@Metadata
/* loaded from: classes8.dex */
public final class HttpRedirect {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final Plugin f58983c = new Plugin(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final yr.a<HttpRedirect> f58984d = new yr.a<>("HttpRedirect");
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final vr.a<tr.c> f58985e = new vr.a<>();

    /* renamed from: a  reason: collision with root package name */
    private final boolean f58986a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f58987b;

    /* compiled from: HttpRedirect.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHttpRedirect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRedirect.kt\nio/ktor/client/plugins/HttpRedirect$Plugin\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n1#2:129\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Plugin implements qr.d<a, HttpRedirect> {
        public /* synthetic */ Plugin(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x011a  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0169  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x01af A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x01b0  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x01ca  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x01cd  */
        /* JADX WARN: Type inference failed for: r3v6, types: [T, io.ktor.client.request.HttpRequestBuilder] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x01b0 -> B:35:0x01b6). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object e(qr.h r19, io.ktor.client.request.HttpRequestBuilder r20, io.ktor.client.call.HttpClientCall r21, boolean r22, io.ktor.client.HttpClient r23, rs.c<? super io.ktor.client.call.HttpClientCall> r24) {
            /*
                Method dump skipped, instructions count: 469
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.HttpRedirect.Plugin.e(qr.h, io.ktor.client.request.HttpRequestBuilder, io.ktor.client.call.HttpClientCall, boolean, io.ktor.client.HttpClient, rs.c):java.lang.Object");
        }

        @NotNull
        public final vr.a<tr.c> d() {
            return HttpRedirect.f58985e;
        }

        @Override // qr.d
        /* renamed from: f */
        public void b(@NotNull HttpRedirect plugin, @NotNull HttpClient scope) {
            Intrinsics.checkNotNullParameter(plugin, "plugin");
            Intrinsics.checkNotNullParameter(scope, "scope");
            ((HttpSend) qr.e.b(scope, HttpSend.f59067c)).d(new HttpRedirect$Plugin$install$1(plugin, scope, null));
        }

        @Override // qr.d
        @NotNull
        /* renamed from: g */
        public HttpRedirect a(@NotNull Function1<? super a, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            a aVar = new a();
            block.invoke(aVar);
            return new HttpRedirect(aVar.b(), aVar.a(), null);
        }

        @Override // qr.d
        @NotNull
        public yr.a<HttpRedirect> getKey() {
            return HttpRedirect.f58984d;
        }

        private Plugin() {
        }
    }

    /* compiled from: HttpRedirect.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f59006a = true;

        /* renamed from: b  reason: collision with root package name */
        private boolean f59007b;

        public final boolean a() {
            return this.f59007b;
        }

        public final boolean b() {
            return this.f59006a;
        }
    }

    public /* synthetic */ HttpRedirect(boolean z10, boolean z11, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, z11);
    }

    private HttpRedirect(boolean z10, boolean z11) {
        this.f58986a = z10;
        this.f58987b = z11;
    }
}
