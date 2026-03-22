package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.Window;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class BTZ {
    private final com.bytedance.sdk.openadsdk.component.reward.oJ.oJ ZYk;
    protected int oJ;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static abstract class oJ implements View.OnLayoutChangeListener {
        private int ZYk;
        private int oJ;

        private oJ() {
        }

        abstract void oJ(int i10, int i11);

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            int i18 = i12 - i10;
            int i19 = i13 - i11;
            if (i18 != this.oJ || i19 != this.ZYk) {
                this.oJ = i18;
                this.ZYk = i19;
                oJ(i18, i19);
            }
        }
    }

    public BTZ(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        this.oJ = 0;
        this.ZYk = oJVar;
        ZYk();
        try {
            this.oJ = cdg.tB(oJVar.HyG, cdg.oJ());
            if (!oJVar.HyG.getWindow().hasFeature(1)) {
                oJVar.HyG.requestWindowFeature(1);
            }
            oJVar.HyG.getWindow().addFlags(16777344);
            if (oJVar.oTd == 2 || !cdg.tB(oJVar.HyG)) {
                oJVar.HyG.getWindow().addFlags(1024);
            }
        } catch (Throwable th2) {
            Log.e("TTAD.RFSM", "init: ", th2);
        }
    }

    private float Pfn() {
        return cdg.tB(this.ZYk.HyG, cdg.BTZ(this.ZYk.HyG));
    }

    private void ZYk() {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        oJVar.LS = oJVar.ZYk.dzr();
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.ZYk;
        oJVar2.oTd = oJ(oJVar2.HyG, oJVar2.ZYk);
    }

    private float ex() {
        return cdg.tB(this.ZYk.HyG, cdg.PiB(this.ZYk.HyG));
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    private void tB() {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
        if (oJVar.oTd == 2) {
            if (oJVar.yz) {
                oJ(oJVar.HyG, 8);
                return;
            } else {
                oJ(oJVar.HyG, 0);
                return;
            }
        }
        oJ(oJVar.HyG, 1);
    }

    public void oJ(IUZ iuz) {
        if (iuz == null) {
            return;
        }
        iuz.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.BTZ.1
            @Override // java.lang.Runnable
            public void run() {
                View findViewById;
                try {
                    View decorView = BTZ.this.ZYk.HyG.getWindow().getDecorView();
                    if (decorView != null && (findViewById = decorView.findViewById(16908335)) != null) {
                        findViewById.setVisibility(8);
                    }
                } catch (Exception unused) {
                }
            }
        }, 300L);
    }

    private float[] ZYk(int i10) {
        float Pfn = Pfn();
        float ex = ex();
        int i11 = this.ZYk.oTd;
        if ((i11 == 1) != (Pfn > ex)) {
            float f10 = Pfn + ex;
            ex = f10 - ex;
            Pfn = f10 - ex;
        }
        if (i11 == 1) {
            Pfn -= i10;
        } else {
            ex -= i10;
        }
        return new float[]{ex, Pfn};
    }

    public static int oJ(Activity activity, cY cYVar) {
        if (26 == Build.VERSION.SDK_INT) {
            return activity.getResources().getConfiguration().orientation == 1 ? 1 : 2;
        }
        return cYVar.Tt();
    }

    /* loaded from: classes3.dex */
    public static class ZYk {
        private oJ oJ;

        public void oJ(Activity activity) {
            Window window;
            if (this.oJ == null || activity == null || (window = activity.getWindow()) == null) {
                return;
            }
            window.getDecorView().removeOnLayoutChangeListener(this.oJ);
            this.oJ = null;
        }

        public void oJ(final Activity activity, final int i10, final float f10) {
            if (this.oJ != null) {
                return;
            }
            try {
                final boolean z10 = com.bytedance.sdk.openadsdk.core.si.ex().Jc() == 1;
                final boolean tB = cdg.tB(activity);
                if (tB || z10) {
                    this.oJ = new oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.BTZ.ZYk.1
                        boolean oJ;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super();
                        }

                        /* JADX WARN: Removed duplicated region for block: B:28:0x00a7 A[Catch: all -> 0x00c4, TryCatch #0 {all -> 0x00c4, blocks: (B:2:0x0000, B:4:0x0005, B:6:0x0013, B:8:0x0046, B:10:0x005e, B:12:0x0067, B:14:0x0075, B:15:0x0079, B:26:0x00a1, B:28:0x00a7, B:29:0x00ac, B:31:0x00b4, B:16:0x007c, B:18:0x0080, B:20:0x008e, B:22:0x0092, B:23:0x0098, B:25:0x009c, B:33:0x00ba, B:35:0x00be, B:7:0x002d), top: B:38:0x0000 }] */
                        /* JADX WARN: Removed duplicated region for block: B:31:0x00b4 A[Catch: all -> 0x00c4, TryCatch #0 {all -> 0x00c4, blocks: (B:2:0x0000, B:4:0x0005, B:6:0x0013, B:8:0x0046, B:10:0x005e, B:12:0x0067, B:14:0x0075, B:15:0x0079, B:26:0x00a1, B:28:0x00a7, B:29:0x00ac, B:31:0x00b4, B:16:0x007c, B:18:0x0080, B:20:0x008e, B:22:0x0092, B:23:0x0098, B:25:0x009c, B:33:0x00ba, B:35:0x00be, B:7:0x002d), top: B:38:0x0000 }] */
                        /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
                        @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.BTZ.oJ
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        void oJ(int r7, int r8) {
                            /*
                                r6 = this;
                                int r7 = r2     // Catch: java.lang.Throwable -> Lc4
                                r8 = 2
                                if (r7 != r8) goto L2d
                                android.app.Activity r7 = r3     // Catch: java.lang.Throwable -> Lc4
                                android.content.res.Resources r7 = r7.getResources()     // Catch: java.lang.Throwable -> Lc4
                                android.content.res.Configuration r7 = r7.getConfiguration()     // Catch: java.lang.Throwable -> Lc4
                                int r7 = r7.orientation     // Catch: java.lang.Throwable -> Lc4
                                if (r7 != r8) goto L2d
                                android.app.Activity r7 = r3     // Catch: java.lang.Throwable -> Lc4
                                android.view.Window r7 = r7.getWindow()     // Catch: java.lang.Throwable -> Lc4
                                android.view.View r7 = r7.getDecorView()     // Catch: java.lang.Throwable -> Lc4
                                int r7 = r7.getWidth()     // Catch: java.lang.Throwable -> Lc4
                                android.app.Activity r0 = r3     // Catch: java.lang.Throwable -> Lc4
                                int r0 = com.bytedance.sdk.openadsdk.utils.cdg.PiB(r0)     // Catch: java.lang.Throwable -> Lc4
                                int r0 = r0 - r7
                                int r7 = java.lang.Math.abs(r0)     // Catch: java.lang.Throwable -> Lc4
                                goto L46
                            L2d:
                                android.app.Activity r7 = r3     // Catch: java.lang.Throwable -> Lc4
                                android.view.Window r7 = r7.getWindow()     // Catch: java.lang.Throwable -> Lc4
                                android.view.View r7 = r7.getDecorView()     // Catch: java.lang.Throwable -> Lc4
                                int r7 = r7.getHeight()     // Catch: java.lang.Throwable -> Lc4
                                android.app.Activity r0 = r3     // Catch: java.lang.Throwable -> Lc4
                                int r0 = com.bytedance.sdk.openadsdk.utils.cdg.BTZ(r0)     // Catch: java.lang.Throwable -> Lc4
                                int r0 = r0 - r7
                                int r7 = java.lang.Math.abs(r0)     // Catch: java.lang.Throwable -> Lc4
                            L46:
                                android.app.Activity r0 = r3     // Catch: java.lang.Throwable -> Lc4
                                android.view.Window r0 = r0.getWindow()     // Catch: java.lang.Throwable -> Lc4
                                android.view.View r0 = r0.getDecorView()     // Catch: java.lang.Throwable -> Lc4
                                int r1 = r0.getPaddingLeft()     // Catch: java.lang.Throwable -> Lc4
                                int r2 = r0.getPaddingRight()     // Catch: java.lang.Throwable -> Lc4
                                int r3 = r0.getPaddingBottom()     // Catch: java.lang.Throwable -> Lc4
                                if (r7 != 0) goto Lba
                                int r7 = r0.getPaddingTop()     // Catch: java.lang.Throwable -> Lc4
                                int r4 = r2     // Catch: java.lang.Throwable -> Lc4
                                r5 = 1
                                if (r4 != r5) goto L7c
                                android.app.Activity r4 = r3     // Catch: java.lang.Throwable -> Lc4
                                android.content.res.Resources r4 = r4.getResources()     // Catch: java.lang.Throwable -> Lc4
                                android.content.res.Configuration r4 = r4.getConfiguration()     // Catch: java.lang.Throwable -> Lc4
                                int r4 = r4.orientation     // Catch: java.lang.Throwable -> Lc4
                                if (r4 != r5) goto L7c
                                float r8 = com.bytedance.sdk.openadsdk.utils.cdg.oJ()     // Catch: java.lang.Throwable -> Lc4
                            L79:
                                int r8 = (int) r8     // Catch: java.lang.Throwable -> Lc4
                                int r7 = r7 + r8
                                goto La1
                            L7c:
                                int r4 = r2     // Catch: java.lang.Throwable -> Lc4
                                if (r4 != r8) goto La1
                                android.app.Activity r4 = r3     // Catch: java.lang.Throwable -> Lc4
                                android.content.res.Resources r4 = r4.getResources()     // Catch: java.lang.Throwable -> Lc4
                                android.content.res.Configuration r4 = r4.getConfiguration()     // Catch: java.lang.Throwable -> Lc4
                                int r4 = r4.orientation     // Catch: java.lang.Throwable -> Lc4
                                if (r4 != r8) goto La1
                                boolean r8 = r4     // Catch: java.lang.Throwable -> Lc4
                                if (r8 == 0) goto L98
                                float r8 = com.bytedance.sdk.openadsdk.utils.cdg.oJ()     // Catch: java.lang.Throwable -> Lc4
                                int r8 = (int) r8     // Catch: java.lang.Throwable -> Lc4
                                int r1 = r1 + r8
                            L98:
                                boolean r8 = r5     // Catch: java.lang.Throwable -> Lc4
                                if (r8 == 0) goto La1
                                float r8 = com.bytedance.sdk.openadsdk.utils.cdg.oJ()     // Catch: java.lang.Throwable -> Lc4
                                goto L79
                            La1:
                                boolean r8 = r0.isAttachedToWindow()     // Catch: java.lang.Throwable -> Lc4
                                if (r8 == 0) goto Lac
                                r0.setPadding(r1, r7, r2, r3)     // Catch: java.lang.Throwable -> Lc4
                                r6.oJ = r5     // Catch: java.lang.Throwable -> Lc4
                            Lac:
                                float r7 = r6     // Catch: java.lang.Throwable -> Lc4
                                r8 = 1120403456(0x42c80000, float:100.0)
                                int r7 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
                                if (r7 != 0) goto Lb9
                                r7 = -16777216(0xffffffffff000000, float:-1.7014118E38)
                                r0.setBackgroundColor(r7)     // Catch: java.lang.Throwable -> Lc4
                            Lb9:
                                return
                            Lba:
                                boolean r7 = r6.oJ     // Catch: java.lang.Throwable -> Lc4
                                if (r7 == 0) goto Lc4
                                r7 = 0
                                r0.setPadding(r1, r7, r2, r3)     // Catch: java.lang.Throwable -> Lc4
                                r6.oJ = r7     // Catch: java.lang.Throwable -> Lc4
                            Lc4:
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.oJ.BTZ.ZYk.AnonymousClass1.oJ(int, int):void");
                        }
                    };
                    activity.getWindow().getDecorView().addOnLayoutChangeListener(this.oJ);
                }
            } catch (Exception unused) {
            }
        }
    }

    public void oJ(boolean z10) {
        float min;
        float max;
        int max2;
        int i10;
        int i11;
        int i12 = Build.VERSION.SDK_INT;
        if (i12 != 26) {
            if (i12 == 27) {
                try {
                    tB();
                } catch (Throwable unused) {
                }
            } else {
                tB();
            }
        }
        float ex = ex();
        float Pfn = Pfn();
        if (this.ZYk.oTd == 2) {
            min = Math.max(ex, Pfn);
            max = Math.min(ex, Pfn);
        } else {
            min = Math.min(ex, Pfn);
            max = Math.max(ex, Pfn);
        }
        Activity activity = this.ZYk.HyG;
        int tB = cdg.tB(activity, cdg.oJ());
        if (this.ZYk.oTd != 2) {
            if (cdg.tB(activity)) {
                max -= tB;
            }
        } else if (cdg.tB(activity)) {
            min -= tB;
        }
        if (z10) {
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.ZYk;
            oJVar.NO = (int) min;
            oJVar.jB = (int) max;
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.ZYk;
        int i13 = 20;
        if (oJVar2.oTd != 2) {
            float f10 = oJVar2.LS;
            if (f10 != 0.0f && f10 != 100.0f) {
                i10 = (int) Math.max((max - (((min - 20.0f) - 20.0f) / f10)) / 2.0f, 0.0f);
                i11 = i10;
                max2 = 20;
            }
            i13 = 0;
            max2 = 0;
            i10 = 0;
            i11 = 0;
        } else {
            float f11 = oJVar2.LS;
            if (f11 != 0.0f && f11 != 100.0f) {
                max2 = (int) Math.max((min - (((max - 20.0f) - 20.0f) * f11)) / 2.0f, 0.0f);
                i10 = 20;
                i11 = 20;
                i13 = max2;
            }
            i13 = 0;
            max2 = 0;
            i10 = 0;
            i11 = 0;
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar3 = this.ZYk;
        float f12 = i13;
        float f13 = max2;
        oJVar3.NO = (int) ((min - f12) - f13);
        float f14 = i10;
        float f15 = i11;
        oJVar3.jB = (int) ((max - f14) - f15);
        com.bytedance.sdk.openadsdk.activity.so soVar = oJVar3.oCU;
        if (soVar == null || soVar.dLZ == 0) {
            activity.getWindow().getDecorView().setPadding(cdg.ZYk(activity, f12), cdg.ZYk(activity, f14), cdg.ZYk(activity, f13), cdg.ZYk(activity, f15));
        }
    }

    public float[] oJ(int i10) {
        float[] fArr = new float[2];
        Activity activity = this.ZYk.HyG;
        View decorView = activity.getWindow().getDecorView();
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 35 && this.ZYk.ZYk.dzr() == 100.0f) {
            fArr[0] = decorView.getWidth() - decorView.getPaddingLeft();
            fArr[1] = decorView.getHeight() - decorView.getPaddingTop();
        } else {
            fArr[0] = decorView.getWidth() - (decorView.getPaddingLeft() * 2);
            fArr[1] = decorView.getHeight() - (decorView.getPaddingTop() * 2);
        }
        fArr[0] = cdg.tB(activity, fArr[0]);
        float tB = cdg.tB(activity, fArr[1]);
        fArr[1] = tB;
        if (fArr[0] < 10.0f || tB < 10.0f) {
            fArr = ZYk(this.oJ);
        }
        if (i11 != 26 && i11 != 27 && activity.getResources() != null && activity.getResources().getConfiguration() != null) {
            if ((activity.getResources().getConfiguration().orientation == 2 ? 2 : 1) != i10) {
                if (i10 == 2) {
                    float f10 = fArr[0];
                    float f11 = fArr[1];
                    if (f10 < f11) {
                        fArr[1] = f10;
                        fArr[0] = f11;
                    }
                } else {
                    float f12 = fArr[0];
                    float f13 = fArr[1];
                    if (f12 > f13) {
                        fArr[1] = f12;
                        fArr[0] = f13;
                    }
                }
            }
        }
        return fArr;
    }

    public void oJ() {
        cdg.oJ(this.ZYk.HyG);
        this.ZYk.HyG.getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.BTZ.2
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i10) {
                if (i10 == 0) {
                    try {
                        if (BTZ.this.ZYk.HyG.isFinishing()) {
                            return;
                        }
                        BTZ.this.ZYk.HyG.getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.BTZ.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                cdg.oJ(BTZ.this.ZYk.HyG);
                            }
                        }, 2500L);
                    } catch (Exception e10) {
                        QSm.tB("TTAD.RFSM", e10.getMessage());
                    }
                }
            }
        });
    }

    private static void oJ(Activity activity, int i10) {
        if (activity.getRequestedOrientation() == i10) {
            return;
        }
        activity.setRequestedOrientation(i10);
    }
}
