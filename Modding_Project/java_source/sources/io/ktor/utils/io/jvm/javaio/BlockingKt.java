package io.ktor.utils.io.jvm.javaio;

import io.ktor.utils.io.ByteReadChannel;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Blocking.kt */
@Metadata
/* loaded from: classes8.dex */
public final class BlockingKt {
    @NotNull

    /* renamed from: a */
    private static final i f59592a = kotlin.c.b(new Function0<du.a>() { // from class: io.ktor.utils.io.jvm.javaio.BlockingKt$ADAPTER_LOGGER$2
        @Override // kotlin.jvm.functions.Function0
        /* renamed from: b */
        public final du.a invoke() {
            return du.b.i(BlockingAdapter.class);
        }
    });
    @NotNull

    /* renamed from: b */
    private static final Object f59593b = new Object();
    @NotNull

    /* renamed from: c */
    private static final Object f59594c = new Object();

    public static final du.a b() {
        return (du.a) f59592a.getValue();
    }

    @NotNull
    public static final InputStream c(@NotNull ByteReadChannel byteReadChannel, @Nullable r rVar) {
        Intrinsics.checkNotNullParameter(byteReadChannel, "<this>");
        return new InputAdapter(rVar, byteReadChannel);
    }
}
