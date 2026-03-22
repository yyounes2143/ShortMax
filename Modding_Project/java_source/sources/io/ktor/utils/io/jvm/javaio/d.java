package io.ktor.utils.io.jvm.javaio;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Pollers.kt */
@Metadata
/* loaded from: classes8.dex */
final class d implements b<Thread> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final d f59626a = new d();

    private d() {
    }

    private final Void c() {
        throw new UnsupportedOperationException("Parking is prohibited on this thread. Most likely you are using blocking operation on the wrong thread/dispatcher that doesn't allow blocking. Consider wrapping you blocking code withContext(Dispatchers.IO) {...}.");
    }

    @Override // io.ktor.utils.io.jvm.javaio.b
    public void a(long j10) {
        c();
        throw new KotlinNothingValueException();
    }

    @Override // io.ktor.utils.io.jvm.javaio.b
    /* renamed from: d */
    public void b(@NotNull Thread token) {
        Intrinsics.checkNotNullParameter(token, "token");
        a.f59624a.b(token);
    }
}
