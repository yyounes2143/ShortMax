package com.airbnb.lottie;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.io.File;
/* compiled from: L.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f4474a = false;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f4475b = false;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f4476c = true;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f4477d = false;

    /* renamed from: f  reason: collision with root package name */
    private static b1.e f4479f;

    /* renamed from: g  reason: collision with root package name */
    private static b1.d f4480g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile b1.g f4481h;

    /* renamed from: i  reason: collision with root package name */
    private static volatile b1.f f4482i;

    /* renamed from: j  reason: collision with root package name */
    private static ThreadLocal<d1.h> f4483j;

    /* renamed from: e  reason: collision with root package name */
    private static AsyncUpdates f4478e = AsyncUpdates.AUTOMATIC;

    /* renamed from: k  reason: collision with root package name */
    private static v0.a f4484k = new v0.b();

    public static void b(String str) {
        if (!f4475b) {
            return;
        }
        g().a(str);
    }

    public static float c(String str) {
        if (!f4475b) {
            return 0.0f;
        }
        return g().b(str);
    }

    public static AsyncUpdates d() {
        return f4478e;
    }

    public static boolean e() {
        return f4477d;
    }

    public static v0.a f() {
        return f4484k;
    }

    private static d1.h g() {
        d1.h hVar = f4483j.get();
        if (hVar == null) {
            d1.h hVar2 = new d1.h();
            f4483j.set(hVar2);
            return hVar2;
        }
        return hVar;
    }

    public static boolean h() {
        return f4475b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ File i(Context context) {
        return new File(context.getCacheDir(), "lottie_network_cache");
    }

    @Nullable
    public static b1.f j(@NonNull Context context) {
        if (!f4476c) {
            return null;
        }
        final Context applicationContext = context.getApplicationContext();
        b1.f fVar = f4482i;
        if (fVar == null) {
            synchronized (b1.f.class) {
                try {
                    fVar = f4482i;
                    if (fVar == null) {
                        b1.d dVar = f4480g;
                        if (dVar == null) {
                            dVar = new b1.d() { // from class: com.airbnb.lottie.c
                                @Override // b1.d
                                public final File getCacheDir() {
                                    File i10;
                                    i10 = d.i(applicationContext);
                                    return i10;
                                }
                            };
                        }
                        fVar = new b1.f(dVar);
                        f4482i = fVar;
                    }
                } finally {
                }
            }
        }
        return fVar;
    }

    @NonNull
    public static b1.g k(@NonNull Context context) {
        b1.g gVar = f4481h;
        if (gVar == null) {
            synchronized (b1.g.class) {
                try {
                    gVar = f4481h;
                    if (gVar == null) {
                        b1.f j10 = j(context);
                        b1.e eVar = f4479f;
                        if (eVar == null) {
                            eVar = new b1.b();
                        }
                        gVar = new b1.g(j10, eVar);
                        f4481h = gVar;
                    }
                } finally {
                }
            }
        }
        return gVar;
    }
}
