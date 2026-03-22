package hb;

import android.util.Log;
/* loaded from: classes5.dex */
public class k0 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f52715a = false;

    /* renamed from: b  reason: collision with root package name */
    private int f52716b = 4;

    private static String a() {
        return "FormalHASDK_2.2.0.314" + u0.a();
    }

    public void b(int i10) {
        Log.i("FormalHASDK", System.lineSeparator() + "======================================= " + System.lineSeparator() + a() + "" + System.lineSeparator() + "=======================================");
        this.f52716b = i10;
        this.f52715a = true;
    }

    public void c(int i10, String str, String str2) {
        if (i10 != 3) {
            if (i10 != 5) {
                if (i10 != 6) {
                    Log.i(str, str2);
                    return;
                } else {
                    Log.e(str, str2);
                    return;
                }
            }
            Log.w(str, str2);
            return;
        }
        Log.d(str, str2);
    }

    public void d(int i10, String str, String str2) {
        c(i10, "FormalHASDK", str + "=> " + str2);
    }

    public boolean e(int i10) {
        if (this.f52715a && i10 >= this.f52716b) {
            return true;
        }
        return false;
    }
}
