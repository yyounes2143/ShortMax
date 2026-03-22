package com.applovin.impl.adview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import com.applovin.impl.o0;
import com.applovin.impl.v4;
import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes2.dex */
public class AppLovinTouchToClickListener implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private final long f7349a;

    /* renamed from: b  reason: collision with root package name */
    private final int f7350b;

    /* renamed from: c  reason: collision with root package name */
    private final int f7351c;

    /* renamed from: d  reason: collision with root package name */
    private final ClickRecognitionState f7352d;

    /* renamed from: e  reason: collision with root package name */
    private long f7353e;

    /* renamed from: f  reason: collision with root package name */
    private PointF f7354f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f7355g;

    /* renamed from: h  reason: collision with root package name */
    private final Context f7356h;

    /* renamed from: i  reason: collision with root package name */
    private final OnClickListener f7357i;

    /* loaded from: classes2.dex */
    public enum ClickRecognitionState {
        DISABLED,
        ACTION_DOWN,
        ACTION_POINTER_UP,
        ACTION_UP
    }

    /* loaded from: classes2.dex */
    public interface OnClickListener {
        void onClick(View view, MotionEvent motionEvent);
    }

    public AppLovinTouchToClickListener(com.applovin.impl.sdk.k kVar, v4 v4Var, Context context, OnClickListener onClickListener) {
        this.f7349a = ((Long) kVar.a(v4.f10242f0)).longValue();
        this.f7350b = ((Integer) kVar.a(v4.f10250g0)).intValue();
        this.f7351c = AppLovinSdkUtils.dpToPx(context, ((Integer) kVar.a(v4.f10282k0)).intValue());
        this.f7352d = ClickRecognitionState.values()[((Integer) kVar.a(v4Var)).intValue()];
        this.f7356h = context;
        this.f7357i = onClickListener;
    }

    private void a(View view, MotionEvent motionEvent) {
        this.f7357i.onClick(view, motionEvent);
        this.f7355g = true;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int i10;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 6 && !this.f7355g && this.f7352d == ClickRecognitionState.ACTION_POINTER_UP) {
                    a(view, motionEvent);
                }
            } else if (!this.f7355g && this.f7352d == ClickRecognitionState.ACTION_UP) {
                a(view, motionEvent);
            } else if (this.f7352d == ClickRecognitionState.DISABLED) {
                long elapsedRealtime = SystemClock.elapsedRealtime() - this.f7353e;
                float a10 = a(this.f7354f, new PointF(motionEvent.getX(), motionEvent.getY()));
                if (!this.f7355g) {
                    long j10 = this.f7349a;
                    if ((j10 < 0 || elapsedRealtime < j10) && ((i10 = this.f7350b) < 0 || a10 < i10)) {
                        a(view, motionEvent);
                    }
                }
            }
        } else if (this.f7352d == ClickRecognitionState.ACTION_DOWN) {
            if (a(motionEvent)) {
                a(view, motionEvent);
            }
        } else {
            this.f7353e = SystemClock.elapsedRealtime();
            this.f7354f = new PointF(motionEvent.getX(), motionEvent.getY());
            this.f7355g = false;
        }
        return true;
    }

    private float a(PointF pointF, PointF pointF2) {
        float f10 = pointF.x - pointF2.x;
        float f11 = pointF.y - pointF2.y;
        return a((float) Math.sqrt((f10 * f10) + (f11 * f11)));
    }

    private float a(float f10) {
        return f10 / this.f7356h.getResources().getDisplayMetrics().density;
    }

    private boolean a(MotionEvent motionEvent) {
        if (this.f7351c <= 0) {
            return true;
        }
        Point b10 = o0.b(this.f7356h);
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int i10 = this.f7351c;
        float f10 = i10;
        return rawX >= f10 && rawY >= f10 && rawX <= ((float) (b10.x - i10)) && rawY <= ((float) (b10.y - i10));
    }
}
