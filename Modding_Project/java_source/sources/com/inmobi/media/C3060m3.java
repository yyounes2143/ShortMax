package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.m3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C3060m3 extends T5 {

    /* renamed from: g  reason: collision with root package name */
    public final StackTraceElement[] f25019g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3060m3(Thread thread, Throwable error) {
        super("crashReporting", "CrashEvent", Ie.a(thread, error));
        Intrinsics.checkNotNullParameter(thread, "thread");
        Intrinsics.checkNotNullParameter(error, "error");
        StackTraceElement[] stackTrace = error.getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
        this.f25019g = stackTrace;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C3060m3(java.lang.String r5) {
        /*
            r4 = this;
            java.util.UUID r0 = java.util.UUID.randomUUID()
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r1 = "component"
            java.lang.String r2 = "crashReporting"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            java.lang.String r1 = "eventType"
            java.lang.String r3 = "CatchEvent"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r1)
            java.lang.String r1 = "eventId"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            r4.<init>(r0, r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3060m3.<init>(java.lang.String):void");
    }
}
