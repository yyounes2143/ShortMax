package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.GuardedBy;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.integrity.internal.o0;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
abstract class y {

    /* renamed from: b  reason: collision with root package name */
    private final String f19952b;

    /* renamed from: c  reason: collision with root package name */
    private final long f19953c;
    @GuardedBy("dialogShownLock")

    /* renamed from: e  reason: collision with root package name */
    private boolean f19955e;

    /* renamed from: a  reason: collision with root package name */
    private final o0 f19951a = new o0("IntegrityDialogWrapper");

    /* renamed from: d  reason: collision with root package name */
    private final Object f19954d = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(String str, long j10) {
        this.f19952b = str;
        this.f19953c = j10;
    }

    public final Task a(Activity activity, int i10) {
        synchronized (this.f19954d) {
            try {
                if (this.f19955e) {
                    return Tasks.forResult(0);
                }
                this.f19955e = true;
                this.f19951a.a("checkAndShowDialog(%s)", Integer.valueOf(i10));
                Bundle bundle = new Bundle();
                bundle.putInt("dialog.intent.type", i10);
                bundle.putString("package.name", this.f19952b);
                bundle.putInt("playcore.integrity.version.major", 1);
                bundle.putInt("playcore.integrity.version.minor", 4);
                bundle.putInt("playcore.integrity.version.patch", 0);
                bundle.putLong("request.token.sid", this.f19953c);
                return b(activity, bundle);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    abstract Task b(Activity activity, Bundle bundle);
}
