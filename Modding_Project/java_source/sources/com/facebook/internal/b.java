package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Method;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AttributionIdentifiers.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f16149f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private static final String f16150g = b.class.getCanonicalName();
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public static b f16151h;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f16152a;

    /* renamed from: b  reason: collision with root package name */
    private long f16153b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private String f16154c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private String f16155d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f16156e;

    /* compiled from: AttributionIdentifiers.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final b a(b bVar) {
            bVar.f16153b = System.currentTimeMillis();
            b.f16151h = bVar;
            return bVar;
        }

        private final b b(Context context) {
            b c10 = c(context);
            if (c10 == null) {
                b d10 = d(context);
                if (d10 == null) {
                    return new b();
                }
                return d10;
            }
            return c10;
        }

        private final b c(Context context) {
            Method M;
            Object U;
            try {
                if (!g(context) || (M = u0.M("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", Context.class)) == null || (U = u0.U(null, M, context)) == null) {
                    return null;
                }
                boolean z10 = false;
                Method L = u0.L(U.getClass(), "getId", new Class[0]);
                Method L2 = u0.L(U.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
                if (L != null && L2 != null) {
                    b bVar = new b();
                    bVar.f16152a = (String) u0.U(U, L, new Object[0]);
                    Boolean bool = (Boolean) u0.U(U, L2, new Object[0]);
                    if (bool != null) {
                        z10 = bool.booleanValue();
                    }
                    bVar.f16156e = z10;
                    return bVar;
                }
                return null;
            } catch (Exception e10) {
                u0.j0("android_id", e10);
                return null;
            }
        }

        private final b d(Context context) {
            if (!g(context)) {
                return null;
            }
            c cVar = new c();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            try {
                try {
                    if (context.bindService(intent, cVar, 1)) {
                        C0271b c0271b = new C0271b(cVar.a());
                        b bVar = new b();
                        bVar.f16152a = c0271b.i();
                        bVar.f16156e = c0271b.j();
                        return bVar;
                    }
                } catch (Exception e10) {
                    u0.j0("android_id", e10);
                } finally {
                    context.unbindService(cVar);
                }
            } catch (SecurityException unused) {
            }
            return null;
        }

        private final String f(Context context) {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                return packageManager.getInstallerPackageName(context.getPackageName());
            }
            return null;
        }

        private final boolean g(Context context) {
            Method M = u0.M("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", Context.class);
            if (M == null) {
                return false;
            }
            Object U = u0.U(null, M, context);
            if (!(U instanceof Integer) || !Intrinsics.areEqual(U, (Object) 0)) {
                return false;
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0087 A[Catch: all -> 0x0033, Exception -> 0x0036, TryCatch #5 {Exception -> 0x0036, all -> 0x0033, blocks: (B:3:0x0010, B:5:0x001e, B:7:0x0022, B:14:0x003a, B:16:0x0055, B:18:0x0062, B:25:0x0081, B:27:0x0087, B:29:0x008c, B:31:0x0091, B:21:0x006c, B:23:0x0079, B:53:0x00f0, B:54:0x00f7), top: B:66:0x0010 }] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x008c A[Catch: all -> 0x0033, Exception -> 0x0036, TryCatch #5 {Exception -> 0x0036, all -> 0x0033, blocks: (B:3:0x0010, B:5:0x001e, B:7:0x0022, B:14:0x003a, B:16:0x0055, B:18:0x0062, B:25:0x0081, B:27:0x0087, B:29:0x008c, B:31:0x0091, B:21:0x006c, B:23:0x0079, B:53:0x00f0, B:54:0x00f7), top: B:66:0x0010 }] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0091 A[Catch: all -> 0x0033, Exception -> 0x0036, TRY_LEAVE, TryCatch #5 {Exception -> 0x0036, all -> 0x0033, blocks: (B:3:0x0010, B:5:0x001e, B:7:0x0022, B:14:0x003a, B:16:0x0055, B:18:0x0062, B:25:0x0081, B:27:0x0087, B:29:0x008c, B:31:0x0091, B:21:0x006c, B:23:0x0079, B:53:0x00f0, B:54:0x00f7), top: B:66:0x0010 }] */
        /* JADX WARN: Removed duplicated region for block: B:62:0x011a  */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.facebook.internal.b e(@org.jetbrains.annotations.NotNull android.content.Context r13) {
            /*
                Method dump skipped, instructions count: 286
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.b.a.e(android.content.Context):com.facebook.internal.b");
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final boolean h(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            b e10 = e(context);
            if (e10 != null && e10.l()) {
                return true;
            }
            return false;
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AttributionIdentifiers.kt */
    @Metadata
    /* renamed from: com.facebook.internal.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0271b implements IInterface {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final a f16157b = new a(null);
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final IBinder f16158a;

        /* compiled from: AttributionIdentifiers.kt */
        @Metadata
        /* renamed from: com.facebook.internal.b$b$a */
        /* loaded from: classes3.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        public C0271b(@NotNull IBinder binder) {
            Intrinsics.checkNotNullParameter(binder, "binder");
            this.f16158a = binder;
        }

        @Override // android.os.IInterface
        @NotNull
        public IBinder asBinder() {
            return this.f16158a;
        }

        @Nullable
        public final String i() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Intrinsics.checkNotNullExpressionValue(obtain, "obtain()");
            Parcel obtain2 = Parcel.obtain();
            Intrinsics.checkNotNullExpressionValue(obtain2, "obtain()");
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f16158a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public final boolean j() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Intrinsics.checkNotNullExpressionValue(obtain, "obtain()");
            Parcel obtain2 = Parcel.obtain();
            Intrinsics.checkNotNullExpressionValue(obtain2, "obtain()");
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                boolean z10 = true;
                obtain.writeInt(1);
                this.f16158a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z10 = false;
                }
                return z10;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    @Nullable
    public static final b k(@NotNull Context context) {
        return f16149f.e(context);
    }

    @Nullable
    public final String h() {
        if (com.facebook.v.G() && com.facebook.v.k()) {
            return this.f16152a;
        }
        return null;
    }

    @Nullable
    public final String i() {
        return this.f16155d;
    }

    @Nullable
    public final String j() {
        return this.f16154c;
    }

    public final boolean l() {
        return this.f16156e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AttributionIdentifiers.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAttributionIdentifiers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttributionIdentifiers.kt\ncom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,312:1\n1#2:313\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class c implements ServiceConnection {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final AtomicBoolean f16159a = new AtomicBoolean(false);
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final BlockingQueue<IBinder> f16160b = new LinkedBlockingDeque();

        @NotNull
        public final IBinder a() throws InterruptedException {
            if (!this.f16159a.compareAndSet(true, true)) {
                IBinder take = this.f16160b.take();
                Intrinsics.checkNotNullExpressionValue(take, "queue.take()");
                return take;
            }
            throw new IllegalStateException("Binder already consumed");
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(@Nullable ComponentName componentName, @Nullable IBinder iBinder) {
            if (iBinder != null) {
                try {
                    this.f16160b.put(iBinder);
                } catch (InterruptedException unused) {
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(@Nullable ComponentName componentName) {
        }
    }
}
