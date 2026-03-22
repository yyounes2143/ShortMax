package com.google.android.recaptcha.internal;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public abstract class zzjk implements Iterable {
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        boolean z10 = true;
        for (Object obj : this) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append(obj);
            z10 = false;
        }
        sb2.append(']');
        return sb2.toString();
    }
}
