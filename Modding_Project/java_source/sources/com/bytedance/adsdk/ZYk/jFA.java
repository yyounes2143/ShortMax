package com.bytedance.adsdk.ZYk;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.bytedance.adsdk.ZYk.Pfn.Id;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3.dex */
public class jFA extends Drawable implements Animatable, Drawable.Callback {
    private com.bytedance.adsdk.ZYk.ZYk.ZYk BTZ;
    private final Matrix HL;
    private Matrix HyG;
    private Bitmap IUZ;
    private boolean Id;
    private Paint Jc;
    private Canvas Ln;
    private Rect LpP;
    private final com.bytedance.adsdk.ZYk.ba.tB Pfn;
    private String PiB;
    private com.bytedance.adsdk.ZYk.tB.tB.ZYk QSm;
    private boolean RZ;
    private boolean Rl;
    private boolean Ry;
    private Rect UN;
    private ex WcQ;
    private RectF XAo;
    private RZ Xe;
    tB ZYk;
    private com.bytedance.adsdk.ZYk.ZYk.oJ awB;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f11510ba;
    private boolean cFZ;
    private boolean cY;
    private View cdg;
    private final ValueAnimator.AnimatorUpdateListener dLZ;
    private Map<String, Typeface> eZI;
    private cFZ ex;
    private ZYk jFA;

    /* renamed from: jr  reason: collision with root package name */
    private boolean f11511jr;
    private final ArrayList<oJ> kkU;

    /* renamed from: mu  reason: collision with root package name */
    private Rect f11512mu;
    private RectF nke;
    String oJ;
    private RectF ofl;

    /* renamed from: oq  reason: collision with root package name */
    private int f11513oq;

    /* renamed from: si  reason: collision with root package name */
    private boolean f11514si;

    /* renamed from: so  reason: collision with root package name */
    private boolean f11515so;
    QSm tB;

    /* renamed from: tb  reason: collision with root package name */
    private boolean f11516tb;

    /* renamed from: wd  reason: collision with root package name */
    private Matrix f11517wd;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum ZYk {
        NONE,
        PLAY,
        RESUME
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ(cFZ cfz);
    }

    public jFA() {
        com.bytedance.adsdk.ZYk.ba.tB tBVar = new com.bytedance.adsdk.ZYk.ba.tB();
        this.Pfn = tBVar;
        this.f11510ba = true;
        this.cFZ = false;
        this.f11515so = false;
        this.jFA = ZYk.NONE;
        this.kkU = new ArrayList<>();
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.adsdk.ZYk.jFA.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (jFA.this.QSm != null) {
                    jFA.this.QSm.oJ(jFA.this.Pfn.ba());
                }
            }
        };
        this.dLZ = animatorUpdateListener;
        this.Ry = false;
        this.RZ = true;
        this.f11513oq = 255;
        this.Xe = RZ.AUTOMATIC;
        this.f11516tb = false;
        this.HL = new Matrix();
        this.Rl = false;
        tBVar.addUpdateListener(animatorUpdateListener);
    }

    private boolean Jc() {
        if (!this.f11510ba && !this.cFZ) {
            return false;
        }
        return true;
    }

    private com.bytedance.adsdk.ZYk.ZYk.ZYk UN() {
        com.bytedance.adsdk.ZYk.ZYk.ZYk zYk = this.BTZ;
        if (zYk != null && !zYk.oJ(XAo())) {
            this.BTZ = null;
        }
        if (this.BTZ == null) {
            this.BTZ = new com.bytedance.adsdk.ZYk.ZYk.ZYk(getCallback(), this.PiB, this.WcQ, this.ex.eZI());
        }
        return this.BTZ;
    }

    private Context XAo() {
        Drawable.Callback callback = getCallback();
        if (callback == null || !(callback instanceof View)) {
            return null;
        }
        return ((View) callback).getContext();
    }

    private com.bytedance.adsdk.ZYk.ZYk.oJ mu() {
        if (getCallback() == null) {
            return null;
        }
        if (this.awB == null) {
            com.bytedance.adsdk.ZYk.ZYk.oJ oJVar = new com.bytedance.adsdk.ZYk.ZYk.oJ(getCallback(), this.ZYk);
            this.awB = oJVar;
            String str = this.oJ;
            if (str != null) {
                oJVar.oJ(str);
            }
        }
        return this.awB;
    }

    private void nke() {
        cFZ cfz = this.ex;
        if (cfz == null) {
            return;
        }
        this.f11516tb = this.Xe.oJ(Build.VERSION.SDK_INT, cfz.oJ(), cfz.ZYk());
    }

    private void ofl() {
        if (this.Ln != null) {
            return;
        }
        this.Ln = new Canvas();
        this.ofl = new RectF();
        this.f11517wd = new Matrix();
        this.HyG = new Matrix();
        this.LpP = new Rect();
        this.nke = new RectF();
        this.Jc = new com.bytedance.adsdk.ZYk.oJ.oJ();
        this.UN = new Rect();
        this.f11512mu = new Rect();
        this.XAo = new RectF();
    }

    private boolean wd() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View)) {
            return false;
        }
        ViewParent parent = ((View) callback).getParent();
        if (!(parent instanceof ViewGroup) || ((ViewGroup) parent).getClipChildren()) {
            return false;
        }
        return true;
    }

    public void BTZ() {
        this.kkU.clear();
        this.Pfn.BTZ();
        if (!isVisible()) {
            this.jFA = ZYk.NONE;
        }
    }

    public void HL() {
        this.kkU.clear();
        this.Pfn.cancel();
        if (!isVisible()) {
            this.jFA = ZYk.NONE;
        }
    }

    public void IUZ() {
        this.kkU.clear();
        this.Pfn.PiB();
        if (!isVisible()) {
            this.jFA = ZYk.NONE;
        }
    }

    public boolean Id() {
        com.bytedance.adsdk.ZYk.ba.tB tBVar = this.Pfn;
        if (tBVar == null) {
            return false;
        }
        return tBVar.isRunning();
    }

    public float Ln() {
        return this.Pfn.ba();
    }

    public RectF LpP() {
        return this.ofl;
    }

    public boolean Pfn() {
        return this.Ry;
    }

    public void PiB() {
        float awB;
        if (this.QSm == null) {
            this.kkU.add(new oJ() { // from class: com.bytedance.adsdk.ZYk.jFA.7
                @Override // com.bytedance.adsdk.ZYk.jFA.oJ
                public void oJ(cFZ cfz) {
                    jFA.this.PiB();
                }
            });
            return;
        }
        nke();
        if (Jc() || oq() == 0) {
            if (isVisible()) {
                this.Pfn.WcQ();
                this.jFA = ZYk.NONE;
            } else {
                this.jFA = ZYk.RESUME;
            }
        }
        if (!Jc()) {
            if (eZI() < 0.0f) {
                awB = WcQ();
            } else {
                awB = awB();
            }
            tB((int) awB);
            this.Pfn.BTZ();
            if (!isVisible()) {
                this.jFA = ZYk.NONE;
            }
        }
    }

    @SuppressLint({"WrongConstant"})
    public int QSm() {
        return this.Pfn.getRepeatMode();
    }

    public int RZ() {
        return (int) this.Pfn.cFZ();
    }

    public void Ry() {
        this.Pfn.removeAllListeners();
    }

    public float WcQ() {
        return this.Pfn.awB();
    }

    public boolean Xe() {
        if (this.eZI == null && this.tB == null && this.ex.WcQ().size() > 0) {
            return true;
        }
        return false;
    }

    public float awB() {
        return this.Pfn.eZI();
    }

    public RZ ba() {
        return this.f11516tb ? RZ.SOFTWARE : RZ.HARDWARE;
    }

    public boolean cFZ() {
        return this.f11516tb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean cY() {
        if (isVisible()) {
            return this.Pfn.isRunning();
        }
        ZYk zYk = this.jFA;
        if (zYk != ZYk.PLAY && zYk != ZYk.RESUME) {
            return false;
        }
        return true;
    }

    public void dLZ() {
        float awB;
        if (this.QSm == null) {
            this.kkU.add(new oJ() { // from class: com.bytedance.adsdk.ZYk.jFA.6
                @Override // com.bytedance.adsdk.ZYk.jFA.oJ
                public void oJ(cFZ cfz) {
                    jFA.this.dLZ();
                }
            });
            return;
        }
        nke();
        if (Jc() || oq() == 0) {
            if (isVisible()) {
                this.Pfn.dLZ();
                this.jFA = ZYk.NONE;
            } else {
                this.jFA = ZYk.PLAY;
            }
        }
        if (!Jc()) {
            if (eZI() < 0.0f) {
                awB = WcQ();
            } else {
                awB = awB();
            }
            tB((int) awB);
            this.Pfn.BTZ();
            if (!isVisible()) {
                this.jFA = ZYk.NONE;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Pfn.oJ("Drawable#draw");
        try {
            if (this.f11516tb) {
                oJ(canvas, this.QSm);
            } else {
                oJ(canvas);
            }
        } catch (Throwable unused) {
        }
        this.Rl = false;
        Pfn.ZYk("Drawable#draw");
    }

    public float eZI() {
        return this.Pfn.kkU();
    }

    public String ex() {
        return this.PiB;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f11513oq;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        cFZ cfz = this.ex;
        if (cfz == null) {
            return -1;
        }
        return cfz.ex().height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        cFZ cfz = this.ex;
        if (cfz == null) {
            return -1;
        }
        return cfz.ex().width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.Rl) {
            return;
        }
        this.Rl = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return Id();
    }

    public boolean jFA() {
        return this.f11511jr;
    }

    public QSm jr() {
        return this.tB;
    }

    public void kkU() {
        if (this.Pfn.isRunning()) {
            this.Pfn.cancel();
            if (!isVisible()) {
                this.jFA = ZYk.NONE;
            }
        }
        this.ex = null;
        this.QSm = null;
        this.BTZ = null;
        this.Pfn.so();
        invalidateSelf();
    }

    public int oq() {
        return this.Pfn.getRepeatCount();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f11513oq = i10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean isVisible = isVisible();
        boolean visible = super.setVisible(z10, z11);
        if (z10) {
            ZYk zYk = this.jFA;
            if (zYk == ZYk.PLAY) {
                dLZ();
            } else if (zYk == ZYk.RESUME) {
                PiB();
            }
        } else if (this.Pfn.isRunning()) {
            IUZ();
            this.jFA = ZYk.RESUME;
        } else if (isVisible) {
            this.jFA = ZYk.NONE;
        }
        return visible;
    }

    public void si() {
        this.Pfn.removeAllUpdateListeners();
        this.Pfn.addUpdateListener(this.dLZ);
    }

    public Ry so() {
        cFZ cfz = this.ex;
        if (cfz != null) {
            return cfz.tB();
        }
        return null;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        dLZ();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        BTZ();
    }

    public boolean tB() {
        return this.RZ;
    }

    public cFZ tb() {
        return this.ex;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public void Pfn(boolean z10) {
        this.f11511jr = z10;
    }

    public com.bytedance.adsdk.ZYk.tB.tB.ZYk ZYk() {
        return this.QSm;
    }

    public void ba(boolean z10) {
        this.f11515so = z10;
    }

    public void cFZ(boolean z10) {
        this.cFZ = z10;
    }

    public void ex(boolean z10) {
        if (this.cY == z10) {
            return;
        }
        this.cY = z10;
        com.bytedance.adsdk.ZYk.tB.tB.ZYk zYk = this.QSm;
        if (zYk != null) {
            zYk.oJ(z10);
        }
    }

    public void oJ(View view) {
        this.cdg = view;
    }

    public void tB(boolean z10) {
        this.Id = z10;
        cFZ cfz = this.ex;
        if (cfz != null) {
            cfz.ZYk(z10);
        }
    }

    public void Pfn(int i10) {
        this.Pfn.setRepeatCount(i10);
    }

    public void ZYk(boolean z10) {
        this.Ry = z10;
    }

    public kkU ba(String str) {
        cFZ cfz = this.ex;
        if (cfz == null) {
            return null;
        }
        return cfz.eZI().get(str);
    }

    public void cFZ(String str) {
        this.oJ = str;
        com.bytedance.adsdk.ZYk.ZYk.oJ mu2 = mu();
        if (mu2 != null) {
            mu2.oJ(str);
        }
    }

    public View oJ() {
        return this.cdg;
    }

    public void so(boolean z10) {
        this.Pfn.tB(z10);
    }

    public Bitmap Pfn(String str) {
        com.bytedance.adsdk.ZYk.ZYk.ZYk UN = UN();
        if (UN != null) {
            return UN.oJ(str);
        }
        return null;
    }

    public void ZYk(final int i10) {
        if (this.ex == null) {
            this.kkU.add(new oJ() { // from class: com.bytedance.adsdk.ZYk.jFA.10
                @Override // com.bytedance.adsdk.ZYk.jFA.oJ
                public void oJ(cFZ cfz) {
                    jFA.this.ZYk(i10);
                }
            });
        } else {
            this.Pfn.ZYk(i10 + 0.99f);
        }
    }

    public void oJ(boolean z10, Context context) {
        if (this.f11514si == z10) {
            return;
        }
        this.f11514si = z10;
        if (this.ex != null) {
            oJ(context);
        }
    }

    public void tB(final String str) {
        cFZ cfz = this.ex;
        if (cfz == null) {
            this.kkU.add(new oJ() { // from class: com.bytedance.adsdk.ZYk.jFA.13
                @Override // com.bytedance.adsdk.ZYk.jFA.oJ
                public void oJ(cFZ cfz2) {
                    jFA.this.tB(str);
                }
            });
            return;
        }
        com.bytedance.adsdk.ZYk.tB.ba tB = cfz.tB(str);
        if (tB != null) {
            ZYk((int) (tB.oJ + tB.ZYk));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void ex(final String str) {
        cFZ cfz = this.ex;
        if (cfz == null) {
            this.kkU.add(new oJ() { // from class: com.bytedance.adsdk.ZYk.jFA.2
                @Override // com.bytedance.adsdk.ZYk.jFA.oJ
                public void oJ(cFZ cfz2) {
                    jFA.this.ex(str);
                }
            });
            return;
        }
        com.bytedance.adsdk.ZYk.tB.ba tB = cfz.tB(str);
        if (tB != null) {
            int i10 = (int) tB.oJ;
            oJ(i10, ((int) tB.ZYk) + i10);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void ZYk(final float f10) {
        cFZ cfz = this.ex;
        if (cfz == null) {
            this.kkU.add(new oJ() { // from class: com.bytedance.adsdk.ZYk.jFA.11
                @Override // com.bytedance.adsdk.ZYk.jFA.oJ
                public void oJ(cFZ cfz2) {
                    jFA.this.ZYk(f10);
                }
            });
        } else {
            this.Pfn.ZYk(com.bytedance.adsdk.ZYk.ba.Pfn.oJ(cfz.ba(), this.ex.cFZ(), f10));
        }
    }

    public void oJ(boolean z10) {
        if (z10 != this.RZ) {
            this.RZ = z10;
            com.bytedance.adsdk.ZYk.tB.tB.ZYk zYk = this.QSm;
            if (zYk != null) {
                zYk.ZYk(z10);
            }
            invalidateSelf();
        }
    }

    public void ZYk(final String str) {
        cFZ cfz = this.ex;
        if (cfz == null) {
            this.kkU.add(new oJ() { // from class: com.bytedance.adsdk.ZYk.jFA.12
                @Override // com.bytedance.adsdk.ZYk.jFA.oJ
                public void oJ(cFZ cfz2) {
                    jFA.this.ZYk(str);
                }
            });
            return;
        }
        com.bytedance.adsdk.ZYk.tB.ba tB = cfz.tB(str);
        if (tB != null) {
            oJ((int) tB.oJ);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void tB(float f10) {
        this.Pfn.tB(f10);
    }

    public void tB(final int i10) {
        if (this.ex == null) {
            this.kkU.add(new oJ() { // from class: com.bytedance.adsdk.ZYk.jFA.4
                @Override // com.bytedance.adsdk.ZYk.jFA.oJ
                public void oJ(cFZ cfz) {
                    jFA.this.tB(i10);
                }
            });
        } else {
            this.Pfn.oJ(i10);
        }
    }

    public void ex(final float f10) {
        if (this.ex == null) {
            this.kkU.add(new oJ() { // from class: com.bytedance.adsdk.ZYk.jFA.5
                @Override // com.bytedance.adsdk.ZYk.jFA.oJ
                public void oJ(cFZ cfz) {
                    jFA.this.ex(f10);
                }
            });
            return;
        }
        Pfn.oJ("Drawable#setProgress");
        this.Pfn.oJ(this.ex.oJ(f10));
        Pfn.ZYk("Drawable#setProgress");
    }

    public void oJ(String str) {
        this.PiB = str;
    }

    public boolean oJ(cFZ cfz, Context context) {
        if (this.ex == cfz) {
            return false;
        }
        this.Rl = true;
        kkU();
        this.ex = cfz;
        oJ(context);
        this.Pfn.oJ(cfz);
        ex(this.Pfn.getAnimatedFraction());
        Iterator it = new ArrayList(this.kkU).iterator();
        while (it.hasNext()) {
            oJ oJVar = (oJ) it.next();
            if (oJVar != null) {
                oJVar.oJ(cfz);
            }
            it.remove();
        }
        this.kkU.clear();
        cfz.ZYk(this.Id);
        nke();
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ImageView imageView = (ImageView) callback;
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(this);
        }
        return true;
    }

    public void ZYk(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.Pfn.removeUpdateListener(animatorUpdateListener);
    }

    public void ZYk(Animator.AnimatorListener animatorListener) {
        this.Pfn.removeListener(animatorListener);
    }

    private void ZYk(int i10, int i11) {
        Bitmap bitmap = this.IUZ;
        if (bitmap != null && bitmap.getWidth() >= i10 && this.IUZ.getHeight() >= i11) {
            if (this.IUZ.getWidth() > i10 || this.IUZ.getHeight() > i11) {
                Bitmap createBitmap = Bitmap.createBitmap(this.IUZ, 0, 0, i10, i11);
                this.IUZ = createBitmap;
                this.Ln.setBitmap(createBitmap);
                this.Rl = true;
                return;
            }
            return;
        }
        Bitmap createBitmap2 = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
        this.IUZ = createBitmap2;
        this.Ln.setBitmap(createBitmap2);
        this.Rl = true;
    }

    public void ex(int i10) {
        this.Pfn.setRepeatMode(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public void oJ(RZ rz) {
        this.Xe = rz;
        nke();
    }

    private void oJ(Context context) {
        cFZ cfz = this.ex;
        if (cfz == null) {
            return;
        }
        com.bytedance.adsdk.ZYk.tB.tB.ZYk zYk = new com.bytedance.adsdk.ZYk.tB.tB.ZYk(this, Id.oJ(cfz), cfz.PiB(), cfz, context);
        this.QSm = zYk;
        if (this.cY) {
            zYk.oJ(true);
        }
        this.QSm.ZYk(this.RZ);
    }

    public void oJ(final int i10) {
        if (this.ex == null) {
            this.kkU.add(new oJ() { // from class: com.bytedance.adsdk.ZYk.jFA.8
                @Override // com.bytedance.adsdk.ZYk.jFA.oJ
                public void oJ(cFZ cfz) {
                    jFA.this.oJ(i10);
                }
            });
        } else {
            this.Pfn.oJ(i10);
        }
    }

    public void oJ(final float f10) {
        cFZ cfz = this.ex;
        if (cfz == null) {
            this.kkU.add(new oJ() { // from class: com.bytedance.adsdk.ZYk.jFA.9
                @Override // com.bytedance.adsdk.ZYk.jFA.oJ
                public void oJ(cFZ cfz2) {
                    jFA.this.oJ(f10);
                }
            });
        } else {
            oJ((int) com.bytedance.adsdk.ZYk.ba.Pfn.oJ(cfz.ba(), this.ex.cFZ(), f10));
        }
    }

    public void oJ(final int i10, final int i11) {
        if (this.ex == null) {
            this.kkU.add(new oJ() { // from class: com.bytedance.adsdk.ZYk.jFA.3
                @Override // com.bytedance.adsdk.ZYk.jFA.oJ
                public void oJ(cFZ cfz) {
                    jFA.this.oJ(i10, i11);
                }
            });
        } else {
            this.Pfn.oJ(i10, i11 + 0.99f);
        }
    }

    public void oJ(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.Pfn.addUpdateListener(animatorUpdateListener);
    }

    public void oJ(Animator.AnimatorListener animatorListener) {
        this.Pfn.addListener(animatorListener);
    }

    public void oJ(Boolean bool) {
        this.f11510ba = bool.booleanValue();
    }

    public void oJ(ex exVar) {
        this.WcQ = exVar;
        com.bytedance.adsdk.ZYk.ZYk.ZYk zYk = this.BTZ;
        if (zYk != null) {
            zYk.oJ(exVar);
        }
    }

    public void oJ(tB tBVar) {
        this.ZYk = tBVar;
        com.bytedance.adsdk.ZYk.ZYk.oJ oJVar = this.awB;
        if (oJVar != null) {
            oJVar.oJ(tBVar);
        }
    }

    public void oJ(Map<String, Typeface> map) {
        if (map == this.eZI) {
            return;
        }
        this.eZI = map;
        invalidateSelf();
    }

    public void oJ(QSm qSm) {
        this.tB = qSm;
    }

    public Bitmap oJ(String str, Bitmap bitmap) {
        com.bytedance.adsdk.ZYk.ZYk.ZYk UN = UN();
        if (UN == null) {
            return null;
        }
        Bitmap oJ2 = UN.oJ(str, bitmap);
        invalidateSelf();
        return oJ2;
    }

    public Typeface oJ(com.bytedance.adsdk.ZYk.tB.tB tBVar) {
        Map<String, Typeface> map = this.eZI;
        if (map != null) {
            String oJ2 = tBVar.oJ();
            if (map.containsKey(oJ2)) {
                return map.get(oJ2);
            }
            String ZYk2 = tBVar.ZYk();
            if (map.containsKey(ZYk2)) {
                return map.get(ZYk2);
            }
            String str = tBVar.oJ() + "-" + tBVar.tB();
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        com.bytedance.adsdk.ZYk.ZYk.oJ mu2 = mu();
        if (mu2 != null) {
            return mu2.oJ(tBVar);
        }
        return null;
    }

    private void oJ(Canvas canvas) {
        com.bytedance.adsdk.ZYk.tB.tB.ZYk zYk = this.QSm;
        cFZ cfz = this.ex;
        if (zYk == null || cfz == null) {
            return;
        }
        this.HL.reset();
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            this.HL.preScale(bounds.width() / cfz.ex().width(), bounds.height() / cfz.ex().height());
            this.HL.preTranslate(bounds.left, bounds.top);
        }
        zYk.oJ(canvas, this.HL, this.f11513oq);
    }

    private void oJ(Canvas canvas, com.bytedance.adsdk.ZYk.tB.tB.ZYk zYk) {
        if (this.ex == null || zYk == null) {
            return;
        }
        ofl();
        canvas.getMatrix(this.f11517wd);
        canvas.getClipBounds(this.LpP);
        oJ(this.LpP, this.nke);
        this.f11517wd.mapRect(this.nke);
        oJ(this.nke, this.LpP);
        if (this.RZ) {
            this.ofl.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        } else {
            zYk.oJ(this.ofl, (Matrix) null, false);
        }
        this.f11517wd.mapRect(this.ofl);
        Rect bounds = getBounds();
        float width = bounds.width() / getIntrinsicWidth();
        float height = bounds.height() / getIntrinsicHeight();
        oJ(this.ofl, width, height);
        if (!wd()) {
            RectF rectF = this.ofl;
            Rect rect = this.LpP;
            rectF.intersect(rect.left, rect.top, rect.right, rect.bottom);
        }
        int ceil = (int) Math.ceil(this.ofl.width());
        int ceil2 = (int) Math.ceil(this.ofl.height());
        if (ceil == 0 || ceil2 == 0) {
            return;
        }
        ZYk(ceil, ceil2);
        if (this.Rl) {
            this.HL.set(this.f11517wd);
            this.HL.preScale(width, height);
            Matrix matrix = this.HL;
            RectF rectF2 = this.ofl;
            matrix.postTranslate(-rectF2.left, -rectF2.top);
            this.IUZ.eraseColor(0);
            zYk.oJ(this.Ln, this.HL, this.f11513oq);
            this.f11517wd.invert(this.HyG);
            this.HyG.mapRect(this.XAo, this.ofl);
            oJ(this.XAo, this.f11512mu);
        }
        this.UN.set(0, 0, ceil, ceil2);
        canvas.drawBitmap(this.IUZ, this.UN, this.f11512mu, this.Jc);
    }

    private void oJ(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    private void oJ(Rect rect, RectF rectF) {
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    private void oJ(RectF rectF, float f10, float f11) {
        rectF.set(rectF.left * f10, rectF.top * f11, rectF.right * f10, rectF.bottom * f11);
    }
}
