package com.mbridge.msdk.foundation.tools;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: AdvertisingIdClient.java */
/* loaded from: classes5.dex */
public class b {

    /* compiled from: AdvertisingIdClient.java */
    /* renamed from: com.mbridge.msdk.foundation.tools.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public final class C0378b {

        /* renamed from: a  reason: collision with root package name */
        private final String f27379a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f27380b;

        C0378b(String str, boolean z10) {
            this.f27379a = str;
            this.f27380b = z10;
        }

        public String a() {
            return this.f27379a;
        }

        public boolean b() {
            return this.f27380b;
        }
    }

    /* compiled from: AdvertisingIdClient.java */
    /* loaded from: classes5.dex */
    private final class d implements IInterface {

        /* renamed from: a  reason: collision with root package name */
        private IBinder f27385a;

        public d(IBinder iBinder) {
            this.f27385a = iBinder;
        }

        public boolean a(boolean z10) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            boolean z11 = false;
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(z10 ? 1 : 0);
                this.f27385a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z11 = true;
                }
            } catch (Throwable th2) {
                try {
                    p0.b("AdvertisingIdClient", th2.getMessage());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
            return z11;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f27385a;
        }

        public String getId() throws RemoteException {
            String str;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f27385a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                str = obtain2.readString();
            } catch (Throwable th2) {
                try {
                    p0.b("AdvertisingIdClient", th2.getMessage());
                    str = null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
            return str;
        }
    }

    public C0378b a(Context context) throws Exception {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            c cVar = new c();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            if (context.bindService(intent, cVar, 1)) {
                try {
                    try {
                        d dVar = new d(cVar.a());
                        return new C0378b(dVar.getId(), dVar.a(true));
                    } catch (Exception e10) {
                        throw e10;
                    }
                } finally {
                    context.unbindService(cVar);
                }
            }
            throw new IOException("Google Play connection failed");
        }
        throw new IllegalStateException("Cannot be called from the main thread");
    }

    /* compiled from: AdvertisingIdClient.java */
    /* loaded from: classes5.dex */
    private final class c implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        private final LinkedBlockingQueue<IBinder> f27382a;

        /* renamed from: b  reason: collision with root package name */
        boolean f27383b;

        private c() {
            this.f27382a = new LinkedBlockingQueue<>(1);
            this.f27383b = false;
        }

        public IBinder a() throws InterruptedException {
            if (!this.f27383b) {
                this.f27383b = true;
                return this.f27382a.take();
            }
            throw new IllegalStateException();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f27382a.put(iBinder);
            } catch (InterruptedException e10) {
                p0.b("AdvertisingIdClient", e10.getMessage());
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }
}
