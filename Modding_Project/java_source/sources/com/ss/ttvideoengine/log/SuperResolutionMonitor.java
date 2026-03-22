package com.ss.ttvideoengine.log;
/* loaded from: classes6.dex */
public class SuperResolutionMonitor {
    private static final String TAG = "SuperResolutionMonitor";
    private int mSrAlgorithm = Integer.MIN_VALUE;
    private int mEnableBmf = 0;
    private float mProccessSuccessRate = Float.MIN_VALUE;
    private float mProcessorAverageCostTime = Float.MIN_VALUE;
    private int mSrScaleType = Integer.MIN_VALUE;

    public int getEnableBmf() {
        return this.mEnableBmf;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x003b, code lost:
        if (r0 == 1) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0043, code lost:
        if (r0 == 1) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0046 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float getHeightFactor() {
        /*
            r5 = this;
            int r0 = r5.mSrAlgorithm
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 == 0) goto L47
            r2 = 1
            r3 = 1069547520(0x3fc00000, float:1.5)
            switch(r0) {
                case 4: goto L30;
                case 5: goto L3e;
                case 6: goto L47;
                case 7: goto L3e;
                case 8: goto L36;
                case 9: goto L36;
                case 10: goto L36;
                case 11: goto L36;
                case 12: goto Ld;
                case 13: goto Ld;
                default: goto Lc;
            }
        Lc:
            goto L46
        Ld:
            int r0 = r5.mSrScaleType
            r4 = 4
            if (r0 != r4) goto L16
            r1 = 1066192077(0x3f8ccccd, float:1.1)
            goto L47
        L16:
            r4 = 8
            if (r0 != r4) goto L1e
            r1 = 1067030938(0x3f99999a, float:1.2)
            goto L47
        L1e:
            r4 = 16
            if (r0 != r4) goto L26
            r1 = 1067869798(0x3fa66666, float:1.3)
            goto L47
        L26:
            r4 = 32
            if (r0 != r4) goto L2e
            r1 = 1068708659(0x3fb33333, float:1.4)
            goto L47
        L2e:
            if (r0 != r2) goto L32
        L30:
            r1 = r3
            goto L47
        L32:
            r2 = 2
            if (r0 != r2) goto L46
            goto L47
        L36:
            int r0 = r5.mSrScaleType
            if (r0 != 0) goto L3b
            goto L47
        L3b:
            if (r0 != r2) goto L46
            goto L30
        L3e:
            int r0 = r5.mSrScaleType
            if (r0 != 0) goto L43
            goto L47
        L43:
            if (r0 != r2) goto L46
            goto L30
        L46:
            r1 = 0
        L47:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.log.SuperResolutionMonitor.getHeightFactor():float");
    }

    public float getProccessSuccessRate() {
        return this.mProccessSuccessRate;
    }

    public float getProcessorAverageCostTime() {
        return this.mProcessorAverageCostTime;
    }

    public int getSrAlgorithm() {
        return this.mSrAlgorithm;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x003b, code lost:
        if (r0 == 1) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0043, code lost:
        if (r0 == 1) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0046 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float getWidthFactor() {
        /*
            r5 = this;
            int r0 = r5.mSrAlgorithm
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 == 0) goto L47
            r2 = 1
            r3 = 1069547520(0x3fc00000, float:1.5)
            switch(r0) {
                case 4: goto L30;
                case 5: goto L3e;
                case 6: goto L47;
                case 7: goto L3e;
                case 8: goto L36;
                case 9: goto L36;
                case 10: goto L36;
                case 11: goto L36;
                case 12: goto Ld;
                case 13: goto Ld;
                default: goto Lc;
            }
        Lc:
            goto L46
        Ld:
            int r0 = r5.mSrScaleType
            r4 = 4
            if (r0 != r4) goto L16
            r1 = 1066192077(0x3f8ccccd, float:1.1)
            goto L47
        L16:
            r4 = 8
            if (r0 != r4) goto L1e
            r1 = 1067030938(0x3f99999a, float:1.2)
            goto L47
        L1e:
            r4 = 16
            if (r0 != r4) goto L26
            r1 = 1067869798(0x3fa66666, float:1.3)
            goto L47
        L26:
            r4 = 32
            if (r0 != r4) goto L2e
            r1 = 1068708659(0x3fb33333, float:1.4)
            goto L47
        L2e:
            if (r0 != r2) goto L32
        L30:
            r1 = r3
            goto L47
        L32:
            r2 = 2
            if (r0 != r2) goto L46
            goto L47
        L36:
            int r0 = r5.mSrScaleType
            if (r0 != 0) goto L3b
            goto L47
        L3b:
            if (r0 != r2) goto L46
            goto L30
        L3e:
            int r0 = r5.mSrScaleType
            if (r0 != 0) goto L43
            goto L47
        L43:
            if (r0 != r2) goto L46
            goto L30
        L46:
            r1 = 0
        L47:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.log.SuperResolutionMonitor.getWidthFactor():float");
    }

    public void setAlgorithm(int i10) {
        this.mSrAlgorithm = i10;
    }

    public void setEnableBmf(int i10) {
        this.mEnableBmf = i10;
    }

    public void setProccessSuccessRate(float f10) {
        this.mProccessSuccessRate = f10;
    }

    public void setProcessorAverageCostTime(float f10) {
        this.mProcessorAverageCostTime = f10;
    }

    public void setSrScaleType(int i10) {
        this.mSrScaleType = i10;
    }
}
