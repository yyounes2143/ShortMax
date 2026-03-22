package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.util.AttributeSet;
import com.mbridge.msdk.dycreator.binding.response.SplashResData;
import com.mbridge.msdk.dycreator.bus.EventBus;
import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.util.timer.a;
import com.mbridge.msdk.util.timer.b;
/* loaded from: classes5.dex */
public class MBCountDownView extends MBTextView {

    /* renamed from: f  reason: collision with root package name */
    private b f26139f;

    /* renamed from: g  reason: collision with root package name */
    private MBCountDownView f26140g;

    public MBCountDownView(Context context) {
        super(context);
        this.f26140g = this;
    }

    public void initView(final String str, final String str2, int i10) {
        this.f26139f = new b().b(i10 * 1000).a(1000L).a(new a() { // from class: com.mbridge.msdk.dycreator.baseview.MBCountDownView.1
            @Override // com.mbridge.msdk.util.timer.a
            public void onFinish() {
                MBCountDownView.this.f26139f.a();
                SplashResData splashResData = new SplashResData();
                splashResData.seteAction(EAction.CLOSE);
                EventBus.getDefault().post(splashResData);
            }

            @Override // com.mbridge.msdk.util.timer.a
            public void onTick(long j10) {
                if (str2.startsWith("zh")) {
                    MBCountDownView mBCountDownView = MBCountDownView.this.f26140g;
                    mBCountDownView.setText((j10 / 1000) + "s" + str);
                    return;
                }
                MBCountDownView mBCountDownView2 = MBCountDownView.this.f26140g;
                mBCountDownView2.setText(MBCountDownView.this.f26140g + " " + (j10 / 1000) + "s");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.dycreator.baseview.MBTextView, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        b bVar = this.f26139f;
        if (bVar != null) {
            bVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.dycreator.baseview.MBTextView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b bVar = this.f26139f;
        if (bVar != null) {
            bVar.a();
        }
    }

    public MBCountDownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26140g = this;
    }

    public MBCountDownView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26140g = this;
    }
}
