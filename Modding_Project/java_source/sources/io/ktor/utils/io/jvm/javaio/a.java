package io.ktor.utils.io.jvm.javaio;

import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Pollers.kt */
@Metadata
/* loaded from: classes8.dex */
final class a implements b<Thread> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f59624a = new a();

    private a() {
    }

    @Override // io.ktor.utils.io.jvm.javaio.b
    public void a(long j10) {
        if (j10 >= 0) {
            LockSupport.parkNanos(j10);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @Override // io.ktor.utils.io.jvm.javaio.b
    /* renamed from: c */
    public void b(@NotNull Thread token) {
        Intrinsics.checkNotNullParameter(token, "token");
        LockSupport.unpark(token);
    }
}
