package st;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PolymorphicSerializer.kt */
@Metadata
/* loaded from: classes8.dex */
public final class h {
    @NotNull
    public static final <T> c<T> a(@NotNull vt.b<T> bVar, @NotNull kotlinx.serialization.encoding.c decoder, @Nullable String str) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        c<T> c10 = bVar.c(decoder, str);
        if (c10 != null) {
            return c10;
        }
        vt.c.a(str, bVar.e());
        throw new KotlinNothingValueException();
    }

    @NotNull
    public static final <T> l<T> b(@NotNull vt.b<T> bVar, @NotNull Encoder encoder, @NotNull T value) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        l<T> d10 = bVar.d(encoder, value);
        if (d10 != null) {
            return d10;
        }
        vt.c.b(Reflection.getOrCreateKotlinClass(value.getClass()), bVar.e());
        throw new KotlinNothingValueException();
    }
}
