package io.bidmachine.core;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
/* compiled from: Logger.java */
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f54407a = false;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private static volatile ir.c f54408b = new ir.a("BidMachineLog");
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private static volatile ir.c f54409c = new ir.b();
    @NonNull
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    static volatile ir.c f54410d = f54409c;

    public static void a(@NonNull hr.b<String> bVar) {
        f54410d.j(bVar);
    }

    public static void b(@NonNull Object obj, @NonNull hr.b<String> bVar) {
        f54410d.f(obj, bVar);
    }

    public static void c(@NonNull Object obj, @NonNull String str) {
        f54410d.d(obj, str);
    }

    public static void d(@NonNull String str) {
        f54410d.e(str);
    }

    public static void e(@NonNull hr.b<String> bVar) {
        f54410d.i(bVar);
    }

    public static void f(@NonNull Object obj, @NonNull hr.b<String> bVar) {
        f54410d.g(obj, bVar);
    }

    public static void g(@NonNull String str) {
        f54410d.d(str);
    }

    public static boolean h() {
        return f54407a;
    }

    public static void i(@NonNull ir.c cVar) {
        f54408b = cVar;
        j(f54407a);
    }

    public static void j(boolean z10) {
        ir.c cVar;
        f54407a = z10;
        if (z10) {
            cVar = f54408b;
        } else {
            cVar = f54409c;
        }
        f54410d = cVar;
    }

    public static void k(@NonNull Object obj, @NonNull String str) {
        f54410d.l(obj, str);
    }

    public static void l(@NonNull String str) {
        f54410d.k(str);
    }

    public static void m(@NonNull Throwable th2) {
        f54410d.h(th2);
    }
}
