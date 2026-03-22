package com.bytedance.dr.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes3.dex */
public interface a extends IInterface {

    /* renamed from: com.bytedance.dr.aidl.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static abstract class AbstractBinderC0156a extends Binder implements a {

        /* renamed from: com.bytedance.dr.aidl.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static class C0157a implements a {

            /* renamed from: a  reason: collision with root package name */
            public IBinder f12549a;

            public C0157a(IBinder iBinder) {
                this.f12549a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f12549a;
            }
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0157a(iBinder);
        }
    }
}
