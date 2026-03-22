package com.inmobi.media;

import java.lang.Thread;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.l3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3044l3 extends G3 implements Thread.UncaughtExceptionHandler {

    /* renamed from: b  reason: collision with root package name */
    public final Thread.UncaughtExceptionHandler f24952b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3044l3(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, H3 listener) {
        super(listener);
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f24952b = uncaughtExceptionHandler;
    }

    @Override // com.inmobi.media.G3
    public final void a() {
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override // com.inmobi.media.G3
    public final void b() {
        Thread.setDefaultUncaughtExceptionHandler(this.f24952b);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread t10, Throwable e10) {
        Intrinsics.checkNotNullParameter(t10, "t");
        Intrinsics.checkNotNullParameter(e10, "e");
        this.f23671a.a(new C3060m3(t10, e10));
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f24952b;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(t10, e10);
        }
    }
}
