package com.bytedance.sdk.openadsdk.tB;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.utils.cdg;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class ba extends ScrollView {
    private final com.bytedance.sdk.openadsdk.core.Pfn.Pfn ZYk;
    private final kkU oJ;

    public ba(Context context, kkU kku) {
        super(context);
        this.oJ = kku;
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        this.ZYk = pfn;
        pfn.setOrientation(1);
        addView(pfn, new FrameLayout.LayoutParams(-1, -2));
        if (kku.so() == 0) {
            oJ();
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 1.0f;
        setLayoutParams(layoutParams);
        setVerticalScrollBarEnabled(false);
    }

    private void ZYk(List<FilterWord> list) {
        float f10;
        this.ZYk.removeAllViews();
        for (int i10 = 0; i10 < list.size(); i10++) {
            FilterWord filterWord = list.get(i10);
            if (filterWord != null) {
                this.ZYk.addView(new cFZ(getContext(), filterWord, this.oJ));
            }
            if (i10 < list.size() - 1) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                Context context = getContext();
                if (this.oJ.jFA()) {
                    f10 = 16.0f;
                } else {
                    f10 = 8.0f;
                }
                int ZYk = cdg.ZYk(context, f10);
                layoutParams.topMargin = ZYk;
                layoutParams.bottomMargin = ZYk;
                this.ZYk.addView(new dLZ(getContext()), layoutParams);
            }
        }
    }

    private void oJ() {
        if (this.oJ.so() != 0) {
            return;
        }
        this.oJ.oJ(cdg.tB(getContext()), cdg.Pfn(getContext()));
    }

    private static List<FilterWord> tB(List<FilterWord> list) {
        if (list != null && !list.isEmpty()) {
            int i10 = 0;
            int i11 = -1;
            for (int i12 = 0; i12 < list.size(); i12++) {
                if (list.get(i12).hasSecondOptions()) {
                    i11 = i12;
                }
            }
            if (i11 != -1 && i11 <= list.size()) {
                i10 = i11;
            }
            FilterWord filterWord = list.get(i10);
            Iterator<FilterWord> it = list.iterator();
            while (it.hasNext()) {
                FilterWord next = it.next();
                if (!next.hasSecondOptions()) {
                    filterWord.addOption(next);
                    it.remove();
                }
            }
            return list;
        }
        return null;
    }

    public void oJ(List<FilterWord> list) {
        List<FilterWord> tB = tB(list);
        if (tB == null) {
            return;
        }
        ZYk(tB);
    }
}
