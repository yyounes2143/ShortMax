package c5;

import android.annotation.SuppressLint;
import androidx.annotation.WorkerThread;
import com.google.android.datatransport.Priority;
/* compiled from: ForcedSender.java */
/* loaded from: classes4.dex */
public final class l {
    @SuppressLint({"DiscouragedApi"})
    @WorkerThread
    public static void a(a5.h<?> hVar, Priority priority) {
        if (hVar instanceof s) {
            u.c().e().u(((s) hVar).d().f(priority), 1);
            return;
        }
        g5.a.g("ForcedSender", "Expected instance of `TransportImpl`, got `%s`.", hVar);
    }
}
