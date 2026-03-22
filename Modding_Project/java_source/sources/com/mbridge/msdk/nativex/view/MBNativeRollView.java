package com.mbridge.msdk.nativex.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.out.NativeListener;
import java.util.List;
/* loaded from: classes6.dex */
public class MBNativeRollView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private RollingBCView f28355a;

    /* renamed from: b  reason: collision with root package name */
    private Context f28356b;

    /* renamed from: c  reason: collision with root package name */
    private NativeListener.FilpListener f28357c;

    /* loaded from: classes6.dex */
    public interface a {
    }

    @SuppressLint({"NewApi"})
    public MBNativeRollView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f28355a.dispatchTouchEvent(motionEvent);
    }

    public void setData(List<Frame> list, Context context, String str, a aVar) {
        this.f28355a.setData(list, context, str, aVar);
    }

    public void setFilpListening(NativeListener.FilpListener filpListener) {
        if (filpListener != null) {
            this.f28357c = filpListener;
            this.f28355a.setFilpListening(filpListener);
        }
    }

    public void setFrameWidth(int i10) {
        this.f28355a.setLayoutParams(new LinearLayout.LayoutParams(i10, -2));
    }

    public MBNativeRollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28356b = context;
        RollingBCView rollingBCView = new RollingBCView(context);
        this.f28355a = rollingBCView;
        addView(rollingBCView);
        this.f28355a.setLayoutParams(new LinearLayout.LayoutParams((int) (u0.j(context) * 0.9d), -2));
        setClipChildren(false);
    }

    public MBNativeRollView(Context context) {
        this(context, null);
    }
}
