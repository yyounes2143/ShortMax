package com.adjust.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class GooglePlayServicesClient {

    /* loaded from: classes2.dex */
    public static final class GooglePlayServicesInfo {
        private final String gpsAdid;
        private final Boolean trackingEnabled;

        public GooglePlayServicesInfo(String str, Boolean bool) {
            this.gpsAdid = str;
            this.trackingEnabled = bool;
        }

        public String getGpsAdid() {
            return this.gpsAdid;
        }

        public Boolean isTrackingEnabled() {
            return this.trackingEnabled;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements IInterface {

        /* renamed from: a  reason: collision with root package name */
        public final IBinder f4232a;

        public b(IBinder iBinder) {
            this.f4232a = iBinder;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.f4232a;
        }

        public final String i() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f4232a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public final Boolean j() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(1);
                boolean z10 = false;
                this.f4232a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z10 = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return Boolean.valueOf(!z10);
            } catch (Throwable th2) {
                obtain2.recycle();
                obtain.recycle();
                throw th2;
            }
        }
    }

    public static GooglePlayServicesInfo getGooglePlayServicesInfo(Context context, long j10) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            a aVar = new a(j10);
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            try {
                if (context.bindService(intent, aVar, 1)) {
                    try {
                        b bVar = new b(aVar.a());
                        return new GooglePlayServicesInfo(bVar.i(), bVar.j());
                    } catch (Exception e10) {
                        throw e10;
                    }
                }
                throw new IOException("Google Play connection failed");
            } finally {
                context.unbindService(aVar);
            }
        }
        throw new IllegalStateException("Google Play Services info can't be accessed from the main thread");
    }

    /* loaded from: classes2.dex */
    public static final class a implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        public final long f4229a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f4230b = false;

        /* renamed from: c  reason: collision with root package name */
        public final LinkedBlockingQueue f4231c = new LinkedBlockingQueue(1);

        public a(long j10) {
            this.f4229a = j10;
        }

        public final IBinder a() {
            if (!this.f4230b) {
                this.f4230b = true;
                return (IBinder) this.f4231c.poll(this.f4229a, TimeUnit.MILLISECONDS);
            }
            throw new IllegalStateException();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f4231c.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }
}
