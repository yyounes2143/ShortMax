package com.bytedance.sdk.openadsdk.core.so;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba;
import com.bytedance.sdk.openadsdk.core.Ln;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public abstract class oJ extends com.bytedance.sdk.openadsdk.core.Pfn.tB {
    protected String BTZ;
    protected TTDislikeDialogAbstract Pfn;
    protected Context ZYk;

    /* renamed from: ba  reason: collision with root package name */
    protected String f13275ba;
    protected int cFZ;
    protected boolean dLZ;
    protected com.bytedance.sdk.openadsdk.tB.tB ex;
    protected int jFA;
    protected boolean kkU;
    private com.bytedance.sdk.openadsdk.ex.cFZ oJ;

    /* renamed from: so  reason: collision with root package name */
    protected int f13276so;
    protected com.bytedance.sdk.openadsdk.core.model.cY tB;

    public oJ(@NonNull Context context) {
        super(context);
        this.f13275ba = "embeded_ad";
        this.kkU = true;
        this.dLZ = true;
        setTag("tt_express_backup_fl_tag_26");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getDescription() {
        if (!TextUtils.isEmpty(this.tB.UUI())) {
            return this.tB.UUI();
        }
        if (!TextUtils.isEmpty(this.tB.Amz())) {
            return this.tB.Amz();
        }
        return "";
    }

    protected String getNameOrSource() {
        com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.tB;
        if (cYVar == null) {
            return "";
        }
        if (cYVar.Wd() != null && !TextUtils.isEmpty(this.tB.Wd().ZYk())) {
            return this.tB.Wd().ZYk();
        }
        if (TextUtils.isEmpty(this.tB.Qzd())) {
            return "";
        }
        return this.tB.Qzd();
    }

    public float getRealHeight() {
        return cdg.tB(this.ZYk, this.f13276so);
    }

    public float getRealWidth() {
        return cdg.tB(this.ZYk, this.cFZ);
    }

    @Override // android.view.View
    public Object getTag() {
        return "tt_express_backup_fl_tag_26";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getTitle() {
        if (this.tB.Wd() != null && !TextUtils.isEmpty(this.tB.Wd().ZYk())) {
            return this.tB.Wd().ZYk();
        }
        if (!TextUtils.isEmpty(this.tB.Qzd())) {
            return this.tB.Qzd();
        }
        if (!TextUtils.isEmpty(this.tB.UUI())) {
            return this.tB.UUI();
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba getVideoView() {
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar;
        com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.tB;
        if (cYVar != null && this.ZYk != null) {
            if (com.bytedance.sdk.openadsdk.core.model.cY.Pfn(cYVar)) {
                try {
                    baVar = new com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba(this.ZYk, this.tB, this.f13275ba, true, false, this.oJ);
                    baVar.setVideoCacheUrl(this.BTZ);
                    baVar.setControllerStatusCallBack(new ba.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.so.oJ.2
                        @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba.ZYk
                        public void oJ(boolean z10, long j10, long j11, long j12, boolean z11) {
                        }
                    });
                    baVar.setIsAutoPlay(this.kkU);
                    baVar.oJ(this.dLZ, "bannerGetVideoView");
                } catch (Throwable unused) {
                }
                if (!com.bytedance.sdk.openadsdk.core.model.cY.Pfn(this.tB) && baVar != null && baVar.oJ(0L, true, false)) {
                    return baVar;
                }
            }
            baVar = null;
            if (!com.bytedance.sdk.openadsdk.core.model.cY.Pfn(this.tB)) {
            }
        }
        return null;
    }

    public void oJ() {
        TTDislikeDialogAbstract tTDislikeDialogAbstract = this.Pfn;
        if (tTDislikeDialogAbstract != null) {
            tTDislikeDialogAbstract.show();
            return;
        }
        com.bytedance.sdk.openadsdk.tB.tB tBVar = this.ex;
        if (tBVar != null) {
            tBVar.oJ();
        } else {
            TTDelegateActivity.oJ(this.tB, (String) null);
        }
    }

    protected abstract void oJ(View view, int i10, com.bytedance.sdk.openadsdk.core.model.eZI ezi);

    public void setDislikeInner(Ln ln2) {
        if (ln2 instanceof com.bytedance.sdk.openadsdk.tB.tB) {
            this.ex = (com.bytedance.sdk.openadsdk.tB.tB) ln2;
        }
    }

    public void setDislikeOuter(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        com.bytedance.sdk.openadsdk.core.model.cY cYVar;
        if (tTDislikeDialogAbstract != null && (cYVar = this.tB) != null) {
            tTDislikeDialogAbstract.setMaterialMeta(cYVar.pe(), this.tB.rJ());
        }
        this.Pfn = tTDislikeDialogAbstract;
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        super.setTag("tt_express_backup_fl_tag_26");
    }

    public oJ(@NonNull Context context, String str) {
        super(context);
        this.f13275ba = "embeded_ad";
        this.kkU = true;
        this.dLZ = true;
        this.BTZ = str;
        setTag("tt_express_backup_fl_tag_26");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void oJ(View view, boolean z10) {
        com.bytedance.sdk.openadsdk.core.ZYk.ZYk zYk;
        if (view == null) {
            return;
        }
        if (z10) {
            Context context = this.ZYk;
            com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.tB;
            String str = this.f13275ba;
            zYk = new com.bytedance.sdk.openadsdk.core.ZYk.oJ(context, cYVar, str, HyG.oJ(str));
        } else {
            Context context2 = this.ZYk;
            com.bytedance.sdk.openadsdk.core.model.cY cYVar2 = this.tB;
            String str2 = this.f13275ba;
            zYk = new com.bytedance.sdk.openadsdk.core.ZYk.ZYk(context2, cYVar2, str2, HyG.oJ(str2));
        }
        view.setOnTouchListener(zYk);
        view.setOnClickListener(zYk);
        zYk.oJ(new ZYk() { // from class: com.bytedance.sdk.openadsdk.core.so.oJ.1
            @Override // com.bytedance.sdk.openadsdk.core.so.ZYk
            public void oJ(View view2, int i10, com.bytedance.sdk.openadsdk.core.model.eZI ezi) {
                oJ.this.oJ(view2, i10, ezi);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void oJ(int i10) {
        this.dLZ = com.bytedance.sdk.openadsdk.core.si.ex().ZYk(String.valueOf(this.jFA));
        int ZYk = com.bytedance.sdk.openadsdk.core.si.ex().ZYk(i10);
        if (3 == ZYk) {
            this.kkU = false;
            return;
        }
        int tB = com.bytedance.sdk.component.utils.Ry.tB(com.bytedance.sdk.openadsdk.core.si.oJ());
        if (1 != ZYk || !HyG.ex(tB)) {
            if (2 == ZYk) {
                if (HyG.Pfn(tB) || HyG.ex(tB) || HyG.ba(tB)) {
                    this.kkU = true;
                    return;
                }
                return;
            } else if (5 != ZYk) {
                return;
            } else {
                if (!HyG.ex(tB) && !HyG.ba(tB)) {
                    return;
                }
            }
        }
        this.kkU = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void oJ(View view) {
        com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.tB;
        if (cYVar == null || cYVar.ib() == null || view == null) {
            return;
        }
        boolean z10 = true;
        oJ(view, (this.tB.jXJ() == 1 && this.kkU) ? false : false);
    }
}
