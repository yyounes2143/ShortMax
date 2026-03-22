package com.bytedance.sdk.component.so;

import android.os.SystemClock;
import com.bytedance.sdk.component.utils.awB;
/* loaded from: classes3.dex */
class ZYk implements Comparable, Runnable {
    private oJ ZYk;
    private Thread ex = null;
    private so oJ;
    private long tB;

    public ZYk(so soVar, oJ oJVar) {
        this.tB = 0L;
        this.oJ = soVar;
        this.ZYk = oJVar;
        this.tB = SystemClock.uptimeMillis();
    }

    private void oJ(String str, String str2, long j10) {
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj instanceof ZYk) {
            return this.oJ.compareTo(((ZYk) obj).oJ());
        }
        return 0;
    }

    public boolean equals(Object obj) {
        so soVar;
        if ((obj instanceof ZYk) && (soVar = this.oJ) != null && soVar.equals(((ZYk) obj).oJ())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.oJ.hashCode();
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        String str2;
        String str3;
        String str4;
        long uptimeMillis = SystemClock.uptimeMillis();
        this.ex = Thread.currentThread();
        so soVar = this.oJ;
        if (soVar != null) {
            soVar.run();
        }
        long uptimeMillis2 = SystemClock.uptimeMillis() - uptimeMillis;
        if (this.ZYk != null) {
            ex.oJ();
        }
        if (awB.oJ()) {
            oJ oJVar = this.ZYk;
            if (oJVar != null) {
                oJVar.oJ();
            }
            so soVar2 = this.oJ;
            if (soVar2 != null) {
                soVar2.getName();
            }
            String oJ = this.ZYk.oJ();
            oJ.hashCode();
            String str5 = "null";
            char c10 = 65535;
            switch (oJ.hashCode()) {
                case 3107:
                    if (oJ.equals("ad")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 3366:
                    if (oJ.equals("io")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 107332:
                    if (oJ.equals("log")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 3237136:
                    if (oJ.equals("init")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 212371911:
                    if (oJ.equals("computation")) {
                        c10 = 4;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                case 3:
                    if (uptimeMillis2 > 2000) {
                        oJ oJVar2 = this.ZYk;
                        if (oJVar2 == null) {
                            str = "null";
                        } else {
                            str = oJVar2.oJ();
                        }
                        so soVar3 = this.oJ;
                        if (soVar3 != null) {
                            str5 = soVar3.getName();
                        }
                        oJ(str, str5, uptimeMillis2);
                        return;
                    }
                    return;
                case 1:
                    if (uptimeMillis2 > 5000) {
                        oJ oJVar3 = this.ZYk;
                        if (oJVar3 == null) {
                            str2 = "null";
                        } else {
                            str2 = oJVar3.oJ();
                        }
                        so soVar4 = this.oJ;
                        if (soVar4 != null) {
                            str5 = soVar4.getName();
                        }
                        oJ(str2, str5, uptimeMillis2);
                        return;
                    }
                    return;
                case 2:
                    if (uptimeMillis2 > 3000) {
                        oJ oJVar4 = this.ZYk;
                        if (oJVar4 == null) {
                            str3 = "null";
                        } else {
                            str3 = oJVar4.oJ();
                        }
                        so soVar5 = this.oJ;
                        if (soVar5 != null) {
                            str5 = soVar5.getName();
                        }
                        oJ(str3, str5, uptimeMillis2);
                        return;
                    }
                    return;
                case 4:
                    if (uptimeMillis2 > 1000) {
                        oJ oJVar5 = this.ZYk;
                        if (oJVar5 == null) {
                            str4 = "null";
                        } else {
                            str4 = oJVar5.oJ();
                        }
                        so soVar6 = this.oJ;
                        if (soVar6 != null) {
                            str5 = soVar6.getName();
                        }
                        oJ(str4, str5, uptimeMillis2);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public so oJ() {
        return this.oJ;
    }
}
