package bc;

import bc.d;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LogUtils.kt */
@Metadata
/* loaded from: classes5.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f2600a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private static boolean f2601b = true;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static d f2602c;

    /* compiled from: LogUtils.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull String tag, @NotNull String msg) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            d d10 = d();
            if (d10 != null) {
                d10.d(tag, msg);
            }
        }

        public final void b(@NotNull String tag, @NotNull String msg) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            d d10 = d();
            if (d10 != null) {
                d10.e(tag, msg);
            }
        }

        public final void c(@NotNull String tag, @NotNull String msg, @NotNull Throwable e10) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            Intrinsics.checkNotNullParameter(e10, "e");
            d d10 = d();
            if (d10 != null) {
                d10.e(tag, msg, e10);
            }
        }

        @Nullable
        public final d d() {
            return e.f2602c;
        }

        public final void e(@NotNull String tag, @NotNull String msg) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            d d10 = d();
            if (d10 != null) {
                d10.i(tag, msg);
            }
        }

        public final void f(@Nullable d dVar) {
            e.f2602c = dVar;
        }

        private a() {
        }
    }

    static {
        d.b bVar = new d.b();
        bVar.a(f2601b);
        f2602c = bVar;
    }
}
