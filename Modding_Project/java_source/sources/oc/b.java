package oc;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import androidx.annotation.NonNull;
import com.tencent.mmkv.MMKV;
/* compiled from: ProgressDrawable.java */
/* loaded from: classes6.dex */
public class b extends a implements Animatable, ValueAnimator.AnimatorUpdateListener {

    /* renamed from: e  reason: collision with root package name */
    protected ValueAnimator f63180e;

    /* renamed from: b  reason: collision with root package name */
    protected int f63177b = 0;

    /* renamed from: c  reason: collision with root package name */
    protected int f63178c = 0;

    /* renamed from: d  reason: collision with root package name */
    protected int f63179d = 0;

    /* renamed from: f  reason: collision with root package name */
    protected Path f63181f = new Path();

    public b() {
        ValueAnimator ofInt = ValueAnimator.ofInt(30, MMKV.ExpireInHour);
        this.f63180e = ofInt;
        ofInt.setDuration(10000L);
        this.f63180e.setInterpolator(null);
        this.f63180e.setRepeatCount(-1);
        this.f63180e.setRepeatMode(1);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int width = bounds.width();
        int height = bounds.height();
        float f10 = width;
        float max = Math.max(1.0f, f10 / 22.0f);
        if (this.f63177b != width || this.f63178c != height) {
            this.f63181f.reset();
            Path path = this.f63181f;
            float f11 = f10 - max;
            float f12 = height / 2.0f;
            Path.Direction direction = Path.Direction.CW;
            path.addCircle(f11, f12, max, direction);
            float f13 = f10 - (5.0f * max);
            this.f63181f.addRect(f13, f12 - max, f11, f12 + max, direction);
            this.f63181f.addCircle(f13, f12, max, direction);
            this.f63177b = width;
            this.f63178c = height;
        }
        canvas.save();
        float f14 = f10 / 2.0f;
        float f15 = height / 2.0f;
        canvas.rotate(this.f63179d, f14, f15);
        for (int i10 = 0; i10 < 12; i10++) {
            this.f63176a.setAlpha((i10 + 5) * 17);
            canvas.rotate(30.0f, f14, f15);
            canvas.drawPath(this.f63181f, this.f63176a);
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f63180e.isRunning();
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f63179d = (((Integer) valueAnimator.getAnimatedValue()).intValue() / 30) * 30;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (!this.f63180e.isRunning()) {
            this.f63180e.addUpdateListener(this);
            this.f63180e.start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.f63180e.isRunning()) {
            this.f63180e.removeAllListeners();
            this.f63180e.removeAllUpdateListeners();
            this.f63180e.cancel();
        }
    }
}
