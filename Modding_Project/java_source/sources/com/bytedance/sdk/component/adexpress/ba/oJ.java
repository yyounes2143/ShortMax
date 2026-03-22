package com.bytedance.sdk.component.adexpress.ba;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.bytedance.sdk.component.utils.IUZ;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class oJ extends TextSwitcher implements ViewSwitcher.ViewFactory, IUZ.oJ {
    private int BTZ;
    private Context Pfn;
    private int PiB;
    private Handler WcQ;
    private List<String> ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private TextView f12662ba;
    private int cFZ;
    private int dLZ;
    private final int ex;
    private float jFA;
    private int kkU;
    Animation.AnimationListener oJ;

    /* renamed from: so  reason: collision with root package name */
    private int f12663so;
    private int tB;

    public oJ(Context context, int i10, float f10, int i11, int i12) {
        super(context);
        this.ZYk = new ArrayList();
        this.tB = 0;
        this.ex = 1;
        this.WcQ = new IUZ(Looper.getMainLooper(), this);
        this.oJ = new Animation.AnimationListener() { // from class: com.bytedance.sdk.component.adexpress.ba.oJ.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (oJ.this.f12662ba != null) {
                    oJ.this.f12662ba.setText("");
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        };
        this.Pfn = context;
        this.f12663so = i10;
        this.jFA = f10;
        this.kkU = i11;
        this.PiB = i12;
        tB();
    }

    private void tB() {
        setFactory(this);
    }

    public void ZYk() {
        List<String> list = this.ZYk;
        if (list != null && list.size() > 0) {
            int i10 = this.tB;
            this.tB = i10 + 1;
            this.dLZ = i10;
            setText(this.ZYk.get(i10));
            if (this.tB > this.ZYk.size() - 1) {
                this.tB = 0;
            }
        }
    }

    @Override // android.widget.ViewSwitcher.ViewFactory
    public View makeView() {
        TextView textView = new TextView(getContext());
        this.f12662ba = textView;
        textView.setTextColor(this.f12663so);
        this.f12662ba.setTextSize(this.jFA);
        this.f12662ba.setMaxLines(this.kkU);
        this.f12662ba.setTextAlignment(this.PiB);
        return this.f12662ba;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.WcQ.sendEmptyMessageDelayed(1, this.cFZ);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.WcQ.removeMessages(1);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        try {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(com.bytedance.sdk.component.adexpress.dynamic.Pfn.dLZ.ZYk(this.ZYk.get(this.dLZ), this.jFA, false)[0], 1073741824), i10);
        } catch (Exception unused) {
            super.onMeasure(i10, i11);
        }
    }

    public void setAnimationDuration(int i10) {
        this.cFZ = i10;
    }

    public void setAnimationText(List<String> list) {
        this.ZYk = list;
    }

    public void setAnimationType(int i10) {
        this.BTZ = i10;
    }

    public void setMaxLines(int i10) {
        this.kkU = i10;
    }

    public void setTextColor(int i10) {
        this.f12663so = i10;
    }

    public void setTextSize(float f10) {
        this.jFA = f10;
    }

    public void oJ() {
        int i10 = this.BTZ;
        if (i10 == 1) {
            setInAnimation(getContext(), com.bytedance.sdk.component.utils.cY.jFA(this.Pfn, "tt_text_animation_y_in"));
            setOutAnimation(getContext(), com.bytedance.sdk.component.utils.cY.jFA(this.Pfn, "tt_text_animation_y_out"));
        } else if (i10 == 0) {
            setInAnimation(getContext(), com.bytedance.sdk.component.utils.cY.jFA(this.Pfn, "tt_text_animation_x_in"));
            setOutAnimation(getContext(), com.bytedance.sdk.component.utils.cY.jFA(this.Pfn, "tt_text_animation_x_in"));
            getInAnimation().setInterpolator(new LinearInterpolator());
            getOutAnimation().setInterpolator(new LinearInterpolator());
            getInAnimation().setAnimationListener(this.oJ);
            getOutAnimation().setAnimationListener(this.oJ);
        }
        this.WcQ.sendEmptyMessage(1);
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
        if (message.what != 1) {
            return;
        }
        ZYk();
        this.WcQ.sendEmptyMessageDelayed(1, this.cFZ);
    }
}
