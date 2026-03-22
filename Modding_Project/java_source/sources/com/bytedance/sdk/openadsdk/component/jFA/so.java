package com.bytedance.sdk.openadsdk.component.jFA;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.widget.si;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class so {
    private static Drawable ZYk;
    private static boolean oJ;
    private TextView ex;
    private si tB;

    public static Drawable tB() {
        return ZYk;
    }

    public void ZYk() {
        if (!oJ) {
            try {
                int jFA = jFA.ZYk().jFA();
                if (jFA != 0) {
                    ZYk = com.bytedance.sdk.openadsdk.core.si.oJ().getResources().getDrawable(jFA);
                }
                oJ = true;
            } catch (Throwable unused) {
                oJ = true;
            }
        }
    }

    public void oJ(tB tBVar, cY cYVar, float f10, float f11, boolean z10) {
        ViewGroup.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2;
        if (tBVar != null) {
            this.tB = tBVar.getHostAppIcon();
            this.ex = tBVar.getHostAppName();
            View userInfo = tBVar.getUserInfo();
            if (tBVar instanceof ex) {
                si siVar = this.tB;
                if (siVar != null && (layoutParams2 = siVar.getLayoutParams()) != null) {
                    if (cYVar.Tt() == 1) {
                        int ZYk2 = cdg.ZYk(this.tB.getContext(), 40.0f);
                        layoutParams2.width = ZYk2;
                        layoutParams2.height = ZYk2;
                    } else {
                        int ZYk3 = cdg.ZYk(this.tB.getContext(), 30.0f);
                        layoutParams2.width = ZYk3;
                        layoutParams2.height = ZYk3;
                    }
                    this.tB.setLayoutParams(layoutParams2);
                }
                if (this.ex != null) {
                    if (cYVar.Tt() == 1) {
                        this.ex.setTextSize(30.0f);
                    } else {
                        this.ex.setTextSize(24.0f);
                    }
                }
                if (userInfo != null && (layoutParams = userInfo.getLayoutParams()) != null) {
                    if (cYVar.Tt() == 1) {
                        layoutParams.height = cdg.ZYk(userInfo.getContext(), 107.0f);
                    } else {
                        layoutParams.height = cdg.ZYk(userInfo.getContext(), 60.0f);
                    }
                    userInfo.setLayoutParams(layoutParams);
                }
            }
            if (userInfo != null) {
                userInfo.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.jFA.so.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                    }
                });
            }
        }
    }

    public void oJ() {
        String so2 = jFA.ZYk().so();
        if (TextUtils.isEmpty(so2)) {
            this.ex.setVisibility(8);
        } else {
            this.ex.setText(so2);
        }
        ZYk();
        try {
            Drawable drawable = ZYk;
            if (drawable == null) {
                this.tB.setVisibility(8);
                return;
            }
            this.tB.setImageDrawable(drawable);
            if (this.ex.getVisibility() == 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.tB.getLayoutParams();
                marginLayoutParams.setMargins(0, 0, 0, 0);
                this.tB.setLayoutParams(marginLayoutParams);
            }
        } catch (Throwable unused) {
            this.tB.setVisibility(8);
        }
    }
}
