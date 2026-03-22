package com.facebook.ads.redexgen.X;

import android.content.SharedPreferences;
import android.os.Build;
import com.facebook.ads.internal.util.process.ProcessUtils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: assets/audience_network.dex */
public final class TT {
    public static String A00;
    public static EnumC1809Wi A01;
    public static byte[] A02;
    public static String[] A03 = {"voSC7", "XZAhka0CvCOYv4I2O5x3YaAw3CbuYBFN", "p9gqIJ2nr", "98tXqko6jTMLdbqfVFP5nvRcnbiOcAti", "T2H4NPeAA8j3XC4jkS0zz8rIAu9TBODq", "PgqQ", "DWYdqAxgZwpx5TFll0r56voildH8EXHj", "oGCSEutn0BLuvxJJ07JBH6t"};
    public static final Map<String, Integer> A04;
    public static final AtomicInteger A05;

    public static String A02(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        int i13 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A03;
            if (strArr[3].charAt(19) != strArr[6].charAt(19)) {
                throw new RuntimeException();
            }
            A03[1] = "U3LMWoXZ5NcjJWeamIlVlKUbevsxyVyN";
            if (i13 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 91);
            i13++;
        }
    }

    public static void A05() {
        A02 = new byte[]{115, 6, 1, 23};
    }

    static {
        A05();
        A00 = null;
        A05 = new AtomicInteger(0);
        A04 = new HashMap();
    }

    public static synchronized EnumC1809Wi A00(SQ sq2) {
        EnumC1809Wi enumC1809Wi;
        synchronized (TT.class) {
            if (A01 == null) {
                A01 = C1810Wj.A00(sq2);
            }
            enumC1809Wi = A01;
        }
        return enumC1809Wi;
    }

    public static Integer A01(String str) {
        synchronized (A04) {
            Integer num = A04.get(str);
            if (num == null) {
                return 0;
            }
            return num;
        }
    }

    public static void A06(SQ sq2, String str, Map<String, String> params) {
        String str2;
        if (A0A(sq2)) {
            str2 = W4.A03(str);
        } else {
            str2 = A00;
        }
        if (str2 != null) {
            String fingerprint = A02(1, 3, 28);
            params.put(fingerprint, str2);
        }
    }

    public static void A07(SQ sq2, boolean z10) {
        if (!A05.compareAndSet(0, 1)) {
            return;
        }
        A00(sq2);
        try {
            SharedPreferences A002 = AbstractC1781Ve.A00(sq2);
            T6 t62 = new T6(sq2);
            String str = Build.FINGERPRINT + A02(0, 1, 19) + t62.A06();
            A00 = A002.getString(str, null);
            FutureTask futureTask = new FutureTask(new TS(sq2, t62, A002, str));
            Executors.newSingleThreadExecutor().submit(futureTask);
            if (z10) {
                futureTask.get();
            }
        } catch (Exception unused) {
            A05.set(0);
        }
    }

    public static void A08(SQ sq2, boolean z10, String str) {
        if (A0A(sq2)) {
            A09(sq2, z10, str);
        } else {
            A07(sq2, z10);
        }
    }

    public static void A09(SQ sq2, boolean z10, String str) {
        if (str == null) {
            str = sq2.getPackageName();
        }
        if (A0B(str)) {
            return;
        }
        A00(sq2);
        W4 w42 = new W4(sq2, str);
        try {
            w42.A06();
            FutureTask futureTask = new FutureTask(new TR(w42, str));
            Executors.newSingleThreadExecutor().submit(futureTask);
            if (z10) {
                futureTask.get();
            }
        } catch (Exception unused) {
            synchronized (A04) {
                A04.put(str, 0);
            }
        }
    }

    public static boolean A0A(SQ sq2) {
        if (!ProcessUtils.isRemoteRenderingProcess()) {
            boolean A2l = U7.A2l(sq2);
            if (A03[4].charAt(29) == 'E') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[5] = "Hubg";
            strArr[0] = "jm3dJ";
            if (!A2l) {
                return false;
            }
        }
        return true;
    }

    public static boolean A0B(String str) {
        synchronized (A04) {
            int status = A01(str).intValue();
            if (status != 0) {
                return true;
            }
            A04.put(str, 1);
            return false;
        }
    }
}
