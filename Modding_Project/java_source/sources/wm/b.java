package wm;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
/* compiled from: VisibilityTrackerHolder.java */
/* loaded from: classes7.dex */
public class b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Object f69939a = new Object();
    @Nullable
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    a f69940b;

    @NonNull
    @VisibleForTesting
    a a(@NonNull View view, @NonNull io.bidmachine.core.i iVar, @NonNull p pVar) {
        return new o(view, iVar, pVar);
    }

    public void b(@NonNull View view, @NonNull io.bidmachine.core.i iVar, @NonNull p pVar) {
        synchronized (this.f69939a) {
            c();
            a a10 = a(view, iVar, pVar);
            this.f69940b = a10;
            a10.start();
        }
    }

    public void c() {
        synchronized (this.f69939a) {
            try {
                a aVar = this.f69940b;
                if (aVar != null) {
                    aVar.stop();
                    this.f69940b = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
