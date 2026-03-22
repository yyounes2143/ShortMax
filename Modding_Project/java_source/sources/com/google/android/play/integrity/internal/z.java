package com.google.android.play.integrity.internal;

import android.os.Bundle;
import com.ss.texturerender.effect.ICEffect.ICEffectKeys;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class z {
    public static final List a(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b0 b0Var = (b0) it.next();
            Bundle bundle = new Bundle();
            bundle.putInt(ICEffectKeys.KEY_IS_IC_EFFECT_EVENT_TYPE, b0Var.a());
            bundle.putLong("event_timestamp", b0Var.b());
            arrayList.add(bundle);
        }
        return arrayList;
    }

    public static final void b(int i10, List list) {
        list.add(b0.c(i10, System.currentTimeMillis()));
    }
}
