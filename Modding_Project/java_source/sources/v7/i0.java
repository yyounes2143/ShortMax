package v7;

import android.app.Application;
import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.internal.p003firebaseauthapi.zzahv;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class i0 {

    /* renamed from: a  reason: collision with root package name */
    private volatile int f68776a;

    /* renamed from: b  reason: collision with root package name */
    private final k f68777b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f68778c;

    public i0(com.google.firebase.f fVar) {
        this(fVar.l(), new k(fVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean e() {
        if (this.f68776a > 0 && !this.f68778c) {
            return true;
        }
        return false;
    }

    public final void b() {
        this.f68777b.b();
    }

    public final void c(zzahv zzahvVar) {
        if (zzahvVar == null) {
            return;
        }
        long zza = zzahvVar.zza();
        if (zza <= 0) {
            zza = 3600;
        }
        k kVar = this.f68777b;
        kVar.f68785b = zzahvVar.zzb() + (zza * 1000);
        kVar.f68786c = -1L;
        if (e()) {
            this.f68777b.c();
        }
    }

    @VisibleForTesting
    private i0(Context context, k kVar) {
        this.f68778c = false;
        this.f68776a = 0;
        this.f68777b = kVar;
        BackgroundDetector.initialize((Application) context.getApplicationContext());
        BackgroundDetector.getInstance().addListener(new k0(this));
    }
}
