package v7;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.auth.MultiFactorInfo;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class g1 extends com.google.firebase.auth.c {

    /* renamed from: b  reason: collision with root package name */
    private final MultiFactorInfo f68766b;

    public g1(String str, MultiFactorInfo multiFactorInfo) {
        this.f20465a = Preconditions.checkNotEmpty(str);
        this.f68766b = (MultiFactorInfo) Preconditions.checkNotNull(multiFactorInfo);
    }
}
