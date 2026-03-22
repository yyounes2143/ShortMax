package com.bytedance.adsdk.ZYk.tB.tB;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.LongSparseArray;
import com.bytedance.adsdk.ZYk.oJ.ZYk.awB;
import com.bytedance.adsdk.ZYk.tB.ZYk;
import com.bytedance.adsdk.ZYk.tB.ZYk.eZI;
import com.bytedance.adsdk.ZYk.tB.oJ.dLZ;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class jFA extends com.bytedance.adsdk.ZYk.tB.tB.oJ {
    private final Map<com.bytedance.adsdk.ZYk.tB.ex, List<com.bytedance.adsdk.ZYk.oJ.oJ.ex>> BTZ;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Typeface, Typeface> HL;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> Id;
    private final LongSparseArray<String> PiB;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> QSm;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> RZ;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> Ry;
    private final List<oJ> WcQ;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> Xe;
    private final awB awB;
    private final StringBuilder cFZ;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> cY;
    private final Paint dLZ;
    private final com.bytedance.adsdk.ZYk.jFA eZI;
    private final Matrix jFA;

    /* renamed from: jr  reason: collision with root package name */
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> f11585jr;
    private final Paint kkU;

    /* renamed from: oq  reason: collision with root package name */
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> f11586oq;

    /* renamed from: si  reason: collision with root package name */
    private final com.bytedance.adsdk.ZYk.cFZ f11587si;

    /* renamed from: so  reason: collision with root package name */
    private final RectF f11588so;

    /* renamed from: tb  reason: collision with root package name */
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> f11589tb;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.adsdk.ZYk.tB.tB.jFA$3  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[ZYk.oJ.values().length];
            oJ = iArr;
            try {
                iArr[ZYk.oJ.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                oJ[ZYk.oJ.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                oJ[ZYk.oJ.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ {
        private float ZYk;
        private String oJ;

        private oJ() {
            this.oJ = "";
            this.ZYk = 0.0f;
        }

        void oJ(String str, float f10) {
            this.oJ = str;
            this.ZYk = f10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public jFA(com.bytedance.adsdk.ZYk.jFA jfa, Pfn pfn) {
        super(jfa, pfn);
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk2;
        com.bytedance.adsdk.ZYk.tB.oJ.oJ oJVar;
        com.bytedance.adsdk.ZYk.tB.oJ.oJ oJVar2;
        this.cFZ = new StringBuilder(2);
        this.f11588so = new RectF();
        this.jFA = new Matrix();
        this.kkU = new Paint(1) { // from class: com.bytedance.adsdk.ZYk.tB.tB.jFA.1
            {
                setStyle(Paint.Style.FILL);
            }
        };
        this.dLZ = new Paint(1) { // from class: com.bytedance.adsdk.ZYk.tB.tB.jFA.2
            {
                setStyle(Paint.Style.STROKE);
            }
        };
        this.BTZ = new HashMap();
        this.PiB = new LongSparseArray<>();
        this.WcQ = new ArrayList();
        this.eZI = jfa;
        this.f11587si = pfn.oJ();
        awB oJ2 = pfn.RZ().oJ();
        this.awB = oJ2;
        oJ2.oJ(this);
        oJ(oJ2);
        dLZ QSm = pfn.QSm();
        if (QSm != null && (oJVar2 = QSm.oJ) != null) {
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJ3 = oJVar2.oJ();
            this.Ry = oJ3;
            oJ3.oJ(this);
            oJ(this.Ry);
        }
        if (QSm != null && (oJVar = QSm.ZYk) != null) {
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJ4 = oJVar.oJ();
            this.QSm = oJ4;
            oJ4.oJ(this);
            oJ(this.QSm);
        }
        if (QSm != null && (zYk2 = QSm.tB) != null) {
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ5 = zYk2.oJ();
            this.Id = oJ5;
            oJ5.oJ(this);
            oJ(this.Id);
        }
        if (QSm != null && (zYk = QSm.ex) != null) {
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ6 = zYk.oJ();
            this.f11585jr = oJ6;
            oJ6.oJ(this);
            oJ(this.f11585jr);
        }
    }

    private boolean tB(int i10) {
        if (Character.getType(i10) != 16 && Character.getType(i10) != 27 && Character.getType(i10) != 6 && Character.getType(i10) != 28 && Character.getType(i10) != 8 && Character.getType(i10) != 19) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.adsdk.ZYk.tB.tB.oJ
    public void ZYk(Canvas canvas, Matrix matrix, int i10) {
        super.ZYk(canvas, matrix, i10);
        com.bytedance.adsdk.ZYk.tB.ZYk cFZ = this.awB.cFZ();
        com.bytedance.adsdk.ZYk.tB.tB tBVar = this.f11587si.awB().get(cFZ.ZYk);
        if (tBVar == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        oJ(cFZ, matrix);
        if (this.eZI.Xe()) {
            oJ(cFZ, matrix, tBVar, canvas);
        } else {
            oJ(cFZ, tBVar, canvas);
        }
        canvas.restore();
    }

    @Override // com.bytedance.adsdk.ZYk.tB.tB.oJ, com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(RectF rectF, Matrix matrix, boolean z10) {
        super.oJ(rectF, matrix, z10);
        rectF.set(0.0f, 0.0f, this.f11587si.ex().width(), this.f11587si.ex().height());
    }

    private void oJ(com.bytedance.adsdk.ZYk.tB.ZYk zYk, Matrix matrix) {
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJVar = this.RZ;
        if (oJVar != null) {
            this.kkU.setColor(oJVar.cFZ().intValue());
        } else {
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJVar2 = this.Ry;
            if (oJVar2 != null) {
                this.kkU.setColor(oJVar2.cFZ().intValue());
            } else {
                this.kkU.setColor(zYk.f11559so);
            }
        }
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJVar3 = this.f11586oq;
        if (oJVar3 != null) {
            this.dLZ.setColor(oJVar3.cFZ().intValue());
        } else {
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJVar4 = this.QSm;
            if (oJVar4 != null) {
                this.dLZ.setColor(oJVar4.cFZ().intValue());
            } else {
                this.dLZ.setColor(zYk.jFA);
            }
        }
        int intValue = ((this.ex.oJ() == null ? 100 : this.ex.oJ().cFZ().intValue()) * 255) / 100;
        this.kkU.setAlpha(intValue);
        this.dLZ.setAlpha(intValue);
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJVar5 = this.cY;
        if (oJVar5 != null) {
            this.dLZ.setStrokeWidth(oJVar5.cFZ().floatValue());
            return;
        }
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJVar6 = this.Id;
        if (oJVar6 != null) {
            this.dLZ.setStrokeWidth(oJVar6.cFZ().floatValue());
        } else {
            this.dLZ.setStrokeWidth(zYk.kkU * com.bytedance.adsdk.ZYk.ba.ba.oJ());
        }
    }

    private oJ ZYk(int i10) {
        for (int size = this.WcQ.size(); size < i10; size++) {
            this.WcQ.add(new oJ());
        }
        return this.WcQ.get(i10 - 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void oJ(com.bytedance.adsdk.ZYk.tB.ZYk r21, android.graphics.Matrix r22, com.bytedance.adsdk.ZYk.tB.tB r23, android.graphics.Canvas r24) {
        /*
            r20 = this;
            r8 = r20
            r9 = r21
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<java.lang.Float, java.lang.Float> r0 = r8.f11589tb
            if (r0 == 0) goto L13
            java.lang.Object r0 = r0.cFZ()
            java.lang.Float r0 = (java.lang.Float) r0
            float r0 = r0.floatValue()
            goto L15
        L13:
            float r0 = r9.tB
        L15:
            r1 = 1120403456(0x42c80000, float:100.0)
            float r10 = r0 / r1
            float r11 = com.bytedance.adsdk.ZYk.ba.ba.oJ(r22)
            java.lang.String r0 = r9.oJ
            java.util.List r12 = r8.oJ(r0)
            int r13 = r12.size()
            int r0 = r9.Pfn
            float r0 = (float) r0
            r1 = 1092616192(0x41200000, float:10.0)
            float r0 = r0 / r1
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<java.lang.Float, java.lang.Float> r1 = r8.Xe
            if (r1 == 0) goto L3e
            java.lang.Object r1 = r1.cFZ()
            java.lang.Float r1 = (java.lang.Float) r1
            float r1 = r1.floatValue()
        L3b:
            float r0 = r0 + r1
        L3c:
            r14 = r0
            goto L4d
        L3e:
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<java.lang.Float, java.lang.Float> r1 = r8.f11585jr
            if (r1 == 0) goto L3c
            java.lang.Object r1 = r1.cFZ()
            java.lang.Float r1 = (java.lang.Float) r1
            float r1 = r1.floatValue()
            goto L3b
        L4d:
            r15 = 0
            r0 = -1
            r7 = r0
            r6 = r15
        L51:
            if (r6 >= r13) goto Lb2
            java.lang.Object r0 = r12.get(r6)
            r1 = r0
            java.lang.String r1 = (java.lang.String) r1
            android.graphics.PointF r0 = r9.PiB
            if (r0 != 0) goto L61
            r0 = 0
        L5f:
            r2 = r0
            goto L64
        L61:
            float r0 = r0.x
            goto L5f
        L64:
            r16 = 1
            r0 = r20
            r3 = r23
            r4 = r10
            r5 = r14
            r17 = r6
            r6 = r16
            java.util.List r6 = r0.oJ(r1, r2, r3, r4, r5, r6)
            r5 = r15
        L75:
            int r0 = r6.size()
            if (r5 >= r0) goto Laf
            java.lang.Object r0 = r6.get(r5)
            com.bytedance.adsdk.ZYk.tB.tB.jFA$oJ r0 = (com.bytedance.adsdk.ZYk.tB.tB.jFA.oJ) r0
            int r7 = r7 + 1
            r24.save()
            float r1 = com.bytedance.adsdk.ZYk.tB.tB.jFA.oJ.oJ(r0)
            r4 = r24
            r8.oJ(r4, r9, r7, r1)
            java.lang.String r1 = com.bytedance.adsdk.ZYk.tB.tB.jFA.oJ.ZYk(r0)
            r0 = r20
            r2 = r21
            r3 = r23
            r16 = r5
            r5 = r11
            r18 = r6
            r6 = r10
            r19 = r7
            r7 = r14
            r0.oJ(r1, r2, r3, r4, r5, r6, r7)
            r24.restore()
            int r5 = r16 + 1
            r6 = r18
            r7 = r19
            goto L75
        Laf:
            int r6 = r17 + 1
            goto L51
        Lb2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ZYk.tB.tB.jFA.oJ(com.bytedance.adsdk.ZYk.tB.ZYk, android.graphics.Matrix, com.bytedance.adsdk.ZYk.tB.tB, android.graphics.Canvas):void");
    }

    private void oJ(String str, com.bytedance.adsdk.ZYk.tB.ZYk zYk, com.bytedance.adsdk.ZYk.tB.tB tBVar, Canvas canvas, float f10, float f11, float f12) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            com.bytedance.adsdk.ZYk.tB.ex exVar = this.f11587si.WcQ().get(com.bytedance.adsdk.ZYk.tB.ex.oJ(str.charAt(i10), tBVar.oJ(), tBVar.tB()));
            if (exVar != null) {
                oJ(exVar, f11, zYk, canvas);
                canvas.translate((((float) exVar.ZYk()) * f11 * com.bytedance.adsdk.ZYk.ba.ba.oJ()) + f12, 0.0f);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void oJ(com.bytedance.adsdk.ZYk.tB.ZYk r19, com.bytedance.adsdk.ZYk.tB.tB r20, android.graphics.Canvas r21) {
        /*
            r18 = this;
            r7 = r18
            r8 = r19
            r9 = r20
            r10 = r21
            android.graphics.Typeface r0 = r7.oJ(r9)
            if (r0 != 0) goto Lf
            return
        Lf:
            java.lang.String r1 = r8.oJ
            com.bytedance.adsdk.ZYk.jFA r2 = r7.eZI
            com.bytedance.adsdk.ZYk.QSm r2 = r2.jr()
            if (r2 == 0) goto L21
            java.lang.String r3 = r18.jFA()
            java.lang.String r1 = r2.ZYk(r3, r1)
        L21:
            android.graphics.Paint r2 = r7.kkU
            r2.setTypeface(r0)
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<java.lang.Float, java.lang.Float> r0 = r7.f11589tb
            if (r0 == 0) goto L35
            java.lang.Object r0 = r0.cFZ()
            java.lang.Float r0 = (java.lang.Float) r0
            float r0 = r0.floatValue()
            goto L37
        L35:
            float r0 = r8.tB
        L37:
            android.graphics.Paint r2 = r7.kkU
            float r3 = com.bytedance.adsdk.ZYk.ba.ba.oJ()
            float r3 = r3 * r0
            r2.setTextSize(r3)
            android.graphics.Paint r2 = r7.dLZ
            android.graphics.Paint r3 = r7.kkU
            android.graphics.Typeface r3 = r3.getTypeface()
            r2.setTypeface(r3)
            android.graphics.Paint r2 = r7.dLZ
            android.graphics.Paint r3 = r7.kkU
            float r3 = r3.getTextSize()
            r2.setTextSize(r3)
            int r2 = r8.Pfn
            float r2 = (float) r2
            r3 = 1092616192(0x41200000, float:10.0)
            float r2 = r2 / r3
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<java.lang.Float, java.lang.Float> r3 = r7.Xe
            if (r3 == 0) goto L6d
            java.lang.Object r3 = r3.cFZ()
            java.lang.Float r3 = (java.lang.Float) r3
            float r3 = r3.floatValue()
        L6b:
            float r2 = r2 + r3
            goto L7c
        L6d:
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<java.lang.Float, java.lang.Float> r3 = r7.f11585jr
            if (r3 == 0) goto L7c
            java.lang.Object r3 = r3.cFZ()
            java.lang.Float r3 = (java.lang.Float) r3
            float r3 = r3.floatValue()
            goto L6b
        L7c:
            float r3 = com.bytedance.adsdk.ZYk.ba.ba.oJ()
            float r2 = r2 * r3
            float r2 = r2 * r0
            r0 = 1120403456(0x42c80000, float:100.0)
            float r11 = r2 / r0
            java.util.List r12 = r7.oJ(r1)
            int r13 = r12.size()
            r14 = 0
            r0 = -1
            r15 = r0
            r6 = r14
        L92:
            if (r6 >= r13) goto Lde
            java.lang.Object r0 = r12.get(r6)
            r1 = r0
            java.lang.String r1 = (java.lang.String) r1
            android.graphics.PointF r0 = r8.PiB
            if (r0 != 0) goto La2
            r0 = 0
        La0:
            r2 = r0
            goto La5
        La2:
            float r0 = r0.x
            goto La0
        La5:
            r4 = 0
            r16 = 0
            r0 = r18
            r3 = r20
            r5 = r11
            r17 = r6
            r6 = r16
            java.util.List r0 = r0.oJ(r1, r2, r3, r4, r5, r6)
            r1 = r14
        Lb6:
            int r2 = r0.size()
            if (r1 >= r2) goto Ldb
            java.lang.Object r2 = r0.get(r1)
            com.bytedance.adsdk.ZYk.tB.tB.jFA$oJ r2 = (com.bytedance.adsdk.ZYk.tB.tB.jFA.oJ) r2
            int r15 = r15 + 1
            r21.save()
            float r3 = com.bytedance.adsdk.ZYk.tB.tB.jFA.oJ.oJ(r2)
            r7.oJ(r10, r8, r15, r3)
            java.lang.String r2 = com.bytedance.adsdk.ZYk.tB.tB.jFA.oJ.ZYk(r2)
            r7.oJ(r2, r8, r10, r11)
            r21.restore()
            int r1 = r1 + 1
            goto Lb6
        Ldb:
            int r6 = r17 + 1
            goto L92
        Lde:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ZYk.tB.tB.jFA.oJ(com.bytedance.adsdk.ZYk.tB.ZYk, com.bytedance.adsdk.ZYk.tB.tB, android.graphics.Canvas):void");
    }

    private void oJ(Canvas canvas, com.bytedance.adsdk.ZYk.tB.ZYk zYk, int i10, float f10) {
        PointF pointF = zYk.BTZ;
        PointF pointF2 = zYk.PiB;
        float oJ2 = com.bytedance.adsdk.ZYk.ba.ba.oJ();
        float f11 = (i10 * zYk.f11558ba * oJ2) + (pointF == null ? 0.0f : (zYk.f11558ba * 0.6f * oJ2) + pointF.y);
        float f12 = pointF == null ? 0.0f : pointF.x;
        float f13 = pointF2 != null ? pointF2.x : 0.0f;
        int i11 = AnonymousClass3.oJ[zYk.ex.ordinal()];
        if (i11 == 1) {
            canvas.translate(f12, f11);
        } else if (i11 == 2) {
            canvas.translate((f12 + f13) - f10, f11);
        } else if (i11 != 3) {
        } else {
            canvas.translate((f12 + (f13 / 2.0f)) - (f10 / 2.0f), f11);
        }
    }

    private Typeface oJ(com.bytedance.adsdk.ZYk.tB.tB tBVar) {
        Typeface cFZ;
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Typeface, Typeface> oJVar = this.HL;
        if (oJVar == null || (cFZ = oJVar.cFZ()) == null) {
            Typeface oJ2 = this.eZI.oJ(tBVar);
            return oJ2 != null ? oJ2 : tBVar.ex();
        }
        return cFZ;
    }

    private List<String> oJ(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll("\n", "\r").split("\r"));
    }

    private void oJ(String str, com.bytedance.adsdk.ZYk.tB.ZYk zYk, Canvas canvas, float f10) {
        int i10 = 0;
        while (i10 < str.length()) {
            String oJ2 = oJ(str, i10);
            i10 += oJ2.length();
            oJ(oJ2, zYk, canvas);
            canvas.translate(this.kkU.measureText(oJ2) + f10, 0.0f);
        }
    }

    private List<oJ> oJ(String str, float f10, com.bytedance.adsdk.ZYk.tB.tB tBVar, float f11, float f12, boolean z10) {
        float measureText;
        String substring;
        String trim;
        String substring2;
        String trim2;
        int i10 = 0;
        int i11 = 0;
        boolean z11 = false;
        int i12 = 0;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        for (int i13 = 0; i13 < str.length(); i13++) {
            char charAt = str.charAt(i13);
            if (z10) {
                com.bytedance.adsdk.ZYk.tB.ex exVar = this.f11587si.WcQ().get(com.bytedance.adsdk.ZYk.tB.ex.oJ(charAt, tBVar.oJ(), tBVar.tB()));
                if (exVar != null) {
                    measureText = ((float) exVar.ZYk()) * f11 * com.bytedance.adsdk.ZYk.ba.ba.oJ();
                }
            } else {
                measureText = this.kkU.measureText(str.substring(i13, i13 + 1));
            }
            float f16 = measureText + f12;
            if (charAt == ' ') {
                z11 = true;
                f15 = f16;
            } else if (z11) {
                z11 = false;
                i12 = i13;
                f14 = f16;
            } else {
                f14 += f16;
            }
            f13 += f16;
            if (f10 > 0.0f && f13 >= f10 && charAt != ' ') {
                i10++;
                oJ ZYk = ZYk(i10);
                if (i12 == i11) {
                    ZYk.oJ(str.substring(i11, i13).trim(), (f13 - f16) - ((trim2.length() - substring2.length()) * f15));
                    i11 = i13;
                    i12 = i11;
                    f13 = f16;
                    f14 = f13;
                } else {
                    ZYk.oJ(str.substring(i11, i12 - 1).trim(), ((f13 - f14) - ((substring.length() - trim.length()) * f15)) - f15);
                    f13 = f14;
                    i11 = i12;
                }
            }
        }
        if (f13 > 0.0f) {
            i10++;
            ZYk(i10).oJ(str.substring(i11), f13);
        }
        return this.WcQ.subList(0, i10);
    }

    private void oJ(com.bytedance.adsdk.ZYk.tB.ex exVar, float f10, com.bytedance.adsdk.ZYk.tB.ZYk zYk, Canvas canvas) {
        List<com.bytedance.adsdk.ZYk.oJ.oJ.ex> oJ2 = oJ(exVar);
        for (int i10 = 0; i10 < oJ2.size(); i10++) {
            Path ex = oJ2.get(i10).ex();
            ex.computeBounds(this.f11588so, false);
            this.jFA.reset();
            this.jFA.preTranslate(0.0f, (-zYk.cFZ) * com.bytedance.adsdk.ZYk.ba.ba.oJ());
            this.jFA.preScale(f10, f10);
            ex.transform(this.jFA);
            if (zYk.dLZ) {
                oJ(ex, this.kkU, canvas);
                oJ(ex, this.dLZ, canvas);
            } else {
                oJ(ex, this.dLZ, canvas);
                oJ(ex, this.kkU, canvas);
            }
        }
    }

    private void oJ(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    private void oJ(String str, com.bytedance.adsdk.ZYk.tB.ZYk zYk, Canvas canvas) {
        if (zYk.dLZ) {
            oJ(str, this.kkU, canvas);
            oJ(str, this.dLZ, canvas);
            return;
        }
        oJ(str, this.dLZ, canvas);
        oJ(str, this.kkU, canvas);
    }

    private void oJ(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    private List<com.bytedance.adsdk.ZYk.oJ.oJ.ex> oJ(com.bytedance.adsdk.ZYk.tB.ex exVar) {
        if (this.BTZ.containsKey(exVar)) {
            return this.BTZ.get(exVar);
        }
        List<eZI> oJ2 = exVar.oJ();
        int size = oJ2.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new com.bytedance.adsdk.ZYk.oJ.oJ.ex(this.eZI, this, oJ2.get(i10), this.f11587si));
        }
        this.BTZ.put(exVar, arrayList);
        return arrayList;
    }

    private String oJ(String str, int i10) {
        int codePointAt = str.codePointAt(i10);
        int charCount = Character.charCount(codePointAt) + i10;
        while (charCount < str.length()) {
            int codePointAt2 = str.codePointAt(charCount);
            if (!tB(codePointAt2)) {
                break;
            }
            charCount += Character.charCount(codePointAt2);
            codePointAt = (codePointAt * 31) + codePointAt2;
        }
        long j10 = codePointAt;
        if (this.PiB.indexOfKey(j10) >= 0) {
            return this.PiB.get(j10);
        }
        this.cFZ.setLength(0);
        while (i10 < charCount) {
            int codePointAt3 = str.codePointAt(i10);
            this.cFZ.appendCodePoint(codePointAt3);
            i10 += Character.charCount(codePointAt3);
        }
        String sb2 = this.cFZ.toString();
        this.PiB.put(j10, sb2);
        return sb2;
    }
}
