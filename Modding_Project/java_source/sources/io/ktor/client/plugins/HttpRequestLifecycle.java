package io.ktor.client.plugins;

import io.ktor.client.HttpClient;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpRequestLifecycle.kt */
@Metadata
/* loaded from: classes8.dex */
public final class HttpRequestLifecycle {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Plugin f59008a = new Plugin(null);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final yr.a<HttpRequestLifecycle> f59009b = new yr.a<>("RequestLifecycle");

    /* compiled from: HttpRequestLifecycle.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Plugin implements qr.d<Unit, HttpRequestLifecycle> {
        public /* synthetic */ Plugin(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // qr.d
        /* renamed from: c */
        public void b(@NotNull HttpRequestLifecycle plugin, @NotNull HttpClient scope) {
            Intrinsics.checkNotNullParameter(plugin, "plugin");
            Intrinsics.checkNotNullParameter(scope, "scope");
            scope.p().l(sr.d.f66601h.a(), new HttpRequestLifecycle$Plugin$install$1(scope, null));
        }

        @Override // qr.d
        @NotNull
        /* renamed from: d */
        public HttpRequestLifecycle a(@NotNull Function1<? super Unit, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            return new HttpRequestLifecycle(null);
        }

        @Override // qr.d
        @NotNull
        public yr.a<HttpRequestLifecycle> getKey() {
            return HttpRequestLifecycle.f59009b;
        }

        private Plugin() {
        }
    }

    public /* synthetic */ HttpRequestLifecycle(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private HttpRequestLifecycle() {
    }
}
