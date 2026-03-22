package com.applovin.impl;
/* compiled from: R8$$SyntheticClass */
/* loaded from: classes2.dex */
public final /* synthetic */ class sb {
    public static /* synthetic */ String a(CharSequence charSequence, CharSequence[] charSequenceArr) {
        if (charSequence != null) {
            StringBuilder sb2 = new StringBuilder();
            if (charSequenceArr.length > 0) {
                sb2.append(charSequenceArr[0]);
                for (int i10 = 1; i10 < charSequenceArr.length; i10++) {
                    sb2.append(charSequence);
                    sb2.append(charSequenceArr[i10]);
                }
            }
            return sb2.toString();
        }
        throw new NullPointerException("delimiter");
    }
}
