package io.ktor.utils.io.pool;

import java.io.Closeable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Pool.kt */
@Metadata
/* loaded from: classes8.dex */
public interface b<T> extends Closeable {

    /* compiled from: Pool.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public static <T> void a(@NotNull b<T> bVar) {
            bVar.dispose();
        }
    }

    void dispose();

    @NotNull
    T p0();

    void y(@NotNull T t10);
}
