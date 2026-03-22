package v7;

import com.google.android.gms.common.api.internal.BackgroundDetector;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class k0 implements BackgroundDetector.BackgroundStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ i0 f68791a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k0(i0 i0Var) {
        Objects.requireNonNull(i0Var);
        this.f68791a = i0Var;
    }

    @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    public final void onBackgroundStateChanged(boolean z10) {
        boolean e10;
        k kVar;
        if (z10) {
            this.f68791a.f68778c = true;
            this.f68791a.b();
            return;
        }
        this.f68791a.f68778c = false;
        e10 = this.f68791a.e();
        if (e10) {
            kVar = this.f68791a.f68777b;
            kVar.c();
        }
    }
}
