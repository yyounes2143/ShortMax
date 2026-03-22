package io.bidmachine.iab.vast.view;

import android.content.Context;
import android.view.TextureView;
import androidx.annotation.NonNull;
/* loaded from: classes7.dex */
public class IabVideoTexture extends TextureView {

    /* renamed from: a  reason: collision with root package name */
    private int f54973a;

    /* renamed from: b  reason: collision with root package name */
    private int f54974b;

    public IabVideoTexture(@NonNull Context context) {
        super(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0059, code lost:
        if (r1 > r6) goto L15;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.f54973a
            int r0 = android.view.View.getDefaultSize(r0, r6)
            int r1 = r5.f54974b
            int r1 = android.view.View.getDefaultSize(r1, r7)
            int r2 = r5.f54973a
            if (r2 <= 0) goto L75
            int r2 = r5.f54974b
            if (r2 <= 0) goto L75
            int r0 = android.view.View.MeasureSpec.getMode(r6)
            int r6 = android.view.View.MeasureSpec.getSize(r6)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            int r7 = android.view.View.MeasureSpec.getSize(r7)
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 != r2) goto L3e
            if (r1 != r2) goto L3e
            int r0 = r5.f54973a
            int r1 = r0 * r7
            int r2 = r5.f54974b
            int r3 = r6 * r2
            if (r1 >= r3) goto L38
            int r0 = r1 / r2
        L36:
            r1 = r7
            goto L75
        L38:
            if (r1 <= r3) goto L5b
            int r1 = r3 / r0
        L3c:
            r0 = r6
            goto L75
        L3e:
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r2) goto L4f
            int r0 = r5.f54974b
            int r0 = r0 * r6
            int r2 = r5.f54973a
            int r0 = r0 / r2
            if (r1 != r3) goto L4d
            if (r0 <= r7) goto L4d
            goto L5b
        L4d:
            r1 = r0
            goto L3c
        L4f:
            if (r1 != r2) goto L5f
            int r1 = r5.f54973a
            int r1 = r1 * r7
            int r2 = r5.f54974b
            int r1 = r1 / r2
            if (r0 != r3) goto L5d
            if (r1 <= r6) goto L5d
        L5b:
            r0 = r6
            goto L36
        L5d:
            r0 = r1
            goto L36
        L5f:
            int r2 = r5.f54973a
            int r4 = r5.f54974b
            if (r1 != r3) goto L6b
            if (r4 <= r7) goto L6b
            int r1 = r7 * r2
            int r1 = r1 / r4
            goto L6d
        L6b:
            r1 = r2
            r7 = r4
        L6d:
            if (r0 != r3) goto L5d
            if (r1 <= r6) goto L5d
            int r4 = r4 * r6
            int r1 = r4 / r2
            goto L3c
        L75:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r0)
            java.lang.String r7 = "/"
            r6.append(r7)
            r6.append(r1)
            java.lang.String r6 = r6.toString()
            java.lang.String r7 = "Size"
            android.util.Log.e(r7, r6)
            r5.setMeasuredDimension(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.iab.vast.view.IabVideoTexture.onMeasure(int, int):void");
    }

    public void setVideoSize(int i10, int i11) {
        this.f54973a = i10;
        this.f54974b = i11;
        requestLayout();
    }
}
