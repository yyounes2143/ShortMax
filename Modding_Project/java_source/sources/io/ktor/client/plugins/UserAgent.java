package io.ktor.client.plugins;

import io.ktor.client.HttpClient;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UserAgent.kt */
@Metadata
/* loaded from: classes8.dex */
public final class UserAgent {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final Plugin f59110b = new Plugin(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final yr.a<UserAgent> f59111c = new yr.a<>("UserAgent");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f59112a;

    /* compiled from: UserAgent.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Plugin implements qr.d<a, UserAgent> {
        public /* synthetic */ Plugin(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // qr.d
        /* renamed from: c */
        public void b(@NotNull UserAgent plugin, @NotNull HttpClient scope) {
            Intrinsics.checkNotNullParameter(plugin, "plugin");
            Intrinsics.checkNotNullParameter(scope, "scope");
            scope.p().l(sr.d.f66601h.d(), new UserAgent$Plugin$install$1(plugin, null));
        }

        @Override // qr.d
        @NotNull
        /* renamed from: d */
        public UserAgent a(@NotNull Function1<? super a, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            a aVar = new a(null, 1, null);
            block.invoke(aVar);
            return new UserAgent(aVar.a(), null);
        }

        @Override // qr.d
        @NotNull
        public yr.a<UserAgent> getKey() {
            return UserAgent.f59111c;
        }

        private Plugin() {
        }
    }

    /* compiled from: UserAgent.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private String f59116a;

        public a() {
            this(null, 1, null);
        }

        @NotNull
        public final String a() {
            return this.f59116a;
        }

        public final void b(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.f59116a = str;
        }

        public a(@NotNull String agent) {
            Intrinsics.checkNotNullParameter(agent, "agent");
            this.f59116a = agent;
        }

        public /* synthetic */ a(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? "Ktor http-client" : str);
        }
    }

    public /* synthetic */ UserAgent(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @NotNull
    public final String b() {
        return this.f59112a;
    }

    private UserAgent(String str) {
        this.f59112a = str;
    }
}
