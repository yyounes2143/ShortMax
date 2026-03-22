package com.bytedance.sdk.openadsdk.utils;

import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.sdk.component.so.tB.ba;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ofl {
    private static volatile com.bytedance.sdk.component.so.tB.ba Pfn;
    private static volatile boolean ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private static volatile com.bytedance.sdk.component.so.tB.ba f13426ba;
    private static volatile com.bytedance.sdk.component.so.tB.ba cFZ;
    private static volatile com.bytedance.sdk.component.so.tB.ba dLZ;
    private static volatile com.bytedance.sdk.component.so.tB.ba ex;
    private static volatile com.bytedance.sdk.component.so.tB.ba jFA;
    private static volatile com.bytedance.sdk.component.so.tB.ba kkU;
    private static volatile ThreadPoolExecutor oJ;

    /* renamed from: so  reason: collision with root package name */
    private static volatile com.bytedance.sdk.component.so.tB.ba f13427so;
    private static volatile com.bytedance.sdk.component.so.tB.ba tB;

    static {
        com.bytedance.sdk.component.so.tB.tB.oJ(new com.bytedance.sdk.component.so.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.utils.ofl.1
            @Override // com.bytedance.sdk.component.so.tB.oJ
            public void oJ(com.bytedance.sdk.component.so.tB.ba baVar, com.bytedance.sdk.component.so.tB.ZYk zYk) {
                zYk.ZYk();
                new RuntimeException();
            }
        });
        oJ = null;
        ZYk = false;
    }

    public static boolean BTZ() {
        if (com.bytedance.sdk.openadsdk.core.settings.PiB.Zzm()) {
            return com.bytedance.sdk.openadsdk.core.settings.PiB.ib().UF();
        }
        return true;
    }

    public static ExecutorService Pfn() {
        if (BTZ()) {
            return jFA();
        }
        return com.bytedance.sdk.component.so.ba.ZYk();
    }

    private static ThreadPoolExecutor PiB() {
        int i10;
        if (oJ == null) {
            synchronized (ofl.class) {
                try {
                    if (oJ == null) {
                        if (com.bytedance.sdk.openadsdk.core.settings.PiB.Zzm()) {
                            i10 = com.bytedance.sdk.openadsdk.core.settings.PiB.ib().VSB();
                            ZYk = true;
                        } else {
                            i10 = 4;
                        }
                        oJ = new ThreadPoolExecutor(i10, Integer.MAX_VALUE, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    private static com.bytedance.sdk.component.so.tB.ba RZ() {
        com.bytedance.sdk.component.so.tB.ba baVar;
        com.bytedance.sdk.component.so.tB.ba baVar2 = dLZ;
        if (oJ(baVar2)) {
            synchronized (ofl.class) {
                try {
                    if (oJ(dLZ)) {
                        dLZ = oJ("imgdisk", dLZ);
                    }
                    baVar = dLZ;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return baVar;
        }
        return baVar2;
    }

    private static com.bytedance.sdk.component.so.tB.ba Ry() {
        com.bytedance.sdk.component.so.tB.ba baVar;
        com.bytedance.sdk.component.so.tB.ba baVar2 = cFZ;
        if (oJ(baVar2)) {
            synchronized (ofl.class) {
                try {
                    if (oJ(cFZ)) {
                        cFZ = oJ("io", cFZ);
                    }
                    baVar = cFZ;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return baVar;
        }
        return baVar2;
    }

    private static ThreadPoolExecutor WcQ() {
        com.bytedance.sdk.component.so.tB.ba baVar;
        com.bytedance.sdk.component.so.tB.ba baVar2 = tB;
        if (oJ(baVar2)) {
            synchronized (ofl.class) {
                try {
                    if (oJ(tB)) {
                        tB = oJ("ad", tB);
                    }
                    baVar = tB;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return baVar;
        }
        return baVar2;
    }

    public static ExecutorService ZYk() {
        if (BTZ()) {
            return si();
        }
        return com.bytedance.sdk.component.so.ba.kkU();
    }

    private static com.bytedance.sdk.component.so.tB.ba awB() {
        com.bytedance.sdk.component.so.tB.ba baVar;
        com.bytedance.sdk.component.so.tB.ba baVar2 = ex;
        if (oJ(baVar2)) {
            synchronized (ofl.class) {
                try {
                    if (oJ(ex)) {
                        ex = oJ("log", ex);
                    }
                    baVar = ex;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return baVar;
        }
        return baVar2;
    }

    public static boolean ba() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return true;
        }
        return false;
    }

    public static boolean cFZ() {
        String str;
        if (BTZ()) {
            str = "pag_log";
        } else {
            str = "csj_log";
        }
        String name = Thread.currentThread().getName();
        if (TextUtils.isEmpty(name)) {
            return false;
        }
        return name.startsWith(str);
    }

    public static com.bytedance.sdk.component.so.tB.ba dLZ() {
        com.bytedance.sdk.component.so.tB.ba baVar;
        com.bytedance.sdk.component.so.tB.ba baVar2 = kkU;
        if (oJ(baVar2)) {
            synchronized (ofl.class) {
                try {
                    if (oJ(kkU)) {
                        kkU = oJ("net", kkU);
                    }
                    baVar = kkU;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return baVar;
        }
        return baVar2;
    }

    private static com.bytedance.sdk.component.so.tB.ba eZI() {
        com.bytedance.sdk.component.so.tB.ba baVar;
        com.bytedance.sdk.component.so.tB.ba baVar2 = Pfn;
        if (oJ(baVar2)) {
            synchronized (ofl.class) {
                try {
                    if (oJ(Pfn)) {
                        Pfn = oJ("aidl", Pfn);
                    }
                    baVar = Pfn;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return baVar;
        }
        return baVar2;
    }

    public static ExecutorService ex() {
        if (BTZ()) {
            return awB();
        }
        return com.bytedance.sdk.component.so.ba.ex();
    }

    public static com.bytedance.sdk.component.so.tB.ba jFA() {
        com.bytedance.sdk.component.so.tB.ba baVar;
        com.bytedance.sdk.component.so.tB.ba baVar2 = f13426ba;
        if (oJ(baVar2)) {
            synchronized (ofl.class) {
                try {
                    if (oJ(f13426ba)) {
                        f13426ba = oJ("cache", f13426ba);
                    }
                    baVar = f13426ba;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return baVar;
        }
        return baVar2;
    }

    public static com.bytedance.sdk.component.so.tB.ba kkU() {
        com.bytedance.sdk.component.so.tB.ba baVar;
        com.bytedance.sdk.component.so.tB.ba baVar2 = jFA;
        if (oJ(baVar2)) {
            synchronized (ofl.class) {
                try {
                    if (oJ(jFA)) {
                        jFA = oJ("express", jFA);
                    }
                    baVar = jFA;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return baVar;
        }
        return baVar2;
    }

    public static ScheduledExecutorService oJ() {
        return com.bytedance.sdk.component.so.ba.ba();
    }

    private static com.bytedance.sdk.component.so.tB.ba si() {
        com.bytedance.sdk.component.so.tB.ba baVar;
        com.bytedance.sdk.component.so.tB.ba baVar2 = f13427so;
        if (oJ(baVar2)) {
            synchronized (ofl.class) {
                try {
                    if (oJ(f13427so)) {
                        f13427so = oJ("image", f13427so);
                    }
                    baVar = f13427so;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return baVar;
        }
        return baVar2;
    }

    public static ExecutorService so() {
        if (BTZ()) {
            return Ry();
        }
        return com.bytedance.sdk.component.so.ba.tB();
    }

    public static ExecutorService tB() {
        if (BTZ()) {
            return RZ();
        }
        return com.bytedance.sdk.component.so.ba.tB();
    }

    public static void oJ(Runnable runnable) {
        if (runnable == null || UN.oJ) {
            return;
        }
        if (ba()) {
            runnable.run();
        } else {
            com.bytedance.sdk.openadsdk.core.WcQ.tB().post(runnable);
        }
    }

    public static void Pfn(final com.bytedance.sdk.component.so.so soVar) {
        if (UN.oJ) {
            return;
        }
        if (BTZ()) {
            WcQ().execute(new com.bytedance.sdk.component.so.tB.ZYk(soVar.getName(), soVar) { // from class: com.bytedance.sdk.openadsdk.utils.ofl.9
                @Override // java.lang.Runnable
                public void run() {
                    soVar.run();
                }
            });
            return;
        }
        ThreadPoolExecutor PiB = PiB();
        PiB.execute(soVar);
        if (ZYk || !com.bytedance.sdk.openadsdk.core.settings.PiB.Zzm()) {
            return;
        }
        ZYk = true;
        PiB.setCorePoolSize(com.bytedance.sdk.openadsdk.core.settings.PiB.ib().VSB());
    }

    public static void ZYk(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.WcQ.tB().removeCallbacks(runnable);
    }

    public static void ex(final com.bytedance.sdk.component.so.so soVar) {
        if (soVar == null || UN.oJ) {
            return;
        }
        if (BTZ()) {
            WcQ().execute(new com.bytedance.sdk.component.so.tB.ZYk(soVar.getName()) { // from class: com.bytedance.sdk.openadsdk.utils.ofl.7
                @Override // java.lang.Runnable
                public void run() {
                    soVar.run();
                }
            });
        } else {
            com.bytedance.sdk.component.so.ba.Pfn(soVar);
        }
    }

    public static void tB(final com.bytedance.sdk.component.so.so soVar) {
        if (soVar == null || UN.oJ) {
            return;
        }
        if (BTZ()) {
            awB().execute(new com.bytedance.sdk.component.so.tB.ZYk(soVar.getName()) { // from class: com.bytedance.sdk.openadsdk.utils.ofl.5
                @Override // java.lang.Runnable
                public void run() {
                    soVar.run();
                }
            });
        } else {
            com.bytedance.sdk.component.so.ba.tB(soVar);
        }
    }

    public static void ZYk(final com.bytedance.sdk.component.so.so soVar) {
        if (UN.oJ) {
            return;
        }
        if (BTZ()) {
            Ry().execute(new com.bytedance.sdk.component.so.tB.ZYk(soVar.getName()) { // from class: com.bytedance.sdk.openadsdk.utils.ofl.3
                @Override // java.lang.Runnable
                public void run() {
                    soVar.run();
                }
            });
        } else {
            com.bytedance.sdk.component.so.ba.ZYk(soVar);
        }
    }

    public static void oJ(final com.bytedance.sdk.component.so.so soVar) {
        if (UN.oJ) {
            return;
        }
        if (BTZ()) {
            jFA().execute(new com.bytedance.sdk.component.so.tB.ZYk(soVar.getName()) { // from class: com.bytedance.sdk.openadsdk.utils.ofl.2
                @Override // java.lang.Runnable
                public void run() {
                    soVar.run();
                }
            });
        } else {
            com.bytedance.sdk.component.so.ba.oJ(soVar);
        }
    }

    public static void tB(final com.bytedance.sdk.component.so.so soVar, int i10) {
        if (soVar == null || UN.oJ) {
            return;
        }
        if (BTZ()) {
            eZI().execute(new com.bytedance.sdk.component.so.tB.ZYk(soVar.getName()) { // from class: com.bytedance.sdk.openadsdk.utils.ofl.8
                @Override // java.lang.Runnable
                public void run() {
                    soVar.run();
                }
            });
        } else {
            com.bytedance.sdk.component.so.ba.tB(soVar, i10);
        }
    }

    public static void ZYk(final com.bytedance.sdk.component.so.so soVar, int i10) {
        if (soVar == null || UN.oJ) {
            return;
        }
        if (BTZ()) {
            com.bytedance.sdk.component.so.tB.ZYk zYk = new com.bytedance.sdk.component.so.tB.ZYk(soVar.getName()) { // from class: com.bytedance.sdk.openadsdk.utils.ofl.6
                @Override // java.lang.Runnable
                public void run() {
                    soVar.run();
                }
            };
            zYk.oJ(i10);
            awB().execute(zYk);
            return;
        }
        com.bytedance.sdk.component.so.ba.ZYk(soVar, i10);
    }

    public static void oJ(final com.bytedance.sdk.component.so.so soVar, int i10) {
        if (soVar == null || UN.oJ) {
            return;
        }
        if (BTZ()) {
            com.bytedance.sdk.component.so.tB.ZYk zYk = new com.bytedance.sdk.component.so.tB.ZYk(soVar.getName()) { // from class: com.bytedance.sdk.openadsdk.utils.ofl.4
                @Override // java.lang.Runnable
                public void run() {
                    soVar.run();
                }
            };
            zYk.oJ(i10);
            Ry().execute(zYk);
            return;
        }
        com.bytedance.sdk.component.so.ba.oJ(soVar, 5, i10);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static ba.oJ ZYk(String str) {
        char c10;
        if (TextUtils.isEmpty(str)) {
            str = "unknown";
        }
        ba.oJ oJVar = new ba.oJ();
        str.hashCode();
        switch (str.hashCode()) {
            case -1308979344:
                if (str.equals("express")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 3107:
                if (str.equals("ad")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 3366:
                if (str.equals("io")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 107332:
                if (str.equals("log")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 108957:
                if (str.equals("net")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 2993840:
                if (str.equals("aidl")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case 94416770:
                if (str.equals("cache")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case 100313435:
                if (str.equals("image")) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case 1236319578:
                if (str.equals("monitor")) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case 1917389792:
                if (str.equals("imgdisk")) {
                    c10 = '\t';
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
                return oJVar.oJ(str).oJ(2).ZYk(4).tB(0).oJ(10000L).oJ(true).Pfn(-1).ex(10).ZYk(false);
            case 1:
                return oJVar.oJ(str).oJ(4).ZYk(4).tB(0).oJ(20000L).oJ(true).Pfn(-1).ex(10).ZYk(false);
            case 2:
                return oJVar.oJ(str).oJ(4).ZYk(10).tB(0).oJ(20000L).oJ(true).Pfn(-1).ex(10).ZYk(false);
            case 3:
                return oJVar.oJ(str).oJ(4).ZYk(6).tB(2).oJ(20000L).oJ(true).Pfn(-1).ex(10).ZYk(false);
            case 4:
                return oJVar.oJ(str).oJ(10).ZYk(10).tB(0).oJ(10000L).oJ(true).Pfn(-1).ex(10).ZYk(false);
            case 5:
                return oJVar.oJ(str).oJ(2).ZYk(4).tB(0).oJ(10000L).oJ(true).Pfn(-1).ex(10).ZYk(false);
            case 6:
                return oJVar.oJ(str).oJ(0).ZYk(0).tB(0).oJ(5000L).oJ(true).Pfn(-1).ex(20).ZYk(false);
            case 7:
                return oJVar.oJ(str).oJ(3).ZYk(3).tB(0).oJ(20000L).oJ(true).Pfn(-1).ex(10).ZYk(false);
            case '\b':
                return oJVar.oJ(str).oJ(2).ZYk(2).tB(0).oJ(10000L).oJ(true).Pfn(-1).ex(10).ZYk(false);
            case '\t':
                return oJVar.oJ(str).oJ(1).ZYk(2).tB(3).oJ(10000L).oJ(true).Pfn(-1).ex(10).ZYk(false);
            default:
                return oJVar.oJ(str).oJ(8).ZYk(16).tB(2).oJ(20000L).oJ(true).Pfn(-1).ex(10).ZYk(false);
        }
    }

    public static void oJ(com.bytedance.sdk.component.so.tB.ZYk zYk) {
        dLZ().execute(zYk);
    }

    private static boolean oJ(com.bytedance.sdk.component.so.tB.ba baVar) {
        if (baVar != null) {
            return !baVar.oJ() && com.bytedance.sdk.openadsdk.core.settings.PiB.Zzm();
        }
        return true;
    }

    private static com.bytedance.sdk.component.so.tB.ba oJ(String str, com.bytedance.sdk.component.so.tB.ba baVar) {
        ba.oJ oJ2 = oJ(str);
        if (baVar == null) {
            return oJ2.oJ();
        }
        baVar.oJ(oJ2);
        return baVar;
    }

    private static ba.oJ oJ(String str) {
        ba.oJ ZYk2 = ZYk(str);
        try {
            if (com.bytedance.sdk.openadsdk.core.settings.PiB.Zzm()) {
                ZYk2.ZYk(true);
                JSONObject YQ = com.bytedance.sdk.openadsdk.core.settings.PiB.ib().YQ();
                JSONObject optJSONObject = YQ != null ? YQ.optJSONObject(str) : null;
                if (optJSONObject != null) {
                    ZYk2.ZYk(true);
                    if (optJSONObject.has("coreSize")) {
                        ZYk2.oJ(optJSONObject.optInt("coreSize"));
                    }
                    if (optJSONObject.has("maxSize")) {
                        ZYk2.ZYk(optJSONObject.optInt("maxSize"));
                    }
                    if (optJSONObject.has("createSize")) {
                        ZYk2.tB(optJSONObject.optInt("createSize"));
                    }
                    if (optJSONObject.has("keepAlive")) {
                        ZYk2.oJ(optJSONObject.optInt("keepAlive"));
                    }
                    if (optJSONObject.has("allowCoreTimeOut")) {
                        ZYk2.oJ(optJSONObject.optBoolean("allowCoreTimeOut"));
                    }
                    if (optJSONObject.has("reportLogThreshold")) {
                        optJSONObject.optInt("reportLogThreshold");
                    }
                    if (optJSONObject.has("logTaskCount")) {
                        optJSONObject.optInt("logTaskCount");
                    }
                }
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
        return ZYk2;
    }
}
