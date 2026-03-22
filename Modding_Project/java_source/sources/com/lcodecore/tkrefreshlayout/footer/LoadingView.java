package com.lcodecore.tkrefreshlayout.footer;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import cc.a;
import cc.g;
/* loaded from: classes5.dex */
public class LoadingView extends ImageView implements a {
    public LoadingView(Context context) {
        this(context, null);
    }

    @Override // cc.a
    public void a(float f10, float f11) {
        ((AnimationDrawable) getDrawable()).start();
    }

    public LoadingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LoadingView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        int a10 = fc.a.a(context, 34.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(a10, a10);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        setImageResource(g.f3432a);
    }

    @Override // cc.a
    public View getView() {
        return this;
    }

    @Override // cc.a
    public void onFinish() {
    }

    @Override // cc.a
    public void reset() {
    }

    @Override // cc.a
    public void b(float f10, float f11, float f12) {
    }

    @Override // cc.a
    public void c(float f10, float f11, float f12) {
    }
}
