package io.ktor.utils.io.internal;

import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ReadWriteBufferState.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final ByteBuffer f59570a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final h f59571b;

    static {
        ByteBuffer allocate = ByteBuffer.allocate(0);
        Intrinsics.checkNotNullExpressionValue(allocate, "allocate(0)");
        f59570a = allocate;
        f59571b = new h(0);
    }

    @NotNull
    public static final ByteBuffer a() {
        return f59570a;
    }

    @NotNull
    public static final h b() {
        return f59571b;
    }
}
