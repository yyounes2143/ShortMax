package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class Chain {
    private static final boolean DEBUG = false;
    public static final boolean USE_CHAIN_OPTIMIZATION = false;

    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i10) {
        int i11;
        ChainHead[] chainHeadArr;
        int i12;
        if (i10 == 0) {
            i11 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i12 = 0;
        } else {
            i11 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
            i12 = 2;
        }
        for (int i13 = 0; i13 < i11; i13++) {
            ChainHead chainHead = chainHeadArr[i13];
            chainHead.define();
            if (arrayList == null || arrayList.contains(chainHead.mFirst)) {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i10, i12, chainHead);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
        if (r7 == 2) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004b, code lost:
        if (r7 == 2) goto L12;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0261 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02bf A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x03b2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:235:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x04dc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:295:0x04e8  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x04f7  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x04fd  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0500  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0504  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0514  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0518 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:323:0x03a9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:334:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void applyChainConstraints(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer r37, androidx.constraintlayout.core.LinearSystem r38, int r39, int r40, androidx.constraintlayout.core.widgets.ChainHead r41) {
        /*
            Method dump skipped, instructions count: 1336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.Chain.applyChainConstraints(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer, androidx.constraintlayout.core.LinearSystem, int, int, androidx.constraintlayout.core.widgets.ChainHead):void");
    }
}
