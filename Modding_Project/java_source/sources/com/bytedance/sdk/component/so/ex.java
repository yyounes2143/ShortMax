package com.bytedance.sdk.component.so;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.component.utils.awB;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3.dex */
public class ex {
    private static AtomicInteger tB = new AtomicInteger(0);
    public static final String[] oJ = {"com.bytedance.sdk", "com.bykv.vk", "com.ss", "tt_pangle"};
    public static final String[] ZYk = {"tt_pangle", "bd_tracker"};
    private static int ex = 0;
    private static int Pfn = 0;

    /* loaded from: classes3.dex */
    public static class oJ {
        public String ZYk;
        public String ex;
        public int oJ;
        public String tB;

        public oJ(String str, int i10, String str2, String str3) {
            this.tB = str;
            this.oJ = i10;
            this.ex = str2;
            this.ZYk = str3;
        }

        public void oJ(int i10) {
            this.oJ = i10;
        }

        public String toString() {
            return "ThreadModel{times=" + this.oJ + ", name='" + this.ZYk + "', lastStackStack='" + this.tB + "'}";
        }

        public int oJ() {
            return this.oJ;
        }
    }

    private static void ZYk() {
        int i10;
        String str;
        tB jFA = ba.jFA();
        if (jFA == null) {
            return;
        }
        int i11 = 1;
        int addAndGet = tB.addAndGet(1);
        int i12 = ba.tB;
        if (i12 >= 0 && addAndGet % i12 == 0 && Looper.getMainLooper() != Looper.myLooper()) {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            HashMap hashMap = new HashMap();
            if (allStackTraces == null) {
                return;
            }
            boolean oJ2 = awB.oJ();
            int size = allStackTraces.size();
            if (size > Pfn) {
                Pfn = size;
            }
            Iterator<Map.Entry<Thread, StackTraceElement[]>> it = allStackTraces.entrySet().iterator();
            int i13 = 0;
            int i14 = 0;
            while (it.hasNext()) {
                Map.Entry<Thread, StackTraceElement[]> next = it.next();
                i14 += i11;
                Thread key = next.getKey();
                StackTraceElement[] value = next.getValue();
                StringBuilder sb2 = new StringBuilder("\n");
                if (oJ2) {
                    sb2.append("Thread Name is : " + key.getName());
                    sb2.append("\n");
                }
                int length = value.length;
                String str2 = null;
                int i15 = 0;
                while (i15 < length) {
                    String stackTraceElement = value[i15].toString();
                    Iterator<Map.Entry<Thread, StackTraceElement[]>> it2 = it;
                    if (oJ2) {
                        sb2.append(stackTraceElement + "\n");
                    }
                    if (TextUtils.isEmpty(str2)) {
                        if (!oJ(stackTraceElement, oJ)) {
                            str = stackTraceElement;
                            if (!oJ(key.getName(), ZYk)) {
                            }
                        } else {
                            str = stackTraceElement;
                        }
                        i13++;
                        str2 = str;
                    }
                    i15++;
                    it = it2;
                }
                Iterator<Map.Entry<Thread, StackTraceElement[]>> it3 = it;
                if (oJ2) {
                    if (!TextUtils.isEmpty(str2)) {
                        String str3 = str2 + ContainerUtils.FIELD_DELIMITER + key.getName();
                        oJ oJVar = (oJ) hashMap.get(str3);
                        if (oJVar != null) {
                            i10 = 1;
                            oJVar.oJ(oJVar.oJ() + 1);
                        } else {
                            i10 = 1;
                            oJVar = new oJ(str3, 1, sb2.toString(), key.getName());
                        }
                        hashMap.put(str3, oJVar);
                    } else {
                        i10 = 1;
                    }
                    if (!TextUtils.isEmpty(sb2.toString())) {
                        Log.e("PoolTaskStatistics", "Thread index = " + i14 + "   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
                        Log.w("PoolTaskStatistics", sb2.toString());
                    }
                } else {
                    i10 = 1;
                }
                i11 = i10;
                it = it3;
            }
            if (i13 > ex) {
                ex = i13;
            }
            if (oJ2) {
                Log.e("PoolTaskStatistics", "SDK current threads=" + i13 + ", SDK Max threads=" + ex + ", Application threads = " + size + ", Application max threads = " + Pfn);
                for (Map.Entry entry : hashMap.entrySet()) {
                    Log.i("PoolTaskStatistics", ((oJ) entry.getValue()).toString());
                }
            }
            jFA.oJ(new com.bytedance.sdk.component.so.ZYk.oJ(i13, ex, size, Pfn));
        }
    }

    public static void oJ() {
        try {
            ZYk();
        } catch (Throwable unused) {
        }
    }

    private static boolean oJ(String str, String[] strArr) {
        if (!TextUtils.isEmpty(str) && strArr != null) {
            for (String str2 : strArr) {
                if (str.contains(str2)) {
                    return true;
                }
            }
        }
        return false;
    }
}
