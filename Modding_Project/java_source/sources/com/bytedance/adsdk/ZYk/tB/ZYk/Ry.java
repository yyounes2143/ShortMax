package com.bytedance.adsdk.ZYk.tB.ZYk;

import android.graphics.Paint;
import com.bytedance.adsdk.ZYk.oJ.oJ.QSm;
import java.util.List;
/* loaded from: classes3.dex */
public class Ry implements tB {
    private final com.bytedance.adsdk.ZYk.tB.oJ.ex Pfn;
    private final com.bytedance.adsdk.ZYk.tB.oJ.ZYk ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final com.bytedance.adsdk.ZYk.tB.oJ.ZYk f11563ba;
    private final oJ cFZ;
    private final com.bytedance.adsdk.ZYk.tB.oJ.oJ ex;
    private final float jFA;
    private final boolean kkU;
    private final String oJ;

    /* renamed from: so  reason: collision with root package name */
    private final ZYk f11564so;
    private final List<com.bytedance.adsdk.ZYk.tB.oJ.ZYk> tB;

    /* renamed from: com.bytedance.adsdk.ZYk.tB.ZYk.Ry$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] ZYk;
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[ZYk.values().length];
            ZYk = iArr;
            try {
                iArr[ZYk.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                ZYk[ZYk.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                ZYk[ZYk.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[oJ.values().length];
            oJ = iArr2;
            try {
                iArr2[oJ.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                oJ[oJ.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                oJ[oJ.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public enum ZYk {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join oJ() {
            int i10 = AnonymousClass1.ZYk[ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return null;
                    }
                    return Paint.Join.ROUND;
                }
                return Paint.Join.MITER;
            }
            return Paint.Join.BEVEL;
        }
    }

    /* loaded from: classes3.dex */
    public enum oJ {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap oJ() {
            int i10 = AnonymousClass1.oJ[ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    return Paint.Cap.SQUARE;
                }
                return Paint.Cap.ROUND;
            }
            return Paint.Cap.BUTT;
        }
    }

    public Ry(String str, com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk, List<com.bytedance.adsdk.ZYk.tB.oJ.ZYk> list, com.bytedance.adsdk.ZYk.tB.oJ.oJ oJVar, com.bytedance.adsdk.ZYk.tB.oJ.ex exVar, com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk2, oJ oJVar2, ZYk zYk3, float f10, boolean z10) {
        this.oJ = str;
        this.ZYk = zYk;
        this.tB = list;
        this.ex = oJVar;
        this.Pfn = exVar;
        this.f11563ba = zYk2;
        this.cFZ = oJVar2;
        this.f11564so = zYk3;
        this.jFA = f10;
        this.kkU = z10;
    }

    public List<com.bytedance.adsdk.ZYk.tB.oJ.ZYk> Pfn() {
        return this.tB;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.oJ ZYk() {
        return this.ex;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.ZYk ba() {
        return this.ZYk;
    }

    public oJ cFZ() {
        return this.cFZ;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.ZYk ex() {
        return this.f11563ba;
    }

    public float jFA() {
        return this.jFA;
    }

    public boolean kkU() {
        return this.kkU;
    }

    @Override // com.bytedance.adsdk.ZYk.tB.ZYk.tB
    public com.bytedance.adsdk.ZYk.oJ.oJ.tB oJ(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.cFZ cfz, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar) {
        return new QSm(jfa, oJVar, this);
    }

    public ZYk so() {
        return this.f11564so;
    }

    public com.bytedance.adsdk.ZYk.tB.oJ.ex tB() {
        return this.Pfn;
    }

    public String oJ() {
        return this.oJ;
    }
}
