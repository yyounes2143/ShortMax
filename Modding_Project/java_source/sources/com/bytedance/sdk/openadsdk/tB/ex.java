package com.bytedance.sdk.openadsdk.tB;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.utils.cdg;
import java.util.List;
/* loaded from: classes3.dex */
public class ex extends TTDislikeDialogAbstract {
    private String Pfn;
    private oJ ex;

    /* loaded from: classes3.dex */
    public interface oJ {
        void ZYk();

        void oJ();

        void oJ(int i10, FilterWord filterWord);
    }

    public ex(Context context, String str, List<FilterWord> list) {
        super(context, cY.ba(context, "tt_dislikeDialog"));
        this.oJ = str;
        this.ZYk = list;
    }

    private void ZYk() {
        setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.bytedance.sdk.openadsdk.tB.ex.1
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                if (ex.this.ex != null) {
                    oJ unused = ex.this.ex;
                }
            }
        });
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.bytedance.sdk.openadsdk.tB.ex.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                if (ex.this.ex != null) {
                    ex.this.ex.ZYk();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract
    public ViewGroup.LayoutParams getLayoutParams() {
        return new ViewGroup.LayoutParams(cdg.tB(getContext()) - 120, -2);
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract
    public View getLayoutView() {
        return new jFA(getContext(), this.tB, this.ZYk);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract, android.app.Dialog
    public void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            setCanceledOnTouchOutside(true);
            setCancelable(true);
            oJ();
            ZYk();
            setMaterialMeta(this.oJ, this.ZYk);
        } catch (Throwable unused) {
            dismiss();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
        } catch (WindowManager.BadTokenException unused) {
        }
    }

    public void oJ(oJ oJVar) {
        this.ex = oJVar;
    }

    public void oJ(String str) {
        this.Pfn = str;
    }

    @Override // com.bytedance.sdk.openadsdk.tB.kkU.ZYk
    public void oJ(int i10) {
        FilterWord ZYk;
        if (kkU.tB == i10) {
            dismiss();
        } else if (kkU.Pfn == i10) {
            oJ oJVar = this.ex;
            if (oJVar != null) {
                oJVar.oJ();
            }
        } else if (kkU.ZYk != i10 || (ZYk = this.tB.ZYk()) == null || kkU.oJ.equals(ZYk)) {
        } else {
            oJ oJVar2 = this.ex;
            if (oJVar2 != null) {
                try {
                    oJVar2.oJ(0, ZYk);
                } catch (Throwable unused) {
                }
            }
            dismiss();
        }
    }

    private void oJ() {
        Window window = getWindow();
        if (window == null || window.getAttributes() == null) {
            return;
        }
        window.getAttributes().windowAnimations = 0;
    }
}
