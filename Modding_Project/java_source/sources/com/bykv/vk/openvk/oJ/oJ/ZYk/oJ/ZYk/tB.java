package com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.ZYk;

import android.content.Context;
import com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public class tB {
    public static final ConcurrentHashMap<String, ZYk> oJ = new ConcurrentHashMap<>();

    public static synchronized void oJ(Context context, com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, oJ.InterfaceC0133oJ interfaceC0133oJ) {
        synchronized (tB.class) {
            if (tBVar == null) {
                return;
            }
            try {
                ConcurrentHashMap<String, ZYk> concurrentHashMap = oJ;
                ZYk zYk = concurrentHashMap.get(tBVar.si());
                if (zYk == null) {
                    zYk = new ZYk(context, tBVar);
                    concurrentHashMap.put(tBVar.si(), zYk);
                    tBVar.ba();
                    tBVar.si();
                }
                zYk.oJ(interfaceC0133oJ);
                tBVar.ba();
                tBVar.si();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static synchronized void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar) {
        synchronized (tB.class) {
            try {
                ZYk remove = oJ.remove(tBVar.si());
                if (remove != null) {
                    remove.oJ(true);
                }
                tBVar.ba();
                tBVar.si();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
