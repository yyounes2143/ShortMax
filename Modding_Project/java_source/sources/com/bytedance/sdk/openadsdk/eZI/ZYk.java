package com.bytedance.sdk.openadsdk.eZI;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ZYk {
    public static int Pfn = 3;
    public static int ZYk = 0;
    public static int ex = 2;
    public static int oJ = -1;
    public static int tB = 1;

    /* renamed from: ba  reason: collision with root package name */
    private int f13324ba = oJ;
    private long cFZ = 0;

    /* renamed from: so  reason: collision with root package name */
    private long f13325so = 0;
    private final List<tB> jFA = new ArrayList();
    private long kkU = 0;

    public void ZYk(long j10) {
        int i10;
        int i11 = this.f13324ba;
        if (i11 != oJ && i11 != (i10 = Pfn)) {
            this.f13324ba = i10;
            this.f13325so = j10;
        }
    }

    public void ex(long j10) {
        int i10 = this.f13324ba;
        if (i10 != oJ && i10 == ex) {
            this.f13324ba = tB;
            this.jFA.add(new tB(this.kkU, j10));
            this.kkU = 0L;
        }
    }

    public void oJ(long j10) {
        this.f13324ba = ZYk;
        this.cFZ = j10;
    }

    public void tB(long j10) {
        int i10;
        int i11 = this.f13324ba;
        if (i11 != oJ && i11 != (i10 = ex) && i11 != Pfn) {
            this.f13324ba = i10;
            this.kkU = j10;
        }
    }

    public long oJ(long j10, long j11) {
        long j12;
        long j13;
        long ZYk2;
        long j14 = this.f13325so;
        if (j14 == 0 || j10 <= j14) {
            int i10 = 0;
            for (tB tBVar : this.jFA) {
                if (tBVar.ZYk() > j10) {
                    if (j10 < tBVar.oJ()) {
                        j13 = i10;
                        ZYk2 = tBVar.ZYk() - tBVar.oJ();
                    } else {
                        j13 = i10;
                        ZYk2 = tBVar.ZYk() - j10;
                    }
                    i10 = (int) (j13 + ZYk2);
                }
            }
            long j15 = this.cFZ;
            if (j15 < j10) {
                long j16 = this.kkU;
                if (j16 == 0) {
                    j16 = this.f13325so;
                    if (j16 == 0) {
                        j12 = j11 - j10;
                    }
                } else if (j16 <= j10) {
                    return 0L;
                }
                return (j16 - j10) - i10;
            }
            long j17 = this.kkU;
            if (j17 == 0) {
                j17 = this.f13325so;
                if (j17 == 0) {
                    j12 = j11 - j15;
                }
            } else if (j17 <= j15) {
                return 0L;
            }
            return (j17 - j15) - i10;
            return j12 - i10;
        }
        return 0L;
    }

    public int oJ() {
        return this.f13324ba;
    }
}
