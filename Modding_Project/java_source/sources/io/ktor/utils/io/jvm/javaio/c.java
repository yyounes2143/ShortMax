package io.ktor.utils.io.jvm.javaio;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Pollers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<b<Thread>> f59625a = new ThreadLocal<>();

    @NotNull
    public static final b<Thread> a() {
        b<Thread> bVar = f59625a.get();
        if (bVar == null) {
            return a.f59624a;
        }
        return bVar;
    }

    public static final boolean b() {
        if (a() != d.f59626a) {
            return true;
        }
        return false;
    }
}
