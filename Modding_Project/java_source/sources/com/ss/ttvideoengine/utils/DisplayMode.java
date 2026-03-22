package com.ss.ttvideoengine.utils;

import android.view.View;
/* loaded from: classes6.dex */
public class DisplayMode {
    private static final String TAG = "DisplayMode";
    private View mDisplayView;
    private int mVideoHeight;
    private int mVideoWidth;
    private int mDisplayMode = 0;
    private boolean mEnable = true;
    private final Runnable applyDisplayMode = new Runnable() { // from class: com.ss.ttvideoengine.utils.a
        @Override // java.lang.Runnable
        public final void run() {
            DisplayMode.this.applyDisplayMode();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0078, code lost:
        if (r5 >= r8) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007d, code lost:
        if (r5 >= r8) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyDisplayMode() {
        /*
            r10 = this;
            boolean r0 = r10.mEnable
            if (r0 != 0) goto L5
            return
        L5:
            android.view.View r0 = r10.mDisplayView
            if (r0 != 0) goto La
            return
        La:
            android.view.ViewParent r1 = r0.getParent()
            boolean r2 = r1 instanceof android.view.View
            java.lang.String r3 = "DisplayMode"
            if (r2 != 0) goto L29
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "containerView error "
            r0.append(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            com.ss.ttvideoengine.utils.TTVideoEngineLog.d(r3, r0)
            return
        L29:
            android.view.View r1 = (android.view.View) r1
            int r2 = r1.getWidth()
            int r1 = r1.getHeight()
            int r4 = r10.mDisplayMode
            int r5 = r10.mVideoWidth
            int r6 = r10.mVideoHeight
            if (r5 <= 0) goto Lc0
            if (r6 <= 0) goto Lc0
            if (r2 <= 0) goto Lc0
            if (r1 > 0) goto L43
            goto Lc0
        L43:
            float r5 = (float) r5
            float r6 = (float) r6
            float r5 = r5 / r6
            float r6 = (float) r2
            float r7 = (float) r1
            float r8 = r6 / r7
            if (r4 == 0) goto L7b
            r9 = 1
            if (r4 == r9) goto L80
            r9 = 2
            if (r4 == r9) goto L76
            r8 = 3
            if (r4 == r8) goto L73
            r2 = 4
            if (r4 != r2) goto L5b
        L58:
            float r7 = r7 * r5
            int r2 = (int) r7
            goto L80
        L5b:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "unknown displayMode = "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L73:
            float r6 = r6 / r5
            int r1 = (int) r6
            goto L80
        L76:
            int r4 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1))
            if (r4 < 0) goto L73
            goto L58
        L7b:
            int r4 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1))
            if (r4 < 0) goto L58
            goto L73
        L80:
            android.view.ViewGroup$LayoutParams r4 = r0.getLayoutParams()
            android.widget.FrameLayout$LayoutParams r4 = (android.widget.FrameLayout.LayoutParams) r4
            if (r4 != 0) goto L89
            return
        L89:
            int r5 = r4.height
            r6 = 17
            if (r5 != r1) goto L97
            int r5 = r4.width
            if (r5 != r2) goto L97
            int r5 = r4.gravity
            if (r5 == r6) goto Lc0
        L97:
            r4.gravity = r6
            r4.width = r2
            r4.height = r1
            r0.setLayoutParams(r4)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "applyDisplayMode width:"
            r0.append(r1)
            int r1 = r4.width
            r0.append(r1)
            java.lang.String r1 = ", height:"
            r0.append(r1)
            int r1 = r4.height
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            com.ss.ttvideoengine.utils.TTVideoEngineLog.i(r3, r0)
        Lc0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.utils.DisplayMode.applyDisplayMode():void");
    }

    public void apply() {
        View view = this.mDisplayView;
        if (view != null && this.mEnable) {
            view.removeCallbacks(this.applyDisplayMode);
            this.mDisplayView.postOnAnimation(this.applyDisplayMode);
        }
    }

    public void setDisplayMode(int i10) {
        this.mDisplayMode = i10;
        apply();
    }

    public void setDisplayView(View view) {
        TTVideoEngineLog.d(TAG, "setDisplayView " + view);
        this.mDisplayView = view;
        if (view == null) {
            return;
        }
        apply();
    }

    public void setEnable(boolean z10) {
        this.mEnable = z10;
    }

    public void setVideoSize(int i10, int i11) {
        TTVideoEngineLog.d(TAG, "setVideoSize videoWidth:" + i10 + ", videoHeight:" + i11);
        this.mVideoWidth = i10;
        this.mVideoHeight = i11;
        apply();
    }
}
