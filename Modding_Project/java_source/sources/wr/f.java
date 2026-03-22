package wr;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yr.p;
/* compiled from: Headers.kt */
@Metadata
/* loaded from: classes8.dex */
public interface f extends yr.p {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f70138b = a.f70139a;

    /* compiled from: Headers.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f70139a = new a();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private static final f f70140b = wr.b.f70130c;

        private a() {
        }

        @NotNull
        public final f a() {
            return f70140b;
        }
    }

    /* compiled from: Headers.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b {
        public static void a(@NotNull f fVar, @NotNull Function2<? super String, ? super List<String>, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            p.a.a(fVar, body);
        }

        @Nullable
        public static String b(@NotNull f fVar, @NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return p.a.b(fVar, name);
        }
    }
}
