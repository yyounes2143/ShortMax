package com.bytedance.dr.impl;

import android.os.IBinder;
import android.os.Parcel;
import android.util.Pair;
import com.bytedance.bdtracker.n5;
import com.bytedance.dr.aidl.a;
/* loaded from: classes3.dex */
public class a implements n5.b<com.bytedance.dr.aidl.a, Pair<String, Boolean>> {
    public a(b bVar) {
    }

    public Object a(IBinder iBinder) {
        return a.AbstractBinderC0156a.a(iBinder);
    }

    public Object a(Object obj) {
        com.bytedance.dr.aidl.a aVar = (com.bytedance.dr.aidl.a) obj;
        if (aVar == null) {
            return null;
        }
        a.AbstractBinderC0156a.C0157a c0157a = (a.AbstractBinderC0156a.C0157a) aVar;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            c0157a.f12549a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            String readString = obtain2.readString();
            obtain2.recycle();
            obtain.recycle();
            obtain = Parcel.obtain();
            obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                c0157a.f12549a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                boolean z10 = obtain2.readInt() != 0;
                obtain2.recycle();
                obtain.recycle();
                return new Pair(readString, Boolean.valueOf(z10));
            } finally {
            }
        } finally {
        }
    }
}
