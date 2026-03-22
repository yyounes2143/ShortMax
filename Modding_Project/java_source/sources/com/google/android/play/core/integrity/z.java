package com.google.android.play.core.integrity;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    private static s f19956a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized s a(Context context) {
        s sVar;
        synchronized (z.class) {
            try {
                if (f19956a == null) {
                    q qVar = new q(null);
                    qVar.a(com.google.android.play.integrity.internal.g.a(context));
                    f19956a = qVar.b();
                }
                sVar = f19956a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return sVar;
    }
}
