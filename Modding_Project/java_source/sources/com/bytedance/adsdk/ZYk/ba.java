package com.bytedance.adsdk.ZYk;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.bytedance.adsdk.ZYk.cFZ;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import org.json.JSONArray;
/* loaded from: classes3.dex */
public class ba extends ImageView {
    private static final dLZ<Throwable> ZYk = new dLZ<Throwable>() { // from class: com.bytedance.adsdk.ZYk.ba.1
        @Override // com.bytedance.adsdk.ZYk.dLZ
        public void oJ(Throwable th2) {
            com.bytedance.adsdk.ZYk.ba.ba.oJ(th2);
        }
    };
    private static final String oJ = "ba";
    private boolean BTZ;
    private JSONArray HL;
    private final Runnable IUZ;
    private int Id;
    private ZYk Ln;
    private oJ LpP;
    private dLZ<Throwable> Pfn;
    private final Set<ex> PiB;
    private long QSm;
    private Handler RZ;
    private int Ry;
    private final Set<Object> WcQ;
    private int Xe;
    private PiB<cFZ> awB;

    /* renamed from: ba  reason: collision with root package name */
    private int f11493ba;
    private final jFA cFZ;
    private int cY;
    private boolean dLZ;
    private cFZ eZI;
    private final dLZ<Throwable> ex;
    private int jFA;

    /* renamed from: jr  reason: collision with root package name */
    private int f11494jr;
    private boolean kkU;

    /* renamed from: oq  reason: collision with root package name */
    private com.bytedance.adsdk.ZYk.tB.tB.tB f11495oq;

    /* renamed from: si  reason: collision with root package name */
    private final Handler f11496si;

    /* renamed from: so  reason: collision with root package name */
    private String f11497so;
    private final dLZ<cFZ> tB;

    /* renamed from: tb  reason: collision with root package name */
    private String f11498tb;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.adsdk.ZYk.ba$5  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            oJ = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                oJ[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                oJ[ImageView.ScaleType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                oJ[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface ZYk {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum ex {
        SET_ANIMATION,
        SET_PROGRESS,
        SET_REPEAT_MODE,
        SET_REPEAT_COUNT,
        SET_IMAGE_ASSETS,
        PLAY_OPTION
    }

    /* loaded from: classes3.dex */
    public interface oJ {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class tB extends View.BaseSavedState {
        public static final Parcelable.Creator<tB> CREATOR = new Parcelable.Creator<tB>() { // from class: com.bytedance.adsdk.ZYk.ba.tB.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: oJ */
            public tB createFromParcel(Parcel parcel) {
                return new tB(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: oJ */
            public tB[] newArray(int i10) {
                return new tB[i10];
            }
        };
        String Pfn;
        int ZYk;

        /* renamed from: ba  reason: collision with root package name */
        int f11502ba;
        int cFZ;
        boolean ex;
        String oJ;
        float tB;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.oJ);
            parcel.writeFloat(this.tB);
            parcel.writeInt(this.ex ? 1 : 0);
            parcel.writeString(this.Pfn);
            parcel.writeInt(this.f11502ba);
            parcel.writeInt(this.cFZ);
        }

        tB(Parcelable parcelable) {
            super(parcelable);
        }

        private tB(Parcel parcel) {
            super(parcel);
            this.oJ = parcel.readString();
            this.tB = parcel.readFloat();
            this.ex = parcel.readInt() == 1;
            this.Pfn = parcel.readString();
            this.f11502ba = parcel.readInt();
            this.cFZ = parcel.readInt();
        }
    }

    public ba(Context context) {
        super(context);
        this.tB = new dLZ<cFZ>() { // from class: com.bytedance.adsdk.ZYk.ba.6
            @Override // com.bytedance.adsdk.ZYk.dLZ
            public void oJ(cFZ cfz) {
                ba.this.setComposition(cfz);
            }
        };
        this.ex = new dLZ<Throwable>() { // from class: com.bytedance.adsdk.ZYk.ba.7
            @Override // com.bytedance.adsdk.ZYk.dLZ
            public void oJ(Throwable th2) {
                dLZ dlz;
                if (ba.this.f11493ba != 0) {
                    ba baVar = ba.this;
                    baVar.setImageResource(baVar.f11493ba);
                }
                if (ba.this.Pfn != null) {
                    dlz = ba.this.Pfn;
                } else {
                    dlz = ba.ZYk;
                }
                dlz.oJ(th2);
            }
        };
        this.f11493ba = 0;
        this.cFZ = new jFA();
        this.kkU = false;
        this.dLZ = false;
        this.BTZ = true;
        this.PiB = new HashSet();
        this.WcQ = new HashSet();
        this.f11496si = new Handler(Looper.getMainLooper());
        this.Ry = 0;
        this.QSm = 0L;
        this.IUZ = new Runnable() { // from class: com.bytedance.adsdk.ZYk.ba.4
            @Override // java.lang.Runnable
            public void run() {
                Log.i("TMe", "--==--- timer callback, timer: " + ba.this.Id + ", " + ba.this.cY);
                if (ba.this.Id > ba.this.cY) {
                    ba.Ry(ba.this);
                    com.bytedance.adsdk.ZYk.tB.tB.tB tBVar = ba.this.f11495oq;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(ba.this.Id);
                    tBVar.oJ(sb2.toString());
                    ba.this.invalidate();
                    ba.this.awB();
                    return;
                }
                if (ba.this.f11494jr >= 0 && ba.this.Xe >= 0) {
                    Log.i("TMe", "--==--- timer end, play anim, startframe: " + ba.this.f11494jr);
                    ba.this.oJ();
                    ba baVar = ba.this;
                    baVar.setFrame(baVar.f11494jr);
                    ba.this.oJ(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.adsdk.ZYk.ba.4.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            if (ba.this.getFrame() >= ba.this.Xe - 1 && ba.this.getFrame() < ba.this.Xe + 2) {
                                Log.i("TMe", "--==--- timer end, play anim, endframe: " + ba.this.Xe);
                                ba.this.ZYk(this);
                                ba.this.ba();
                            }
                        }
                    });
                } else {
                    Log.i("TMe", "--==--- timer end, frame invalid: " + ba.this.f11494jr + "," + ba.this.Xe);
                }
                if ((!TextUtils.isEmpty(ba.this.f11498tb) || (ba.this.HL != null && ba.this.HL.length() > 0)) && ba.this.Ln != null) {
                    ZYk unused = ba.this.Ln;
                    String unused2 = ba.this.f11498tb;
                    JSONArray unused3 = ba.this.HL;
                }
            }
        };
        so();
    }

    static /* synthetic */ int Pfn(ba baVar) {
        int i10 = baVar.Ry;
        baVar.Ry = i10 + 1;
        return i10;
    }

    static /* synthetic */ int Ry(ba baVar) {
        int i10 = baVar.Id;
        baVar.Id = i10 - 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public cFZ.oJ getGlobalConfig() {
        cFZ tb2;
        jFA jfa = this.cFZ;
        if (jfa != null && (tb2 = jfa.tb()) != null) {
            return tb2.dLZ();
        }
        return null;
    }

    private cFZ.ZYk getGlobalEvent() {
        cFZ tb2;
        jFA jfa = this.cFZ;
        if (jfa != null && (tb2 = jfa.tb()) != null) {
            return tb2.kkU();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPlayDelayedELExpressTimeS() {
        cFZ tb2;
        jFA jfa = this.cFZ;
        if (jfa != null && (tb2 = jfa.tb()) != null) {
            return tb2.jFA();
        }
        return null;
    }

    private void setCompositionTask(PiB<cFZ> piB) {
        this.PiB.add(ex.SET_ANIMATION);
        si();
        PiB();
        this.awB = piB.oJ(this.tB).tB(this.ex);
    }

    public boolean getClipToCompositionBounds() {
        return this.cFZ.tB();
    }

    public cFZ getComposition() {
        return this.eZI;
    }

    public long getDuration() {
        cFZ cfz = this.eZI;
        if (cfz != null) {
            return cfz.Pfn();
        }
        return 0L;
    }

    public int getFrame() {
        return this.cFZ.RZ();
    }

    public String getImageAssetsFolder() {
        return this.cFZ.ex();
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.cFZ.Pfn();
    }

    public float getMaxFrame() {
        return this.cFZ.awB();
    }

    public float getMinFrame() {
        return this.cFZ.WcQ();
    }

    public Ry getPerformanceTracker() {
        return this.cFZ.so();
    }

    public float getProgress() {
        return this.cFZ.Ln();
    }

    public RZ getRenderMode() {
        return this.cFZ.ba();
    }

    public int getRepeatCount() {
        return this.cFZ.oq();
    }

    public int getRepeatMode() {
        return this.cFZ.QSm();
    }

    public float getSpeed() {
        return this.cFZ.eZI();
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if ((drawable instanceof jFA) && ((jFA) drawable).ba() == RZ.SOFTWARE) {
            this.cFZ.invalidateSelf();
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        jFA jfa = this.cFZ;
        if (drawable2 == jfa) {
            super.invalidateDrawable(jfa);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode() && this.dLZ) {
            this.cFZ.dLZ();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        eZI();
        Handler handler = this.RZ;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        tB();
        ZYk();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        int i10;
        if (!(parcelable instanceof tB)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        tB tBVar = (tB) parcelable;
        super.onRestoreInstanceState(tBVar.getSuperState());
        this.f11497so = tBVar.oJ;
        Set<ex> set = this.PiB;
        ex exVar = ex.SET_ANIMATION;
        if (!set.contains(exVar) && !TextUtils.isEmpty(this.f11497so)) {
            setAnimation(this.f11497so);
        }
        this.jFA = tBVar.ZYk;
        if (!this.PiB.contains(exVar) && (i10 = this.jFA) != 0) {
            setAnimation(i10);
        }
        if (!this.PiB.contains(ex.SET_PROGRESS)) {
            oJ(tBVar.tB, false);
        }
        if (!this.PiB.contains(ex.PLAY_OPTION) && tBVar.ex) {
            oJ();
        }
        if (!this.PiB.contains(ex.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(tBVar.Pfn);
        }
        if (!this.PiB.contains(ex.SET_REPEAT_MODE)) {
            setRepeatMode(tBVar.f11502ba);
        }
        if (!this.PiB.contains(ex.SET_REPEAT_COUNT)) {
            setRepeatCount(tBVar.cFZ);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        tB tBVar = new tB(super.onSaveInstanceState());
        tBVar.oJ = this.f11497so;
        tBVar.ZYk = this.jFA;
        tBVar.tB = this.cFZ.Ln();
        tBVar.ex = this.cFZ.cY();
        tBVar.Pfn = this.cFZ.ex();
        tBVar.f11502ba = this.cFZ.QSm();
        tBVar.cFZ = this.cFZ.oq();
        return tBVar;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int[][] iArr;
        com.bytedance.adsdk.ZYk.tB.tB.oJ oJ2 = oJ(motionEvent);
        if (oJ2 != null) {
            String jFA = oJ2.jFA();
            if (oJ2 instanceof com.bytedance.adsdk.ZYk.tB.tB.ZYk) {
                if (getGlobalConfig() != null && getGlobalConfig().oJ == 1) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }
            if (jFA != null && jFA.startsWith("CSJCLOSE")) {
                eZI();
            }
            kkU oJ3 = oJ(oJ2.Pfn());
            if (oJ3 != null && motionEvent.getAction() == 1) {
                oJ(jFA, oJ3.Pfn(), oJ3.cFZ());
                int[][] ba2 = oJ3.ba();
                if (ba2 != null) {
                    oJ(ba2);
                } else if (getGlobalEvent() != null && (iArr = getGlobalEvent().ZYk) != null) {
                    oJ(iArr);
                }
            }
            if (jFA != null && jFA.startsWith("CSJNTP")) {
                return false;
            }
            return super.onTouchEvent(motionEvent);
        } else if (getGlobalConfig() != null && getGlobalConfig().oJ == 1) {
            return false;
        } else {
            return super.onTouchEvent(motionEvent);
        }
    }

    public void setAnimation(int i10) {
        this.jFA = i10;
        this.f11497so = null;
        setCompositionTask(oJ(i10));
    }

    public void setAnimationFromJson(String str) {
        oJ(str, (String) null);
    }

    public void setAnimationFromUrl(String str) {
        PiB<cFZ> oJ2;
        if (this.BTZ) {
            oJ2 = so.oJ(getContext(), str);
        } else {
            oJ2 = so.oJ(getContext(), str, (String) null);
        }
        setCompositionTask(oJ2);
    }

    public void setApplyingOpacityToLayersEnabled(boolean z10) {
        this.cFZ.Pfn(z10);
    }

    public void setCacheComposition(boolean z10) {
        this.BTZ = z10;
    }

    public void setClipToCompositionBounds(boolean z10) {
        this.cFZ.oJ(z10);
    }

    public void setComposition(cFZ cfz) {
        if (Pfn.oJ) {
            Log.v(oJ, "Set Composition \n".concat(String.valueOf(cfz)));
        }
        this.cFZ.setCallback(this);
        this.eZI = cfz;
        this.kkU = true;
        boolean oJ2 = this.cFZ.oJ(cfz, getContext().getApplicationContext());
        this.kkU = false;
        if (getDrawable() == this.cFZ && !oJ2) {
            return;
        }
        if (!oJ2) {
            Ry();
        }
        onVisibilityChanged(this, getVisibility());
        requestLayout();
        Iterator<Object> it = this.WcQ.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    public void setDefaultFontFileExtension(String str) {
        this.cFZ.cFZ(str);
    }

    public void setFailureListener(dLZ<Throwable> dlz) {
        this.Pfn = dlz;
    }

    public void setFallbackResource(int i10) {
        this.f11493ba = i10;
    }

    public void setFontAssetDelegate(com.bytedance.adsdk.ZYk.tB tBVar) {
        this.cFZ.oJ(tBVar);
    }

    public void setFontMap(Map<String, Typeface> map) {
        this.cFZ.oJ(map);
    }

    public void setFrame(int i10) {
        this.cFZ.tB(i10);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z10) {
        this.cFZ.cFZ(z10);
    }

    public void setImageAssetDelegate(com.bytedance.adsdk.ZYk.ex exVar) {
        this.cFZ.oJ(exVar);
    }

    public void setImageAssetsFolder(String str) {
        this.cFZ.oJ(str);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        PiB();
        super.setImageBitmap(bitmap);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        PiB();
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i10) {
        PiB();
        super.setImageResource(i10);
    }

    public void setLottieAnimListener(oJ oJVar) {
        this.LpP = oJVar;
    }

    public void setLottieClicklistener(ZYk zYk) {
        this.Ln = zYk;
    }

    public void setMaintainOriginalImageBounds(boolean z10) {
        this.cFZ.ZYk(z10);
    }

    public void setMaxFrame(int i10) {
        this.cFZ.ZYk(i10);
    }

    public void setMaxProgress(float f10) {
        this.cFZ.ZYk(f10);
    }

    public void setMinAndMaxFrame(String str) {
        this.cFZ.ex(str);
    }

    public void setMinFrame(int i10) {
        this.cFZ.oJ(i10);
    }

    public void setMinProgress(float f10) {
        this.cFZ.oJ(f10);
    }

    public void setOutlineMasksAndMattes(boolean z10) {
        this.cFZ.ex(z10);
    }

    public void setPerformanceTrackingEnabled(boolean z10) {
        this.cFZ.tB(z10);
    }

    public void setProgress(float f10) {
        oJ(f10, true);
    }

    public void setRenderMode(RZ rz) {
        this.cFZ.oJ(rz);
    }

    public void setRepeatCount(int i10) {
        this.PiB.add(ex.SET_REPEAT_COUNT);
        this.cFZ.Pfn(i10);
    }

    public void setRepeatMode(int i10) {
        this.PiB.add(ex.SET_REPEAT_MODE);
        this.cFZ.ex(i10);
    }

    public void setSafeMode(boolean z10) {
        this.cFZ.ba(z10);
    }

    public void setSpeed(float f10) {
        this.cFZ.tB(f10);
    }

    public void setTextDelegate(QSm qSm) {
        this.cFZ.oJ(qSm);
    }

    public void setUseCompositionFrameRate(boolean z10) {
        this.cFZ.so(z10);
    }

    public void setView(View view) {
        this.cFZ.oJ(view);
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        jFA jfa;
        if (!this.kkU && drawable == (jfa = this.cFZ) && jfa.Id()) {
            ba();
        } else if (!this.kkU && (drawable instanceof jFA)) {
            jFA jfa2 = (jFA) drawable;
            if (jfa2.Id()) {
                jfa2.IUZ();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    private void BTZ() {
        oJ(new Animator.AnimatorListener() { // from class: com.bytedance.adsdk.ZYk.ba.11
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                QSm jr2;
                final long elapsedRealtime = SystemClock.elapsedRealtime() - ba.this.QSm;
                ba.this.ZYk(this);
                String playDelayedELExpressTimeS = ba.this.getPlayDelayedELExpressTimeS();
                if (!TextUtils.isEmpty(playDelayedELExpressTimeS) && (jr2 = ba.this.cFZ.jr()) != null) {
                    try {
                        int parseInt = Integer.parseInt(jr2.oJ(playDelayedELExpressTimeS)) * 1000;
                        if (ba.this.QSm > 0) {
                            long elapsedRealtime2 = (ba.this.QSm + parseInt) - SystemClock.elapsedRealtime();
                            Log.i("TMe", "--==-- lottie delayed time: ".concat(String.valueOf(elapsedRealtime2)));
                            if (elapsedRealtime2 > 0) {
                                ba.this.ba();
                                ba.this.setVisibility(8);
                                if (ba.this.RZ == null) {
                                    ba.this.RZ = new Handler(Looper.getMainLooper());
                                }
                                ba.this.RZ.removeCallbacksAndMessages(null);
                                ba.this.RZ.postDelayed(new Runnable() { // from class: com.bytedance.adsdk.ZYk.ba.11.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Log.i("TMe", "--==-- lottie real start play");
                                        ba.this.setVisibility(0);
                                        ba.this.oJ();
                                        ba.this.oJ(elapsedRealtime);
                                    }
                                }, elapsedRealtime2);
                                return;
                            }
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
                ba.this.oJ(elapsedRealtime);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }
        });
    }

    private void PiB() {
        PiB<cFZ> piB = this.awB;
        if (piB != null) {
            piB.ZYk(this.tB);
            this.awB.ex(this.ex);
        }
    }

    private void Ry() {
        boolean ex2 = ex();
        setImageDrawable(null);
        setImageDrawable(this.cFZ);
        if (ex2) {
            this.cFZ.PiB();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void WcQ() {
        jFA jfa;
        int i10;
        int i11;
        final int i12;
        if (this.eZI == null || (jfa = this.cFZ) == null) {
            return;
        }
        QSm jr2 = jfa.jr();
        cFZ.tB so2 = this.eZI.so();
        if (so2 == null || jr2 == null) {
            return;
        }
        final int i13 = so2.oJ;
        if (i13 < 0) {
            Log.i("TMe", "--==--- timer fail, ke is invalid: ".concat(String.valueOf(i13)));
            return;
        }
        int[] iArr = so2.Pfn;
        final int i14 = -1;
        if (iArr == null || iArr.length < 2) {
            i10 = -1;
            i11 = -1;
        } else {
            i11 = iArr[0];
            i10 = iArr[1];
        }
        String oJ2 = jr2.oJ(so2.tB);
        String oJ3 = jr2.oJ(so2.ex);
        try {
            i12 = Integer.parseInt(oJ2);
            try {
                i14 = Integer.parseInt(oJ3);
            } catch (NumberFormatException unused) {
            }
        } catch (NumberFormatException unused2) {
            i12 = -1;
        }
        Log.i("TMe", "--==--- prepare timer, startS: " + i12 + ", lenS: " + i14);
        if (!TextUtils.isEmpty(so2.ZYk)) {
            Log.i("TMe", "--==--- timer, id:" + so2.ZYk);
            com.bytedance.adsdk.ZYk.tB.tB.tB tB2 = tB(so2.ZYk);
            if (tB2 != null) {
                Log.i("TMe", "--==--- timer success");
                this.f11498tb = so2.f11509ba;
                this.HL = so2.cFZ;
                this.f11495oq = tB2;
                this.Id = i12;
                this.cY = i12 - i14;
                this.f11494jr = i11;
                this.Xe = i10;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.Id);
                tB2.oJ(sb2.toString());
                oJ(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.adsdk.ZYk.ba.3
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        if (ba.this.getFrame() >= i13 - 1 && ba.this.getFrame() < i13 + 2) {
                            Log.i("TMe", "--==--- enter timer point, frame: " + ba.this.getFrame());
                            ba.this.ZYk(this);
                            if (i12 >= 0 && i14 >= 0) {
                                Log.i("TMe", "--==--- enter timer callback, start timer");
                                ba.this.awB();
                            } else {
                                Log.i("TMe", "--==--- enter timer callback, NOT start timer");
                            }
                            ba.this.ba();
                        }
                    }
                });
                return;
            }
            return;
        }
        Log.i("TMe", "--==--- timer fail, id is invalid: " + so2.ZYk);
    }

    private void ZYk(RectF rectF, RectF rectF2) {
        float width = getWidth();
        float height = getHeight();
        float width2 = this.cFZ.getBounds().width();
        float height2 = this.cFZ.getBounds().height();
        if (width == 0.0f || height == 0.0f || width2 == 0.0f || height2 == 0.0f) {
            return;
        }
        Matrix matrix = new Matrix();
        int i10 = AnonymousClass5.oJ[getScaleType().ordinal()];
        if (i10 == 1) {
            oJ(matrix, width, height, width2, height2);
        } else if (i10 == 2) {
            ZYk(matrix, width, height, width2, height2);
        } else if (i10 == 3) {
            tB(matrix, width, height, width2, height2);
        } else if (i10 == 4) {
            ex(matrix, width, height, width2, height2);
        }
        matrix.mapRect(rectF, rectF2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void awB() {
        this.f11496si.postDelayed(this.IUZ, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dLZ() {
        final cFZ.oJ globalConfig = getGlobalConfig();
        if (globalConfig == null || globalConfig.Pfn <= 0) {
            return;
        }
        if (TextUtils.isEmpty(globalConfig.f11506ba) && globalConfig.cFZ == null) {
            return;
        }
        int i10 = globalConfig.Pfn;
        if (i10 > getMaxFrame()) {
            i10 = (int) getMaxFrame();
        }
        final float maxFrame = i10 / getMaxFrame();
        oJ(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.adsdk.ZYk.ba.10
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Object animatedValue = valueAnimator.getAnimatedValue();
                if ((animatedValue instanceof Float) && ((Float) animatedValue).floatValue() >= maxFrame) {
                    ba.this.ZYk(this);
                    if (ba.this.Ln != null) {
                        ZYk unused = ba.this.Ln;
                    }
                }
            }
        });
    }

    private void eZI() {
        this.f11496si.removeCallbacksAndMessages(null);
    }

    private void ex(Matrix matrix, float f10, float f11, float f12, float f13) {
        if (f12 >= f10 || f13 >= f11) {
            if (f12 / f13 >= f10 / f11) {
                float f14 = f10 / f12;
                matrix.preScale(f14, f14);
                matrix.postTranslate(0.0f, (f11 - (f13 * f14)) / 2.0f);
                return;
            }
            float f15 = f11 / f13;
            matrix.preScale(f15, f15);
            matrix.postTranslate((f10 - (f12 * f15)) / 2.0f, 0.0f);
        } else if (f12 / f13 >= f10 / f11) {
            float f16 = f10 / f12;
            matrix.preScale(f16, f16);
            matrix.postTranslate(0.0f, (f11 - (f13 * f16)) / 2.0f);
        } else {
            float f17 = f11 / f13;
            matrix.preScale(f17, f17);
            matrix.postTranslate((f10 - (f12 * f17)) / 2.0f, 0.0f);
        }
    }

    private void jFA() {
        oJ(new Animator.AnimatorListener() { // from class: com.bytedance.adsdk.ZYk.ba.8
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ba.this.ZYk(this);
                ba.this.WcQ();
                ba.this.dLZ();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }
        });
    }

    private void kkU() {
        oJ(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.adsdk.ZYk.ba.9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i10;
                Object animatedValue = valueAnimator.getAnimatedValue();
                if ((animatedValue instanceof Float) && ((Float) animatedValue).floatValue() >= 0.98f) {
                    ba.Pfn(ba.this);
                    cFZ.oJ globalConfig = ba.this.getGlobalConfig();
                    if (globalConfig != null && (i10 = globalConfig.ex) > 0 && i10 > ba.this.Ry) {
                        ba.this.WcQ();
                        ba.this.oJ();
                        ba.this.setProgress(0.0f);
                        return;
                    }
                    ba.this.ZYk(this);
                    if (ba.this.LpP != null) {
                        oJ unused = ba.this.LpP;
                    }
                }
            }
        });
    }

    private void si() {
        this.eZI = null;
        this.cFZ.kkU();
    }

    private void so() {
        setSaveEnabled(false);
        this.BTZ = true;
        setFallbackResource(0);
        setImageAssetsFolder("");
        oJ(0.0f, false);
        oJ(false, getContext().getApplicationContext());
        setIgnoreDisabledSystemAnimations(false);
        this.cFZ.oJ(Boolean.valueOf(com.bytedance.adsdk.ZYk.ba.ba.oJ(getContext()) != 0.0f));
        jFA();
        kkU();
        BTZ();
    }

    private void tB(Matrix matrix, float f10, float f11, float f12, float f13) {
        matrix.postTranslate((f10 - f12) / 2.0f, (f11 - f13) / 2.0f);
    }

    public void Pfn() {
        this.PiB.add(ex.PLAY_OPTION);
        this.cFZ.HL();
    }

    public void ba() {
        this.dLZ = false;
        this.cFZ.IUZ();
    }

    public void setMaxFrame(String str) {
        this.cFZ.tB(str);
    }

    public void setMinFrame(String str) {
        this.cFZ.ZYk(str);
    }

    private com.bytedance.adsdk.ZYk.tB.tB.tB tB(String str) {
        com.bytedance.adsdk.ZYk.tB.tB.ZYk ZYk2;
        jFA jfa = this.cFZ;
        if (jfa == null || (ZYk2 = jfa.ZYk()) == null) {
            return null;
        }
        return oJ(ZYk2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(long j10) {
        Map<String, Object> map;
        cFZ.oJ globalConfig = getGlobalConfig();
        if (this.LpP != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("duration", Long.valueOf(j10));
            if (globalConfig == null || (map = globalConfig.ZYk) == null || map.isEmpty()) {
                return;
            }
            hashMap.putAll(globalConfig.ZYk);
        }
    }

    public void setAnimation(String str) {
        this.f11497so = str;
        this.jFA = 0;
        setCompositionTask(ZYk(str));
    }

    public void tB() {
        this.cFZ.Ry();
    }

    private kkU oJ(String str) {
        jFA jfa;
        cFZ tb2;
        Map<String, kkU> eZI;
        if (TextUtils.isEmpty(str) || (jfa = this.cFZ) == null || (tb2 = jfa.tb()) == null || (eZI = tb2.eZI()) == null) {
            return null;
        }
        return eZI.get(str);
    }

    public boolean ex() {
        return this.cFZ.Id();
    }

    private void ZYk(Matrix matrix, float f10, float f11, float f12, float f13) {
        if (f12 < f10 && f13 < f11) {
            matrix.postTranslate((f10 - f12) / 2.0f, (f11 - f13) / 2.0f);
        } else if (f12 / f13 >= f10 / f11) {
            float f14 = f10 / f12;
            matrix.preScale(f14, f14);
            matrix.postTranslate(0.0f, (f11 - (f13 * f14)) / 2.0f);
        } else {
            float f15 = f11 / f13;
            matrix.preScale(f15, f15);
            matrix.postTranslate((f10 - (f12 * f15)) / 2.0f, 0.0f);
        }
    }

    private void oJ(int[][] iArr) {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        try {
            int[] iArr2 = iArr[0];
            int i10 = iArr2[0];
            final int i11 = iArr2[1];
            if (i10 < 0 || i11 < 0) {
                return;
            }
            Log.i("TMe", "--==--- inel enter, play anim, startframe: ".concat(String.valueOf(i10)));
            eZI();
            oJ();
            setFrame(i10);
            oJ(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.adsdk.ZYk.ba.12
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    if (ba.this.getFrame() >= i11 - 1 && ba.this.getFrame() < i11 + 2) {
                        Log.i("TMe", "--==--- inel enter, play anim end, endframe: " + i11 + ", realFrame: " + ba.this.getFrame());
                        ba.this.ZYk(this);
                        ba.this.ba();
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    private PiB<cFZ> ZYk(final String str) {
        if (isInEditMode()) {
            return new PiB<>(new Callable<BTZ<cFZ>>() { // from class: com.bytedance.adsdk.ZYk.ba.2
                @Override // java.util.concurrent.Callable
                /* renamed from: oJ */
                public BTZ<cFZ> call() throws Exception {
                    if (ba.this.BTZ) {
                        return so.tB(ba.this.getContext(), str);
                    }
                    return so.tB(ba.this.getContext(), str, null);
                }
            }, true);
        }
        return this.BTZ ? so.ZYk(getContext(), str) : so.ZYk(getContext(), str, (String) null);
    }

    public void ZYk(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.cFZ.ZYk(animatorUpdateListener);
    }

    private void oJ(String str, String str2, JSONArray jSONArray) {
        cFZ.ZYk globalEvent = getGlobalEvent();
        if (globalEvent != null && str != null) {
            if (TextUtils.isEmpty(str2) && !str.contains("CSJNO")) {
                str2 = globalEvent.oJ;
            }
            if ((jSONArray == null || jSONArray.length() <= 0) && !str.contains("CSJLELNO")) {
                jSONArray = globalEvent.tB;
            }
        }
        if (!TextUtils.isEmpty(str2) || jSONArray == null) {
            return;
        }
        jSONArray.length();
    }

    public void ZYk() {
        this.cFZ.si();
    }

    public void ZYk(Animator.AnimatorListener animatorListener) {
        this.cFZ.ZYk(animatorListener);
    }

    private com.bytedance.adsdk.ZYk.tB.tB.oJ oJ(MotionEvent motionEvent) {
        com.bytedance.adsdk.ZYk.tB.tB.ZYk ZYk2;
        jFA jfa = this.cFZ;
        if (jfa == null || (ZYk2 = jfa.ZYk()) == null) {
            return null;
        }
        return oJ(ZYk2, motionEvent);
    }

    private com.bytedance.adsdk.ZYk.tB.tB.oJ oJ(com.bytedance.adsdk.ZYk.tB.tB.ZYk zYk, MotionEvent motionEvent) {
        com.bytedance.adsdk.ZYk.tB.tB.oJ oJ2;
        for (com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar : zYk.BTZ()) {
            if (oJVar instanceof com.bytedance.adsdk.ZYk.tB.tB.ZYk) {
                if (oJVar.so() && oJVar.ba() > 0.0f) {
                    RectF rectF = new RectF();
                    oJVar.oJ(rectF, oJVar.ex(), true);
                    if (rectF.width() >= 3.0f && rectF.height() >= 3.0f && (oJ2 = oJ((com.bytedance.adsdk.ZYk.tB.tB.ZYk) oJVar, motionEvent)) != null) {
                        return oJ2;
                    }
                }
            } else if (oJVar.so() && oJVar.ba() > 0.0f) {
                RectF rectF2 = new RectF();
                jFA jfa = this.cFZ;
                if (jfa != null && jfa.cFZ()) {
                    oJVar.oJ(rectF2, oJVar.ex(), true);
                    RectF LpP = this.cFZ.LpP();
                    if (LpP != null) {
                        oJ(rectF2, LpP);
                    }
                } else {
                    RectF rectF3 = new RectF();
                    oJVar.oJ(rectF3, oJVar.ex(), true);
                    ZYk(rectF2, rectF3);
                }
                if (oJ(motionEvent, rectF2)) {
                    return oJVar;
                }
            }
        }
        return null;
    }

    private boolean oJ(MotionEvent motionEvent, RectF rectF) {
        if (motionEvent != null && rectF != null) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (x10 >= rectF.left && x10 <= rectF.right && y10 >= rectF.top && y10 <= rectF.bottom) {
                return true;
            }
        }
        return false;
    }

    private void oJ(RectF rectF, RectF rectF2) {
        float width = getWidth();
        float height = getHeight();
        float width2 = rectF2.width();
        float height2 = rectF2.height();
        if (width == 0.0f || height == 0.0f || width2 == 0.0f || height2 == 0.0f) {
            return;
        }
        Matrix matrix = new Matrix();
        int i10 = AnonymousClass5.oJ[getScaleType().ordinal()];
        if (i10 == 1) {
            oJ(matrix, width, height, width2, height2);
        } else if (i10 == 2) {
            ZYk(matrix, width, height, width2, height2);
        } else if (i10 == 3) {
            tB(matrix, width, height, width2, height2);
        } else if (i10 == 4) {
            ex(matrix, width, height, width2, height2);
        }
        matrix.mapRect(rectF);
    }

    private void oJ(Matrix matrix, float f10, float f11, float f12, float f13) {
        if (f12 / f13 >= f10 / f11) {
            float f14 = f11 / f13;
            matrix.preScale(f14, f14);
            matrix.postTranslate(-(((f12 * f14) - f10) / 2.0f), 0.0f);
            return;
        }
        float f15 = f10 / f12;
        matrix.preScale(f15, f15);
        matrix.postTranslate(0.0f, -(((f13 * f15) - f11) / 2.0f));
    }

    public void oJ(boolean z10, Context context) {
        this.cFZ.oJ(z10, context);
    }

    private PiB<cFZ> oJ(final int i10) {
        if (isInEditMode()) {
            return new PiB<>(new Callable<BTZ<cFZ>>() { // from class: com.bytedance.adsdk.ZYk.ba.13
                @Override // java.util.concurrent.Callable
                /* renamed from: oJ */
                public BTZ<cFZ> call() throws Exception {
                    if (ba.this.BTZ) {
                        return so.ZYk(ba.this.getContext(), i10);
                    }
                    return so.ZYk(ba.this.getContext(), i10, (String) null);
                }
            }, true);
        }
        return this.BTZ ? so.oJ(getContext(), i10) : so.oJ(getContext(), i10, (String) null);
    }

    public void oJ(String str, String str2) {
        oJ(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void oJ(InputStream inputStream, String str) {
        setCompositionTask(so.oJ(inputStream, str));
    }

    private com.bytedance.adsdk.ZYk.tB.tB.tB oJ(com.bytedance.adsdk.ZYk.tB.tB.ZYk zYk, String str) {
        for (com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar : zYk.BTZ()) {
            if (oJVar instanceof com.bytedance.adsdk.ZYk.tB.tB.ZYk) {
                com.bytedance.adsdk.ZYk.tB.tB.tB oJ2 = oJ((com.bytedance.adsdk.ZYk.tB.tB.ZYk) oJVar, str);
                if (oJ2 != null) {
                    return oJ2;
                }
            } else if (TextUtils.equals(str, oJVar.jFA()) && (oJVar instanceof com.bytedance.adsdk.ZYk.tB.tB.tB)) {
                return (com.bytedance.adsdk.ZYk.tB.tB.tB) oJVar;
            }
        }
        return null;
    }

    public void oJ() {
        if (this.QSm == 0) {
            this.QSm = SystemClock.elapsedRealtime();
        }
        this.PiB.add(ex.PLAY_OPTION);
        this.cFZ.dLZ();
    }

    public void oJ(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.cFZ.oJ(animatorUpdateListener);
    }

    public void oJ(Animator.AnimatorListener animatorListener) {
        this.cFZ.oJ(animatorListener);
    }

    public void oJ(boolean z10) {
        this.cFZ.Pfn(z10 ? -1 : 0);
    }

    public Bitmap oJ(String str, Bitmap bitmap) {
        return this.cFZ.oJ(str, bitmap);
    }

    private void oJ(float f10, boolean z10) {
        if (z10) {
            this.PiB.add(ex.SET_PROGRESS);
        }
        this.cFZ.ex(f10);
    }
}
