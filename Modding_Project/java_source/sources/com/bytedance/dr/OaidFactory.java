package com.bytedance.dr;

import android.content.Context;
import com.bytedance.bdtracker.y4;
import com.bytedance.dr.impl.b;
/* loaded from: classes3.dex */
public final class OaidFactory {
    public static OaidApi createOaidImpl(Context context) {
        if (y4.c()) {
            return new b();
        }
        return null;
    }
}
