package q0;

import android.graphics.drawable.Drawable;
import androidx.annotation.MainThread;
import kotlin.Metadata;
import o0.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TransitionTarget.kt */
@Metadata
/* loaded from: classes2.dex */
public interface d extends o0.a {

    /* compiled from: TransitionTarget.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        @MainThread
        public static void a(@NotNull d dVar, @Nullable Drawable drawable) {
            a.C0883a.a(dVar, drawable);
        }

        @MainThread
        public static void b(@NotNull d dVar, @Nullable Drawable drawable) {
            a.C0883a.b(dVar, drawable);
        }

        @MainThread
        public static void c(@NotNull d dVar, @NotNull Drawable drawable) {
            a.C0883a.c(dVar, drawable);
        }
    }

    @Nullable
    Drawable a();
}
