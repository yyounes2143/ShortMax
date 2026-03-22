package com.inmobi.media;

import androidx.core.app.NotificationCompat;
import java.lang.ref.WeakReference;
import java.util.Iterator;
/* loaded from: classes5.dex */
public final class C5 {
    public static void a() {
        try {
            Iterator it = D5.f23562a.iterator();
            while (it.hasNext()) {
                C2952f7 c2952f7 = (C2952f7) ((WeakReference) it.next()).get();
                if (c2952f7 != null) {
                    c2952f7.a();
                }
            }
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }
}
