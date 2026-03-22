package io.bidmachine.media3.exoplayer;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.RestrictTo;
/* compiled from: SuitableOutputChecker.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes8.dex */
public interface q2 {

    /* compiled from: SuitableOutputChecker.java */
    /* loaded from: classes8.dex */
    public interface a {
        void a(boolean z10);
    }

    void a(a aVar, Context context, Looper looper, Looper looper2, cn.h hVar);

    boolean b();

    void disable();
}
