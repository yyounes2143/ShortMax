package com.google.android.recaptcha.internal;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import gt.k0;
import gt.p;
import gt.r;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzbx {
    @NotNull
    public static final k0 zza(@NotNull Task task) {
        final p b10 = r.b(null, 1, null);
        task.addOnCompleteListener(zzbv.zza, new OnCompleteListener() { // from class: com.google.android.recaptcha.internal.zzbu
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task2) {
                p pVar = p.this;
                Exception exception = task2.getException();
                if (exception == null) {
                    if (task2.isCanceled()) {
                        r.a.b(pVar, null, 1, null);
                        return;
                    } else {
                        pVar.i(task2.getResult());
                        return;
                    }
                }
                pVar.d(exception);
            }
        });
        return new zzbw(b10);
    }
}
