package com.moloco.sdk.acm.recorder;

import com.moloco.sdk.acm.AndroidClientMetrics;
import com.moloco.sdk.acm.e;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes6.dex */
public interface a {
    @NotNull
    public static final C0463a Companion = C0463a.f31968a;

    @Metadata
    /* renamed from: com.moloco.sdk.acm.recorder.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0463a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ C0463a f31968a = new C0463a();

        private C0463a() {
        }

        @NotNull
        public final a a(@NotNull String mediation) {
            Intrinsics.checkNotNullParameter(mediation, "mediation");
            return new com.moloco.sdk.acm.recorder.b(mediation);
        }

        @NotNull
        public final a b() {
            return new com.moloco.sdk.acm.recorder.b(null, 1, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b {
        @NotNull
        public static e a(@NotNull a aVar, @NotNull String eventName) {
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            return AndroidClientMetrics.f31800a.w(eventName);
        }
    }

    void a(@NotNull e eVar);

    void b(@NotNull com.moloco.sdk.acm.b bVar);

    @NotNull
    e c(@NotNull String str);
}
