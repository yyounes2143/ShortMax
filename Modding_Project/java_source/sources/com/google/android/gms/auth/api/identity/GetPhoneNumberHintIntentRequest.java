package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
@SafeParcelable.Class(creator = "GetPhoneNumberHintIntentRequestCreator")
/* loaded from: classes4.dex */
public class GetPhoneNumberHintIntentRequest extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<GetPhoneNumberHintIntentRequest> CREATOR = new zbl();
    @SafeParcelable.Field(getter = "getTheme", id = 1)
    private final int zba;

    /* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Builder() {
            throw null;
        }

        @NonNull
        public GetPhoneNumberHintIntentRequest build() {
            return new GetPhoneNumberHintIntentRequest(0);
        }

        /* synthetic */ Builder(byte[] bArr) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public GetPhoneNumberHintIntentRequest(@SafeParcelable.Param(id = 1) int i10) {
        this.zba = i10;
    }

    @NonNull
    public static Builder builder() {
        return new Builder(null);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof GetPhoneNumberHintIntentRequest)) {
            return false;
        }
        return Objects.equal(Integer.valueOf(this.zba), Integer.valueOf(((GetPhoneNumberHintIntentRequest) obj).zba));
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zba));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int i11 = this.zba;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i11);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
