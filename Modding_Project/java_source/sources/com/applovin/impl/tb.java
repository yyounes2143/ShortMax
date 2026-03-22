package com.applovin.impl;

import java.util.Iterator;
/* compiled from: R8$$SyntheticClass */
/* loaded from: classes2.dex */
public final /* synthetic */ class tb {
    public static /* synthetic */ String a(CharSequence charSequence, Iterable iterable) {
        if (charSequence != null) {
            StringBuilder sb2 = new StringBuilder();
            Iterator it = iterable.iterator();
            if (it.hasNext()) {
                while (true) {
                    sb2.append((CharSequence) it.next());
                    if (!it.hasNext()) {
                        break;
                    }
                    sb2.append(charSequence);
                }
            }
            return sb2.toString();
        }
        throw new NullPointerException("delimiter");
    }
}
