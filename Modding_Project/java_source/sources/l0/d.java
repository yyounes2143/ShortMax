package l0;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.core.content.ContextCompat;
import kotlin.Metadata;
import l0.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r0.g;
import r0.q;
/* compiled from: NetworkObserver.kt */
@Metadata
/* loaded from: classes2.dex */
public final class d {
    @NotNull
    public static final c a(@NotNull Context context, @NotNull c.a aVar, @Nullable q qVar) {
        ConnectivityManager connectivityManager = (ConnectivityManager) ContextCompat.getSystemService(context, ConnectivityManager.class);
        if (connectivityManager != null && r0.d.e(context, "android.permission.ACCESS_NETWORK_STATE")) {
            try {
                return new e(connectivityManager, aVar);
            } catch (Exception e10) {
                if (qVar != null) {
                    g.a(qVar, "NetworkObserver", new RuntimeException("Failed to register network observer.", e10));
                }
                return new b();
            }
        }
        if (qVar != null && qVar.getLevel() <= 5) {
            qVar.a("NetworkObserver", 5, "Unable to register network observer.", null);
        }
        return new b();
    }
}
