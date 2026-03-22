package io.ktor.client.plugins;

import ds.f;
import io.ktor.client.HttpClient;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BodyProgress.kt */
@Metadata
/* loaded from: classes8.dex */
public final class BodyProgress {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f58879a = new a(null);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final yr.a<BodyProgress> f58880b = new yr.a<>("BodyProgress");

    /* compiled from: BodyProgress.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements qr.d<Unit, BodyProgress> {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // qr.d
        /* renamed from: c */
        public void b(@NotNull BodyProgress plugin, @NotNull HttpClient scope) {
            Intrinsics.checkNotNullParameter(plugin, "plugin");
            Intrinsics.checkNotNullParameter(scope, "scope");
            plugin.c(scope);
        }

        @Override // qr.d
        @NotNull
        /* renamed from: d */
        public BodyProgress a(@NotNull Function1<? super Unit, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            return new BodyProgress();
        }

        @Override // qr.d
        @NotNull
        public yr.a<BodyProgress> getKey() {
            return BodyProgress.f58880b;
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(HttpClient httpClient) {
        f fVar = new f("ObservableContent");
        httpClient.p().j(sr.d.f66601h.b(), fVar);
        httpClient.p().l(fVar, new BodyProgress$handle$1(null));
        httpClient.o().l(tr.b.f67680h.a(), new BodyProgress$handle$2(null));
    }
}
