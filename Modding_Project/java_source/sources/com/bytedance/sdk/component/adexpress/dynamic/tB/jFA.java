package com.bytedance.sdk.component.adexpress.dynamic.tB;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.ba.HL;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.subs.SubsSku;
/* loaded from: classes3.dex */
public class jFA extends FrameLayout implements so {
    private com.bytedance.sdk.component.adexpress.ZYk.PiB BTZ;
    private cFZ Pfn;
    private com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private String f12718ba;
    private com.bytedance.sdk.component.adexpress.ba.Ry cFZ;
    private com.bytedance.sdk.component.adexpress.dynamic.ex.kkU dLZ;
    private View ex;
    private int jFA;
    private boolean kkU;
    private Context oJ;

    /* renamed from: so  reason: collision with root package name */
    private View.OnTouchListener f12719so;
    private com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ tB;

    public jFA(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz) {
        super(context);
        this.oJ = context;
        this.ZYk = pfn;
        this.tB = cfz;
        cFZ();
    }

    private void cFZ() {
        setBackgroundColor(0);
        setClipChildren(false);
        setClipToPadding(false);
        this.f12718ba = this.tB.Rl();
        this.jFA = this.tB.nQI();
        this.kkU = this.tB.jB();
        cFZ oJ = kkU.oJ(this.oJ, this.ZYk, this.tB, this.dLZ, this.BTZ);
        this.Pfn = oJ;
        if (oJ != null) {
            this.ex = oJ.tB();
            if (this.tB.Jm()) {
                setBackgroundColor(Color.parseColor("#50000000"));
            }
            if (TextUtils.equals(this.f12718ba, SubsSku.SCENE_AD_2_PAY)) {
                if (this.tB.yz() && !TextUtils.isEmpty(this.tB.sH())) {
                    this.cFZ = new com.bytedance.sdk.component.adexpress.ba.Ry(this.oJ, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ.oJ(this.tB.sH()));
                } else {
                    this.cFZ = new com.bytedance.sdk.component.adexpress.ba.Ry(this.oJ, Color.parseColor("#99000000"));
                }
                FrameLayout frameLayout = new FrameLayout(this.oJ);
                frameLayout.addView(this.cFZ, new FrameLayout.LayoutParams(-1, -1));
                frameLayout.setClipChildren(true);
                addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
                post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.tB.jFA.1
                    @Override // java.lang.Runnable
                    public void run() {
                        jFA.this.cFZ.ZYk();
                    }
                });
            }
            if (oJ(this.f12718ba) && com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                int parseColor = Color.parseColor("#99000000");
                if (this.tB.yz() && !TextUtils.isEmpty(this.tB.sH())) {
                    try {
                        parseColor = com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ.oJ(this.tB.sH());
                    } catch (Exception unused) {
                    }
                }
                View view = new View(this.oJ);
                view.setBackgroundColor(parseColor);
                addView(view, new FrameLayout.LayoutParams(-1, -1));
            }
            addView(this.Pfn.tB());
            oJ(this.Pfn.tB());
            setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jFA() {
        if (this.f12719so != null) {
            setOnClickListener((View.OnClickListener) this.ZYk.getDynamicClickListener());
            performClick();
            if (!this.tB.oCU()) {
                setVisibility(8);
            }
        }
    }

    private boolean so() {
        if (this.tB.jB() || TextUtils.equals("9", this.f12718ba) || TextUtils.equals("16", this.f12718ba) || TextUtils.equals("17", this.f12718ba) || TextUtils.equals("18", this.f12718ba) || TextUtils.equals("20", this.f12718ba) || TextUtils.equals("29", this.f12718ba) || TextUtils.equals("10", this.f12718ba)) {
            return false;
        }
        return true;
    }

    public void Pfn() {
        if (this.ex != null && TextUtils.equals(this.f12718ba, "2")) {
            View view = this.ex;
            if (view instanceof com.bytedance.sdk.component.adexpress.ba.tB) {
                ((com.bytedance.sdk.component.adexpress.ba.tB) view).tB();
            }
        }
    }

    public void ba() {
        if (this.ex != null && TextUtils.equals(this.f12718ba, "2")) {
            View view = this.ex;
            if (view instanceof com.bytedance.sdk.component.adexpress.ba.tB) {
                ((com.bytedance.sdk.component.adexpress.ba.tB) view).ex();
            }
        }
    }

    public void ex() {
        cFZ cfz = this.Pfn;
        if (cfz != null) {
            cfz.ZYk();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            cFZ cfz = this.Pfn;
            if (cfz != null) {
                cfz.ZYk();
            }
        } catch (Exception e10) {
            e10.getMessage();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f12719so instanceof com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.tB) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void tB() {
        cFZ cfz = this.Pfn;
        if (cfz != null) {
            cfz.oJ();
        }
    }

    private boolean oJ(String str) {
        return TextUtils.equals(str, "24") || TextUtils.equals(str, "23") || TextUtils.equals(str, "25") || TextUtils.equals(str, "22") || TextUtils.equals(str, "1");
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.so
    public void ZYk() {
        if (so()) {
            setOnClickListener((View.OnClickListener) this.ZYk.getDynamicClickListener());
            performClick();
            if (this.tB.oCU()) {
                return;
            }
            setVisibility(8);
        }
    }

    public jFA(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz, com.bytedance.sdk.component.adexpress.dynamic.ex.kkU kku, com.bytedance.sdk.component.adexpress.ZYk.PiB piB) {
        super(context);
        this.oJ = context;
        this.ZYk = pfn;
        this.tB = cfz;
        this.dLZ = kku;
        this.BTZ = piB;
        cFZ();
    }

    private void oJ(ViewGroup viewGroup) {
        if (this.ex == null) {
            return;
        }
        String str = this.f12718ba;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 48:
                if (str.equals(MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
                    c10 = 0;
                    break;
                }
                break;
            case 49:
                if (str.equals("1")) {
                    c10 = 1;
                    break;
                }
                break;
            case 50:
                if (str.equals("2")) {
                    c10 = 2;
                    break;
                }
                break;
            case 53:
                if (str.equals("5")) {
                    c10 = 3;
                    break;
                }
                break;
            case 54:
                if (str.equals(SubsSku.SCENE_AD_2_PAY)) {
                    c10 = 4;
                    break;
                }
                break;
            case 55:
                if (str.equals("7")) {
                    c10 = 5;
                    break;
                }
                break;
            case 56:
                if (str.equals("8")) {
                    c10 = 6;
                    break;
                }
                break;
            case 57:
                if (str.equals("9")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1567:
                if (str.equals("10")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1568:
                if (str.equals("11")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1569:
                if (str.equals("12")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1570:
                if (str.equals("13")) {
                    c10 = 11;
                    break;
                }
                break;
            case 1571:
                if (str.equals("14")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 1573:
                if (str.equals("16")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 1574:
                if (str.equals("17")) {
                    c10 = 14;
                    break;
                }
                break;
            case 1575:
                if (str.equals("18")) {
                    c10 = 15;
                    break;
                }
                break;
            case 1598:
                if (str.equals("20")) {
                    c10 = 16;
                    break;
                }
                break;
            case 1600:
                if (str.equals("22")) {
                    c10 = 17;
                    break;
                }
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUBTITLE_SENSE_BUFFERING /* 1601 */:
                if (str.equals("23")) {
                    c10 = 18;
                    break;
                }
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUBTITLE_LAZY_LOADING /* 1602 */:
                if (str.equals("24")) {
                    c10 = 19;
                    break;
                }
                break;
            case 1603:
                if (str.equals("25")) {
                    c10 = 20;
                    break;
                }
                break;
            case 1607:
                if (str.equals("29")) {
                    c10 = 21;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.f12719so = new com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.Pfn(this, this.jFA);
                setBackgroundColor(Color.parseColor("#80000000"));
                break;
            case 1:
            case 4:
                if (!this.tB.yz() || TextUtils.isEmpty(this.tB.sH())) {
                    setBackgroundColor(Color.parseColor("#80000000"));
                }
                this.f12719so = new com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.ba(this);
                break;
            case 2:
            case 5:
                setBackgroundColor(Color.parseColor("#80000000"));
                this.f12719so = new com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.ZYk(this, this);
                break;
            case 3:
                if (this.tB.yz() && !TextUtils.isEmpty(this.tB.sH())) {
                    setBackgroundColor(com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ.oJ(this.tB.sH()));
                } else {
                    setBackgroundColor(Color.parseColor("#80000000"));
                }
                this.f12719so = new com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.tB(this);
                this.ex.setTag(2);
                break;
            case 6:
            case '\t':
                this.ZYk.setClipChildren(false);
                this.ZYk.setClipChildren(false);
                ViewGroup viewGroup2 = (ViewGroup) this.ZYk.getParent();
                if (viewGroup2 != null) {
                    viewGroup2.setClipChildren(false);
                    viewGroup2.setClipToPadding(false);
                }
                this.f12719so = new com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.ba(this);
                break;
            case 7:
            case 14:
                this.ex.setTag(2);
                break;
            case '\b':
                this.f12719so = new com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.ex(this, this.jFA, this.kkU);
                break;
            case '\n':
                this.f12719so = new com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.tB(this);
                this.ex.setTag(2);
                break;
            case 11:
            case 19:
                if (this.f12718ba.equals("24") && com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                    this.ZYk.setClipChildren(false);
                    this.f12719so = new com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.ba(this);
                    break;
                } else {
                    this.f12719so = new com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.Pfn(this, this.jFA);
                    break;
                }
            case '\f':
                this.f12719so = new com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.ZYk(this, this);
                break;
            case '\r':
                View view = this.ex;
                if (view != null && (view instanceof com.bytedance.sdk.component.adexpress.ba.RZ) && ((com.bytedance.sdk.component.adexpress.ba.RZ) view).getShakeLayout() != null) {
                    ((com.bytedance.sdk.component.adexpress.ba.RZ) this.ex).getShakeLayout().setTag(2);
                }
                this.ex.setTag(2);
                break;
            case 15:
                View view2 = this.ex;
                if (view2 != null && (view2 instanceof HL) && ((HL) view2).getWriggleLayout() != null) {
                    ((HL) this.ex).getWriggleLayout().setTag(2);
                }
                this.ex.setTag(2);
                break;
            case 16:
                this.f12719so = new com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.oJ(this, this.jFA, viewGroup);
                break;
            case 17:
                if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                    this.f12719so = new com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.so(this, this.kkU);
                    break;
                } else {
                    this.f12719so = new com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.cFZ(this, this.jFA, viewGroup);
                    break;
                }
            case 18:
                if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                    this.f12719so = new com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.ba(this);
                    break;
                }
                break;
            case 20:
                if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                    this.f12719so = new com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.so(this, this.kkU);
                    break;
                }
                break;
            case 21:
                View view3 = this.ex;
                if (view3 != null && (view3 instanceof com.bytedance.sdk.component.adexpress.ba.ba) && ((com.bytedance.sdk.component.adexpress.ba.ba) view3).getShakeView() != null) {
                    ((com.bytedance.sdk.component.adexpress.ba.ba) this.ex).getShakeView().setTag(2);
                }
                this.f12719so = new com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.Pfn(this, this.jFA);
                break;
        }
        View.OnTouchListener onTouchListener = this.f12719so;
        if (onTouchListener != null) {
            setOnTouchListener(onTouchListener);
        }
        if (so()) {
            this.ex.setTag(2);
            setOnClickListener((View.OnClickListener) this.ZYk.getDynamicClickListener());
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.so
    public void oJ() {
        if (TextUtils.equals(this.f12718ba, SubsSku.SCENE_AD_2_PAY)) {
            com.bytedance.sdk.component.adexpress.ba.Ry ry = this.cFZ;
            if (ry != null) {
                ry.tB();
                postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.tB.jFA.2
                    @Override // java.lang.Runnable
                    public void run() {
                        jFA.this.jFA();
                    }
                }, 300L);
            }
        } else if (TextUtils.equals(this.f12718ba, "20")) {
            postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.tB.jFA.3
                @Override // java.lang.Runnable
                public void run() {
                    jFA.this.jFA();
                }
            }, 400L);
        } else {
            jFA();
        }
    }
}
