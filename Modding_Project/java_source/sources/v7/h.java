package v7;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.internal.zzaf;
import java.util.List;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class h extends com.google.firebase.auth.i {

    /* renamed from: a  reason: collision with root package name */
    private final zzaf f68767a;

    public h(zzaf zzafVar) {
        Preconditions.checkNotNull(zzafVar);
        this.f68767a = zzafVar;
    }

    @Override // com.google.firebase.auth.i
    public final List<MultiFactorInfo> a() {
        return this.f68767a.t0();
    }
}
