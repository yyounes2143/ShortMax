package o5;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: BundleListRetriever.java */
/* loaded from: classes4.dex */
public final class k extends Binder {

    /* renamed from: b  reason: collision with root package name */
    private static final int f63094b;

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableList<Bundle> f63095a;

    static {
        int i10;
        if (b7.s0.f2506a >= 30) {
            i10 = IBinder.getSuggestedMaxIpcSizeBytes();
        } else {
            i10 = 65536;
        }
        f63094b = i10;
    }

    public k(List<Bundle> list) {
        this.f63095a = ImmutableList.u(list);
    }

    public static ImmutableList<Bundle> a(IBinder iBinder) {
        int readInt;
        ImmutableList.a r10 = ImmutableList.r();
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
                        readInt = obtain2.readInt();
                        if (readInt == 1) {
                            r10.a((Bundle) b7.a.e(obtain2.readBundle()));
                            i10++;
                        }
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    i11 = readInt;
                } catch (RemoteException e10) {
                    throw new RuntimeException(e10);
                }
            } catch (Throwable th2) {
                obtain2.recycle();
                obtain.recycle();
                throw th2;
            }
        }
        return r10.k();
    }

    @Override // android.os.Binder
    protected boolean onTransact(int i10, Parcel parcel, @Nullable Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return super.onTransact(i10, parcel, parcel2, i11);
        }
        int i12 = 0;
        if (parcel2 == null) {
            return false;
        }
        int size = this.f63095a.size();
        int readInt = parcel.readInt();
        while (readInt < size && parcel2.dataSize() < f63094b) {
            parcel2.writeInt(1);
            parcel2.writeBundle(this.f63095a.get(readInt));
            readInt++;
        }
        if (readInt < size) {
            i12 = 2;
        }
        parcel2.writeInt(i12);
        return true;
    }
}
