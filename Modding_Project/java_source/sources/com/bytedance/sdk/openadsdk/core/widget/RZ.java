package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class RZ {
    private ZYk Pfn;
    private TextView ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f13297ba = false;
    private com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk cFZ;
    private com.bytedance.sdk.openadsdk.core.BTZ.ZYk.oJ ex;
    private View oJ;

    /* renamed from: so  reason: collision with root package name */
    private ViewGroup f13298so;
    private Context tB;

    /* loaded from: classes3.dex */
    public interface ZYk {
        void dLZ();

        boolean kkU();
    }

    /* loaded from: classes3.dex */
    public enum oJ {
        PAUSE_VIDEO,
        RELEASE_VIDEO,
        START_VIDEO
    }

    private void ex() {
        View view = this.oJ;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB() {
        if (this.tB == null) {
            return;
        }
        ex();
    }

    private void ZYk() {
        this.cFZ = null;
    }

    public void oJ(Context context, ViewGroup viewGroup) {
        if (context == null || viewGroup == null) {
            return;
        }
        this.f13298so = viewGroup;
        this.tB = com.bytedance.sdk.openadsdk.core.si.oJ().getApplicationContext();
    }

    private void oJ(Context context, View view, boolean z10) {
        ViewGroup.LayoutParams oJ2;
        if (context == null || view == null || this.oJ != null || (oJ2 = oJ(this.f13298so)) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.WcQ.awB awb = new com.bytedance.sdk.openadsdk.WcQ.awB(context);
        this.oJ = awb;
        awb.setLayoutParams(oJ2);
        this.f13298so.addView(this.oJ);
        this.ZYk = (TextView) this.oJ.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.f13415pe);
        View findViewById = this.oJ.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.Dc);
        if (z10) {
            findViewById.setClickable(true);
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.RZ.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    RZ.this.tB();
                    if (RZ.this.ex != null) {
                        RZ.this.ex.oJ(oJ.START_VIDEO, (String) null);
                    }
                }
            });
            return;
        }
        findViewById.setOnClickListener(null);
        findViewById.setClickable(false);
    }

    private ViewGroup.LayoutParams oJ(ViewGroup viewGroup) {
        if (viewGroup instanceof RelativeLayout) {
            return new RelativeLayout.LayoutParams(-1, -1);
        }
        if (viewGroup instanceof LinearLayout) {
            return new LinearLayout.LayoutParams(-1, -1);
        }
        if (viewGroup instanceof FrameLayout) {
            return new FrameLayout.LayoutParams(-1, -1);
        }
        return null;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.BTZ.ZYk.oJ oJVar, ZYk zYk) {
        this.Pfn = zYk;
        this.ex = oJVar;
    }

    public boolean oJ(int i10, com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk zYk, boolean z10) {
        Context context = this.tB;
        if (context == null || zYk == null) {
            return true;
        }
        oJ(context, this.f13298so, z10);
        this.cFZ = zYk;
        if (i10 == 1 || i10 == 2) {
            return oJ(i10);
        }
        return true;
    }

    private boolean oJ(int i10) {
        ZYk zYk;
        if (oJ() || this.f13297ba) {
            return true;
        }
        if (this.ex != null && (zYk = this.Pfn) != null) {
            if (zYk.kkU()) {
                this.ex.Pfn(null, null);
            }
            this.ex.oJ(oJ.PAUSE_VIDEO, (String) null);
        }
        oJ(this.cFZ, true);
        return false;
    }

    public void oJ(boolean z10) {
        if (z10) {
            ZYk();
        }
        ex();
    }

    public boolean oJ() {
        View view = this.oJ;
        return view != null && view.getVisibility() == 0;
    }

    private void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk zYk, boolean z10) {
        View view;
        String str;
        View view2;
        if (zYk == null || (view = this.oJ) == null || this.tB == null || view.getVisibility() == 0) {
            return;
        }
        ZYk zYk2 = this.Pfn;
        if (zYk2 != null) {
            zYk2.dLZ();
        }
        double ceil = Math.ceil((zYk.Pfn() * 1.0d) / 1048576.0d);
        if (z10) {
            str = String.format(cY.oJ(this.tB, "tt_video_without_wifi_tips"), Float.valueOf(Double.valueOf(ceil).floatValue()));
        } else {
            str = cY.oJ(this.tB, "tt_video_without_wifi_tips") + cY.oJ(this.tB, "tt_video_bytesize");
        }
        cdg.oJ(this.oJ, 0);
        cdg.oJ(this.ZYk, str);
        Log.i("VideoTrafficTipLayout", "showTrafficTipCover: ");
        if (!cdg.ex(this.oJ) || (view2 = this.oJ) == null) {
            return;
        }
        view2.bringToFront();
        Log.i("VideoTrafficTipLayout", "showTrafficTipCover: bringToFront");
    }
}
