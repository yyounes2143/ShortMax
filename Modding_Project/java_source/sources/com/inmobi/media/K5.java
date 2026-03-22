package com.inmobi.media;

import java.util.concurrent.ThreadFactory;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public final class K5 implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f23775a;

    /* renamed from: b  reason: collision with root package name */
    public final String f23776b;

    public K5(@NotNull String name, boolean z10) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f23775a = z10;
        this.f23776b = AbstractC2977h0.a("TIM-", name);
    }

    public final boolean a() {
        return this.f23775a;
    }

    @Override // java.util.concurrent.ThreadFactory
    @Nullable
    public Thread newThread(@NotNull Runnable r10) {
        Intrinsics.checkNotNullParameter(r10, "r");
        try {
            Thread thread = new Thread(r10, this.f23776b);
            thread.setDaemon(this.f23775a);
            return thread;
        } catch (InternalError e10) {
            e10.toString();
            return null;
        }
    }

    public /* synthetic */ K5(String str, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? false : z10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public K5(@NotNull String name) {
        this(name, false);
        Intrinsics.checkNotNullParameter(name, "name");
    }
}
