package com.google.firebase.crashlytics.internal.common;

import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: CrashlyticsUncaughtExceptionHandler.java */
/* loaded from: classes5.dex */
class c0 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private final a f20696a;

    /* renamed from: b  reason: collision with root package name */
    private final j8.b f20697b;

    /* renamed from: c  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f20698c;

    /* renamed from: d  reason: collision with root package name */
    private final z7.a f20699d;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f20700e = new AtomicBoolean(false);

    /* compiled from: CrashlyticsUncaughtExceptionHandler.java */
    /* loaded from: classes5.dex */
    interface a {
        void a(j8.b bVar, Thread thread, Throwable th2);
    }

    public c0(a aVar, j8.b bVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, z7.a aVar2) {
        this.f20696a = aVar;
        this.f20697b = bVar;
        this.f20698c = uncaughtExceptionHandler;
        this.f20699d = aVar2;
    }

    private boolean b(Thread thread, Throwable th2) {
        if (thread == null) {
            z7.g.f().d("Crashlytics will not record uncaught exception; null thread");
            return false;
        } else if (th2 == null) {
            z7.g.f().d("Crashlytics will not record uncaught exception; null throwable");
            return false;
        } else if (this.f20699d.b()) {
            z7.g.f().b("Crashlytics will not record uncaught exception; native crash exists for session.");
            return false;
        } else {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.f20700e.get();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        if (r7.f20698c != null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
        z7.g.f().b("Completed exception processing. Invoking default exception handler.");
        r7.f20698c.uncaughtException(r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
        z7.g.f().b("Completed exception processing, but no default exception handler.");
        java.lang.System.exit(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0041, code lost:
        r7.f20700e.set(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
        if (r7.f20698c == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
        return;
     */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void uncaughtException(java.lang.Thread r8, java.lang.Throwable r9) {
        /*
            r7 = this;
            java.lang.String r0 = "Completed exception processing, but no default exception handler."
            java.lang.String r1 = "Completed exception processing. Invoking default exception handler."
            java.util.concurrent.atomic.AtomicBoolean r2 = r7.f20700e
            r3 = 1
            r2.set(r3)
            r2 = 0
            boolean r4 = r7.b(r8, r9)     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L1b
            if (r4 == 0) goto L1d
            com.google.firebase.crashlytics.internal.common.c0$a r4 = r7.f20696a     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L1b
            j8.b r5 = r7.f20697b     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L1b
            r4.a(r5, r8, r9)     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L1b
            goto L26
        L19:
            r4 = move-exception
            goto L56
        L1b:
            r4 = move-exception
            goto L47
        L1d:
            z7.g r4 = z7.g.f()     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L1b
            java.lang.String r5 = "Uncaught exception will not be recorded by Crashlytics."
            r4.b(r5)     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L1b
        L26:
            java.lang.Thread$UncaughtExceptionHandler r4 = r7.f20698c
            if (r4 == 0) goto L37
        L2a:
            z7.g r0 = z7.g.f()
            r0.b(r1)
            java.lang.Thread$UncaughtExceptionHandler r0 = r7.f20698c
            r0.uncaughtException(r8, r9)
            goto L41
        L37:
            z7.g r8 = z7.g.f()
            r8.b(r0)
            java.lang.System.exit(r3)
        L41:
            java.util.concurrent.atomic.AtomicBoolean r8 = r7.f20700e
            r8.set(r2)
            goto L55
        L47:
            z7.g r5 = z7.g.f()     // Catch: java.lang.Throwable -> L19
            java.lang.String r6 = "An error occurred in the uncaught exception handler"
            r5.e(r6, r4)     // Catch: java.lang.Throwable -> L19
            java.lang.Thread$UncaughtExceptionHandler r4 = r7.f20698c
            if (r4 == 0) goto L37
            goto L2a
        L55:
            return
        L56:
            java.lang.Thread$UncaughtExceptionHandler r5 = r7.f20698c
            if (r5 == 0) goto L67
            z7.g r0 = z7.g.f()
            r0.b(r1)
            java.lang.Thread$UncaughtExceptionHandler r0 = r7.f20698c
            r0.uncaughtException(r8, r9)
            goto L71
        L67:
            z7.g r8 = z7.g.f()
            r8.b(r0)
            java.lang.System.exit(r3)
        L71:
            java.util.concurrent.atomic.AtomicBoolean r8 = r7.f20700e
            r8.set(r2)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.internal.common.c0.uncaughtException(java.lang.Thread, java.lang.Throwable):void");
    }
}
