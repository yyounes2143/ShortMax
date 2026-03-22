package com.facebook.internal;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.a0;
import com.facebook.internal.b1;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageDownloader.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImageDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageDownloader.kt\ncom/facebook/internal/ImageDownloader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,321:1\n1#2:322\n*E\n"})
/* loaded from: classes3.dex */
public final class z {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static Handler f16366b;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final z f16365a = new z();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final b1 f16367c = new b1(8, null, 2, null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final b1 f16368d = new b1(2, null, 2, null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Map<d, c> f16369e = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageDownloader.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Runnable {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final d f16370a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f16371b;

        public a(@NotNull d key, boolean z10) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.f16370a = key;
            this.f16371b = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!o4.a.d(this)) {
                try {
                    z.f16365a.m(this.f16370a, this.f16371b);
                } catch (Throwable th2) {
                    o4.a.b(th2, this);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageDownloader.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b implements Runnable {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final d f16372a;

        public b(@NotNull d key) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.f16372a = key;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!o4.a.d(this)) {
                try {
                    z.f16365a.e(this.f16372a);
                } catch (Throwable th2) {
                    o4.a.b(th2, this);
                }
            }
        }
    }

    /* compiled from: ImageDownloader.kt */
    @Metadata
    @VisibleForTesting(otherwise = 2)
    /* loaded from: classes3.dex */
    public static final class c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private a0 f16373a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private b1.b f16374b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f16375c;

        public c(@NotNull a0 request) {
            Intrinsics.checkNotNullParameter(request, "request");
            this.f16373a = request;
        }

        @NotNull
        public final a0 a() {
            return this.f16373a;
        }

        @Nullable
        public final b1.b b() {
            return this.f16374b;
        }

        public final boolean c() {
            return this.f16375c;
        }

        public final void d(boolean z10) {
            this.f16375c = z10;
        }

        public final void e(@NotNull a0 a0Var) {
            Intrinsics.checkNotNullParameter(a0Var, "<set-?>");
            this.f16373a = a0Var;
        }

        public final void f(@Nullable b1.b bVar) {
            this.f16374b = bVar;
        }
    }

    /* compiled from: ImageDownloader.kt */
    @Metadata
    @VisibleForTesting(otherwise = 2)
    /* loaded from: classes3.dex */
    public static final class d {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final a f16376c = new a(null);
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private Uri f16377a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private Object f16378b;

        /* compiled from: ImageDownloader.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        public d(@NotNull Uri uri, @NotNull Object tag) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            Intrinsics.checkNotNullParameter(tag, "tag");
            this.f16377a = uri;
            this.f16378b = tag;
        }

        @NotNull
        public final Object a() {
            return this.f16378b;
        }

        @NotNull
        public final Uri b() {
            return this.f16377a;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == null || !(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (dVar.f16377a != this.f16377a || dVar.f16378b != this.f16378b) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return ((1073 + this.f16377a.hashCode()) * 37) + this.f16378b.hashCode();
        }
    }

    private z() {
    }

    public static final boolean d(@NotNull a0 request) {
        boolean z10;
        Intrinsics.checkNotNullParameter(request, "request");
        d dVar = new d(request.c(), request.b());
        Map<d, c> map = f16369e;
        synchronized (map) {
            try {
                c cVar = map.get(dVar);
                if (cVar != null) {
                    b1.b b10 = cVar.b();
                    z10 = true;
                    if (b10 != null && b10.cancel()) {
                        map.remove(dVar);
                    } else {
                        cVar.d(true);
                    }
                } else {
                    z10 = false;
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:62:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v6, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(com.facebook.internal.z.d r11) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.z.e(com.facebook.internal.z$d):void");
    }

    public static final void f(@Nullable a0 a0Var) {
        if (a0Var == null) {
            return;
        }
        d dVar = new d(a0Var.c(), a0Var.b());
        Map<d, c> map = f16369e;
        synchronized (map) {
            try {
                c cVar = map.get(dVar);
                if (cVar != null) {
                    cVar.e(a0Var);
                    cVar.d(false);
                    b1.b b10 = cVar.b();
                    if (b10 != null) {
                        b10.a();
                        Unit unit = Unit.f60915a;
                    }
                } else {
                    f16365a.g(a0Var, dVar, a0Var.d());
                    Unit unit2 = Unit.f60915a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void g(a0 a0Var, d dVar, boolean z10) {
        i(a0Var, dVar, f16368d, new a(dVar, z10));
    }

    private final void h(a0 a0Var, d dVar) {
        i(a0Var, dVar, f16367c, new b(dVar));
    }

    private final void i(a0 a0Var, d dVar, b1 b1Var, Runnable runnable) {
        Map<d, c> map = f16369e;
        synchronized (map) {
            c cVar = new c(a0Var);
            map.put(dVar, cVar);
            cVar.f(b1.f(b1Var, runnable, false, 2, null));
            Unit unit = Unit.f60915a;
        }
    }

    private final synchronized Handler j() {
        try {
            if (f16366b == null) {
                f16366b = new Handler(Looper.getMainLooper());
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f16366b;
    }

    private final void k(d dVar, final Exception exc, final Bitmap bitmap, final boolean z10) {
        a0.b bVar;
        Handler j10;
        c n10 = n(dVar);
        if (n10 != null && !n10.c()) {
            final a0 a10 = n10.a();
            if (a10 != null) {
                bVar = a10.a();
            } else {
                bVar = null;
            }
            final a0.b bVar2 = bVar;
            if (bVar2 != null && (j10 = j()) != null) {
                j10.post(new Runnable() { // from class: com.facebook.internal.y
                    @Override // java.lang.Runnable
                    public final void run() {
                        z.l(a0.this, exc, z10, bitmap, bVar2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(a0 request, Exception exc, boolean z10, Bitmap bitmap, a0.b bVar) {
        Intrinsics.checkNotNullParameter(request, "$request");
        bVar.a(new b0(request, exc, z10, bitmap));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(d dVar, boolean z10) {
        InputStream inputStream;
        Uri c10;
        a0 a0Var = null;
        boolean z11 = false;
        if (z10 && (c10 = p0.c(dVar.b())) != null) {
            inputStream = c0.b(c10);
            if (inputStream != null) {
                z11 = true;
            }
        } else {
            inputStream = null;
        }
        if (!z11) {
            inputStream = c0.b(dVar.b());
        }
        if (inputStream != null) {
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
            u0.j(inputStream);
            k(dVar, null, decodeStream, z11);
            return;
        }
        c n10 = n(dVar);
        if (n10 != null) {
            a0Var = n10.a();
        }
        if (n10 != null && !n10.c() && a0Var != null) {
            h(a0Var, dVar);
        }
    }

    private final c n(d dVar) {
        c remove;
        Map<d, c> map = f16369e;
        synchronized (map) {
            remove = map.remove(dVar);
        }
        return remove;
    }
}
