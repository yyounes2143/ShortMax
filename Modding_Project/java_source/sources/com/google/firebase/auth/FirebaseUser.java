package com.google.firebase.auth;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.p003firebaseauthapi.zzahv;
import com.google.android.gms.tasks.Task;
import java.util.List;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public abstract class FirebaseUser extends AbstractSafeParcelable implements o {
    public abstract boolean R();

    @NonNull
    public abstract com.google.firebase.f T();

    @NonNull
    public Task<g> a(boolean z10) {
        return FirebaseAuth.getInstance(T()).p(this, z10);
    }

    @NonNull
    public abstract FirebaseUser b0(@NonNull List<? extends o> list);

    public abstract void c0(@NonNull zzahv zzahvVar);

    @NonNull
    public abstract FirebaseUser d0();

    public abstract void e0(@Nullable List<zzan> list);

    @NonNull
    public abstract zzahv f0();

    public abstract void g0(@NonNull List<MultiFactorInfo> list);

    @NonNull
    public abstract List<zzan> h0();

    @Nullable
    public abstract FirebaseUserMetadata m();

    @NonNull
    public abstract i o();

    @NonNull
    public abstract List<? extends o> p();

    @Nullable
    public abstract String w();

    @NonNull
    public abstract String x();

    @NonNull
    public abstract String zzd();

    @NonNull
    public abstract String zze();

    @Nullable
    public abstract List<String> zzg();
}
