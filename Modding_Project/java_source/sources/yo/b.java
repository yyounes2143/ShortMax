package yo;

import android.os.Bundle;
import android.os.Parcel;
import java.util.ArrayList;
/* compiled from: CueDecoder.java */
/* loaded from: classes8.dex */
public final class b {
    public e a(long j10, byte[] bArr, int i10, int i11) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, i10, i11);
        obtain.setDataPosition(0);
        Bundle readBundle = obtain.readBundle(Bundle.class.getClassLoader());
        obtain.recycle();
        return new e(cn.g.a(new h7.e() { // from class: yo.a
            @Override // h7.e
            public final Object apply(Object obj) {
                return bn.a.b((Bundle) obj);
            }
        }, (ArrayList) cn.a.e(readBundle.getParcelableArrayList("c"))), j10, readBundle.getLong("d"));
    }
}
