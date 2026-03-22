package com.bytedance.sdk.openadsdk.core.model;

import ai.turbolink.sdk.campaign.b;
import ai.turbolink.sdk.campaign.c;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.http.SslError;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity;
import com.bytedance.sdk.openadsdk.core.ofl;
import com.bytedance.sdk.openadsdk.ex.tB;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class QSm implements Handler.Callback {
    tB.oJ BTZ;
    private AtomicBoolean Dex;
    private ImageView HL;
    private boolean HyG;
    private View IUZ;
    private com.bytedance.sdk.openadsdk.core.UN Id;
    private String Jc;
    private com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn Jm;
    private com.bytedance.sdk.openadsdk.common.ex LS;
    private long Ln;
    private com.bytedance.sdk.openadsdk.core.Pfn.so MoK;
    private com.bytedance.sdk.openadsdk.core.Pfn.ex NO;
    View Pfn;
    com.bytedance.sdk.openadsdk.core.ZYk.oJ PiB;
    private com.bytedance.sdk.openadsdk.core.widget.si QSm;
    private String Qu;
    private TextView RZ;
    private boolean Rl;
    private TextView Ry;
    private LinearLayout.LayoutParams TA;
    private final com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk UN;
    com.bytedance.sdk.openadsdk.core.ZYk.ZYk WcQ;
    private int XAo;
    private com.bytedance.sdk.openadsdk.common.BTZ Xe;
    FrameLayout ZYk;
    private Handler awB;

    /* renamed from: ba  reason: collision with root package name */
    RelativeLayout f13191ba;
    final cY cFZ;
    private com.bytedance.sdk.component.jFA.ba cY;
    ObjectAnimator dLZ;
    private View eZI;
    FrameLayout ex;
    private com.bytedance.sdk.openadsdk.core.so.QSm jB;
    ObjectAnimator jFA;
    private ZYk jXJ;

    /* renamed from: jr  reason: collision with root package name */
    private FrameLayout f13192jr;
    ValueAnimator kkU;

    /* renamed from: mu  reason: collision with root package name */
    private final View f13193mu;
    private int mwH;
    private ILoader nQI;
    private final Activity nke;
    private com.bytedance.sdk.openadsdk.core.widget.si oIC;
    ImageView oJ;
    private int oTd;
    private com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba ofl;

    /* renamed from: oq  reason: collision with root package name */
    private TextView f13194oq;

    /* renamed from: si  reason: collision with root package name */
    private View f13195si;

    /* renamed from: so  reason: collision with root package name */
    FrameLayout f13196so;
    TextView tB;

    /* renamed from: tb  reason: collision with root package name */
    private View f13197tb;
    private ValueAnimator uvK;

    /* renamed from: wd  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.ex.BTZ f13198wd;
    private FrameLayout yz;
    private final AtomicBoolean LpP = new AtomicBoolean(false);
    private final AtomicBoolean cdg = new AtomicBoolean(false);
    private volatile int bgF = 0;
    private volatile int Yg = 0;
    private volatile int lY = 0;
    private float sH = -1.0f;
    private final AtomicBoolean UK = new AtomicBoolean(false);
    private long VSB = -1;
    private final AtomicBoolean UF = new AtomicBoolean(false);

    /* loaded from: classes3.dex */
    public static class ZYk implements com.bytedance.sdk.openadsdk.ex.dLZ {
        private final cY ZYk;
        private final WeakReference<QSm> ex;
        private final int oJ;
        private final String tB;

        public ZYk(int i10, cY cYVar, String str, QSm qSm) {
            this.oJ = i10;
            this.ZYk = cYVar;
            this.tB = str;
            this.ex = new WeakReference<>(qSm);
        }

        @Override // com.bytedance.sdk.openadsdk.ex.dLZ
        public void oJ(int i10) {
            QSm qSm = this.ex.get();
            if (qSm != null) {
                tB.oJ.oJ(this.oJ, qSm.lY, qSm.Yg, qSm.bgF - qSm.Yg, this.ZYk, this.tB, i10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ implements com.bytedance.sdk.component.Pfn.so {
        @Override // com.bytedance.sdk.component.Pfn.so
        public Bitmap oJ(Bitmap bitmap) {
            return com.bytedance.sdk.component.adexpress.ex.oJ.oJ(com.bytedance.sdk.openadsdk.core.si.oJ(), bitmap, 25);
        }
    }

    public QSm(Activity activity, final cY cYVar, String str, FrameLayout frameLayout, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk, View view) {
        int i10;
        this.nke = activity;
        this.cFZ = cYVar;
        this.Jc = str;
        this.UN = zYk;
        this.f13193mu = view;
        this.XAo = HyG.oJ(str);
        if (cYVar != null) {
            this.Qu = cYVar.PQw();
        }
        if (!TextUtils.isEmpty(this.Qu)) {
            this.nQI = com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().ZYk();
            int oJ2 = com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().oJ(this.nQI, this.Qu);
            this.mwH = oJ2;
            if (oJ2 > 0) {
                i10 = 2;
            } else {
                i10 = 0;
            }
            this.oTd = i10;
        }
        boolean ex = ex(cYVar);
        boolean Pfn = Pfn(cYVar);
        boolean ZYk2 = ZYk(cYVar);
        if (ZYk2) {
            this.Jc = "landingpage_split_screen";
        } else if (ex) {
            this.Jc = "landingpage_direct";
        } else if (Pfn) {
            this.Jc = "aggregate_page";
        } else if (tB(cYVar)) {
            this.Jc = "landingpage_split_ceiling";
        }
        this.PiB = new com.bytedance.sdk.openadsdk.core.ZYk.oJ(com.bytedance.sdk.openadsdk.core.si.oJ(), cYVar, this.Jc, HyG.oJ(str));
        HashMap hashMap = new HashMap();
        hashMap.put("click_scence", 1);
        this.PiB.oJ(hashMap);
        View findViewById = activity.findViewById(16908290);
        this.PiB.oJ(findViewById);
        com.bytedance.sdk.openadsdk.core.ZYk.ZYk zYk2 = new com.bytedance.sdk.openadsdk.core.ZYk.ZYk(activity, cYVar, this.Jc, HyG.oJ(str), true) { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.1
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.ZYk
            public boolean oJ(BTZ btz, Map<String, Object> map) {
                if (QSm.so(cYVar) && QSm.this.Jm != null) {
                    QSm.this.Jm.oJ(btz);
                    QSm.this.Jm.oJ(map);
                    if (QSm.cFZ(QSm.this.cFZ) || QSm.this.Rl) {
                        return true;
                    }
                }
                return super.oJ(btz, map);
            }
        };
        this.WcQ = zYk2;
        zYk2.oJ(hashMap);
        this.WcQ.oJ(findViewById);
        this.f13196so = frameLayout;
        if (ZYk2 || ex || Pfn) {
            try {
                this.awB = new Handler(Looper.getMainLooper(), this);
            } catch (Exception e10) {
                Log.e("LandingPageModel", "LandingPageModel: ", e10);
                return;
            }
        }
        if (ex || Pfn) {
            Handler handler = this.awB;
            handler.sendMessage(handler.obtainMessage(100, 0, 0));
        }
    }

    static /* synthetic */ int BTZ(QSm qSm) {
        int i10 = qSm.bgF;
        qSm.bgF = i10 + 1;
        return i10;
    }

    static /* synthetic */ int WcQ(QSm qSm) {
        int i10 = qSm.Yg;
        qSm.Yg = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ZYk(int i10) {
        return i10 == 1 || i10 == 2 || i10 == 4 || i10 == 5;
    }

    static /* synthetic */ int awB(QSm qSm) {
        int i10 = qSm.lY;
        qSm.lY = i10 + 1;
        return i10;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        long j10;
        cY cYVar;
        cY cYVar2;
        int i10 = message.what;
        if (i10 == 100) {
            int i11 = message.arg1;
            if (ex(this.cFZ) && (cYVar2 = this.cFZ) != null && cYVar2.RZ() != null) {
                j10 = this.cFZ.RZ().ZYk();
            } else if (Pfn(this.cFZ) && (cYVar = this.cFZ) != null && cYVar.RZ() != null) {
                j10 = this.cFZ.RZ().ex();
            } else {
                j10 = 20;
            }
            tB.oJ oJVar = this.BTZ;
            if (oJVar != null) {
                oJVar.oJ(i11 * 1000, j10 * 1000);
            }
            int i12 = (i11 > j10 ? 1 : (i11 == j10 ? 0 : -1));
            if (i12 >= 0) {
                tB.oJ oJVar2 = this.BTZ;
                if (oJVar2 != null) {
                    oJVar2.oJ(j10 * 1000, 100);
                }
            } else if (i12 < 0 && this.awB != null) {
                Message obtain = Message.obtain();
                obtain.what = 100;
                obtain.arg1 = i11 + 1;
                this.awB.sendMessageDelayed(obtain, 1000L);
            }
        } else if (i10 == 101) {
            kkU();
        }
        return true;
    }

    private void BTZ() {
        com.bytedance.sdk.openadsdk.core.UN un2 = new com.bytedance.sdk.openadsdk.core.UN(this.nke);
        this.Id = un2;
        un2.oJ(this.UN);
        this.Id.ZYk(this.cY).oJ(com.bytedance.sdk.openadsdk.core.so.oJ.ZYk.oJ(this.cFZ)).tB(this.cFZ.edj()).ex(this.cFZ.pe()).oJ(this.cFZ).ZYk(Pfn(this.cFZ) ? this.XAo : -1).oJ(this.cFZ.oG()).ZYk(this.Jc).Pfn(this.cFZ.ZiK()).oJ(this.cY).oJ(new com.bytedance.sdk.openadsdk.core.widget.Pfn() { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.17
            @Override // com.bytedance.sdk.openadsdk.core.widget.Pfn
            public void oJ() {
                if (QSm.Pfn(QSm.this.cFZ) && (QSm.this.nke instanceof com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk)) {
                    ((com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk) QSm.this.nke).e_();
                } else if (QSm.this.Jm != null) {
                    QSm.this.Jm.tB();
                }
            }
        });
    }

    public static boolean Pfn(cY cYVar) {
        return cYVar != null && cYVar.LS() == 33;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void PiB() {
        if (this.LpP.get() || this.cdg.get()) {
            return;
        }
        this.LpP.set(true);
        long elapsedRealtime = this.VSB == -1 ? 0L : SystemClock.elapsedRealtime() - this.VSB;
        if (tB(this.cFZ)) {
            com.bytedance.sdk.openadsdk.ex.tB.tB(this.cFZ, this.Jc, elapsedRealtime);
        }
        com.bytedance.sdk.openadsdk.ex.tB.oJ(this.cFZ, this.Jc, System.currentTimeMillis() - this.Ln, true);
        WcQ();
    }

    private void QSm() {
        com.bytedance.sdk.component.jFA.ba baVar = this.cY;
        if (baVar == null || baVar.getWebView() == null) {
            return;
        }
        this.bgF = this.cY.oJ;
        this.Yg = this.cY.ZYk;
        this.lY = this.cY.tB;
        if (this.cY.ZYk()) {
            this.UN.eZI();
            this.Ln = System.currentTimeMillis();
        }
        if (this.cY.ex()) {
            PiB();
        }
        if (this.cY.tB()) {
            PiB();
            int oJ2 = HyG.oJ(this.cY.getWebView());
            ZYk zYk = this.jXJ;
            if (zYk != null) {
                zYk.oJ(oJ2 != 1 ? 0 : 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean RZ() {
        return cY.Pfn(this.cFZ);
    }

    private void Ry() {
        if (ex()) {
            this.f13197tb.setVisibility(0);
            ObjectAnimator duration = ObjectAnimator.ofFloat(this.HL, "translationY", 16.0f, 0.0f).setDuration(500L);
            this.jFA = duration;
            duration.setRepeatMode(2);
            this.jFA.setRepeatCount(-1);
            this.jFA.start();
            this.f13197tb.setClickable(true);
            this.f13197tb.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.5
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (!QSm.this.Rl) {
                        QSm.this.WcQ.onTouch(view, motionEvent);
                    }
                    if (motionEvent.getAction() != 3 && motionEvent.getAction() != 1) {
                        return false;
                    }
                    QSm.this.kkU = ObjectAnimator.ofFloat(this, "timeSlide", 0.0f, 1.0f);
                    QSm.this.kkU.setDuration(200L);
                    QSm.this.kkU.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.5.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) QSm.this.f13192jr.getLayoutParams();
                            layoutParams.weight = (float) ((((Float) valueAnimator.getAnimatedValue()).floatValue() * 2.07f) + 0.25d);
                            QSm.this.oJ((float) (0.800000011920929d - (((Float) valueAnimator.getAnimatedValue()).floatValue() * 0.5d)));
                            QSm.this.f13192jr.setLayoutParams(layoutParams);
                        }
                    });
                    if (QSm.this.WcQ.cFZ()) {
                        QSm.this.f13197tb.performClick();
                        QSm.this.Rl = true;
                    }
                    QSm.this.kkU.start();
                    QSm.this.f13197tb.setVisibility(8);
                    return true;
                }
            });
            this.f13197tb.setOnClickListener(this.WcQ);
        }
        if (!RZ()) {
            this.f13196so.setVisibility(8);
            this.ZYk.setVisibility(0);
            this.oJ.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.oJ.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    QSm qSm = QSm.this;
                    com.bytedance.sdk.openadsdk.ex.tB.ZYk(qSm.cFZ, qSm.Jc);
                }
            });
            cY cYVar = this.cFZ;
            if (cYVar != null && cYVar.yB() != null && this.cFZ.yB().size() > 0 && this.cFZ.yB().get(0) != null && !TextUtils.isEmpty(this.cFZ.yB().get(0).oJ())) {
                com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.cFZ.yB().get(0), this.oJ, this.cFZ, new com.bytedance.sdk.component.Pfn.eZI() { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.7
                    @Override // com.bytedance.sdk.component.Pfn.eZI
                    public void oJ(com.bytedance.sdk.component.Pfn.dLZ dlz) {
                        if (QSm.this.awB != null) {
                            QSm.this.awB.removeMessages(101);
                        }
                    }

                    @Override // com.bytedance.sdk.component.Pfn.eZI
                    public void oJ(int i10, String str, @Nullable Throwable th2) {
                        if (QSm.this.awB != null) {
                            QSm.this.awB.removeMessages(101);
                        }
                        QSm.this.kkU();
                    }
                });
            }
        }
        try {
            String oJ2 = this.cFZ.yB().get(0).oJ();
            com.bytedance.sdk.openadsdk.jFA.ex.oJ().oJ(oJ2).oJ(this.cFZ.yB().get(0).ZYk()).ZYk(this.cFZ.yB().get(0).tB()).Pfn(cdg.Pfn(com.bytedance.sdk.openadsdk.core.si.oJ())).ex(cdg.tB(com.bytedance.sdk.openadsdk.core.si.oJ())).tB(1).oJ(new oJ()).oJ(new com.bytedance.sdk.openadsdk.jFA.ZYk(this.cFZ, oJ2, new com.bytedance.sdk.component.Pfn.eZI() { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.8
                @Override // com.bytedance.sdk.component.Pfn.eZI
                public void oJ(int i10, String str, @Nullable Throwable th2) {
                }

                @Override // com.bytedance.sdk.component.Pfn.eZI
                public void oJ(com.bytedance.sdk.component.Pfn.dLZ dlz) {
                    Drawable drawable;
                    try {
                        Object ZYk2 = dlz.ZYk();
                        if (ZYk2 != null && dlz.tB() != null) {
                            if (ZYk2 instanceof Bitmap) {
                                drawable = new BitmapDrawable(com.bytedance.sdk.openadsdk.core.si.oJ().getResources(), (Bitmap) ZYk2);
                            } else if (ZYk2 instanceof Drawable) {
                                if (Build.VERSION.SDK_INT >= 28 && b.a(ZYk2)) {
                                    c.a(ZYk2).start();
                                }
                                drawable = (Drawable) ZYk2;
                            } else {
                                drawable = null;
                            }
                            if (!QSm.this.RZ()) {
                                QSm.this.ZYk.setBackground(drawable);
                                return;
                            }
                            QSm.this.ex.setBackground(drawable);
                            View awB = QSm.this.UN.awB();
                            if (awB == null || !(awB.getParent() instanceof View)) {
                                return;
                            }
                            ((View) awB.getParent()).setBackground(drawable);
                        }
                    } catch (Exception unused) {
                    }
                }
            }));
        } catch (Exception unused) {
        }
    }

    private void WcQ() {
        this.f13191ba.setVisibility(8);
        if (ex(this.cFZ) || Pfn(this.cFZ) || !ex() || tB(this.cFZ)) {
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "timeVisible", 0.0f, 1.0f);
        this.dLZ = ofFloat;
        ofFloat.setDuration(100L);
        this.dLZ.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.18
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) QSm.this.f13192jr.getLayoutParams();
                layoutParams.weight = (float) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 0.25d);
                QSm.this.oJ((float) (1.0d - (((Float) valueAnimator.getAnimatedValue()).floatValue() * 0.2d)));
                QSm.this.f13192jr.setLayoutParams(layoutParams);
            }
        });
        this.dLZ.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void awB() {
        LinearLayout.LayoutParams layoutParams;
        if (this.LpP.get()) {
            return;
        }
        eZI();
        this.cdg.set(true);
        this.UN.dLZ();
        com.bytedance.sdk.openadsdk.common.BTZ btz = this.Xe;
        if (btz != null) {
            btz.ZYk();
        }
        if (Pfn(this.cFZ)) {
            com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), this.cFZ, this.Jc, "show_agg_backup");
            View view = this.f13195si;
            if (view != null) {
                view.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f13195si.getLayoutParams();
                layoutParams2.addRule(13);
                layoutParams2.addRule(10, 0);
                this.f13195si.setLayoutParams(layoutParams2);
                RelativeLayout relativeLayout = this.f13191ba;
                if (relativeLayout != null) {
                    relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                        }
                    });
                    return;
                }
                return;
            }
            return;
        }
        this.eZI.setVisibility(0);
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.eZI.getLayoutParams();
        layoutParams3.addRule(13);
        layoutParams3.addRule(10, 0);
        this.eZI.setLayoutParams(layoutParams3);
        if (this.cFZ.Zjw() != null && !TextUtils.isEmpty(this.cFZ.Zjw().oJ())) {
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.cFZ.Zjw().oJ(), this.cFZ.Zjw().ZYk(), this.cFZ.Zjw().tB(), this.QSm, this.cFZ);
        }
        this.Ry.setText(this.cFZ.Qzd());
        this.RZ.setText(this.cFZ.Amz());
        if (this.f13194oq != null) {
            ZYk();
            this.f13194oq.setClickable(true);
            this.f13194oq.setOnClickListener(this.PiB);
            this.f13194oq.setOnTouchListener(this.PiB);
        }
        if (!tB(this.cFZ) || (layoutParams = this.TA) == null) {
            return;
        }
        if (layoutParams.weight < 30.0f) {
            tB(8);
        } else {
            tB(0);
        }
    }

    public static boolean ba(cY cYVar) {
        return ex(cYVar) && !jFA(cYVar);
    }

    public static boolean cFZ(cY cYVar) {
        return (cYVar == null || cYVar.HDW() == 1 || !so(cYVar)) ? false : true;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void dLZ() {
        com.bytedance.sdk.component.jFA.ba baVar = this.cY;
        if (baVar != null && baVar.getWebView() != null) {
            com.bytedance.sdk.openadsdk.core.widget.oJ.tB.oJ(com.bytedance.sdk.openadsdk.core.si.oJ()).oJ(false).ZYk(false).oJ(this.cY.getWebView());
            com.bytedance.sdk.component.jFA.ba baVar2 = this.cY;
            if (baVar2 != null && baVar2.getWebView() != null) {
                this.jXJ = new ZYk(this.mwH, this.cFZ, this.Jc, this);
                if (this.cY.l_() && (this.cY.getWebViewClient() instanceof com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn)) {
                    com.bytedance.sdk.openadsdk.ex.BTZ ZYk2 = ((com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn) this.cY.getWebViewClient()).ZYk();
                    this.f13198wd = ZYk2;
                    if (ZYk2 != null) {
                        ZYk2.oJ(this.jXJ);
                        this.f13198wd.ZYk(true);
                    }
                } else {
                    this.f13198wd = new com.bytedance.sdk.openadsdk.ex.BTZ(this.cFZ, this.cY.getWebView(), this.jXJ, this.oTd).ZYk(true);
                }
                this.f13198wd.oJ(this.Jc);
                com.bytedance.sdk.openadsdk.common.ex oJ2 = HyG.oJ(this.cFZ, this.cY, this.nke, this.Jc);
                this.LS = oJ2;
                if (oJ2 != null) {
                    oJ2.oJ(this.Jc);
                }
                HyG.oJ(this.cFZ, this.cY);
            }
            BTZ();
            if (this.cY.l_()) {
                QSm();
            }
            this.cY.setLandingPage(true);
            this.cY.setTag(this.Jc);
            this.cY.setMaterialMeta(this.cFZ.hW());
            com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn pfn = new com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn(com.bytedance.sdk.openadsdk.core.si.oJ(), this.Id, this.cFZ.edj(), this.LS, this.f13198wd, true) { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.12
                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    QSm.this.PiB();
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                    super.onPageStarted(webView, str, bitmap);
                    QSm.this.UN.eZI();
                    QSm.this.Ln = System.currentTimeMillis();
                    if (QSm.ZYk(QSm.this.cFZ) && QSm.this.awB != null && !cY.Pfn(QSm.this.cFZ)) {
                        QSm.this.awB.sendEmptyMessageDelayed(101, 2000L);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                public void onReceivedError(WebView webView, int i10, String str, String str2) {
                    boolean z10;
                    boolean z11;
                    super.onReceivedError(webView, i10, str, str2);
                    String ex = com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn.ex(str2);
                    boolean z12 = false;
                    if (this.cFZ != null) {
                        if (webView != null && str2 != null && str2.equals(webView.getUrl())) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        this.cFZ.oJ(webView, i10, str, str2, com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn.ex(str2), z11);
                    }
                    if (ex != null && ex.startsWith("image")) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (ex != null && ex.startsWith(TTVideoEngineInterface.FORMAT_TYPE_MP4)) {
                        z12 = true;
                    }
                    if (!z10 && !z12 && !QSm.this.LpP.get()) {
                        QSm.this.awB();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                    if (sslErrorHandler != null) {
                        QSm.this.awB();
                    }
                    super.onReceivedSslError(webView, sslErrorHandler, sslError);
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                    try {
                        if (TextUtils.isEmpty(QSm.this.Qu)) {
                            return super.shouldInterceptRequest(webView, str);
                        }
                        QSm.BTZ(QSm.this);
                        WebResourceResponseModel oJ3 = com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().oJ(QSm.this.nQI, QSm.this.Qu, str);
                        if (oJ3 != null && oJ3.getWebResourceResponse() != null) {
                            QSm.WcQ(QSm.this);
                            return oJ3.getWebResourceResponse();
                        }
                        if (oJ3 != null && oJ3.getMsg() == 2) {
                            QSm.awB(QSm.this);
                        }
                        return super.shouldInterceptRequest(webView, str);
                    } catch (Throwable th2) {
                        com.bytedance.sdk.component.utils.QSm.oJ("LandingPageModel", "shouldInterceptRequest url error", th2);
                        return super.shouldInterceptRequest(webView, str);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                    if (QSm.tB(QSm.this.cFZ) && HyG.oJ(webView) == 1) {
                        Intent intent = new Intent(QSm.this.nke, TTCeilingLandingPageActivity.class);
                        QSm.this.cFZ.Pfn(str);
                        intent.putExtra("meta_index", com.bytedance.sdk.openadsdk.core.IUZ.oJ().oJ(QSm.this.cFZ));
                        com.bytedance.sdk.component.utils.ZYk.oJ(this.Pfn, intent, null);
                        return true;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            };
            this.Jm = pfn;
            this.cY.setWebViewClient(pfn);
            this.Jm.oJ(this.cFZ);
            this.Jm.oJ(this.Jc);
            this.Jm.oJ(this.UN);
            this.cY.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.oJ.ex(this.Id, this.f13198wd, this.LS) { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.13
                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.ex, android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i10) {
                    super.onProgressChanged(webView, i10);
                    if (QSm.this.nke != null && !QSm.this.nke.isFinishing() && i10 == 100) {
                        QSm.this.PiB();
                    }
                    if (QSm.this.Xe != null) {
                        QSm.this.Xe.oJ(i10);
                    }
                }
            });
            if (this.ofl == null) {
                this.ofl = com.bytedance.sdk.openadsdk.RZ.oJ.oJ.cFZ.oJ(com.bytedance.sdk.openadsdk.core.si.oJ(), this.Jc);
            }
            this.cY.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.14
                @Override // android.webkit.DownloadListener
                public void onDownloadStart(String str, String str2, String str3, String str4, long j10) {
                    if (QSm.this.ofl != null) {
                        QSm.this.ofl.tB(QSm.this.cFZ);
                    }
                }
            });
            com.bytedance.sdk.component.jFA.ba baVar3 = this.cY;
            baVar3.setUserAgentString(com.bytedance.sdk.openadsdk.utils.RZ.oJ(baVar3.getWebView(), 7504));
            this.cY.setMixedContentMode(0);
            this.cY.getWebView().setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.15
                @Override // android.view.View.OnScrollChangeListener
                public void onScrollChange(View view, int i10, int i11, int i12, int i13) {
                    if (QSm.this.f13198wd != null) {
                        QSm.this.f13198wd.ZYk(i11);
                    }
                }
            });
            this.cY.getWebView().setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.16
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (QSm.this.jFA()) {
                        int action = motionEvent.getAction();
                        if (action != 0) {
                            if (action != 1) {
                                if (action == 2) {
                                    motionEvent.setAction(3);
                                }
                            } else {
                                if (cdg.oJ(QSm.this.sH, motionEvent.getY(), QSm.this.nke)) {
                                    QSm.this.oJ(5);
                                }
                            }
                        } else {
                            QSm.this.sH = motionEvent.getY();
                        }
                    }
                    if ((!QSm.this.Rl || QSm.so(QSm.this.cFZ)) && !QSm.Pfn(QSm.this.cFZ)) {
                        QSm.this.WcQ.onTouch(view, motionEvent);
                    }
                    if ((!QSm.this.Rl || QSm.so(QSm.this.cFZ)) && !QSm.Pfn(QSm.this.cFZ) && motionEvent.getAction() == 1 && QSm.this.WcQ.cFZ()) {
                        QSm.this.cY.getWebView().performClick();
                        QSm.this.Rl = true;
                    }
                    if (QSm.this.f13198wd != null) {
                        QSm.this.f13198wd.oJ(motionEvent);
                    }
                    if (QSm.this.LS != null) {
                        QSm.this.LS.oJ(motionEvent);
                        return false;
                    }
                    return false;
                }
            });
            this.cY.getWebView().setOnClickListener(this.WcQ);
            com.bytedance.sdk.openadsdk.ex.tB.oJ(this.cFZ, this.Jc, this.oTd);
            if (!this.cY.l_()) {
                com.bytedance.sdk.openadsdk.utils.oq.oJ(this.cY, this.cFZ.Oof());
            }
            this.HyG = true;
        }
        com.bytedance.sdk.component.jFA.ba baVar4 = this.cY;
        if (baVar4 == null || this.Xe == null || baVar4.tB()) {
            return;
        }
        this.Xe.oJ();
    }

    private void eZI() {
        if ((ex(this.cFZ) || Pfn(this.cFZ)) && (this.nke instanceof com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk)) {
            this.UN.eZI();
            this.UN.si();
        }
    }

    public static boolean jFA(cY cYVar) {
        return cYVar != null && cYVar.LS() == 19;
    }

    public static boolean kkU(cY cYVar) {
        return (cYVar == null || !com.bytedance.sdk.openadsdk.core.si.ex().RZ() || !cYVar.eXp() || ZYk(cYVar) || ex(cYVar) || Pfn(cYVar)) ? false : true;
    }

    private void si() {
        com.bytedance.sdk.openadsdk.common.dLZ loadingStyle;
        com.bytedance.sdk.openadsdk.common.BTZ btz = this.Xe;
        if (btz != null && (loadingStyle = btz.getLoadingStyle()) != null) {
            this.oIC = loadingStyle.ZYk();
            this.MoK = loadingStyle.tB();
        }
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = this.NO;
        if (exVar != null) {
            exVar.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (QSm.this.NO.getTag() != null) {
                        if (QSm.this.NO.getTag().equals(1)) {
                            QSm.this.oJ(3);
                        } else if (QSm.this.NO.getTag().equals(2)) {
                            QSm.this.oJ(4);
                        }
                    }
                }
            });
        }
    }

    public static boolean so(cY cYVar) {
        if (cYVar != null) {
            return cYVar.LS() == 19 || cYVar.LS() == 20;
        }
        return false;
    }

    public boolean ex() {
        return this.cFZ.Dc() == 15 || this.cFZ.Dc() == 16;
    }

    public void tB() {
        if (RZ()) {
            try {
                String kkU = this.cFZ.ib().kkU();
                com.bytedance.sdk.openadsdk.jFA.ex.oJ().oJ(kkU).oJ(this.cFZ.ib().tB()).ZYk(this.cFZ.ib().ZYk()).Pfn(cdg.Pfn(com.bytedance.sdk.openadsdk.core.si.oJ())).ex(cdg.tB(com.bytedance.sdk.openadsdk.core.si.oJ())).tB(2).oJ(new oJ()).oJ(new com.bytedance.sdk.openadsdk.jFA.ZYk(this.cFZ, kkU, new com.bytedance.sdk.component.Pfn.eZI() { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.4
                    @Override // com.bytedance.sdk.component.Pfn.eZI
                    public void oJ(int i10, String str, @Nullable Throwable th2) {
                    }

                    @Override // com.bytedance.sdk.component.Pfn.eZI
                    public void oJ(com.bytedance.sdk.component.Pfn.dLZ dlz) {
                        try {
                            Object ZYk2 = dlz.ZYk();
                            if (ZYk2 != null && dlz.tB() != null) {
                                BitmapDrawable bitmapDrawable = ZYk2 instanceof Bitmap ? new BitmapDrawable(com.bytedance.sdk.openadsdk.core.si.oJ().getResources(), (Bitmap) ZYk2) : null;
                                View awB = QSm.this.UN.awB();
                                if (bitmapDrawable == null || awB == null || !(awB.getParent() instanceof View)) {
                                    return;
                                }
                                ((View) awB.getParent()).setBackground(bitmapDrawable);
                            }
                        } catch (Throwable th2) {
                            com.bytedance.sdk.component.utils.QSm.tB("LandingPageModel", th2.getMessage());
                        }
                    }
                }));
            } catch (Exception unused) {
            }
        }
    }

    public void Pfn() {
        FrameLayout frameLayout = this.f13192jr;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
            View view = this.IUZ;
            if (view != null) {
                view.setVisibility(0);
            }
        }
    }

    public void ba() {
        com.bytedance.sdk.component.jFA.ba baVar;
        com.bytedance.sdk.openadsdk.ex.BTZ btz = this.f13198wd;
        if (btz != null && (baVar = this.cY) != null) {
            btz.oJ(baVar);
        }
        Handler handler = this.awB;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        ValueAnimator valueAnimator = this.uvK;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            this.uvK.cancel();
        }
        ValueAnimator valueAnimator2 = this.kkU;
        if (valueAnimator2 != null) {
            valueAnimator2.removeAllUpdateListeners();
            this.kkU.cancel();
        }
        ObjectAnimator objectAnimator = this.dLZ;
        if (objectAnimator != null) {
            objectAnimator.removeAllUpdateListeners();
            this.dLZ.cancel();
        }
        com.bytedance.sdk.openadsdk.common.BTZ btz2 = this.Xe;
        if (btz2 != null) {
            btz2.ZYk();
        }
        ObjectAnimator objectAnimator2 = this.jFA;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
        com.bytedance.sdk.component.jFA.ba baVar2 = this.cY;
        if (baVar2 != null) {
            ofl.oJ(baVar2.getWebView());
        }
        this.cY = null;
        com.bytedance.sdk.openadsdk.core.UN un2 = this.Id;
        if (un2 != null) {
            un2.BTZ();
        }
        com.bytedance.sdk.openadsdk.ex.BTZ btz3 = this.f13198wd;
        if (btz3 != null) {
            btz3.ex(true);
        }
        if (!TextUtils.isEmpty(this.Qu) && this.HyG) {
            tB.oJ.oJ(this.Yg, this.bgF, this.cFZ);
        }
        com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().oJ(this.nQI);
    }

    public boolean jFA() {
        AtomicBoolean atomicBoolean;
        return (!tB(this.cFZ) || (atomicBoolean = this.Dex) == null || atomicBoolean.get()) ? false : true;
    }

    public static boolean ex(cY cYVar) {
        if (cYVar == null) {
            return false;
        }
        if (jFA(cYVar)) {
            return true;
        }
        return cYVar.sQ() == 3 && cYVar.LS() == 5 && !Ln.ZYk(cYVar) && (cYVar.dzr() == 0.0f || cYVar.dzr() == 100.0f);
    }

    protected void ZYk() {
        cY cYVar = this.cFZ;
        if (cYVar == null || TextUtils.isEmpty(cYVar.ypD())) {
            return;
        }
        this.f13194oq.setText(this.cFZ.ypD());
    }

    public void cFZ() {
        com.bytedance.sdk.openadsdk.core.UN un2 = this.Id;
        if (un2 != null) {
            un2.dLZ();
        }
        com.bytedance.sdk.openadsdk.ex.BTZ btz = this.f13198wd;
        if (btz != null) {
            btz.cFZ();
        }
    }

    public void kkU() {
        if ("landingpage_split_screen".equals(this.Jc) && com.bytedance.sdk.openadsdk.oq.oJ.oJ("default_split_style", false) && this.UF.compareAndSet(false, true)) {
            com.bytedance.sdk.openadsdk.utils.ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.10
                @Override // java.lang.Runnable
                public void run() {
                    QSm.this.uvK = ValueAnimator.ofFloat(1.0f, 0.0f);
                    QSm.this.uvK.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.10.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            if (QSm.this.IUZ != null) {
                                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) QSm.this.IUZ.getLayoutParams();
                                layoutParams.weight = floatValue;
                                QSm.this.IUZ.setLayoutParams(layoutParams);
                            }
                        }
                    });
                    QSm.this.uvK.setDuration(500L);
                    QSm.this.uvK.start();
                    if (QSm.this.f13197tb != null) {
                        QSm.this.f13197tb.setVisibility(8);
                    }
                }
            });
        }
    }

    public void so() {
        com.bytedance.sdk.openadsdk.ex.BTZ btz = this.f13198wd;
        if (btz != null) {
            btz.so();
        }
    }

    public static boolean ZYk(cY cYVar) {
        return cYVar != null && cYVar.sQ() == 3 && cYVar.LS() == 6 && !Ln.ZYk(cYVar) && cYVar.Tt() == 1 && (cYVar.dzr() == 0.0f || cYVar.dzr() == 100.0f);
    }

    public void oJ(tB.oJ oJVar) {
        this.BTZ = oJVar;
    }

    public void oJ() {
        long oJ2;
        View view;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        com.bytedance.sdk.component.jFA.ba baVar = (com.bytedance.sdk.component.jFA.ba) this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.f13414oq);
        this.cY = baVar;
        if (baVar != null && !cY.oJ(this.cFZ)) {
            if (!this.cY.l_()) {
                this.cY.Pfn();
            }
        } else {
            cdg.oJ((View) this.cY, 8);
        }
        this.f13192jr = (FrameLayout) this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.QSm);
        this.Xe = (com.bytedance.sdk.openadsdk.common.BTZ) this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.Xe);
        this.f13197tb = this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.Id);
        this.HL = (ImageView) this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.cY);
        this.IUZ = this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.UN);
        this.ZYk = (FrameLayout) this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.Ry);
        this.oJ = (ImageView) this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.RZ);
        this.f13191ba = (RelativeLayout) this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.f13409jr);
        this.tB = (TextView) this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.Tvw);
        this.ex = (FrameLayout) this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.kkU);
        View findViewById = this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.f13419tb);
        this.eZI = findViewById;
        if (findViewById == null) {
            this.eZI = this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.XAo);
        }
        this.f13195si = this.nke.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.HL);
        this.Ry = (TextView) this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.Ln);
        this.RZ = (TextView) this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.LpP);
        this.QSm = (com.bytedance.sdk.openadsdk.core.widget.si) this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.IUZ);
        this.f13194oq = (TextView) this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.nke);
        if (this.tB != null && this.cFZ.RZ() != null) {
            this.tB.setText(this.cFZ.RZ().Pfn());
        }
        this.Pfn = this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.Jc);
        this.NO = (com.bytedance.sdk.openadsdk.core.Pfn.ex) this.f13193mu.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.Yk);
        if ((ex(this.cFZ) || ZYk(this.cFZ) || Pfn(this.cFZ) || tB(this.cFZ)) && this.cFZ.RZ() != null) {
            View view2 = this.Pfn;
            if (view2 != null) {
                view2.setVisibility(8);
            }
            if (Pfn(this.cFZ)) {
                oJ2 = this.cFZ.RZ().tB();
            } else {
                oJ2 = this.cFZ.RZ().oJ();
            }
            com.bytedance.sdk.openadsdk.core.WcQ.tB().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.model.QSm.11
                @Override // java.lang.Runnable
                public void run() {
                    if (!QSm.this.LpP.get()) {
                        QSm qSm = QSm.this;
                        com.bytedance.sdk.openadsdk.ex.tB.oJ(qSm.cFZ, qSm.Jc, System.currentTimeMillis() - QSm.this.Ln, false);
                        QSm.this.awB();
                    }
                }
            }, oJ2 * 1000);
        }
        dLZ();
        if (ZYk(this.cFZ)) {
            Ry();
            if (!ex()) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f13192jr.getLayoutParams();
                layoutParams.weight = 2.33f;
                this.f13192jr.setLayoutParams(layoutParams);
            }
        }
        if ((ex(this.cFZ) || Pfn(this.cFZ)) && (view = this.IUZ) != null) {
            view.setVisibility(8);
        }
        com.bytedance.sdk.openadsdk.common.BTZ btz = this.Xe;
        if (btz != null) {
            btz.oJ(this.cFZ);
        }
        if (tB(this.cFZ)) {
            si();
        }
        tB.oJ.oJ(SystemClock.elapsedRealtime() - elapsedRealtime, this.cFZ, this.Jc, this.nQI, this.Qu);
    }

    public static boolean tB(cY cYVar) {
        return cYVar != null && cYVar.sQ() == 3 && cYVar.NO() == 38 && cYVar.Tt() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB(int i10) {
        cdg.oJ((View) this.oIC, i10);
        cdg.oJ((View) this.MoK, i10);
        if (this.cdg.get()) {
            cdg.oJ((View) this.Ry, i10);
            cdg.oJ((View) this.RZ, i10);
            cdg.oJ((View) this.QSm, i10);
            cdg.oJ((View) this.f13194oq, 0);
        }
    }

    public static boolean oJ(cY cYVar) {
        if (cYVar == null || jFA(cYVar)) {
            return false;
        }
        return ex(cYVar) || ZYk(cYVar) || Pfn(cYVar);
    }

    public void oJ(float f10) {
        try {
            this.UN.WcQ();
        } catch (Throwable unused) {
        }
    }

    public void oJ(@NonNull com.bytedance.sdk.openadsdk.core.so.QSm qSm, FrameLayout frameLayout) {
        this.jB = qSm;
        this.yz = frameLayout;
    }

    public void oJ(int i10) {
        com.bytedance.sdk.openadsdk.core.so.QSm qSm = this.jB;
        if (qSm != null) {
            qSm.Pfn(i10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void oJ(final int r18, com.bytedance.sdk.component.adexpress.ZYk.WcQ r19) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.model.QSm.oJ(int, com.bytedance.sdk.component.adexpress.ZYk.WcQ):void");
    }
}
