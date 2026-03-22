package com.bytedance.sdk.openadsdk.ex.Pfn.ZYk;

import com.bytedance.sdk.openadsdk.core.model.cY;
/* loaded from: classes3.dex */
public class awB {
    private cY Pfn;
    private String ZYk;
    private com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB ex;
    private long oJ;
    private int tB;

    /* loaded from: classes3.dex */
    public static class oJ {
        private int BTZ;
        private boolean Pfn;
        private com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ WcQ;
        private int dLZ;
        private boolean ex;
        private int jFA;
        private int kkU;

        /* renamed from: so  reason: collision with root package name */
        private int f13337so;
        private long oJ = 0;
        private long ZYk = 0;
        private long tB = 0;

        /* renamed from: ba  reason: collision with root package name */
        private long f13336ba = 0;
        private boolean cFZ = false;
        private boolean PiB = false;

        private void eZI() {
            long j10 = this.tB;
            if (j10 > 0) {
                long j11 = this.oJ;
                if (j11 > j10) {
                    long j12 = j11 % j10;
                    this.oJ = j12;
                    if (j12 == 0) {
                        this.oJ = j10;
                    }
                }
            }
        }

        public boolean BTZ() {
            return this.cFZ;
        }

        public int Pfn() {
            return this.f13337so;
        }

        public com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ PiB() {
            return this.WcQ;
        }

        public boolean WcQ() {
            return this.ex;
        }

        public long ZYk() {
            return this.oJ;
        }

        public boolean awB() {
            return this.Pfn;
        }

        public int ba() {
            return this.jFA;
        }

        public int cFZ() {
            long j10 = this.tB;
            if (j10 <= 0) {
                return 0;
            }
            return Math.min((int) ((this.oJ * 100) / j10), 100);
        }

        public boolean dLZ() {
            return this.PiB;
        }

        public long ex() {
            return this.tB;
        }

        public int jFA() {
            return this.dLZ;
        }

        public int kkU() {
            return this.BTZ;
        }

        public long oJ() {
            return this.f13336ba;
        }

        public int so() {
            return this.kkU;
        }

        public long tB() {
            return this.ZYk;
        }

        public void ZYk(long j10) {
            this.oJ = j10;
            eZI();
        }

        public void ex(long j10) {
            this.tB = j10;
            eZI();
        }

        public void oJ(long j10) {
            this.f13336ba = j10;
        }

        public void tB(long j10) {
            this.ZYk = j10;
        }

        public void oJ(int i10) {
            this.f13337so = i10;
        }

        public void tB(int i10) {
            this.kkU = i10;
        }

        public void ZYk(int i10) {
            this.jFA = i10;
        }

        public void ex(int i10) {
            this.BTZ = i10;
        }

        public void oJ(boolean z10) {
            this.cFZ = z10;
        }

        public void tB(boolean z10) {
            this.Pfn = z10;
        }

        public void ZYk(boolean z10) {
            this.ex = z10;
        }

        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ oJVar) {
            this.WcQ = oJVar;
        }
    }

    public awB(long j10, String str, int i10, com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, cY cYVar) {
        this.oJ = j10;
        this.ZYk = str;
        this.tB = i10;
        this.ex = tBVar;
        this.Pfn = cYVar;
    }

    public cY Pfn() {
        return this.Pfn;
    }

    public String ZYk() {
        return this.ZYk;
    }

    public com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB ex() {
        return this.ex;
    }

    public long oJ() {
        return this.oJ;
    }

    public int tB() {
        return this.tB;
    }
}
