package com.bytedance.sdk.openadsdk.tB;

import android.app.Activity;
import android.content.Context;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.tB.BTZ;
import com.bytedance.sdk.openadsdk.tB.ex;
import java.util.List;
/* loaded from: classes3.dex */
public class tB implements Ln {
    private Ln.oJ Pfn;
    private final Context ZYk;
    private boolean ex;
    public BTZ oJ;
    private ex tB;

    public tB(Context context, String str, List<FilterWord> list, String str2, cY cYVar) {
        this.ZYk = context;
        oJ(str, list, str2, cYVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ex() {
        Context context = this.ZYk;
        if ((context instanceof Activity) && !((Activity) context).isFinishing() && !this.oJ.isShowing()) {
            this.oJ.show();
        }
    }

    private void oJ(String str, List<FilterWord> list, String str2, cY cYVar) {
        this.tB = new ex(this.ZYk, str, list);
        BTZ btz = new BTZ(this.ZYk, this.tB.getDislikeManager());
        this.oJ = btz;
        btz.oJ(str2, cYVar);
        this.oJ.oJ(new BTZ.oJ() { // from class: com.bytedance.sdk.openadsdk.tB.tB.1
            @Override // com.bytedance.sdk.openadsdk.tB.BTZ.oJ
            public void ZYk() {
                tB.this.oJ();
            }

            @Override // com.bytedance.sdk.openadsdk.tB.BTZ.oJ
            public void oJ() {
            }

            @Override // com.bytedance.sdk.openadsdk.tB.BTZ.oJ
            public void tB() {
                tB.this.oJ();
            }

            @Override // com.bytedance.sdk.openadsdk.tB.BTZ.oJ
            public void oJ(int i10, FilterWord filterWord, String str3) {
                tB.this.tB.onSuggestionSubmit(str3);
                tB.this.oJ();
            }
        });
        this.tB.oJ(new ex.oJ() { // from class: com.bytedance.sdk.openadsdk.tB.tB.2
            @Override // com.bytedance.sdk.openadsdk.tB.ex.oJ
            public void ZYk() {
                try {
                    if (tB.this.Pfn != null) {
                        tB.this.Pfn.oJ();
                    }
                } catch (Throwable th2) {
                    QSm.oJ("TTAdDislikeImpl", "dislike callback cancel error: ", th2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.tB.ex.oJ
            public void oJ() {
                tB.this.oJ(true);
                if (tB.this.tB != null && tB.this.tB.isShowing()) {
                    tB.this.tB.hide();
                }
                tB.this.ex();
            }

            @Override // com.bytedance.sdk.openadsdk.tB.ex.oJ
            public void oJ(int i10, FilterWord filterWord) {
                try {
                    if (!filterWord.hasSecondOptions() && tB.this.Pfn != null) {
                        tB.this.Pfn.oJ(i10, filterWord.getName());
                    }
                    filterWord.getName();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.Ln
    public void ZYk() {
        ex exVar = this.tB;
        if (exVar != null) {
            exVar.destroy();
        }
    }

    public boolean tB() {
        return this.ex;
    }

    @Override // com.bytedance.sdk.openadsdk.core.Ln
    public void oJ() {
        Context context = this.ZYk;
        if (!(context instanceof Activity) || ((Activity) context).isFinishing() || this.tB.isShowing()) {
            return;
        }
        this.tB.show();
    }

    @Override // com.bytedance.sdk.openadsdk.core.Ln
    public void oJ(Ln.oJ oJVar) {
        this.Pfn = oJVar;
    }

    public void oJ(String str) {
        ex exVar = this.tB;
        if (exVar != null) {
            exVar.oJ(str);
        }
    }

    public void oJ(boolean z10) {
        this.ex = z10;
    }
}
