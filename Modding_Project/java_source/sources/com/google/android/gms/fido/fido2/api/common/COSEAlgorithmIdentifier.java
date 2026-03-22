package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
public class COSEAlgorithmIdentifier implements Parcelable {
    @NonNull
    public static final Parcelable.Creator<COSEAlgorithmIdentifier> CREATOR = new zzp();
    @NonNull
    private final Algorithm zza;

    /* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
    /* loaded from: classes4.dex */
    public static class UnsupportedAlgorithmIdentifierException extends Exception {
        public UnsupportedAlgorithmIdentifierException(int i10) {
            super("Algorithm with COSE value " + i10 + " not supported");
        }
    }

    COSEAlgorithmIdentifier(@NonNull Algorithm algorithm) {
        this.zza = (Algorithm) Preconditions.checkNotNull(algorithm);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static COSEAlgorithmIdentifier fromCoseValue(int i10) throws UnsupportedAlgorithmIdentifierException {
        EC2Algorithm[] values;
        RSAAlgorithm rSAAlgorithm;
        if (i10 == RSAAlgorithm.LEGACY_RS1.getAlgoValue()) {
            rSAAlgorithm = RSAAlgorithm.RS1;
        } else {
            RSAAlgorithm[] values2 = RSAAlgorithm.values();
            int length = values2.length;
            int i11 = 0;
            while (true) {
                if (i11 < length) {
                    RSAAlgorithm rSAAlgorithm2 = values2[i11];
                    if (rSAAlgorithm2.getAlgoValue() == i10) {
                        rSAAlgorithm = rSAAlgorithm2;
                        break;
                    }
                    i11++;
                } else {
                    for (RSAAlgorithm rSAAlgorithm3 : EC2Algorithm.values()) {
                        if (rSAAlgorithm3.getAlgoValue() == i10) {
                            rSAAlgorithm = rSAAlgorithm3;
                        }
                    }
                    throw new UnsupportedAlgorithmIdentifierException(i10);
                }
            }
        }
        return new COSEAlgorithmIdentifier(rSAAlgorithm);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof COSEAlgorithmIdentifier) || this.zza.getAlgoValue() != ((COSEAlgorithmIdentifier) obj).zza.getAlgoValue()) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza);
    }

    public int toCoseValue() {
        return this.zza.getAlgoValue();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeInt(this.zza.getAlgoValue());
    }
}
