package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
@SafeParcelable.Class(creator = "UvmEntriesCreator")
/* loaded from: classes4.dex */
public class UvmEntries extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<UvmEntries> CREATOR = new zzaz();
    @Nullable
    @SafeParcelable.Field(getter = "getUvmEntryList", id = 1)
    private final List zza;

    /* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
    /* loaded from: classes4.dex */
    public static final class Builder {
        private final List zza = new ArrayList();

        @NonNull
        public Builder addAll(@NonNull List<UvmEntry> list) {
            boolean z10;
            if (this.zza.size() + list.size() <= 3) {
                z10 = true;
            } else {
                z10 = false;
            }
            com.google.android.gms.internal.fido.zzap.zzc(z10);
            this.zza.addAll(list);
            return this;
        }

        @NonNull
        public Builder addUvmEntry(@Nullable UvmEntry uvmEntry) {
            if (this.zza.size() < 3) {
                this.zza.add(uvmEntry);
                return this;
            }
            throw new IllegalStateException();
        }

        @NonNull
        public UvmEntries build() {
            return new UvmEntries(this.zza);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public UvmEntries(@Nullable @SafeParcelable.Param(id = 1) List list) {
        this.zza = list;
    }

    public boolean equals(@NonNull Object obj) {
        List list;
        if (!(obj instanceof UvmEntries)) {
            return false;
        }
        UvmEntries uvmEntries = (UvmEntries) obj;
        List list2 = this.zza;
        if ((list2 != null || uvmEntries.zza != null) && (list2 == null || (list = uvmEntries.zza) == null || !list2.containsAll(list) || !uvmEntries.zza.containsAll(this.zza))) {
            return false;
        }
        return true;
    }

    @Nullable
    public List<UvmEntry> getUvmEntryList() {
        return this.zza;
    }

    public int hashCode() {
        return Objects.hashCode(new HashSet(this.zza));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, getUvmEntryList(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @NonNull
    public final JSONArray zza() {
        try {
            JSONArray jSONArray = new JSONArray();
            if (this.zza != null) {
                for (int i10 = 0; i10 < this.zza.size(); i10++) {
                    UvmEntry uvmEntry = (UvmEntry) this.zza.get(i10);
                    JSONArray jSONArray2 = new JSONArray();
                    jSONArray2.put((int) uvmEntry.getMatcherProtectionType());
                    jSONArray2.put((int) uvmEntry.getKeyProtectionType());
                    jSONArray2.put((int) uvmEntry.getMatcherProtectionType());
                    jSONArray.put(i10, jSONArray2);
                }
            }
            return jSONArray;
        } catch (JSONException e10) {
            throw new RuntimeException("Error encoding UvmEntries to JSON object", e10);
        }
    }
}
