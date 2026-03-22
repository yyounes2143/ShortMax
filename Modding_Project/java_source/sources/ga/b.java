package ga;

import android.util.Log;
import ga.a;
/* loaded from: classes5.dex */
public final class b implements a.InterfaceC0751a {
    @Override // ga.a.InterfaceC0751a
    public final void a(String str, String str2) {
        if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
            Log.e(str, str2);
        }
    }

    @Override // ga.a.InterfaceC0751a
    public final void b(String str, String str2) {
        if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
            Log.i(str, str2);
        }
    }

    @Override // ga.a.InterfaceC0751a
    public final void c(String str, String str2) {
        if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
            Log.d(str, str2);
        }
    }
}
