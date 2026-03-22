package com.google.firebase.auth;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public abstract class MultiFactorInfo extends AbstractSafeParcelable {
    @Nullable
    public abstract String getDisplayName();

    public abstract long m();

    @NonNull
    public abstract String o();

    @NonNull
    public abstract String p();

    @Nullable
    public abstract JSONObject toJson();
}
