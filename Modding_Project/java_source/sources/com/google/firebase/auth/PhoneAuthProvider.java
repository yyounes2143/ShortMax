package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.logging.Logger;
import com.google.firebase.FirebaseException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public class PhoneAuthProvider {

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    @SafeParcelable.Class(creator = "DefaultForceResendingTokenCreator")
    /* loaded from: classes5.dex */
    public static class ForceResendingToken extends AbstractSafeParcelable {
        @NonNull
        public static final Parcelable.Creator<ForceResendingToken> CREATOR = new d0();

        @NonNull
        public static ForceResendingToken m() {
            return new ForceResendingToken();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            SafeParcelWriter.finishObjectHeader(parcel, SafeParcelWriter.beginObjectHeader(parcel));
        }
    }

    @NonNull
    public static PhoneAuthCredential a(@NonNull String str, @NonNull String str2) {
        return PhoneAuthCredential.x(str, str2);
    }

    public static void b(@NonNull k kVar) {
        Preconditions.checkNotNull(kVar);
        FirebaseAuth.B(kVar);
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* loaded from: classes5.dex */
    public static abstract class a {
        private static final Logger zza = new Logger("PhoneAuthProvider", new String[0]);

        public void onCodeAutoRetrievalTimeOut(@NonNull String str) {
            zza.i("Sms auto retrieval timed-out.", new Object[0]);
        }

        public abstract void onVerificationCompleted(@NonNull PhoneAuthCredential phoneAuthCredential);

        public abstract void onVerificationFailed(@NonNull FirebaseException firebaseException);

        public void onCodeSent(@NonNull String str, @NonNull ForceResendingToken forceResendingToken) {
        }
    }
}
