package com.mbridge.msdk.splash.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.shake.MBShakeView;
import com.mbridge.msdk.splash.common.c;
/* loaded from: classes6.dex */
public class MBSplashNativeView extends BaseMBSplashNativeView {

    /* loaded from: classes6.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBSplashNativeView.this.a(0);
        }
    }

    /* loaded from: classes6.dex */
    class b extends com.mbridge.msdk.shake.b {
        b(int i10, int i11) {
            super(i10, i11);
        }

        @Override // com.mbridge.msdk.shake.b
        public void a() {
            MBSplashNativeView mBSplashNativeView = MBSplashNativeView.this;
            if (mBSplashNativeView.J || mBSplashNativeView.I) {
                return;
            }
            mBSplashNativeView.a(4);
            com.mbridge.msdk.shake.a.a().b(this);
        }
    }

    public MBSplashNativeView(Context context) {
        super(context);
    }

    @Override // com.mbridge.msdk.splash.view.BaseMBSplashNativeView
    protected void b() {
        if (this.f29343x == 1) {
            MBShakeView mBShakeView = new MBShakeView(getContext());
            this.O = mBShakeView;
            mBShakeView.initView(this.N.getAdCall());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            this.O.setLayoutParams(layoutParams);
            addView(this.O);
            this.f29337r.setVisibility(4);
            this.f29337r.setEnabled(false);
            a1.a(this.O, this.N.getLocalRequestId(), this.N.getLocalAllowTrackClick());
            this.O.setOnClickListener(new a());
            this.S = new b(this.f29344y, this.f29345z * 1000);
        }
    }

    @Override // com.mbridge.msdk.splash.view.BaseMBSplashNativeView
    protected void e() {
        this.f29332m.setVisibility(8);
    }

    public MBSplashNativeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MBSplashNativeView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public MBSplashNativeView(Context context, MBSplashView mBSplashView, c cVar) {
        super(context, mBSplashView, cVar);
    }
}
