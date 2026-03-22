package io.ktor.client.plugins;

import ds.f;
import io.ktor.client.HttpClient;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpCallValidator.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpCallValidator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpCallValidator.kt\nio/ktor/client/plugins/HttpCallValidator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,191:1\n1855#2,2:192\n1855#2,2:194\n*S KotlinDebug\n*F\n+ 1 HttpCallValidator.kt\nio/ktor/client/plugins/HttpCallValidator\n*L\n51#1:192,2\n56#1:194,2\n*E\n"})
/* loaded from: classes8.dex */
public final class HttpCallValidator {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final Companion f58934d = new Companion(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final yr.a<HttpCallValidator> f58935e = new yr.a<>("HttpResponseValidator");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<Function2<tr.c, rs.c<? super Unit>, Object>> f58936a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final List<qr.c> f58937b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f58938c;

    /* compiled from: HttpCallValidator.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion implements qr.d<a, HttpCallValidator> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // qr.d
        /* renamed from: c */
        public void b(@NotNull HttpCallValidator plugin, @NotNull HttpClient scope) {
            Intrinsics.checkNotNullParameter(plugin, "plugin");
            Intrinsics.checkNotNullParameter(scope, "scope");
            scope.p().l(sr.d.f66601h.a(), new HttpCallValidator$Companion$install$1(plugin, null));
            f fVar = new f("BeforeReceive");
            scope.q().k(tr.e.f67687h.b(), fVar);
            scope.q().l(fVar, new HttpCallValidator$Companion$install$2(plugin, null));
            ((HttpSend) qr.e.b(scope, HttpSend.f59067c)).d(new HttpCallValidator$Companion$install$3(plugin, null));
        }

        @Override // qr.d
        @NotNull
        /* renamed from: d */
        public HttpCallValidator a(@NotNull Function1<? super a, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            a aVar = new a();
            block.invoke(aVar);
            return new HttpCallValidator(CollectionsKt.N0(aVar.c()), CollectionsKt.N0(aVar.b()), aVar.a());
        }

        @Override // qr.d
        @NotNull
        public yr.a<HttpCallValidator> getKey() {
            return HttpCallValidator.f58935e;
        }

        private Companion() {
        }
    }

    /* compiled from: HttpCallValidator.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<Function2<tr.c, rs.c<? super Unit>, Object>> f58952a = new ArrayList();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final List<qr.c> f58953b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private boolean f58954c = true;

        public final boolean a() {
            return this.f58954c;
        }

        @NotNull
        public final List<qr.c> b() {
            return this.f58953b;
        }

        @NotNull
        public final List<Function2<tr.c, rs.c<? super Unit>, Object>> c() {
            return this.f58952a;
        }

        public final void d(boolean z10) {
            this.f58954c = z10;
        }

        public final void e(@NotNull Function2<? super tr.c, ? super rs.c<? super Unit>, ? extends Object> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            this.f58952a.add(block);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public HttpCallValidator(@NotNull List<? extends Function2<? super tr.c, ? super rs.c<? super Unit>, ? extends Object>> responseValidators, @NotNull List<? extends qr.c> callExceptionHandlers, boolean z10) {
        Intrinsics.checkNotNullParameter(responseValidators, "responseValidators");
        Intrinsics.checkNotNullParameter(callExceptionHandlers, "callExceptionHandlers");
        this.f58936a = responseValidators;
        this.f58937b = callExceptionHandlers;
        this.f58938c = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0099 -> B:25:0x009b). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(java.lang.Throwable r8, sr.b r9, rs.c<? super kotlin.Unit> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof io.ktor.client.plugins.HttpCallValidator$processException$1
            if (r0 == 0) goto L13
            r0 = r10
            io.ktor.client.plugins.HttpCallValidator$processException$1 r0 = (io.ktor.client.plugins.HttpCallValidator$processException$1) r0
            int r1 = r0.f58960m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f58960m = r1
            goto L18
        L13:
            io.ktor.client.plugins.HttpCallValidator$processException$1 r0 = new io.ktor.client.plugins.HttpCallValidator$processException$1
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.f58958k
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f58960m
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L31
            if (r2 != r3) goto L29
            goto L31
        L29:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L31:
            java.lang.Object r8 = r0.f58957j
            java.util.Iterator r8 = (java.util.Iterator) r8
            java.lang.Object r9 = r0.f58956i
            sr.b r9 = (sr.b) r9
            java.lang.Object r2 = r0.f58955h
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            kotlin.f.b(r10)
            goto L9b
        L41:
            kotlin.f.b(r10)
            du.a r10 = io.ktor.client.plugins.a.d()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r5 = "Processing exception "
            r2.append(r5)
            r2.append(r8)
            java.lang.String r5 = " for request "
            r2.append(r5)
            io.ktor.http.Url r5 = r9.getUrl()
            r2.append(r5)
            java.lang.String r2 = r2.toString()
            r10.b(r2)
            java.util.List<qr.c> r10 = r7.f58937b
            java.lang.Iterable r10 = (java.lang.Iterable) r10
            java.util.Iterator r10 = r10.iterator()
            r6 = r9
            r9 = r8
            r8 = r10
            r10 = r6
        L74:
            boolean r2 = r8.hasNext()
            if (r2 == 0) goto Lb7
            java.lang.Object r2 = r8.next()
            qr.c r2 = (qr.c) r2
            boolean r5 = r2 instanceof qr.b
            if (r5 == 0) goto L9e
            qr.b r2 = (qr.b) r2
            kotlin.jvm.functions.Function2 r2 = r2.a()
            r0.f58955h = r9
            r0.f58956i = r10
            r0.f58957j = r8
            r0.f58960m = r4
            java.lang.Object r2 = r2.invoke(r9, r0)
            if (r2 != r1) goto L99
            return r1
        L99:
            r2 = r9
            r9 = r10
        L9b:
            r10 = r9
            r9 = r2
            goto L74
        L9e:
            boolean r5 = r2 instanceof qr.g
            if (r5 == 0) goto L74
            qr.g r2 = (qr.g) r2
            at.n r2 = r2.a()
            r0.f58955h = r9
            r0.f58956i = r10
            r0.f58957j = r8
            r0.f58960m = r3
            java.lang.Object r2 = r2.invoke(r9, r10, r0)
            if (r2 != r1) goto L99
            return r1
        Lb7:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.HttpCallValidator.e(java.lang.Throwable, sr.b, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(tr.c r7, rs.c<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof io.ktor.client.plugins.HttpCallValidator$validateResponse$1
            if (r0 == 0) goto L13
            r0 = r8
            io.ktor.client.plugins.HttpCallValidator$validateResponse$1 r0 = (io.ktor.client.plugins.HttpCallValidator$validateResponse$1) r0
            int r1 = r0.f58965l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f58965l = r1
            goto L18
        L13:
            io.ktor.client.plugins.HttpCallValidator$validateResponse$1 r0 = new io.ktor.client.plugins.HttpCallValidator$validateResponse$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f58963j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f58965l
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r7 = r0.f58962i
            java.util.Iterator r7 = (java.util.Iterator) r7
            java.lang.Object r2 = r0.f58961h
            tr.c r2 = (tr.c) r2
            kotlin.f.b(r8)
            r8 = r2
            goto L6c
        L32:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3a:
            kotlin.f.b(r8)
            du.a r8 = io.ktor.client.plugins.a.d()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "Validating response for request "
            r2.append(r4)
            io.ktor.client.call.HttpClientCall r4 = r7.x()
            sr.b r4 = r4.d()
            io.ktor.http.Url r4 = r4.getUrl()
            r2.append(r4)
            java.lang.String r2 = r2.toString()
            r8.b(r2)
            java.util.List<kotlin.jvm.functions.Function2<tr.c, rs.c<? super kotlin.Unit>, java.lang.Object>> r8 = r6.f58936a
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.Iterator r8 = r8.iterator()
            r5 = r8
            r8 = r7
            r7 = r5
        L6c:
            boolean r2 = r7.hasNext()
            if (r2 == 0) goto L85
            java.lang.Object r2 = r7.next()
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2
            r0.f58961h = r8
            r0.f58962i = r7
            r0.f58965l = r3
            java.lang.Object r2 = r2.invoke(r8, r0)
            if (r2 != r1) goto L6c
            return r1
        L85:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.HttpCallValidator.f(tr.c, rs.c):java.lang.Object");
    }
}
