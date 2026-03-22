package com.startshorts.androidplayer.ui.view.library;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import cc.a;
import com.startshorts.androidplayer.databinding.PullUpLoadEndBinding;
/* loaded from: classes7.dex */
public class LoadMoreFinishLayout extends FrameLayout implements a {
    public LoadMoreFinishLayout(Context context) {
        this(context, null);
    }

    public LoadMoreFinishLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LoadMoreFinishLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        PullUpLoadEndBinding.b(LayoutInflater.from(context), this, true);
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
    public void a(float f10, float f11) {
    }

    @Override // cc.a
    public void b(float f10, float f11, float f12) {
    }

    @Override // cc.a
    public void c(float f10, float f11, float f12) {
    }
}
