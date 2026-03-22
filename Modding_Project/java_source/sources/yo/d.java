package yo;

import android.os.Bundle;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;
/* compiled from: CueEncoder.java */
/* loaded from: classes8.dex */
public final class d {
    public byte[] a(List<bn.a> list, long j10) {
        ArrayList<Bundle> b10 = cn.g.b(list, new h7.e() { // from class: yo.c
            @Override // h7.e
            public final Object apply(Object obj) {
                return ((bn.a) obj).d();
            }
        });
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("c", b10);
        bundle.putLong("d", j10);
        Parcel obtain = Parcel.obtain();
        obtain.writeBundle(bundle);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }
}
