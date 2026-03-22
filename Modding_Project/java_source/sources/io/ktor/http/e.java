package io.ktor.http;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import yr.p;
/* compiled from: Parameters.kt */
@Metadata
/* loaded from: classes8.dex */
public interface e extends p {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f59260a = a.f59261a;

    /* compiled from: Parameters.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f59261a = new a();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private static final e f59262b = io.ktor.http.b.f59256c;

        private a() {
        }

        @NotNull
        public final e a() {
            return f59262b;
        }
    }

    /* compiled from: Parameters.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b {
        public static void a(@NotNull e eVar, @NotNull Function2<? super String, ? super List<String>, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            p.a.a(eVar, body);
        }
    }
}
