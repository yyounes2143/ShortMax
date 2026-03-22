package e7;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import z4.b;
import z4.c;
/* compiled from: IGetInstallReferrerService.java */
/* loaded from: classes4.dex */
public interface a extends IInterface {

    /* compiled from: IGetInstallReferrerService.java */
    /* renamed from: e7.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static abstract class AbstractBinderC0714a extends b implements a {

        /* compiled from: IGetInstallReferrerService.java */
        /* renamed from: e7.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static class C0715a extends z4.a implements a {
            C0715a(IBinder iBinder) {
                super(iBinder);
            }

            @Override // e7.a
            public final Bundle c(Bundle bundle) throws RemoteException {
                Parcel i10 = i();
                c.b(i10, bundle);
                Parcel j10 = j(i10);
                Bundle bundle2 = (Bundle) c.a(j10, Bundle.CREATOR);
                j10.recycle();
                return bundle2;
            }
        }

        public static a i(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            if (queryLocalInterface instanceof a) {
                return (a) queryLocalInterface;
            }
            return new C0715a(iBinder);
        }
    }

    Bundle c(Bundle bundle) throws RemoteException;
}
