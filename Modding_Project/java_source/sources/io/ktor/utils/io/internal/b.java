package io.ktor.utils.io.internal;

import io.ktor.utils.io.ClosedWriteChannelException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ByteBufferChannelInternals.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f59542b = new a(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final b f59543c = new b(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Throwable f59544a;

    /* compiled from: ByteBufferChannelInternals.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final b a() {
            return b.f59543c;
        }

        private a() {
        }
    }

    public b(@Nullable Throwable th2) {
        this.f59544a = th2;
    }

    @Nullable
    public final Throwable b() {
        return this.f59544a;
    }

    @NotNull
    public final Throwable c() {
        Throwable th2 = this.f59544a;
        if (th2 == null) {
            return new ClosedWriteChannelException("The channel was closed");
        }
        return th2;
    }

    @NotNull
    public String toString() {
        return "Closed[" + c() + ']';
    }
}
