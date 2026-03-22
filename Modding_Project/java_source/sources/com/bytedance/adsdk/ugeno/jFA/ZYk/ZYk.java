package com.bytedance.adsdk.ugeno.jFA.ZYk;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import com.bytedance.adsdk.ugeno.ZYk.oJ;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes3.dex */
public class ZYk extends com.bytedance.adsdk.ugeno.ZYk.oJ<com.bytedance.adsdk.ugeno.jFA.ZYk.oJ> {
    private com.bytedance.adsdk.ugeno.jFA.ZYk.oJ YF;

    /* loaded from: classes3.dex */
    public static class oJ extends oJ.C0141oJ {

        /* renamed from: tb  reason: collision with root package name */
        protected int f11679tb;

        public oJ(com.bytedance.adsdk.ugeno.ZYk.oJ oJVar) {
            super(oJVar);
            this.f11679tb = -1;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private int ZYk(String str) {
            char c10;
            str.hashCode();
            switch (str.hashCode()) {
                case -1383228885:
                    if (str.equals("bottom")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1364013995:
                    if (str.equals(TtmlNode.CENTER)) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -348726240:
                    if (str.equals("center_vertical")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 115029:
                    if (str.equals("top")) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3317767:
                    if (str.equals(TtmlNode.LEFT)) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 108511772:
                    if (str.equals(TtmlNode.RIGHT)) {
                        c10 = 5;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1063616078:
                    if (str.equals("center_horizontal")) {
                        c10 = 6;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            switch (c10) {
                case 0:
                    return 80;
                case 1:
                    return 17;
                case 2:
                    return 16;
                case 3:
                    return 48;
                case 4:
                    return 3;
                case 5:
                    return 5;
                case 6:
                    return 1;
                default:
                    return -1;
            }
        }

        @Override // com.bytedance.adsdk.ugeno.ZYk.oJ.C0141oJ
        /* renamed from: ZYk */
        public FrameLayout.LayoutParams oJ() {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) this.oJ, (int) this.ZYk);
            layoutParams.leftMargin = (int) this.f11623ba;
            layoutParams.rightMargin = (int) this.cFZ;
            layoutParams.topMargin = (int) this.f11627so;
            layoutParams.bottomMargin = (int) this.jFA;
            layoutParams.gravity = this.f11679tb;
            return layoutParams;
        }

        @Override // com.bytedance.adsdk.ugeno.ZYk.oJ.C0141oJ
        public void oJ(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            super.oJ(context, str, str2);
            if (TextUtils.equals(str, "layoutGravity")) {
                this.f11679tb = oJ(str2);
            }
        }

        private int oJ(String str) {
            String[] split;
            if (TextUtils.isEmpty(str) || (split = str.split("\\|")) == null || split.length <= 0) {
                return -1;
            }
            int i10 = 0;
            for (String str2 : split) {
                i10 |= ZYk(str2);
            }
            return i10;
        }
    }

    public ZYk(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ, com.bytedance.adsdk.ugeno.ZYk.tB
    public void ZYk() {
        this.YF.setEventMap(this.eXp);
        super.ZYk();
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ
    public oJ.C0141oJ kkU() {
        return new oJ(this);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    /* renamed from: tB */
    public com.bytedance.adsdk.ugeno.jFA.ZYk.oJ oJ() {
        com.bytedance.adsdk.ugeno.jFA.ZYk.oJ oJVar = new com.bytedance.adsdk.ugeno.jFA.ZYk.oJ(this.ZYk);
        this.YF = oJVar;
        oJVar.oJ(this);
        return this.YF;
    }
}
