package com.huawei.hms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.common.internal.Objects;
import com.huawei.hms.common.internal.safeparcel.AbstractSafeParcelable;
import com.huawei.hms.common.internal.safeparcel.SafeParcelWriter;
@Deprecated
/* loaded from: classes5.dex */
public class Feature extends AbstractSafeParcelable {
    public static final int ARGS_NAME = 1;
    public static final int ARGS_SVC_VER = 2;
    public static final int ARGS_VER = 3;
    public static final Parcelable.Creator<Feature> CREATOR = new FeatureCreator();

    /* renamed from: a  reason: collision with root package name */
    private final String f21948a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    private final int f21949b;

    /* renamed from: c  reason: collision with root package name */
    private final long f21950c;

    public Feature(String str, long j10) {
        this(str, -1, j10);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Feature)) {
            return false;
        }
        Feature feature = (Feature) obj;
        if (!this.f21948a.equals(feature.getName()) || getVersion() != feature.getVersion()) {
            return false;
        }
        return true;
    }

    public String getName() {
        return this.f21948a;
    }

    public long getVersion() {
        long j10 = this.f21950c;
        if (-1 == j10) {
            return this.f21949b;
        }
        return j10;
    }

    public int hashCode() {
        return Objects.hashCode(getName(), Long.valueOf(getVersion()));
    }

    public String toString() {
        return Objects.toStringHelper(this).add("name", getName()).add("version", Long.valueOf(getVersion())).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        if (parcel == null) {
            return;
        }
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getName(), false);
        SafeParcelWriter.writeInt(parcel, 2, this.f21949b);
        SafeParcelWriter.writeLong(parcel, 3, getVersion());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public Feature(String str, int i10, long j10) {
        this.f21948a = str;
        this.f21949b = i10;
        this.f21950c = j10;
    }
}
