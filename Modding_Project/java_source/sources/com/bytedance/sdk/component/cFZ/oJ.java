package com.bytedance.sdk.component.cFZ;

import android.os.Bundle;
import androidx.collection.SieveCacheKt;
import com.bytedance.sdk.component.ZYk.oJ.dLZ;
import com.bytedance.sdk.component.ZYk.oJ.oJ.oJ.Pfn;
import com.bytedance.sdk.component.ZYk.oJ.so;
import com.bytedance.sdk.component.cFZ.ZYk.ex;
import com.bytedance.sdk.component.cFZ.tB.tB;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class oJ {
    private static Pfn oJ;
    private dLZ ZYk;

    /* renamed from: com.bytedance.sdk.component.cFZ.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0174oJ {
        private Set<String> Pfn;

        /* renamed from: ba  reason: collision with root package name */
        private Bundle f12776ba;
        final List<so> ex = new ArrayList();
        int oJ = 10000;
        int ZYk = 10000;
        int tB = 10000;

        public C0174oJ oJ(boolean z10) {
            return this;
        }

        public C0174oJ tB(long j10, TimeUnit timeUnit) {
            this.tB = oJ("timeout", j10, timeUnit);
            return this;
        }

        public C0174oJ ZYk(long j10, TimeUnit timeUnit) {
            this.ZYk = oJ("timeout", j10, timeUnit);
            return this;
        }

        public C0174oJ oJ(long j10, TimeUnit timeUnit) {
            this.oJ = oJ("timeout", j10, timeUnit);
            return this;
        }

        public C0174oJ oJ(so soVar) {
            this.ex.add(soVar);
            return this;
        }

        private static int oJ(String str, long j10, TimeUnit timeUnit) {
            int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
            if (i10 < 0) {
                throw new IllegalArgumentException(str + " < 0");
            } else if (timeUnit != null) {
                long millis = timeUnit.toMillis(j10);
                if (millis > SieveCacheKt.NodeLinkMask) {
                    throw new IllegalArgumentException(str + " too large.");
                } else if (millis != 0 || i10 <= 0) {
                    return (int) millis;
                } else {
                    throw new IllegalArgumentException(str + " too small.");
                }
            } else {
                throw new NullPointerException("unit == null");
            }
        }

        public oJ oJ() {
            return new oJ(this);
        }
    }

    public static boolean Pfn() {
        Pfn pfn = oJ;
        if (pfn == null) {
            return false;
        }
        return pfn.oJ();
    }

    public static void oJ() {
        tB.oJ(tB.oJ.DEBUG);
    }

    public ex ZYk() {
        return new ex(this.ZYk);
    }

    public dLZ ba() {
        return this.ZYk;
    }

    public com.bytedance.sdk.component.cFZ.ZYk.oJ ex() {
        return new com.bytedance.sdk.component.cFZ.ZYk.oJ(this.ZYk);
    }

    public com.bytedance.sdk.component.cFZ.ZYk.ZYk tB() {
        return new com.bytedance.sdk.component.cFZ.ZYk.ZYk(this.ZYk);
    }

    private oJ(C0174oJ c0174oJ) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        dLZ.oJ ZYk = new dLZ.oJ().oJ(c0174oJ.oJ, timeUnit).tB(c0174oJ.tB, timeUnit).ZYk(c0174oJ.ZYk, timeUnit);
        List<so> list = c0174oJ.ex;
        if (list != null && list.size() > 0) {
            for (so soVar : c0174oJ.ex) {
                ZYk.oJ(soVar);
            }
        }
        if (c0174oJ.f12776ba != null) {
            Bundle unused = c0174oJ.f12776ba;
        }
        Set unused2 = c0174oJ.Pfn;
        this.ZYk = ZYk.oJ();
    }

    public static void oJ(Pfn pfn) {
        oJ = pfn;
    }
}
