package com.google.android.play.core.integrity;

import android.content.Context;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class ax {

    /* renamed from: a  reason: collision with root package name */
    private static aw f19874a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized aw a(Context context) {
        aw awVar;
        synchronized (ax.class) {
            try {
                if (f19874a == null) {
                    u uVar = new u(null);
                    uVar.a(com.google.android.play.integrity.internal.g.a(context));
                    f19874a = uVar.b();
                }
                awVar = f19874a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return awVar;
    }
}
