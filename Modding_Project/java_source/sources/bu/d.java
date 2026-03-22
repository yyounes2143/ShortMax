package bu;

import android.os.Looper;
import au.e;
import au.g;
import au.k;
/* compiled from: DefaultAndroidMainThreadSupport.java */
/* loaded from: classes8.dex */
public class d implements g {
    @Override // au.g
    public boolean a() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return true;
        }
        return false;
    }

    @Override // au.g
    public k b(au.c cVar) {
        return new e(cVar, Looper.getMainLooper(), 10);
    }
}
