package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.activity.ZYk;
import com.bytedance.sdk.openadsdk.component.reward.oJ.BTZ;
import com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2;
import com.bytedance.sdk.openadsdk.core.Id;
import com.bytedance.sdk.openadsdk.core.QSm;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.model.HL;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.Xe;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.model.jr;
import com.bytedance.sdk.openadsdk.core.oq;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex extends com.bytedance.sdk.openadsdk.activity.tB implements Handler.Callback {
    private final AtomicBoolean BTZ;
    private boolean HL;
    private FrameLayout HyG;
    private int IUZ;
    private boolean Id;
    private com.bytedance.sdk.openadsdk.activity.Pfn Jc;
    private JSONObject Jm;
    private boolean LS;
    private so Ln;
    private ZYk.Pfn LpP;
    private View NO;
    private final RecyclerView Pfn;
    private final HashSet<String> PiB;
    private int QSm;
    private long Qu;
    private boolean RZ;
    private JSONObject Rl;
    private final ArrayList<Message> Ry;
    private boolean UN;
    private final boolean WcQ;
    private int XAo;
    private int Xe;
    private boolean Yg;
    private final boolean awB;

    /* renamed from: ba  reason: collision with root package name */
    private final oJ f12916ba;
    private boolean bgF;
    private final LinearLayoutManager cFZ;
    private int cY;
    private boolean cdg;
    private final boolean dLZ;
    private final HashSet<Integer> eZI;
    private boolean jB;
    private final Handler jFA;

    /* renamed from: jr  reason: collision with root package name */
    private boolean f12917jr;
    private final FrameLayout kkU;
    private boolean lY;

    /* renamed from: mu  reason: collision with root package name */
    private jr.oJ f12918mu;
    private Message mwH;
    private long nQI;
    private int nke;
    private ba oTd;
    private JSONObject ofl;

    /* renamed from: oq  reason: collision with root package name */
    private int f12919oq;
    private boolean sH;

    /* renamed from: si  reason: collision with root package name */
    private final PAGLogoView f12920si;

    /* renamed from: so  reason: collision with root package name */
    private final TopLayoutDislike2 f12921so;

    /* renamed from: tb  reason: collision with root package name */
    private boolean f12922tb;

    /* renamed from: wd  reason: collision with root package name */
    private boolean f12923wd;
    private long yz;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static abstract class Pfn extends RecyclerView.ViewHolder {
        public Pfn(@NonNull View view) {
            super(view);
        }

        public abstract void oJ(ex exVar, C0190ex c0190ex, int i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ZYk extends Pfn {
        private final com.bytedance.sdk.openadsdk.component.reward.view.ZYk ZYk;
        private final oJ oJ;
        private so tB;

        public ZYk(oJ oJVar, @NonNull View view) {
            super(view);
            this.oJ = oJVar;
            this.ZYk = (com.bytedance.sdk.openadsdk.component.reward.view.ZYk) view;
        }

        public void ZYk() {
            so soVar = this.tB;
            if (soVar == null) {
                return;
            }
            soVar.QSm();
            this.tB = null;
            this.ZYk.oJ();
        }

        public so oJ() {
            return this.tB;
        }

        @Override // com.bytedance.sdk.openadsdk.activity.ex.Pfn
        public void oJ(ex exVar, C0190ex c0190ex, int i10) {
            int bindingAdapterPosition = getBindingAdapterPosition();
            Activity activity = exVar.oJ;
            if (!com.bytedance.sdk.component.utils.ZYk.oJ(activity) && this.tB == null) {
                cY cYVar = c0190ex.ZYk;
                com.bytedance.sdk.openadsdk.activity.ZYk zYk = exVar.ex;
                this.tB = cYVar.kO() ? new cFZ(zYk, cYVar, bindingAdapterPosition, i10, false) : new com.bytedance.sdk.openadsdk.activity.ba(zYk, cYVar, bindingAdapterPosition, i10, false);
                ZYk.Pfn pfn = new ZYk.Pfn(1, null);
                pfn.ex = exVar.HL;
                this.tB.ZYk(activity, pfn);
                this.oJ.oJ(this.tB);
                com.bytedance.sdk.openadsdk.component.reward.view.jFA oJ = this.tB.oJ();
                if (oJ == null) {
                    return;
                }
                ViewParent parent = oJ.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(oJ);
                }
                if (!exVar.WcQ) {
                    float Gdk = cYVar.Gdk();
                    if (Gdk > 0.0f) {
                        this.ZYk.setWidthAndHeightRatio(Gdk);
                    } else {
                        this.ZYk.setWidthOrHeightInParentRatio(0.8f);
                    }
                }
                this.ZYk.oJ(oJ, new FrameLayout.LayoutParams(-1, -1));
                this.ZYk.setScene(this.tB);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static abstract class ba implements Runnable {
        private final long ZYk;
        private long ex;
        private final Handler oJ = new Handler(Looper.getMainLooper());
        private long tB;

        public ba(long j10) {
            this.ZYk = j10;
        }

        public void Pfn() {
            this.oJ.postDelayed(this, this.ZYk);
            this.tB = SystemClock.elapsedRealtime();
        }

        public void ZYk() {
            this.oJ.removeCallbacks(this);
            this.ex += SystemClock.elapsedRealtime() - this.tB;
        }

        public void ex() {
            this.oJ.removeCallbacks(this);
        }

        abstract void oJ();

        @Override // java.lang.Runnable
        public void run() {
            oJ();
        }

        public void tB() {
            long j10 = this.ZYk - this.ex;
            if (j10 < 0) {
                return;
            }
            this.oJ.removeCallbacks(this);
            this.oJ.postDelayed(this, j10);
            this.tB = SystemClock.elapsedRealtime();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class tB extends Pfn {
        private final TextView oJ;

        public tB(@NonNull View view) {
            super(view);
            com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(view.getContext());
            this.oJ = soVar;
            soVar.setTextColor(Color.parseColor("#99FFFFFF"));
            soVar.setTextSize(14.0f);
            soVar.setGravity(17);
            soVar.setPadding(0, 24, 0, 24);
            ((FrameLayout) view).addView(soVar, new FrameLayout.LayoutParams(-1, -2));
        }

        @Override // com.bytedance.sdk.openadsdk.activity.ex.Pfn
        public void oJ(ex exVar, C0190ex c0190ex, int i10) {
            this.oJ.setText(c0190ex.tB);
        }
    }

    public ex(final Activity activity, final cY cYVar, final com.bytedance.sdk.openadsdk.activity.ZYk zYk) {
        super(activity, cYVar, zYk);
        boolean z10;
        boolean z11;
        int MoK;
        jr BTZ;
        boolean z12;
        this.jFA = new Handler(Looper.getMainLooper(), this);
        this.BTZ = new AtomicBoolean(false);
        this.PiB = new HashSet<>();
        this.eZI = new HashSet<>();
        this.Ry = new ArrayList<>();
        this.QSm = 5;
        this.f12919oq = 3;
        this.IUZ = -1;
        this.LpP = new ZYk.Pfn(1, null);
        if (cYVar.LS() == 44) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.WcQ = z10;
        boolean kO = cYVar.kO();
        this.dLZ = kO;
        if (BTZ.oJ(activity, cYVar) == 1) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.awB = z11;
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(activity) { // from class: com.bytedance.sdk.openadsdk.activity.ex.1
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                ex.this.Rl = null;
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        this.kkU = tBVar;
        if (Build.VERSION.SDK_INT >= 35) {
            tBVar.setFitsSystemWindows(true);
        }
        activity.setContentView(tBVar);
        com.bytedance.sdk.openadsdk.core.model.oJ tB2 = cYVar.tB();
        if (tB2 != null && (BTZ = tB2.BTZ()) != null) {
            this.UN = BTZ.awB();
            this.f12918mu = BTZ.ba();
            this.nke = Math.max(0, BTZ.jFA());
            this.f12922tb = BTZ.WcQ();
            this.f12917jr = BTZ.dLZ();
            this.cY = BTZ.so();
            this.ofl = BTZ.BTZ();
            this.Id = BTZ.kkU();
            this.RZ = BTZ.oJ();
            if (this.cY > 0) {
                z12 = true;
            } else {
                z12 = false;
            }
            this.f12923wd = z12;
            this.QSm = BTZ.ex();
            this.f12919oq = BTZ.Pfn();
            this.Rl = BTZ.ZYk();
            this.Jm = BTZ.tB();
            if (!this.f12917jr) {
                this.UN = false;
            }
        }
        if (kO) {
            this.Xe = (int) ((1.0f - (Math.max(0, Math.min(100, cYVar.MoK() < 0 ? si.ex().Xe(String.valueOf(cYVar.uv())).f13248ba : MoK)) / 100.0f)) * this.nke);
        }
        RecyclerView recyclerView = new RecyclerView(activity);
        this.Pfn = recyclerView;
        jr.oJ oJVar = this.f12918mu;
        if (oJVar != null) {
            int tB3 = oJVar.tB();
            int ex = this.f12918mu.ex();
            if (tB3 > 0 || ex > 0) {
                recyclerView.setPadding(cdg.ZYk(activity, tB3), 0, cdg.ZYk(activity, ex), 0);
            }
            int ZYk2 = this.f12918mu.ZYk();
            int oJ2 = this.f12918mu.oJ();
            int Pfn2 = this.f12918mu.Pfn();
            if (ZYk2 > 0 || Pfn2 > 0 || oJ2 > 0) {
                final int ZYk3 = cdg.ZYk(activity, ZYk2);
                final int ZYk4 = cdg.ZYk(activity, oJ2);
                final int ZYk5 = cdg.ZYk(activity, Pfn2);
                recyclerView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.bytedance.sdk.openadsdk.activity.ex.12
                    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView2, @NonNull RecyclerView.State state) {
                        int childAdapterPosition = recyclerView2.getChildAdapterPosition(view);
                        int itemCount = recyclerView2.getAdapter().getItemCount();
                        if (childAdapterPosition == 0) {
                            rect.top = ZYk3;
                        } else {
                            rect.top = ZYk5 / 2;
                        }
                        if (childAdapterPosition == itemCount - 1) {
                            rect.bottom = ZYk4;
                        } else {
                            rect.bottom = ZYk5 / 2;
                        }
                    }
                });
            }
        }
        tBVar.addView(recyclerView, new FrameLayout.LayoutParams(-1, -1));
        TopLayoutDislike2 topLayoutDislike2 = new TopLayoutDislike2(activity);
        this.f12921so = topLayoutDislike2;
        tBVar.addView(topLayoutDislike2, new FrameLayout.LayoutParams(-1, -2));
        topLayoutDislike2.load(cYVar);
        topLayoutDislike2.setShowDislike(true);
        topLayoutDislike2.setShowSound(true);
        boolean eZI = si.ex().eZI(String.valueOf(cYVar.uv()));
        this.HL = eZI;
        topLayoutDislike2.setSoundMute(eZI);
        topLayoutDislike2.setListener(new com.bytedance.sdk.openadsdk.component.reward.top.ZYk() { // from class: com.bytedance.sdk.openadsdk.activity.ex.13
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void ZYk(View view) {
                if (ex.this.Ln != null) {
                    ex.this.Ln.c_();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void oJ(View view) {
                com.bytedance.sdk.openadsdk.core.dLZ.ex oJ3;
                cY cYVar2 = cYVar;
                com.bytedance.sdk.openadsdk.ex.tB.oJ("skip", cYVar2, cYVar2.ex(), (Map<String, Object>) null);
                com.bytedance.sdk.openadsdk.core.model.ex NTC = cYVar.NTC();
                if (NTC != null && (oJ3 = NTC.oJ()) != null) {
                    oJ3.ba(0L);
                    oJ3.Pfn(0L);
                }
                ex.this.jr();
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void tB(View view) {
                zYk.ex();
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void oJ(View view, String str) {
                if (ex.this.Ln != null) {
                    ex.this.Ln.oJ(str);
                    ex exVar = ex.this;
                    exVar.HL = !exVar.HL;
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.ZYk
            public void ex(View view) {
            }
        });
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(activity, 1, false) { // from class: com.bytedance.sdk.openadsdk.activity.ex.14
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            public void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
                super.calculateExtraLayoutSpace(state, iArr);
                int height = ex.this.Pfn.getHeight();
                iArr[0] = height;
                iArr[1] = height;
            }
        };
        this.cFZ = linearLayoutManager;
        recyclerView.setLayoutManager(linearLayoutManager);
        oJ oJVar2 = new oJ(this, cYVar.BnM());
        this.f12916ba = oJVar2;
        recyclerView.setAdapter(oJVar2);
        if (!this.f12923wd && !this.Id) {
            oJVar2.oJ(com.bytedance.sdk.component.utils.cY.oJ(activity, "tt_list_end_tip"));
        }
        if (z10) {
            new PagerSnapHelper().attachToRecyclerView(recyclerView);
        } else if (this.f12917jr) {
            new com.bytedance.sdk.openadsdk.component.reward.view.oJ().attachToRecyclerView(recyclerView);
        }
        recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.bytedance.sdk.openadsdk.activity.ex.15
            private int ex;
            private final Rect ZYk = new Rect();
            private int tB = -1;

            private void oJ() {
                int ex2;
                View findViewByPosition;
                if (!ex.this.RZ || (ex2 = ex.this.f12916ba.ex()) == 0) {
                    return;
                }
                int findFirstVisibleItemPosition = ex.this.cFZ.findFirstVisibleItemPosition();
                int findLastVisibleItemPosition = ex.this.cFZ.findLastVisibleItemPosition();
                if (findLastVisibleItemPosition % ex2 > this.tB) {
                    for (int i10 = findFirstVisibleItemPosition; i10 <= findLastVisibleItemPosition; i10++) {
                        int i11 = i10 % ex2;
                        if (i11 > this.tB) {
                            if ((i10 == findFirstVisibleItemPosition || i10 == findLastVisibleItemPosition) && (findViewByPosition = ex.this.cFZ.findViewByPosition(i10)) != null) {
                                this.ZYk.setEmpty();
                                findViewByPosition.getGlobalVisibleRect(this.ZYk);
                                int height = findViewByPosition.getHeight();
                                if (height > 0) {
                                    if ((this.ZYk.height() * 1.0f) / height < 0.5f) {
                                    }
                                }
                            }
                            RecyclerView.ViewHolder findViewHolderForAdapterPosition = ex.this.Pfn.findViewHolderForAdapterPosition(i10);
                            if (findViewHolderForAdapterPosition instanceof ZYk) {
                                ((ZYk) findViewHolderForAdapterPosition).tB.Ln();
                            }
                            if (i11 > this.tB) {
                                this.tB = i11;
                            }
                        }
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NonNull RecyclerView recyclerView2, int i10) {
                boolean z13;
                super.onScrollStateChanged(recyclerView2, i10);
                int findFirstCompletelyVisibleItemPosition = ex.this.cFZ.findFirstCompletelyVisibleItemPosition();
                ex.this.cFZ.findFirstVisibleItemPosition();
                int findLastVisibleItemPosition = ex.this.cFZ.findLastVisibleItemPosition();
                if (findFirstCompletelyVisibleItemPosition < 0) {
                    return;
                }
                if (i10 == 0 && findFirstCompletelyVisibleItemPosition != ex.this.IUZ) {
                    boolean z14 = true;
                    if (findFirstCompletelyVisibleItemPosition == ex.this.XAo) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                    ex exVar = ex.this;
                    if (!exVar.UN || !z13) {
                        z14 = false;
                    }
                    exVar.oJ(findFirstCompletelyVisibleItemPosition, z14);
                    if (ex.this.UN && !z13 && ex.this.f12922tb) {
                        ex.this.UN = false;
                    }
                    if (ex.this.oTd != null) {
                        ex.this.oTd.ex();
                        ex.this.oTd = null;
                    }
                }
                if (i10 == 0) {
                    ex.this.XAo = -1;
                }
                if (ex.this.f12923wd && ex.this.cY > 0 && findLastVisibleItemPosition >= ex.this.f12916ba.oJ() - ex.this.cY) {
                    ex.this.oq();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(@NonNull RecyclerView recyclerView2, int i10, int i11) {
                super.onScrolled(recyclerView2, i10, i11);
                if (i11 == 0) {
                    return;
                }
                oJ();
                int findLastVisibleItemPosition = ex.this.cFZ.findLastVisibleItemPosition();
                if (i11 > 0 && ex.this.f12923wd && ex.this.cY > 0 && findLastVisibleItemPosition >= ex.this.f12916ba.oJ() - ex.this.cY) {
                    ex.this.oq();
                }
                if (this.ex != findLastVisibleItemPosition) {
                    this.ex = findLastVisibleItemPosition;
                    if (!ex.this.eZI.isEmpty() && ex.this.eZI.contains(Integer.valueOf(findLastVisibleItemPosition))) {
                        ex.this.eZI.remove(Integer.valueOf(findLastVisibleItemPosition));
                        RecyclerView.ViewHolder findViewHolderForAdapterPosition = recyclerView2.findViewHolderForAdapterPosition(findLastVisibleItemPosition);
                        if (findViewHolderForAdapterPosition instanceof ZYk) {
                            ZYk zYk2 = (ZYk) findViewHolderForAdapterPosition;
                            zYk2.tB.Pfn(true);
                            zYk2.tB.nke();
                        }
                    } else if (ex.this.Yg) {
                        ex.this.Yg = false;
                        RecyclerView.ViewHolder findViewHolderForAdapterPosition2 = recyclerView2.findViewHolderForAdapterPosition(findLastVisibleItemPosition);
                        if (findViewHolderForAdapterPosition2 instanceof ZYk) {
                            ZYk zYk3 = (ZYk) findViewHolderForAdapterPosition2;
                            if (zYk3.tB instanceof com.bytedance.sdk.openadsdk.activity.oJ) {
                                zYk3.tB.Pfn(true);
                                ((com.bytedance.sdk.openadsdk.activity.oJ) zYk3.tB).LpP();
                            }
                        }
                    }
                }
            }
        });
        LpP();
        final int QSm = QSm();
        recyclerView.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.ex.16
            @Override // java.lang.Runnable
            public void run() {
                if (!com.bytedance.sdk.component.utils.ZYk.oJ(activity)) {
                    ex.this.oJ(QSm, true);
                }
            }
        });
        PAGLogoView createPAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(activity, cYVar);
        this.f12920si = createPAGLogoViewByMaterial;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 83;
        layoutParams.leftMargin = cdg.ZYk(activity, 16.0f);
        tBVar.addView(createPAGLogoViewByMaterial, layoutParams);
        createPAGLogoViewByMaterial.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.ex.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Context context = view.getContext();
                cY cYVar2 = cYVar;
                TTWebsiteActivity.oJ(context, cYVar2, cYVar2.ex());
            }
        });
    }

    private void HL() {
        if (!this.cdg && this.Rl != null) {
            this.jFA.removeMessages(3);
            this.jFA.sendEmptyMessageDelayed(3, this.QSm * 1000);
        }
    }

    private void IUZ() {
        if (this.Rl == null) {
            return;
        }
        new com.bytedance.sdk.openadsdk.core.kkU.jFA.oJ(this.oJ).oJ(this.Rl, com.bytedance.sdk.openadsdk.core.so.oJ.ZYk.ZYk(), this.Jm, new com.bytedance.sdk.openadsdk.core.kkU.cFZ.ex() { // from class: com.bytedance.sdk.openadsdk.activity.ex.9
            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.ex
            public void oJ(int i10, String str) {
                ex.this.jB = true;
            }

            @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.ex
            public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar) {
                View dLZ = tBVar.dLZ();
                ViewGroup viewGroup = (ViewGroup) dLZ.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(dLZ);
                }
                ex.this.NO = dLZ;
                if (ex.this.HyG != null) {
                    ex.this.HyG.addView(dLZ, new FrameLayout.LayoutParams(-1, -1));
                }
            }
        });
    }

    private void Jc() {
        if (this.yz != 0) {
            so soVar = this.Ln;
            if (soVar != null && Ln.ZYk(soVar.jFA)) {
                int currentTimeMillis = this.nke - ((int) ((System.currentTimeMillis() - this.yz) / 1000));
                this.nke = currentTimeMillis;
                if (currentTimeMillis < 0) {
                    this.nke = 0;
                }
            }
            this.yz = 0L;
        }
        if (this.nke >= 0) {
            this.jFA.removeMessages(1);
            this.jFA.sendEmptyMessage(1);
        }
        ba baVar = this.oTd;
        if (baVar != null) {
            baVar.tB();
        }
    }

    private void Ln() {
        if (this.HyG == null && this.Rl != null && !this.jB) {
            this.cdg = true;
            this.HyG = new com.bytedance.sdk.openadsdk.core.Pfn.tB(this.oJ) { // from class: com.bytedance.sdk.openadsdk.activity.ex.10
                @Override // android.view.ViewGroup, android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    ex.this.jFA.removeMessages(4);
                    ex.this.jFA.sendEmptyMessage(4);
                    return super.dispatchTouchEvent(motionEvent);
                }
            };
            View view = this.NO;
            if (view != null && view.getParent() == null) {
                this.HyG.addView(this.NO, new FrameLayout.LayoutParams(-1, -1));
            }
            this.kkU.addView(this.HyG, new FrameLayout.LayoutParams(-1, -1));
            this.jFA.sendEmptyMessageDelayed(4, this.f12919oq * 1000);
            so soVar = this.Ln;
            if (soVar instanceof com.bytedance.sdk.openadsdk.activity.oJ) {
                ((com.bytedance.sdk.openadsdk.activity.oJ) soVar).Jc();
            }
            UN();
        }
    }

    private void LpP() {
        jr BTZ;
        com.bytedance.sdk.openadsdk.core.model.oJ tB2 = this.ZYk.tB();
        if (tB2 != null && (BTZ = tB2.BTZ()) != null && !TextUtils.isEmpty(BTZ.cFZ())) {
            this.Jc = new com.bytedance.sdk.openadsdk.activity.Pfn(this.ex, this.ZYk, -1, 1, false, false, true);
        }
    }

    private void UN() {
        if (this.sH) {
            this.yz = System.currentTimeMillis();
        }
        this.jFA.removeMessages(1);
        ba baVar = this.oTd;
        if (baVar != null) {
            baVar.ZYk();
        }
    }

    private void Xe() {
        FrameLayout frameLayout = this.HyG;
        if (frameLayout == null) {
            return;
        }
        ViewParent parent = frameLayout.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.HyG);
        }
        this.HyG = null;
        so soVar = this.Ln;
        if (soVar instanceof com.bytedance.sdk.openadsdk.activity.oJ) {
            ((com.bytedance.sdk.openadsdk.activity.oJ) soVar).UN();
        }
        Jc();
        Message message = this.mwH;
        if (message != null) {
            handleMessage(message);
            this.mwH = null;
        }
    }

    private boolean nke() {
        FrameLayout frameLayout = this.HyG;
        if (frameLayout != null && frameLayout.getParent() != null) {
            return true;
        }
        return false;
    }

    private void tb() {
        so soVar;
        if (this.dLZ && !this.ex.PiB() && (soVar = this.Ln) != null) {
            soVar.nQI();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public com.bytedance.sdk.openadsdk.component.reward.top.tB PiB() {
        return null;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        if (this.lY) {
            this.Ry.add(this.jFA.obtainMessage(message.what, message.arg1, message.arg2, message.obj));
            return false;
        }
        int i10 = message.what;
        if (i10 != 1) {
            if (i10 != 3) {
                if (i10 == 4) {
                    Xe();
                }
            } else {
                Ln();
            }
        } else {
            int i11 = this.nke;
            if (i11 > 0) {
                if (i11 <= this.Xe) {
                    tb();
                }
                TopLayoutDislike2 topLayoutDislike2 = this.f12921so;
                StringBuilder sb2 = new StringBuilder();
                int i12 = this.nke;
                this.nke = i12 - 1;
                sb2.append(i12);
                sb2.append("s");
                topLayoutDislike2.setSkipText(sb2.toString());
                if (this.nke >= 0) {
                    this.jFA.removeMessages(message.what);
                    this.jFA.sendEmptyMessageDelayed(message.what, 1000L);
                }
            } else {
                tb();
                if (Pfn()) {
                    this.f12921so.showSkipButton();
                } else {
                    this.f12921so.showCloseButton();
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Id() {
        if (this.f12923wd) {
            return;
        }
        if (this.Id) {
            QSm();
        } else {
            ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.ex.2
                @Override // java.lang.Runnable
                public void run() {
                    if (com.bytedance.sdk.component.utils.ZYk.oJ(ex.this.oJ)) {
                        return;
                    }
                    ex.this.f12916ba.oJ(com.bytedance.sdk.component.utils.cY.oJ(si.oJ(), "tt_list_end_tip"));
                }
            });
        }
    }

    private int QSm() {
        if (!this.Id || this.f12916ba.tB() || this.BTZ.get() || this.f12923wd) {
            return 0;
        }
        int oJ2 = oJ(this.IUZ, this.f12916ba.ex(), 1073741823);
        this.f12916ba.oJ(this.IUZ, oJ2);
        if (this.IUZ < 0) {
            this.Pfn.scrollToPosition(oJ2);
        } else {
            this.IUZ = oJ2;
        }
        return oJ2;
    }

    private void cY() {
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.ex.5
            @Override // java.lang.Runnable
            public void run() {
                if (com.bytedance.sdk.component.utils.ZYk.oJ(ex.this.oJ)) {
                    return;
                }
                ex.this.BTZ.set(false);
                if (ex.this.Id) {
                    ex.this.f12916ba.oJ("");
                    ex.this.Id();
                    return;
                }
                ex.this.f12916ba.oJ(com.bytedance.sdk.component.utils.cY.oJ(si.oJ(), "tt_list_end_tip"));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jr() {
        com.bytedance.sdk.openadsdk.activity.Pfn pfn = this.Jc;
        if (pfn != null && pfn.LpP()) {
            ZYk(this.Jc);
            this.kkU.removeView(this.Pfn);
            this.f12921so.setVisibility(8);
            this.f12920si.setVisibility(8);
            return;
        }
        this.ex.ex();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oq() {
        if (this.BTZ.compareAndSet(false, true)) {
            AdSlot BHY = this.ZYk.BHY();
            HL hl2 = new HL();
            hl2.f13181ba = true;
            if (this.ZYk.PdF() != null || this.ZYk.BWx() != null) {
                hl2.jFA = 2;
            }
            hl2.cFZ = this.ofl;
            this.f12916ba.oJ(com.bytedance.sdk.component.utils.cY.oJ(this.oJ, "tt_loading_more"));
            if (com.bytedance.sdk.openadsdk.utils.ZYk.oJ()) {
                si.tB().oJ(BHY, hl2, this.ZYk.TxP(), (QSm) new oq() { // from class: com.bytedance.sdk.openadsdk.activity.ex.18
                    @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.Id.oJ
                    public void oJ(int i10, String str) {
                        ex.this.oJ(i10, str);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.Id.oJ
                    public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
                        ex.this.oJ(oJVar, tBVar);
                    }
                });
            } else {
                si.tB().oJ(BHY, hl2, this.ZYk.TxP(), new Id.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.ex.19
                    @Override // com.bytedance.sdk.openadsdk.core.Id.oJ
                    public void oJ(int i10, String str) {
                        ex.this.oJ(i10, str);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.Id.oJ
                    public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
                        ex.this.oJ(oJVar, tBVar);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public so BTZ() {
        return this.Ln;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public boolean Pfn() {
        return this.Jc != null;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    /* renamed from: RZ */
    public com.bytedance.sdk.openadsdk.activity.oJ WcQ() {
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.Pfn.findViewHolderForAdapterPosition(this.IUZ + 1);
        if (findViewHolderForAdapterPosition instanceof ZYk) {
            so oJ2 = ((ZYk) findViewHolderForAdapterPosition).oJ();
            if (oJ2 instanceof com.bytedance.sdk.openadsdk.activity.oJ) {
                return (com.bytedance.sdk.openadsdk.activity.oJ) oJ2;
            }
            return null;
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void Ry() {
        super.Ry();
        this.sH = true;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public boolean ba() {
        return this.HL;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public int dLZ() {
        return this.PiB.size();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public List<cY> eZI() {
        return this.f12916ba.Pfn();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public int jFA() {
        return this.nke;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void si() {
        if (this.bgF) {
            return;
        }
        this.bgF = true;
        final long elapsedRealtime = SystemClock.elapsedRealtime() - this.nQI;
        long currentTimeMillis = System.currentTimeMillis();
        cY cYVar = this.ZYk;
        com.bytedance.sdk.openadsdk.ex.tB.oJ(currentTimeMillis, cYVar, cYVar.ex(), "first_ad_loaded", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.ex.11
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("duration", elapsedRealtime);
                } catch (Throwable unused) {
                }
                return jSONObject;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bytedance.sdk.openadsdk.activity.ex$ex  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0190ex {
        public cY ZYk;
        public int oJ = 0;
        public String tB;

        public C0190ex(cY cYVar) {
            this.ZYk = cYVar;
        }

        public C0190ex(String str) {
            this.tB = str;
        }
    }

    private void ZYk(so soVar) {
        Iterator<so> it = this.f12916ba.ZYk().iterator();
        while (it.hasNext()) {
            so next = it.next();
            if (next != soVar) {
                next.oJ(this.Ln, soVar, this.LpP);
            }
        }
        com.bytedance.sdk.openadsdk.activity.Pfn pfn = this.Jc;
        if (pfn != null && pfn != soVar) {
            pfn.oJ(this.Ln, soVar, this.LpP);
        }
        so soVar2 = this.Ln;
        this.Ln = soVar;
        if (soVar2 != null) {
            soVar2.PiB = false;
            soVar2.PiB();
            soVar2.ex();
        }
        soVar.PiB = true;
        soVar.ZYk(this.oJ, new ZYk.Pfn(1, null));
        com.bytedance.sdk.openadsdk.component.reward.view.jFA oJ2 = soVar.oJ();
        if (oJ2.getVisibility() != 0) {
            oJ2.setVisibility(0);
        }
        if (oJ2.getParent() == null) {
            this.kkU.addView(oJ2, new FrameLayout.LayoutParams(-1, -1));
        }
        this.ex.ZYk(soVar);
        if (soVar.d_() != this.HL) {
            soVar.oJ("card_sync");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB(so soVar) {
        so soVar2 = this.Ln;
        if (soVar != soVar2) {
            return;
        }
        if (this.UN) {
            if (this.IUZ < this.f12916ba.oJ() - 1) {
                int i10 = this.IUZ + 1;
                this.XAo = i10;
                if (this.WcQ) {
                    this.Pfn.smoothScrollToPosition(i10);
                } else {
                    oJ(i10);
                }
            } else {
                this.XAo = 0;
                this.Pfn.scrollToPosition(0);
                this.Pfn.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.ex.8
                    @Override // java.lang.Runnable
                    public void run() {
                        if (com.bytedance.sdk.component.utils.ZYk.oJ(ex.this.oJ)) {
                            return;
                        }
                        ex exVar = ex.this;
                        exVar.oJ(exVar.XAo, true);
                    }
                });
            }
        } else if (this.LS) {
            soVar2.tB();
        } else {
            soVar2.XAo();
        }
        this.oTd = null;
        this.LS = false;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void ex() {
        super.ex();
        so soVar = this.Ln;
        if (soVar != null) {
            soVar.Rl();
        }
        com.bytedance.sdk.openadsdk.activity.Pfn pfn = this.Jc;
        if (pfn != null) {
            pfn.QSm();
        }
        Iterator<so> it = this.f12916ba.ZYk().iterator();
        while (it.hasNext()) {
            it.next().QSm();
        }
        this.jFA.removeCallbacksAndMessages(null);
        ba baVar = this.oTd;
        if (baVar != null) {
            baVar.ex();
            this.oTd = null;
        }
        so soVar2 = this.Ln;
        if (soVar2 == null || soVar2.cY() || this.ZYk.cMS()) {
            return;
        }
        WcQ.ZYk().post(new ZYk.tB(this.ZYk));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ extends RecyclerView.Adapter<Pfn> {
        private boolean Pfn;
        private boolean ex;
        private final ex tB;
        private final ArrayList<C0190ex> oJ = new ArrayList<>();
        private final ArrayList<so> ZYk = new ArrayList<>();

        public oJ(ex exVar, List<cY> list) {
            this.tB = exVar;
            for (int i10 = 0; i10 < list.size(); i10++) {
                cY cYVar = list.get(i10);
                this.oJ.add(new C0190ex(cYVar));
                if (i10 != 0) {
                    cYVar.eL();
                }
            }
        }

        public List<cY> Pfn() {
            ArrayList arrayList = new ArrayList();
            Iterator<C0190ex> it = this.oJ.iterator();
            while (it.hasNext()) {
                C0190ex next = it.next();
                if (next.oJ == 0) {
                    arrayList.add(next.ZYk);
                }
            }
            return arrayList;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: ZYk */
        public void onViewDetachedFromWindow(@NonNull Pfn pfn) {
            so soVar;
            super.onViewDetachedFromWindow(pfn);
            if (!(pfn instanceof ZYk) || (soVar = ((ZYk) pfn).tB) == null) {
                return;
            }
            soVar.tb().cY.Jm();
        }

        public int ex() {
            if (this.ex) {
                return this.oJ.size() - 1;
            }
            return this.oJ.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.Pfn) {
                return Integer.MAX_VALUE;
            }
            return this.oJ.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            if (this.oJ.get(i10 % this.oJ.size()).oJ == 0) {
                return 1;
            }
            return -1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* renamed from: oJ */
        public Pfn onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            if (i10 == -1) {
                com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(viewGroup.getContext());
                tBVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
                return new tB(tBVar);
            }
            com.bytedance.sdk.openadsdk.component.reward.view.ZYk zYk = new com.bytedance.sdk.openadsdk.component.reward.view.ZYk(viewGroup.getContext(), this.tB.awB, this.tB.WcQ, cdg.ZYk(viewGroup.getContext(), 10.0f));
            zYk.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            return new ZYk(this, zYk);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: tB */
        public void onViewRecycled(@NonNull Pfn pfn) {
            super.onViewRecycled(pfn);
            if (pfn instanceof ZYk) {
                ZYk zYk = (ZYk) pfn;
                so soVar = zYk.tB;
                if (soVar != null) {
                    this.ZYk.remove(soVar);
                    zYk.ZYk();
                }
            }
        }

        public ArrayList<so> ZYk() {
            return this.ZYk;
        }

        public boolean tB() {
            return this.Pfn;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: oJ */
        public void onBindViewHolder(@NonNull Pfn pfn, int i10) {
            if (i10 >= this.oJ.size()) {
                i10 %= this.oJ.size();
            }
            pfn.oJ(this.tB, this.oJ.get(i10), i10);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: oJ */
        public void onViewAttachedToWindow(@NonNull Pfn pfn) {
            super.onViewAttachedToWindow(pfn);
        }

        public int oJ() {
            int itemCount = getItemCount();
            return this.ex ? itemCount - 1 : itemCount;
        }

        public void oJ(String str) {
            int size = this.oJ.size();
            C0190ex c0190ex = size > 0 ? this.oJ.get(size - 1) : null;
            boolean isEmpty = TextUtils.isEmpty(str);
            if (c0190ex == null || c0190ex.oJ != 1) {
                if (isEmpty) {
                    return;
                }
                this.oJ.add(new C0190ex(str));
                notifyItemInserted(size);
                this.ex = true;
            } else if (!isEmpty) {
                c0190ex.tB = str;
                notifyItemChanged(size - 1);
            } else {
                this.oJ.remove(c0190ex);
                notifyItemRemoved(size - 1);
                this.ex = false;
            }
        }

        public void oJ(so soVar) {
            this.ZYk.add(soVar);
        }

        public void oJ(List<cY> list) {
            int size = this.oJ.size();
            if (this.ex) {
                size--;
            }
            for (int i10 = 0; i10 < list.size(); i10++) {
                cY cYVar = list.get(i10);
                this.oJ.add(size + i10, new C0190ex(cYVar));
                cYVar.eL();
            }
            notifyItemRangeInserted(size, list.size());
        }

        public void oJ(int i10, int i11) {
            if (this.Pfn) {
                return;
            }
            this.Pfn = true;
            if (i10 < 0) {
                i10 = 0;
            }
            int size = this.oJ.size();
            notifyItemRangeInserted(size, (Integer.MAX_VALUE - i11) - (size - i10));
            notifyItemRangeInserted(0, i11 - i10);
        }
    }

    private static int oJ(int i10, int i11, int i12) {
        if (i10 < 0) {
            i10 = 0;
        }
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i12 + i13;
            if (i14 % i11 != i10) {
                i14 = i12 - i13;
                if (i14 % i11 != i10) {
                }
            }
            return i14;
        }
        return i12;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(Bundle bundle) {
        super.oJ(bundle);
        IUZ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(int i10, String str) {
        this.f12923wd = false;
        cY();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
        this.f12923wd = false;
        if (oJVar.ex() != null && !oJVar.ex().isEmpty()) {
            oJ(oJVar);
            return;
        }
        tBVar.oJ(-3);
        tBVar.tB(1);
        com.bytedance.sdk.openadsdk.core.model.tB.oJ(tBVar);
        cY();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void tB() {
        super.tB();
        this.lY = true;
        so soVar = this.Ln;
        if (soVar != null) {
            soVar.PiB();
        }
        UN();
        this.LS = this.oTd != null;
        this.jFA.removeMessages(3);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void ZYk() {
        super.ZYk();
        this.lY = false;
        this.sH = false;
        so soVar = this.Ln;
        if (soVar != null && !this.LS) {
            soVar.tB();
        }
        if (this.nQI == 0) {
            this.nQI = SystemClock.elapsedRealtime();
        }
        Jc();
        HL();
        Iterator<Message> it = this.Ry.iterator();
        while (it.hasNext()) {
            handleMessage(it.next());
        }
        this.Ry.clear();
    }

    private void oJ(final com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        jr BTZ = oJVar.BTZ();
        if (BTZ != null) {
            this.ofl = BTZ.BTZ();
            this.f12923wd = BTZ.PiB();
        }
        if (!this.WcQ) {
            for (cY cYVar : oJVar.ex()) {
                if (cYVar.ib() != null && cY.Pfn(cYVar)) {
                    com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk oJ2 = cY.oJ(CacheDirFactory.getICacheDir(cYVar.rQ()).oJ(), cYVar);
                    oJ2.oJ("material_meta", cYVar);
                    oJ2.oJ("ad_slot", cYVar.BHY());
                    com.bytedance.sdk.openadsdk.core.BTZ.Pfn.oJ.oJ(oJ2, new com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.ZYk() { // from class: com.bytedance.sdk.openadsdk.activity.ex.3
                        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ.InterfaceC0133oJ
                        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, int i10) {
                        }

                        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ.InterfaceC0133oJ
                        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, int i10, String str) {
                        }
                    });
                }
            }
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.ex.4
            @Override // java.lang.Runnable
            public void run() {
                if (com.bytedance.sdk.component.utils.ZYk.oJ(ex.this.oJ)) {
                    return;
                }
                ex.this.BTZ.set(false);
                ex.this.f12916ba.oJ("");
                ex.this.f12916ba.oJ(oJVar.ex());
                ex.this.Id();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void ZYk(so soVar, int i10) {
        so soVar2 = this.Ln;
        if (soVar != soVar2) {
            return;
        }
        if (i10 == 2) {
            UN();
        } else if (i10 == 1) {
            if (nke()) {
                so soVar3 = this.Ln;
                if (soVar3 instanceof com.bytedance.sdk.openadsdk.activity.oJ) {
                    ((com.bytedance.sdk.openadsdk.activity.oJ) soVar3).Jc();
                    return;
                }
                return;
            }
            Jc();
        } else if (i10 == 3 || i10 == 4) {
            try {
                soVar2.tb().cY.LpP();
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.QSm.tB("CardsLayoutManager", th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(int i10, boolean z10) {
        int i11;
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.Pfn.findViewHolderForAdapterPosition(i10);
        if (findViewHolderForAdapterPosition == null || !(findViewHolderForAdapterPosition instanceof ZYk) || (i11 = this.IUZ) == i10) {
            return;
        }
        oJ(i11, i10, z10);
        this.IUZ = i10;
        this.Qu = SystemClock.elapsedRealtime();
        so oJ2 = ((ZYk) findViewHolderForAdapterPosition).oJ();
        ZYk(oJ2);
        this.PiB.add(oJ2.jFA.cdg());
        if (this.f12923wd && this.cY > 0 && this.IUZ >= this.f12916ba.oJ() - this.cY) {
            oq();
        }
        com.bytedance.sdk.openadsdk.activity.oJ WcQ = WcQ();
        if (WcQ != null) {
            if (!this.WcQ && this.cFZ.findLastVisibleItemPosition() >= this.IUZ + 1) {
                WcQ.Pfn(true);
            }
            this.eZI.add(Integer.valueOf(this.IUZ + 1));
            WcQ.LpP();
            this.Yg = false;
            return;
        }
        this.Yg = true;
    }

    private void oJ(int i10, int i11, boolean z10) {
        String str;
        if (i10 < 0 || i11 < 0 || i10 == i11) {
            return;
        }
        if (z10) {
            str = "auto_down";
        } else {
            str = i11 > i10 ? "down" : "up";
        }
        final String str2 = str;
        final long elapsedRealtime = (SystemClock.elapsedRealtime() - this.Qu) / 1000;
        List<cY> Pfn2 = this.f12916ba.Pfn();
        final int size = i10 % Pfn2.size();
        final int size2 = i11 % Pfn2.size();
        cY cYVar = Pfn2.get(size);
        com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), cYVar, cYVar.ex(), "slide", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.ex.6
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("from", size + 1);
                    jSONObject3.put(TypedValues.TransitionType.S_TO, size2 + 1);
                    jSONObject3.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, str2);
                    jSONObject3.put("click_user_remaining", elapsedRealtime);
                    jSONObject2.put("pag_json_data", jSONObject3.toString());
                    jSONObject.put("ad_extra_data", jSONObject2);
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(Activity activity) {
        super.oJ(activity);
        cdg.oJ(activity);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(final so soVar, so soVar2, ZYk.Pfn pfn) {
        long j10;
        Xe na2;
        if (soVar != this.Ln) {
            return;
        }
        if (soVar.HL() || Ln.ZYk(soVar.jFA)) {
            j10 = 500;
        } else {
            j10 = soVar.jFA.na() != null ? na2.tB() * 1000 : 0L;
        }
        ba baVar = this.oTd;
        if (baVar != null) {
            baVar.ex();
        }
        ba baVar2 = new ba(Math.max(500L, j10)) { // from class: com.bytedance.sdk.openadsdk.activity.ex.7
            @Override // com.bytedance.sdk.openadsdk.activity.ex.ba
            void oJ() {
                if (!com.bytedance.sdk.component.utils.ZYk.oJ(ex.this.oJ)) {
                    ex.this.tB(soVar);
                }
            }
        };
        this.oTd = baVar2;
        baVar2.Pfn();
    }

    private void oJ(int i10) {
        RecyclerView.ViewHolder findViewHolderForAdapterPosition;
        int findFirstVisibleItemPosition = this.cFZ.findFirstVisibleItemPosition();
        int findLastVisibleItemPosition = this.cFZ.findLastVisibleItemPosition();
        if (i10 < findFirstVisibleItemPosition) {
            this.Pfn.smoothScrollToPosition(i10);
        } else if (i10 <= findLastVisibleItemPosition) {
            int i11 = i10 - findFirstVisibleItemPosition;
            int childCount = this.Pfn.getChildCount();
            if (i11 <= 0 || i11 >= childCount || (findViewHolderForAdapterPosition = this.Pfn.findViewHolderForAdapterPosition(i10 - 1)) == null) {
                return;
            }
            this.Pfn.smoothScrollBy(0, findViewHolderForAdapterPosition.itemView.getBottom());
        } else {
            this.Pfn.smoothScrollToPosition(this.XAo);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(boolean z10) {
        super.oJ(z10);
        so soVar = this.Ln;
        if (soVar != null) {
            soVar.tB(z10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public boolean oJ(so soVar, int i10) {
        com.bytedance.sdk.openadsdk.activity.Pfn pfn = this.Jc;
        return pfn != null && pfn == soVar;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(View view) {
        super.oJ(view);
        if (view.getParent() != null) {
            return;
        }
        view.setVisibility(4);
        this.kkU.addView(view, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(Map<String, Object> map, so soVar, float f10, float f11) {
        Object obj = map.get("pag_json_data");
        if (obj == null) {
            obj = new JSONObject();
        }
        if (obj instanceof JSONObject) {
            try {
                com.bytedance.sdk.openadsdk.component.reward.view.jFA oJ2 = soVar.oJ();
                ((JSONObject) obj).put("width", oJ2.getWidth());
                ((JSONObject) obj).put("height", oJ2.getHeight());
                int i10 = soVar.dLZ;
                ((JSONObject) obj).put("click_feed_top", i10 == this.cFZ.findFirstVisibleItemPosition() ? 1 : 0);
                ((JSONObject) obj).put("click_on_final", i10 == this.f12916ba.ex() ? 1 : 0);
                ((JSONObject) obj).put("click_countdown_remaining", this.nke);
                ((JSONObject) obj).put("click_user_remaining", i10 == this.IUZ ? (SystemClock.elapsedRealtime() - this.Qu) / 1000 : 0L);
                map.put("pag_json_data", obj.toString());
            } catch (Exception unused) {
            }
        }
    }
}
