package oc;

import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
/* compiled from: PaintDrawable.java */
/* loaded from: classes6.dex */
public abstract class a extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    protected Paint f63176a;

    /* JADX INFO: Access modifiers changed from: protected */
    public a() {
        Paint paint = new Paint();
        this.f63176a = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f63176a.setAntiAlias(true);
        this.f63176a.setColor(-5592406);
    }

    public void a(int i10) {
        this.f63176a.setColor(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f63176a.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f63176a.setColorFilter(colorFilter);
    }
}
