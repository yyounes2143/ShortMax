package com.bytedance.sdk.component.ba.oJ.tB;

import com.bytedance.sdk.component.ba.oJ.Pfn;
import com.bytedance.sdk.component.ba.oJ.so;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes3.dex */
public class ZYk {
    public static void oJ(AtomicLong atomicLong, int i10) {
        Pfn eZI = so.cFZ().eZI();
        if (eZI != null && eZI.cFZ() && atomicLong != null) {
            atomicLong.getAndAdd(i10);
        }
    }
}
