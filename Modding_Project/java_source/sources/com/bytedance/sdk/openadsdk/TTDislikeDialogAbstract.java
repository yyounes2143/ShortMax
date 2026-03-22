package com.bytedance.sdk.openadsdk;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.tB.kkU;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class TTDislikeDialogAbstract extends Dialog implements kkU.ZYk {
    protected List<FilterWord> ZYk;
    private View ex;
    protected String oJ;
    protected final kkU tB;

    public TTDislikeDialogAbstract(@NonNull Context context) {
        super(context);
        kkU kku = new kkU();
        this.tB = kku;
        kku.oJ(this);
    }

    public void destroy() {
        kkU kku = this.tB;
        if (kku != null) {
            kku.oJ();
        }
    }

    public kkU getDislikeManager() {
        return this.tB;
    }

    public abstract ViewGroup.LayoutParams getLayoutParams();

    public abstract View getLayoutView();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.ex = getLayoutView();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        View view = this.ex;
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -1);
        }
        setContentView(view, layoutParams);
    }

    public void onSuggestionSubmit(String str) {
        kkU kku = this.tB;
        if (kku != null) {
            kku.tB(str);
        }
    }

    public void setMaterialMeta(String str, List<FilterWord> list) {
        this.oJ = str;
        this.ZYk = list;
        this.tB.oJ(str);
        this.tB.oJ(this.ZYk);
    }

    public TTDislikeDialogAbstract(@NonNull Context context, int i10) {
        super(context, i10);
        kkU kku = new kkU();
        this.tB = kku;
        kku.oJ(this);
    }
}
