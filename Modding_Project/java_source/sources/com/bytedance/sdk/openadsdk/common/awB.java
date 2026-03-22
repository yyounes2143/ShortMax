package com.bytedance.sdk.openadsdk.common;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.tB.BTZ;
import com.bytedance.sdk.openadsdk.tB.kkU;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class awB extends com.bytedance.sdk.openadsdk.core.Pfn.tB implements kkU.ZYk {
    private String Pfn;
    private cY ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f12960ba;
    private final com.bytedance.sdk.openadsdk.tB.kkU cFZ;
    private Context ex;
    private View oJ;
    private oJ tB;

    /* loaded from: classes3.dex */
    public interface oJ {
        void ZYk(View view);

        void oJ(View view);

        void oJ(FilterWord filterWord);
    }

    public awB(@NonNull Context context, @NonNull cY cYVar) {
        this(context.getApplicationContext());
        this.ZYk = cYVar;
        this.ex = context;
        ex();
        Pfn();
    }

    private void Pfn() {
        com.bytedance.sdk.openadsdk.tB.kkU kku;
        cY cYVar = this.ZYk;
        if (cYVar != null && (kku = this.cFZ) != null) {
            kku.oJ(cYVar.rJ());
        }
    }

    private BTZ.oJ ba() {
        return new BTZ.oJ() { // from class: com.bytedance.sdk.openadsdk.common.awB.2
            @Override // com.bytedance.sdk.openadsdk.tB.BTZ.oJ
            public void ZYk() {
                awB.this.setVisibility(0);
            }

            @Override // com.bytedance.sdk.openadsdk.tB.BTZ.oJ
            public void oJ() {
                awB.this.setVisibility(8);
            }

            @Override // com.bytedance.sdk.openadsdk.tB.BTZ.oJ
            public void tB() {
                awB.this.setVisibility(0);
            }

            @Override // com.bytedance.sdk.openadsdk.tB.BTZ.oJ
            public void oJ(int i10, FilterWord filterWord, String str) {
                awB.this.cFZ.tB(str);
                awB.this.setVisibility(0);
            }
        };
    }

    private void ex() {
        this.cFZ.oJ(this.ZYk.pe());
        this.cFZ.oJ(this);
    }

    public void ZYk() {
        setVisibility(8);
        this.f12960ba = false;
        oJ oJVar = this.tB;
        if (oJVar != null) {
            oJVar.ZYk(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.bytedance.sdk.openadsdk.tB.kkU kku = this.cFZ;
        if (kku != null) {
            kku.oJ();
        }
    }

    public void setCallback(oJ oJVar) {
        this.tB = oJVar;
    }

    public void setDislikeSource(String str) {
        this.Pfn = str;
        this.cFZ.ZYk(str);
    }

    public void tB() {
        Context context = this.ex;
        if (!(context instanceof Activity)) {
            return;
        }
        boolean isFinishing = ((Activity) context).isFinishing();
        com.bytedance.sdk.openadsdk.tB.BTZ btz = new com.bytedance.sdk.openadsdk.tB.BTZ(this.ex, this.cFZ);
        btz.oJ(ba());
        btz.oJ("", this.ZYk);
        if (!isFinishing && !btz.isShowing()) {
            btz.show();
        }
    }

    private void oJ(Context context, AttributeSet attributeSet) {
        setClickable(true);
        setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.awB.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (awB.this.cFZ != null) {
                    awB.this.cFZ.Pfn();
                } else {
                    awB.this.ZYk();
                }
            }
        });
        setBackgroundColor(Color.parseColor("#80000000"));
        this.oJ = new com.bytedance.sdk.openadsdk.tB.jFA(context, this.cFZ);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        layoutParams.leftMargin = cdg.ZYk(getContext(), 20.0f);
        layoutParams.rightMargin = cdg.ZYk(getContext(), 20.0f);
        this.oJ.setLayoutParams(layoutParams);
        this.oJ.setClickable(true);
        Pfn();
    }

    public awB(@NonNull Context context) {
        this(context, (AttributeSet) null);
    }

    public awB(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public awB(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f12960ba = false;
        this.cFZ = new com.bytedance.sdk.openadsdk.tB.kkU();
        oJ(context, attributeSet);
    }

    public void oJ() {
        if (this.oJ.getParent() == null) {
            addView(this.oJ);
        }
        setVisibility(0);
        this.f12960ba = true;
        oJ oJVar = this.tB;
        if (oJVar != null) {
            oJVar.oJ(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.tB.kkU.ZYk
    public void oJ(int i10) {
        if (com.bytedance.sdk.openadsdk.tB.kkU.ZYk == i10) {
            FilterWord ZYk = this.cFZ.ZYk();
            if (ZYk == null || com.bytedance.sdk.openadsdk.tB.kkU.oJ.equals(ZYk)) {
                return;
            }
            oJ oJVar = this.tB;
            if (oJVar != null) {
                try {
                    oJVar.oJ(ZYk);
                } catch (Throwable unused) {
                }
            }
            ZYk();
        } else if (com.bytedance.sdk.openadsdk.tB.kkU.tB == i10) {
            ZYk();
        } else if (com.bytedance.sdk.openadsdk.tB.kkU.Pfn == i10) {
            tB();
        }
    }
}
