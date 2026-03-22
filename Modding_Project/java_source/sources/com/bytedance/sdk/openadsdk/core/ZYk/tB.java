package com.bytedance.sdk.openadsdk.core.ZYk;

import android.graphics.Point;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.settings.jFA;
import com.bytedance.sdk.openadsdk.core.si;
import com.ss.ttvideoengine.log.VideoEventOnePlay;
/* loaded from: classes3.dex */
public abstract class tB implements View.OnClickListener, View.OnTouchListener {
    protected static int LpP = 8;
    private static long Pfn;
    private static float ZYk;
    private static float ex;
    private static float oJ;
    private static float tB;
    protected View Jc;

    /* renamed from: oq  reason: collision with root package name */
    protected float f13114oq = -1.0f;
    protected float Id = -1.0f;
    protected float cY = -1.0f;

    /* renamed from: jr  reason: collision with root package name */
    protected float f13113jr = -1.0f;
    protected long Xe = -1;

    /* renamed from: tb  reason: collision with root package name */
    protected long f13115tb = -1;
    protected int HL = -1;
    protected int IUZ = VideoEventOnePlay.EXIT_CODE_BEFORE_FIRST_FRAME_MSG_NOT_REPORT;
    protected int Ln = -1;
    protected boolean nke = true;
    public SparseArray<oJ> UN = new SparseArray<>();

    /* renamed from: ba  reason: collision with root package name */
    private int f13112ba = 0;
    private int cFZ = 0;

    /* loaded from: classes3.dex */
    public static class oJ {
        public double ZYk;
        public long ex;
        public int oJ;
        public double tB;

        public oJ(int i10, double d10, double d11, long j10) {
            this.oJ = i10;
            this.ZYk = d10;
            this.tB = d11;
            this.ex = j10;
        }
    }

    static {
        if (si.oJ() != null) {
            LpP = si.ZYk();
        }
        oJ = 0.0f;
        ZYk = 0.0f;
        tB = 0.0f;
        ex = 0.0f;
        Pfn = 0L;
    }

    private boolean oJ(View view, Point point) {
        int i10;
        int i11;
        int i12;
        int i13;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i14 = 0; i14 < viewGroup.getChildCount(); i14++) {
                View childAt = viewGroup.getChildAt(i14);
                if (ZYk.tB(childAt)) {
                    int[] iArr = new int[2];
                    childAt.getLocationOnScreen(iArr);
                    return view.isShown() && (i10 = point.x) >= (i11 = iArr[0]) && i10 <= i11 + childAt.getWidth() && (i12 = point.y) >= (i13 = iArr[1]) && i12 <= i13 + childAt.getHeight();
                } else if (oJ(childAt, point)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean cFZ() {
        return this.nke;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<oJ> sparseArray, boolean z10);

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!jFA.oJ()) {
            return;
        }
        oJ(view, this.f13114oq, this.Id, this.cY, this.f13113jr, this.UN, this.nke);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
        if (com.bytedance.sdk.openadsdk.core.ZYk.tB.ex <= r3) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r14, android.view.MotionEvent r15) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.ZYk.tB.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
