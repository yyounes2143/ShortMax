package com.bytedance.sdk.component.adexpress.ba;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class BTZ extends View {
    private Xfermode BTZ;
    private int Pfn;
    private PorterDuff.Mode PiB;
    private LinearGradient WcQ;
    Rect ZYk;
    private final List<oJ> awB;

    /* renamed from: ba  reason: collision with root package name */
    private int f12641ba;
    private int cFZ;
    private Paint dLZ;
    private int ex;
    private int[] jFA;
    private Bitmap kkU;
    Rect oJ;

    /* renamed from: so  reason: collision with root package name */
    private int f12642so;
    private int tB;

    /* loaded from: classes3.dex */
    public static class oJ {
        private int ZYk = 0;
        private final int oJ;

        public oJ(int i10) {
            this.oJ = i10;
        }

        public void oJ() {
            this.ZYk += this.oJ;
        }
    }

    public BTZ(Context context) {
        super(context);
        this.PiB = PorterDuff.Mode.DST_IN;
        this.awB = new ArrayList();
        oJ();
    }

    private void oJ() {
        this.tB = com.bytedance.sdk.component.utils.cY.ex(getContext(), "tt_splash_unlock_image_arrow");
        this.ex = Color.parseColor("#00ffffff");
        this.Pfn = Color.parseColor("#ffffffff");
        int parseColor = Color.parseColor("#00ffffff");
        this.f12641ba = parseColor;
        this.cFZ = 10;
        this.f12642so = 40;
        this.jFA = new int[]{this.ex, this.Pfn, parseColor};
        setLayerType(1, null);
        this.dLZ = new Paint(1);
        this.kkU = BitmapFactory.decodeResource(getResources(), this.tB);
        this.BTZ = new PorterDuffXfermode(this.PiB);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawBitmap(this.kkU, this.oJ, this.ZYk, this.dLZ);
        canvas.save();
        Iterator<oJ> it = this.awB.iterator();
        while (it.hasNext()) {
            oJ next = it.next();
            this.WcQ = new LinearGradient(next.ZYk, 0.0f, next.ZYk + this.f12642so, this.cFZ, this.jFA, (float[]) null, Shader.TileMode.CLAMP);
            this.dLZ.setColor(-1);
            this.dLZ.setShader(this.WcQ);
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.dLZ);
            this.dLZ.setShader(null);
            next.oJ();
            if (next.ZYk > getWidth()) {
                it.remove();
            }
        }
        this.dLZ.setXfermode(this.BTZ);
        canvas.drawBitmap(this.kkU, this.oJ, this.ZYk, this.dLZ);
        this.dLZ.setXfermode(null);
        canvas.restore();
        invalidate();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (this.kkU == null) {
            return;
        }
        this.oJ = new Rect(0, 0, this.kkU.getWidth(), this.kkU.getHeight());
        this.ZYk = new Rect(0, 0, getWidth(), getHeight());
    }

    public void oJ(int i10) {
        this.awB.add(new oJ(i10));
        postInvalidate();
    }
}
