package com.facebook.ads.redexgen.X;

import android.os.Build;
/* renamed from: com.facebook.ads.redexgen.X.0h  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C10020h extends C11556g {
    public static String[] A00 = {"4mrgyhu5NuMSfoRJ7wvth", "0QrbVGKHuGc2eSGsbm7N10peHve4GVgP", "Meba3O6SWeMBrZzPyfP10SBJe7jX", "3Oa5wanHMWuCrkjHvXNfwyLB0ZtCKHr4", "YOQh7xYBrfW2123ECT3lDkRgUFpenV07", "JuO7BKBrPjkMVs4", "5m", "UWhmaXdvjdchgK72Wd2HML9QO634NCpp"};

    public C10020h(C2111dL c2111dL) {
        super(c2111dL);
        setCarouselLayoutManager(c2111dL);
    }

    public FG getFullscreenCarouselRecyclerViewAdapter() {
        getAdapter();
        if (0 != 0) {
            getAdapter();
            return null;
        } else if (A00[6].length() != 2) {
            throw new RuntimeException();
        } else {
            A00[2] = "XAsjP5XwQSgGjSaOGRXjEIyXW47w";
            return null;
        }
    }

    @Override // com.facebook.ads.redexgen.X.C11556g
    public C2291gI getLayoutManager() {
        return (C2291gI) super.getLayoutManager();
    }

    public QT getOnScrollListener() {
        return new OC(this);
    }

    private void setCarouselLayoutManager(C2111dL c2111dL) {
        C2291gI c2291gI = new C2291gI(c2111dL, 0, false);
        if (Build.VERSION.SDK_INT >= 24) {
            c2291gI.A1T(true);
        }
        super.setLayoutManager(c2291gI);
    }

    @Override // com.facebook.ads.redexgen.X.C11556g
    public void setLayoutManager(QO qo2) {
    }
}
