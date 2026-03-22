package com.bytedance.adsdk.ZYk.tB.ZYk;
/* loaded from: classes3.dex */
public class jFA implements tB {
    private final oJ ZYk;
    private final String oJ;
    private final boolean tB;

    /* loaded from: classes3.dex */
    public enum oJ {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static oJ oJ(int i10) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                return MERGE;
                            }
                            return EXCLUDE_INTERSECTIONS;
                        }
                        return INTERSECT;
                    }
                    return SUBTRACT;
                }
                return ADD;
            }
            return MERGE;
        }
    }

    public jFA(String str, oJ oJVar, boolean z10) {
        this.oJ = str;
        this.ZYk = oJVar;
        this.tB = z10;
    }

    public oJ ZYk() {
        return this.ZYk;
    }

    public String oJ() {
        return this.oJ;
    }

    public boolean tB() {
        return this.tB;
    }

    public String toString() {
        return "MergePaths{mode=" + this.ZYk + '}';
    }

    @Override // com.bytedance.adsdk.ZYk.tB.ZYk.tB
    public com.bytedance.adsdk.ZYk.oJ.oJ.tB oJ(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.cFZ cfz, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar) {
        return new com.bytedance.adsdk.ZYk.oJ.oJ.BTZ(this);
    }
}
