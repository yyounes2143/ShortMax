package com.facebook.ads.redexgen.X;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.facebook.ads.redexgen.X.1Q  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public abstract class C1Q extends Binder {
    public static final int A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static AbstractC1252Am<Bundle> A00(IBinder iBinder) {
        C10281h A01 = AbstractC1252Am.A01();
        int i10 = 0;
        int i11 = 1;
        while (i11 != 0) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(i10);
                try {
                    iBinder.transact(1, obtain, obtain2, 0);
                    while (true) {
                        i11 = obtain2.readInt();
                        if (i11 == 1) {
                            A01.A04((Bundle) C3M.A01(obtain2.readBundle()));
                            i10++;
                        }
                    }
                } catch (RemoteException e10) {
                    throw new RuntimeException(e10);
                }
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
        return A01.A05();
    }

    static {
        A00 = AbstractC10974a.A02 >= 30 ? IBinder.getSuggestedMaxIpcSizeBytes() : 65536;
    }
}
