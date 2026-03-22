package com.bytedance.adsdk.ZYk.tB.tB;

import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.ZYk.oJ.ZYk.eZI;
import com.bytedance.adsdk.ZYk.oJ.ZYk.oJ;
import com.bytedance.adsdk.ZYk.tB.ZYk.WcQ;
import com.bytedance.adsdk.ZYk.tB.ZYk.so;
import com.bytedance.adsdk.ZYk.tB.tB.Pfn;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public abstract class oJ implements oJ.InterfaceC0139oJ, com.bytedance.adsdk.ZYk.oJ.oJ.Pfn {
    private final Paint BTZ;
    private boolean HL;
    private boolean IUZ;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.ex Id;
    private Paint Ln;
    private final Matrix LpP;
    float Pfn;
    private final Paint PiB;
    private final String QSm;
    private final RectF RZ;
    private final RectF Ry;
    private final Paint WcQ;
    private List<oJ> Xe;
    final com.bytedance.adsdk.ZYk.jFA ZYk;
    private final RectF awB;

    /* renamed from: ba  reason: collision with root package name */
    BlurMaskFilter f11591ba;
    private oJ cY;
    private final Paint dLZ;
    private final RectF eZI;
    final eZI ex;

    /* renamed from: jr  reason: collision with root package name */
    private oJ f11592jr;
    private float nke;
    final Matrix oJ;

    /* renamed from: oq  reason: collision with root package name */
    private com.bytedance.adsdk.ZYk.oJ.ZYk.so f11593oq;

    /* renamed from: si  reason: collision with root package name */
    private final RectF f11594si;
    final Pfn tB;

    /* renamed from: tb  reason: collision with root package name */
    private final List<com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, ?>> f11596tb;
    private final Path cFZ = new Path();

    /* renamed from: so  reason: collision with root package name */
    private final Matrix f11595so = new Matrix();
    private final Matrix jFA = new Matrix();
    private final Paint kkU = new com.bytedance.adsdk.ZYk.oJ.oJ(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.adsdk.ZYk.tB.tB.oJ$2  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] ZYk;
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[so.oJ.values().length];
            ZYk = iArr;
            try {
                iArr[so.oJ.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                ZYk[so.oJ.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                ZYk[so.oJ.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                ZYk[so.oJ.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[Pfn.oJ.values().length];
            oJ = iArr2;
            try {
                iArr2[Pfn.oJ.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                oJ[Pfn.oJ.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                oJ[Pfn.oJ.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                oJ[Pfn.oJ.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                oJ[Pfn.oJ.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                oJ[Pfn.oJ.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                oJ[Pfn.oJ.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public oJ(com.bytedance.adsdk.ZYk.jFA jfa, Pfn pfn) {
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        this.dLZ = new com.bytedance.adsdk.ZYk.oJ.oJ(1, mode);
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        this.BTZ = new com.bytedance.adsdk.ZYk.oJ.oJ(1, mode2);
        com.bytedance.adsdk.ZYk.oJ.oJ oJVar = new com.bytedance.adsdk.ZYk.oJ.oJ(1);
        this.PiB = oJVar;
        this.WcQ = new com.bytedance.adsdk.ZYk.oJ.oJ(PorterDuff.Mode.CLEAR);
        this.awB = new RectF();
        this.eZI = new RectF();
        this.f11594si = new RectF();
        this.Ry = new RectF();
        this.RZ = new RectF();
        this.oJ = new Matrix();
        this.f11596tb = new ArrayList();
        this.HL = true;
        this.Pfn = 0.0f;
        this.LpP = new Matrix();
        this.nke = 1.0f;
        this.ZYk = jfa;
        this.tB = pfn;
        this.QSm = pfn.ba() + "#draw";
        if (pfn.BTZ() == Pfn.ZYk.INVERT) {
            oJVar.setXfermode(new PorterDuffXfermode(mode2));
        } else {
            oJVar.setXfermode(new PorterDuffXfermode(mode));
        }
        eZI kkU = pfn.awB().kkU();
        this.ex = kkU;
        kkU.oJ((oJ.InterfaceC0139oJ) this);
        if (pfn.kkU() != null && !pfn.kkU().isEmpty()) {
            com.bytedance.adsdk.ZYk.oJ.ZYk.so soVar = new com.bytedance.adsdk.ZYk.oJ.ZYk.so(pfn.kkU());
            this.f11593oq = soVar;
            for (com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<WcQ, Path> oJVar2 : soVar.ZYk()) {
                oJVar2.oJ(this);
            }
            for (com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJVar3 : this.f11593oq.tB()) {
                oJ(oJVar3);
                oJVar3.oJ(this);
            }
        }
        BTZ();
    }

    private void BTZ() {
        boolean z10 = true;
        if (!this.tB.ex().isEmpty()) {
            com.bytedance.adsdk.ZYk.oJ.ZYk.ex exVar = new com.bytedance.adsdk.ZYk.oJ.ZYk.ex(this.tB.ex());
            this.Id = exVar;
            exVar.oJ();
            this.Id.oJ(new oJ.InterfaceC0139oJ() { // from class: com.bytedance.adsdk.ZYk.tB.tB.oJ.1
                @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.InterfaceC0139oJ
                public void oJ() {
                    boolean z11;
                    oJ oJVar = oJ.this;
                    if (oJVar.Id.jFA() == 1.0f) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    oJVar.ZYk(z11);
                }
            });
            if (this.Id.cFZ().floatValue() != 1.0f) {
                z10 = false;
            }
            ZYk(z10);
            oJ(this.Id);
            return;
        }
        ZYk(true);
    }

    private void PiB() {
        this.ZYk.invalidateSelf();
    }

    private boolean WcQ() {
        if (this.f11593oq.ZYk().isEmpty()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f11593oq.oJ().size(); i10++) {
            if (this.f11593oq.oJ().get(i10).oJ() != so.oJ.MASK_MODE_NONE) {
                return false;
            }
        }
        return true;
    }

    private void awB() {
        if (this.Xe != null) {
            return;
        }
        if (this.f11592jr == null) {
            this.Xe = Collections.emptyList();
            return;
        }
        this.Xe = new ArrayList();
        for (oJ oJVar = this.f11592jr; oJVar != null; oJVar = oJVar.f11592jr) {
            this.Xe.add(oJVar);
        }
    }

    public String Pfn() {
        Pfn pfn = this.tB;
        if (pfn != null) {
            return pfn.cFZ();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Pfn ZYk() {
        return this.tB;
    }

    public float ba() {
        return this.nke;
    }

    boolean cFZ() {
        com.bytedance.adsdk.ZYk.oJ.ZYk.so soVar = this.f11593oq;
        if (soVar != null && !soVar.ZYk().isEmpty()) {
            return true;
        }
        return false;
    }

    public com.bytedance.adsdk.ZYk.Pfn.kkU dLZ() {
        return this.tB.jr();
    }

    public Matrix ex() {
        return this.LpP;
    }

    public String jFA() {
        return this.tB.ba();
    }

    public com.bytedance.adsdk.ZYk.tB.ZYk.oJ kkU() {
        return this.tB.cY();
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.tB
    public void oJ(List<com.bytedance.adsdk.ZYk.oJ.oJ.tB> list, List<com.bytedance.adsdk.ZYk.oJ.oJ.tB> list2) {
    }

    public boolean so() {
        return this.HL;
    }

    private void ex(Canvas canvas, Matrix matrix, com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<WcQ, Path> oJVar, com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJVar2) {
        com.bytedance.adsdk.ZYk.ba.ba.oJ(canvas, this.awB, this.dLZ);
        this.cFZ.set(oJVar.cFZ());
        this.cFZ.transform(matrix);
        this.kkU.setAlpha((int) (oJVar2.cFZ().intValue() * 2.55f));
        canvas.drawPath(this.cFZ, this.kkU);
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ZYk(oJ oJVar) {
        this.f11592jr = oJVar;
    }

    boolean tB() {
        return this.cY != null;
    }

    private void Pfn(Canvas canvas, Matrix matrix, com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<WcQ, Path> oJVar, com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJVar2) {
        com.bytedance.adsdk.ZYk.ba.ba.oJ(canvas, this.awB, this.dLZ);
        canvas.drawRect(this.awB, this.kkU);
        this.BTZ.setAlpha((int) (oJVar2.cFZ().intValue() * 2.55f));
        this.cFZ.set(oJVar.cFZ());
        this.cFZ.transform(matrix);
        canvas.drawPath(this.cFZ, this.BTZ);
        canvas.restore();
    }

    private void ZYk(RectF rectF, Matrix matrix) {
        if (tB() && this.tB.BTZ() != Pfn.ZYk.INVERT) {
            this.Ry.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.cY.oJ(this.Ry, matrix, true);
            if (rectF.intersect(this.Ry)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static oJ oJ(ZYk zYk, Pfn pfn, com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.cFZ cfz, Context context) {
        switch (AnonymousClass2.oJ[pfn.dLZ().ordinal()]) {
            case 1:
                return new cFZ(jfa, pfn, zYk, cfz);
            case 2:
                return new ZYk(jfa, pfn, cfz.ZYk(pfn.cFZ()), cfz, context);
            case 3:
                return new so(jfa, pfn);
            case 4:
                if (oJ(jfa, pfn, "text:")) {
                    return new tB(jfa, pfn, context);
                }
                if (oJ(jfa, pfn, "videoview:")) {
                    return new kkU(jfa, pfn, context);
                }
                return new ex(jfa, pfn);
            case 5:
                return new ba(jfa, pfn);
            case 6:
                return new jFA(jfa, pfn);
            default:
                Objects.toString(pfn.dLZ());
                return null;
        }
    }

    private void tB(float f10) {
        this.ZYk.tb().tB().oJ(this.tB.ba(), f10);
    }

    private void tB(Canvas canvas, Matrix matrix, com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<WcQ, Path> oJVar, com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJVar2) {
        com.bytedance.adsdk.ZYk.ba.ba.oJ(canvas, this.awB, this.BTZ);
        canvas.drawRect(this.awB, this.kkU);
        this.BTZ.setAlpha((int) (oJVar2.cFZ().intValue() * 2.55f));
        this.cFZ.set(oJVar.cFZ());
        this.cFZ.transform(matrix);
        canvas.drawPath(this.cFZ, this.BTZ);
        canvas.restore();
    }

    public void ZYk(Canvas canvas, Matrix matrix, int i10) {
        oJ(i10);
    }

    private void ZYk(Canvas canvas, Matrix matrix, com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<WcQ, Path> oJVar, com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJVar2) {
        com.bytedance.adsdk.ZYk.ba.ba.oJ(canvas, this.awB, this.kkU);
        canvas.drawRect(this.awB, this.kkU);
        this.cFZ.set(oJVar.cFZ());
        this.cFZ.transform(matrix);
        this.kkU.setAlpha((int) (oJVar2.cFZ().intValue() * 2.55f));
        canvas.drawPath(this.cFZ, this.BTZ);
        canvas.restore();
    }

    private static boolean oJ(com.bytedance.adsdk.ZYk.jFA jfa, Pfn pfn, String str) {
        com.bytedance.adsdk.ZYk.kkU ba2;
        if (jfa == null || pfn == null || str == null || (ba2 = jfa.ba(pfn.cFZ())) == null) {
            return false;
        }
        return str.equals(ba2.kkU());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(boolean z10) {
        if (z10 != this.HL) {
            this.HL = z10;
            PiB();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(boolean z10) {
        if (z10 && this.Ln == null) {
            this.Ln = new com.bytedance.adsdk.ZYk.oJ.oJ();
        }
        this.IUZ = z10;
    }

    public BlurMaskFilter ZYk(float f10) {
        if (this.Pfn == f10) {
            return this.f11591ba;
        }
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f10 / 2.0f, BlurMaskFilter.Blur.NORMAL);
        this.f11591ba = blurMaskFilter;
        this.Pfn = f10;
        return blurMaskFilter;
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.InterfaceC0139oJ
    public void oJ() {
        PiB();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(oJ oJVar) {
        this.cY = oJVar;
    }

    public void oJ(com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, ?> oJVar) {
        if (oJVar == null) {
            return;
        }
        this.f11596tb.add(oJVar);
    }

    public void oJ(RectF rectF, Matrix matrix, boolean z10) {
        this.awB.set(0.0f, 0.0f, 0.0f, 0.0f);
        awB();
        this.oJ.set(matrix);
        if (z10) {
            List<oJ> list = this.Xe;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.oJ.preConcat(this.Xe.get(size).ex.ex());
                }
            } else {
                oJ oJVar = this.f11592jr;
                if (oJVar != null) {
                    this.oJ.preConcat(oJVar.ex.ex());
                }
            }
        }
        this.oJ.preConcat(this.ex.ex());
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(Canvas canvas, Matrix matrix, int i10) {
        Paint paint;
        Integer cFZ;
        com.bytedance.adsdk.ZYk.Pfn.oJ(this.QSm);
        if (this.HL && !this.tB.Id()) {
            awB();
            com.bytedance.adsdk.ZYk.Pfn.oJ("Layer#parentMatrix");
            this.LpP.set(matrix);
            this.f11595so.reset();
            this.f11595so.set(matrix);
            for (int size = this.Xe.size() - 1; size >= 0; size--) {
                this.f11595so.preConcat(this.Xe.get(size).ex.ex());
            }
            com.bytedance.adsdk.ZYk.Pfn.ZYk("Layer#parentMatrix");
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Integer> oJ = this.ex.oJ();
            int intValue = (int) ((((i10 / 255.0f) * ((oJ == null || (cFZ = oJ.cFZ()) == null) ? 100 : cFZ.intValue())) / 100.0f) * 255.0f);
            if (!tB() && !cFZ()) {
                this.f11595so.preConcat(this.ex.ex());
                com.bytedance.adsdk.ZYk.Pfn.oJ("Layer#drawLayer");
                ZYk(canvas, this.f11595so, intValue);
                com.bytedance.adsdk.ZYk.Pfn.ZYk("Layer#drawLayer");
                tB(com.bytedance.adsdk.ZYk.Pfn.ZYk(this.QSm));
                return;
            }
            com.bytedance.adsdk.ZYk.Pfn.oJ("Layer#computeBounds");
            oJ(this.awB, this.f11595so, false);
            ZYk(this.awB, matrix);
            this.f11595so.preConcat(this.ex.ex());
            oJ(this.awB, this.f11595so);
            this.eZI.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
            canvas.getMatrix(this.jFA);
            if (!this.jFA.isIdentity()) {
                Matrix matrix2 = this.jFA;
                matrix2.invert(matrix2);
                this.jFA.mapRect(this.eZI);
            }
            if (!this.awB.intersect(this.eZI)) {
                this.awB.set(0.0f, 0.0f, 0.0f, 0.0f);
            }
            com.bytedance.adsdk.ZYk.Pfn.ZYk("Layer#computeBounds");
            if (this.awB.width() >= 1.0f && this.awB.height() >= 1.0f) {
                com.bytedance.adsdk.ZYk.Pfn.oJ("Layer#saveLayer");
                this.kkU.setAlpha(255);
                com.bytedance.adsdk.ZYk.ba.ba.oJ(canvas, this.awB, this.kkU);
                com.bytedance.adsdk.ZYk.Pfn.ZYk("Layer#saveLayer");
                oJ(canvas);
                com.bytedance.adsdk.ZYk.Pfn.oJ("Layer#drawLayer");
                ZYk(canvas, this.f11595so, intValue);
                com.bytedance.adsdk.ZYk.Pfn.ZYk("Layer#drawLayer");
                if (cFZ()) {
                    oJ(canvas, this.f11595so);
                }
                if (tB()) {
                    com.bytedance.adsdk.ZYk.Pfn.oJ("Layer#drawMatte");
                    com.bytedance.adsdk.ZYk.Pfn.oJ("Layer#saveLayer");
                    com.bytedance.adsdk.ZYk.ba.ba.oJ(canvas, this.awB, this.PiB, 19);
                    com.bytedance.adsdk.ZYk.Pfn.ZYk("Layer#saveLayer");
                    oJ(canvas);
                    this.cY.oJ(canvas, matrix, intValue);
                    com.bytedance.adsdk.ZYk.Pfn.oJ("Layer#restoreLayer");
                    canvas.restore();
                    com.bytedance.adsdk.ZYk.Pfn.ZYk("Layer#restoreLayer");
                    com.bytedance.adsdk.ZYk.Pfn.ZYk("Layer#drawMatte");
                }
                com.bytedance.adsdk.ZYk.Pfn.oJ("Layer#restoreLayer");
                canvas.restore();
                com.bytedance.adsdk.ZYk.Pfn.ZYk("Layer#restoreLayer");
            }
            if (this.IUZ && (paint = this.Ln) != null) {
                paint.setStyle(Paint.Style.STROKE);
                this.Ln.setColor(-251901);
                this.Ln.setStrokeWidth(4.0f);
                canvas.drawRect(this.awB, this.Ln);
                this.Ln.setStyle(Paint.Style.FILL);
                this.Ln.setColor(1357638635);
                canvas.drawRect(this.awB, this.Ln);
            }
            tB(com.bytedance.adsdk.ZYk.Pfn.ZYk(this.QSm));
            return;
        }
        com.bytedance.adsdk.ZYk.Pfn.ZYk(this.QSm);
    }

    private void oJ(Canvas canvas) {
        com.bytedance.adsdk.ZYk.Pfn.oJ("Layer#clearLayer");
        RectF rectF = this.awB;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.WcQ);
        com.bytedance.adsdk.ZYk.Pfn.ZYk("Layer#clearLayer");
    }

    private void oJ(RectF rectF, Matrix matrix) {
        this.f11594si.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (cFZ()) {
            int size = this.f11593oq.oJ().size();
            for (int i10 = 0; i10 < size; i10++) {
                com.bytedance.adsdk.ZYk.tB.ZYk.so soVar = this.f11593oq.oJ().get(i10);
                Path cFZ = this.f11593oq.ZYk().get(i10).cFZ();
                if (cFZ != null) {
                    this.cFZ.set(cFZ);
                    this.cFZ.transform(matrix);
                    int i11 = AnonymousClass2.ZYk[soVar.oJ().ordinal()];
                    if (i11 == 1 || i11 == 2) {
                        return;
                    }
                    if ((i11 == 3 || i11 == 4) && soVar.ex()) {
                        return;
                    }
                    this.cFZ.computeBounds(this.RZ, false);
                    if (i10 == 0) {
                        this.f11594si.set(this.RZ);
                    } else {
                        RectF rectF2 = this.f11594si;
                        rectF2.set(Math.min(rectF2.left, this.RZ.left), Math.min(this.f11594si.top, this.RZ.top), Math.max(this.f11594si.right, this.RZ.right), Math.max(this.f11594si.bottom, this.RZ.bottom));
                    }
                }
            }
            if (rectF.intersect(this.f11594si)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void oJ(int i10) {
        this.nke = ((this.ex.oJ() != null ? this.ex.oJ().cFZ().intValue() : 100) / 100.0f) * (i10 / 255.0f);
    }

    private void oJ(Canvas canvas, Matrix matrix) {
        com.bytedance.adsdk.ZYk.Pfn.oJ("Layer#saveLayer");
        com.bytedance.adsdk.ZYk.ba.ba.oJ(canvas, this.awB, this.dLZ, 19);
        if (Build.VERSION.SDK_INT < 28) {
            oJ(canvas);
        }
        com.bytedance.adsdk.ZYk.Pfn.ZYk("Layer#saveLayer");
        for (int i10 = 0; i10 < this.f11593oq.oJ().size(); i10++) {
            com.bytedance.adsdk.ZYk.tB.ZYk.so soVar = this.f11593oq.oJ().get(i10);
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<WcQ, Path> oJVar = this.f11593oq.ZYk().get(i10);
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJVar2 = this.f11593oq.tB().get(i10);
            int i11 = AnonymousClass2.ZYk[soVar.oJ().ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    if (i10 == 0) {
                        this.kkU.setColor(ViewCompat.MEASURED_STATE_MASK);
                        this.kkU.setAlpha(255);
                        canvas.drawRect(this.awB, this.kkU);
                    }
                    if (soVar.ex()) {
                        tB(canvas, matrix, oJVar, oJVar2);
                    } else {
                        oJ(canvas, matrix, oJVar);
                    }
                } else if (i11 != 3) {
                    if (i11 == 4) {
                        if (soVar.ex()) {
                            ZYk(canvas, matrix, oJVar, oJVar2);
                        } else {
                            oJ(canvas, matrix, oJVar, oJVar2);
                        }
                    }
                } else if (soVar.ex()) {
                    Pfn(canvas, matrix, oJVar, oJVar2);
                } else {
                    ex(canvas, matrix, oJVar, oJVar2);
                }
            } else if (WcQ()) {
                this.kkU.setAlpha(255);
                canvas.drawRect(this.awB, this.kkU);
            }
        }
        com.bytedance.adsdk.ZYk.Pfn.oJ("Layer#restoreLayer");
        canvas.restore();
        com.bytedance.adsdk.ZYk.Pfn.ZYk("Layer#restoreLayer");
    }

    private void oJ(Canvas canvas, Matrix matrix, com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<WcQ, Path> oJVar, com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJVar2) {
        this.cFZ.set(oJVar.cFZ());
        this.cFZ.transform(matrix);
        this.kkU.setAlpha((int) (oJVar2.cFZ().intValue() * 2.55f));
        canvas.drawPath(this.cFZ, this.kkU);
    }

    private void oJ(Canvas canvas, Matrix matrix, com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<WcQ, Path> oJVar) {
        this.cFZ.set(oJVar.cFZ());
        this.cFZ.transform(matrix);
        canvas.drawPath(this.cFZ, this.BTZ);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(float f10) {
        this.ex.oJ(f10);
        if (this.f11593oq != null) {
            for (int i10 = 0; i10 < this.f11593oq.ZYk().size(); i10++) {
                this.f11593oq.ZYk().get(i10).oJ(f10);
            }
        }
        com.bytedance.adsdk.ZYk.oJ.ZYk.ex exVar = this.Id;
        if (exVar != null) {
            exVar.oJ(f10);
        }
        oJ oJVar = this.cY;
        if (oJVar != null) {
            oJVar.oJ(f10);
        }
        for (int i11 = 0; i11 < this.f11596tb.size(); i11++) {
            this.f11596tb.get(i11).oJ(f10);
        }
    }
}
