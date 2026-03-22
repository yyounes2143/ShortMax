package bc;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LogUtils.kt */
@Metadata
/* loaded from: classes5.dex */
public interface d {

    /* compiled from: LogUtils.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public static void a(@NotNull d dVar, @NotNull String tag, @NotNull String msg) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
        }

        public static void b(@NotNull d dVar, @NotNull String tag, @NotNull String msg) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
        }

        public static void c(@NotNull d dVar, @NotNull String tag, @NotNull String msg, @NotNull Throwable e10) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
            Intrinsics.checkNotNullParameter(e10, "e");
        }

        public static void d(@NotNull d dVar, @NotNull String tag, @NotNull String msg) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(msg, "msg");
        }
    }

    /* compiled from: LogUtils.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class b implements d {

        /* renamed from: a  reason: collision with root package name */
        private boolean f2599a = true;

        public void a(boolean z10) {
            this.f2599a = z10;
        }

        @Override // bc.d
        public void d(@NotNull String str, @NotNull String str2) {
            a.a(this, str, str2);
        }

        @Override // bc.d
        public void e(@NotNull String str, @NotNull String str2) {
            a.b(this, str, str2);
        }

        @Override // bc.d
        public void i(@NotNull String str, @NotNull String str2) {
            a.d(this, str, str2);
        }

        @Override // bc.d
        public void e(@NotNull String str, @NotNull String str2, @NotNull Throwable th2) {
            a.c(this, str, str2, th2);
        }
    }

    void d(@NotNull String str, @NotNull String str2);

    void e(@NotNull String str, @NotNull String str2);

    void e(@NotNull String str, @NotNull String str2, @NotNull Throwable th2);

    void i(@NotNull String str, @NotNull String str2);
}
