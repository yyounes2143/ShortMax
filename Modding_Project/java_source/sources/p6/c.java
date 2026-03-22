package p6;

import android.os.Bundle;
import android.os.Parcel;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
/* compiled from: CueDecoder.java */
/* loaded from: classes4.dex */
public final class c {
    public ImmutableList<b> a(byte[] bArr) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        Bundle readBundle = obtain.readBundle(Bundle.class.getClassLoader());
        obtain.recycle();
        return b7.c.b(b.f64734s, (ArrayList) b7.a.e(readBundle.getParcelableArrayList("c")));
    }
}
