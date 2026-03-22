package com.inmobi.media;

import androidx.core.app.NotificationCompat;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.i7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3000i7 {
    public static void a(Ab ab2) {
        CopyOnWriteArrayList copyOnWriteArrayList = AbstractC3016j7.f24898a;
        Objects.toString(ab2);
        if (ab2 == null) {
            return;
        }
        try {
            Iterator it = AbstractC3016j7.f24898a.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                if (weakReference.get() != null && !Intrinsics.areEqual(weakReference.get(), ab2)) {
                }
                AbstractC3016j7.f24898a.remove(weakReference);
            }
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }
}
