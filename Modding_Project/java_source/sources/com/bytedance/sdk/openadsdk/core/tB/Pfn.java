package com.bytedance.sdk.openadsdk.core.tB;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.model.Id;
import com.bytedance.sdk.openadsdk.core.tB.ba;
import com.bytedance.sdk.openadsdk.utils.cdg;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class Pfn {
    private ba ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final ba.ZYk f13282ba;
    private final View.OnAttachStateChangeListener cFZ;
    private Id oJ;

    /* renamed from: so  reason: collision with root package name */
    private final ba.oJ f13283so;
    private List<oJ> tB = new ArrayList();
    private final String ex = "BannerSwiperManager";
    private int Pfn = -1;

    public Pfn(Id id2, Context context, int i10, int i11) {
        ba.ZYk zYk = new ba.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.tB.Pfn.1
            @Override // com.bytedance.sdk.openadsdk.core.tB.ba.ZYk
            public void oJ(boolean z10) {
                try {
                    if (z10) {
                        Pfn.this.ex();
                    } else {
                        Pfn.this.tB();
                    }
                } catch (Throwable unused) {
                }
            }
        };
        this.f13282ba = zYk;
        View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.tB.Pfn.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                Pfn.this.Pfn();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (Pfn.this.tB != null && !Pfn.this.tB.isEmpty()) {
                    for (int i12 = 0; i12 < Pfn.this.tB.size(); i12++) {
                        ((oJ) Pfn.this.tB.get(i12)).ba();
                    }
                }
                Pfn.this.Pfn = -1;
                if (Pfn.this.ZYk != null) {
                    Pfn.this.ZYk.ex();
                }
            }
        };
        this.cFZ = onAttachStateChangeListener;
        ba.oJ oJVar = new ba.oJ() { // from class: com.bytedance.sdk.openadsdk.core.tB.Pfn.3
            @Override // com.bytedance.sdk.openadsdk.core.tB.ba.oJ
            public void oJ(boolean z10) {
                if (z10) {
                    Pfn.this.ex();
                } else {
                    Pfn.this.tB();
                }
            }
        };
        this.f13283so = oJVar;
        this.oJ = id2;
        ba baVar = new ba(context);
        this.ZYk = baVar;
        baVar.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.ZYk.setSwiperWindowFocusChangedListener(zYk);
        this.ZYk.setSwiperVisibleChangeListener(oJVar);
        oJ(context, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Pfn() {
        if (this.oJ == null) {
            this.oJ = new Id();
        }
        this.ZYk.oJ(TextUtils.equals(this.oJ.oJ(), "vertical") ? 1 : 0).oJ("dot").tB(false).ex(this.oJ.ex() == 1).oJ(this.oJ.ZYk() == 1).tB(this.oJ.jFA()).Pfn(this.oJ.kkU() == 1).ex(this.oJ.so()).ZYk(this.oJ.tB() == 1).so(this.oJ.Pfn()).jFA(this.oJ.ba()).cFZ(this.oJ.cFZ());
        this.ZYk.setOnPageChangeListener(new com.bytedance.adsdk.ugeno.ba.tB() { // from class: com.bytedance.sdk.openadsdk.core.tB.Pfn.4
            @Override // com.bytedance.adsdk.ugeno.ba.tB
            public void oJ(boolean z10, int i10, float f10, int i11) {
            }

            @Override // com.bytedance.adsdk.ugeno.ba.tB
            public void oJ(boolean z10, int i10, int i11, boolean z11, boolean z12) {
                Pfn.this.tB(i10);
                Pfn.this.Pfn = i10;
                Pfn.this.oJ(i10);
                Pfn.this.ZYk(i10);
            }

            @Override // com.bytedance.adsdk.ugeno.ba.tB
            public void oJ(boolean z10, int i10) {
                if (i10 == 1 || i10 == 2) {
                    Pfn.this.ZYk(-1);
                } else if (i10 == 0) {
                    Pfn pfn = Pfn.this;
                    pfn.oJ(pfn.Pfn);
                }
            }
        });
        ZYk(this.tB);
        this.ZYk.tB();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ex() {
        ba baVar;
        Id id2 = this.oJ;
        if (id2 != null && id2.ZYk() == 1 && (baVar = this.ZYk) != null) {
            baVar.Pfn();
        }
        int i10 = this.Pfn;
        if (i10 >= 0) {
            oJ(i10);
            ZYk(this.Pfn);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB() {
        ba baVar;
        Id id2 = this.oJ;
        if (id2 != null && id2.ZYk() == 1 && (baVar = this.ZYk) != null) {
            baVar.ba();
        }
        if (this.Pfn >= 0) {
            ZYk(-1);
        }
    }

    public void ZYk(int i10) {
        oJ oJVar;
        for (int i11 = 0; i11 < this.tB.size(); i11++) {
            try {
                if (i11 != i10 && (oJVar = this.tB.get(i11)) != null) {
                    oJVar.jFA();
                }
            } catch (Throwable th2) {
                th2.getMessage();
                return;
            }
        }
    }

    protected void oJ(Context context, float f10, float f11) {
        int ZYk = cdg.ZYk(context, f10);
        int ZYk2 = cdg.ZYk(context, f11);
        ViewGroup.LayoutParams layoutParams = this.ZYk.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(ZYk, ZYk2);
        }
        layoutParams.width = ZYk;
        layoutParams.height = ZYk2;
        this.ZYk.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB(int i10) {
        oJ oJVar;
        try {
            int i11 = this.Pfn;
            if (i11 != -1 && i11 != i10 && (oJVar = this.tB.get(i11)) != null) {
                oJVar.ex();
                oJVar.so();
            }
            oJ oJVar2 = this.tB.get(i10);
            if (oJVar2 != null) {
                oJVar2.Pfn();
            }
        } catch (Throwable unused) {
        }
    }

    private void ZYk(List<oJ> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.ZYk.oJ((ba) list.get(i10).oJ());
        }
    }

    public View ZYk() {
        return this.ZYk;
    }

    public void oJ(List<oJ> list) {
        this.tB = list;
    }

    public void oJ(final int i10) {
        oJ oJVar;
        try {
            final int size = this.tB.size();
            if (i10 < size && (oJVar = this.tB.get(i10)) != null) {
                oJVar.oJ(new com.bytedance.sdk.openadsdk.oJ.oJ.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.tB.Pfn.5
                    @Override // com.bytedance.sdk.openadsdk.oJ.oJ.ZYk
                    public void oJ() {
                        int i11 = i10 + 1;
                        if (i11 >= size) {
                            return;
                        }
                        Pfn.this.oJ(i11);
                    }
                });
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    public void oJ() {
        if (this.ZYk != null) {
            try {
                List<oJ> list = this.tB;
                if (list != null && !list.isEmpty()) {
                    for (int i10 = 0; i10 < this.tB.size(); i10++) {
                        this.tB.get(i10).cFZ();
                    }
                }
                this.Pfn = -1;
                this.ZYk.ex();
                this.ZYk.setSwiperWindowFocusChangedListener(null);
                this.ZYk.setSwiperVisibleChangeListener(null);
                this.ZYk.removeOnAttachStateChangeListener(this.cFZ);
                this.ZYk = null;
            } catch (Throwable unused) {
            }
        }
    }
}
