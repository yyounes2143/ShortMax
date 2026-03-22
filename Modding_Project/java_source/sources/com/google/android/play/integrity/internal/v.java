package com.google.android.play.integrity.internal;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class v {
    public static void a(Object obj, Class cls) {
        if (obj != null) {
            return;
        }
        throw new IllegalStateException(String.valueOf(cls.getCanonicalName()).concat(" must be set"));
    }
}
