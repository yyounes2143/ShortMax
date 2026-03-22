package io.ktor.client.plugins;

import io.ktor.client.HttpClient;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpTimeout.kt */
@Metadata
/* loaded from: classes8.dex */
public final class HttpTimeout {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final Plugin f59087d = new Plugin(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final yr.a<HttpTimeout> f59088e = new yr.a<>("TimeoutPlugin");
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Long f59089a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Long f59090b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Long f59091c;

    /* compiled from: HttpTimeout.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Plugin implements qr.d<a, HttpTimeout>, or.b<a> {
        public /* synthetic */ Plugin(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // qr.d
        /* renamed from: c */
        public void b(@NotNull HttpTimeout plugin, @NotNull HttpClient scope) {
            Intrinsics.checkNotNullParameter(plugin, "plugin");
            Intrinsics.checkNotNullParameter(scope, "scope");
            ((HttpSend) qr.e.b(scope, HttpSend.f59067c)).d(new HttpTimeout$Plugin$install$1(plugin, scope, null));
        }

        @Override // qr.d
        @NotNull
        /* renamed from: d */
        public HttpTimeout a(@NotNull Function1<? super a, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            a aVar = new a(null, null, null, 7, null);
            block.invoke(aVar);
            return aVar.a();
        }

        @Override // qr.d
        @NotNull
        public yr.a<HttpTimeout> getKey() {
            return HttpTimeout.f59088e;
        }

        private Plugin() {
        }
    }

    /* compiled from: HttpTimeout.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public static final C0825a f59102d = new C0825a(null);
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private static final yr.a<a> f59103e = new yr.a<>("TimeoutConfiguration");
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Long f59104a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Long f59105b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Long f59106c;

        /* compiled from: HttpTimeout.kt */
        @Metadata
        /* renamed from: io.ktor.client.plugins.HttpTimeout$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static final class C0825a {
            public /* synthetic */ C0825a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private C0825a() {
            }
        }

        public /* synthetic */ a(Long l10, Long l11, Long l12, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : l10, (i10 & 2) != 0 ? null : l11, (i10 & 4) != 0 ? null : l12);
        }

        private final Long b(Long l10) {
            if (l10 != null && l10.longValue() <= 0) {
                throw new IllegalArgumentException("Only positive timeout values are allowed, for infinite timeout use HttpTimeout.INFINITE_TIMEOUT_MS");
            }
            return l10;
        }

        @NotNull
        public final HttpTimeout a() {
            return new HttpTimeout(d(), c(), e(), null);
        }

        @Nullable
        public final Long c() {
            return this.f59105b;
        }

        @Nullable
        public final Long d() {
            return this.f59104a;
        }

        @Nullable
        public final Long e() {
            return this.f59106c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f59104a, aVar.f59104a) && Intrinsics.areEqual(this.f59105b, aVar.f59105b) && Intrinsics.areEqual(this.f59106c, aVar.f59106c)) {
                return true;
            }
            return false;
        }

        public final void f(@Nullable Long l10) {
            this.f59105b = b(l10);
        }

        public final void g(@Nullable Long l10) {
            this.f59104a = b(l10);
        }

        public final void h(@Nullable Long l10) {
            this.f59106c = b(l10);
        }

        public int hashCode() {
            int i10;
            int i11;
            Long l10 = this.f59104a;
            int i12 = 0;
            if (l10 != null) {
                i10 = l10.hashCode();
            } else {
                i10 = 0;
            }
            int i13 = i10 * 31;
            Long l11 = this.f59105b;
            if (l11 != null) {
                i11 = l11.hashCode();
            } else {
                i11 = 0;
            }
            int i14 = (i13 + i11) * 31;
            Long l12 = this.f59106c;
            if (l12 != null) {
                i12 = l12.hashCode();
            }
            return i14 + i12;
        }

        public a(@Nullable Long l10, @Nullable Long l11, @Nullable Long l12) {
            this.f59104a = 0L;
            this.f59105b = 0L;
            this.f59106c = 0L;
            g(l10);
            f(l11);
            h(l12);
        }
    }

    public /* synthetic */ HttpTimeout(Long l10, Long l11, Long l12, DefaultConstructorMarker defaultConstructorMarker) {
        this(l10, l11, l12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean f() {
        if (this.f59089a == null && this.f59090b == null && this.f59091c == null) {
            return false;
        }
        return true;
    }

    private HttpTimeout(Long l10, Long l11, Long l12) {
        this.f59089a = l10;
        this.f59090b = l11;
        this.f59091c = l12;
    }
}
