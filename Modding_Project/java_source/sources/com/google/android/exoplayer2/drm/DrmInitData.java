package com.google.android.exoplayer2.drm;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import b7.s0;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes4.dex */
public final class DrmInitData implements Comparator<SchemeData>, Parcelable {
    public static final Parcelable.Creator<DrmInitData> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private final SchemeData[] f17554a;

    /* renamed from: b  reason: collision with root package name */
    private int f17555b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f17556c;

    /* renamed from: d  reason: collision with root package name */
    public final int f17557d;

    /* loaded from: classes4.dex */
    public static final class SchemeData implements Parcelable {
        public static final Parcelable.Creator<SchemeData> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        private int f17558a;

        /* renamed from: b  reason: collision with root package name */
        public final UUID f17559b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final String f17560c;

        /* renamed from: d  reason: collision with root package name */
        public final String f17561d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final byte[] f17562e;

        /* loaded from: classes4.dex */
        class a implements Parcelable.Creator<SchemeData> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SchemeData createFromParcel(Parcel parcel) {
                return new SchemeData(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SchemeData[] newArray(int i10) {
                return new SchemeData[i10];
            }
        }

        public SchemeData(UUID uuid, String str, @Nullable byte[] bArr) {
            this(uuid, null, str, bArr);
        }

        @CheckResult
        public SchemeData a(@Nullable byte[] bArr) {
            return new SchemeData(this.f17559b, this.f17560c, this.f17561d, bArr);
        }

        public boolean b(UUID uuid) {
            if (!o5.l.f63096a.equals(this.f17559b) && !uuid.equals(this.f17559b)) {
                return false;
            }
            return true;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof SchemeData)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            SchemeData schemeData = (SchemeData) obj;
            if (!s0.c(this.f17560c, schemeData.f17560c) || !s0.c(this.f17561d, schemeData.f17561d) || !s0.c(this.f17559b, schemeData.f17559b) || !Arrays.equals(this.f17562e, schemeData.f17562e)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            int hashCode;
            if (this.f17558a == 0) {
                int hashCode2 = this.f17559b.hashCode() * 31;
                String str = this.f17560c;
                if (str == null) {
                    hashCode = 0;
                } else {
                    hashCode = str.hashCode();
                }
                this.f17558a = ((((hashCode2 + hashCode) * 31) + this.f17561d.hashCode()) * 31) + Arrays.hashCode(this.f17562e);
            }
            return this.f17558a;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeLong(this.f17559b.getMostSignificantBits());
            parcel.writeLong(this.f17559b.getLeastSignificantBits());
            parcel.writeString(this.f17560c);
            parcel.writeString(this.f17561d);
            parcel.writeByteArray(this.f17562e);
        }

        public SchemeData(UUID uuid, @Nullable String str, String str2, @Nullable byte[] bArr) {
            this.f17559b = (UUID) b7.a.e(uuid);
            this.f17560c = str;
            this.f17561d = (String) b7.a.e(str2);
            this.f17562e = bArr;
        }

        SchemeData(Parcel parcel) {
            this.f17559b = new UUID(parcel.readLong(), parcel.readLong());
            this.f17560c = parcel.readString();
            this.f17561d = (String) s0.j(parcel.readString());
            this.f17562e = parcel.createByteArray();
        }
    }

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<DrmInitData> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public DrmInitData createFromParcel(Parcel parcel) {
            return new DrmInitData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public DrmInitData[] newArray(int i10) {
            return new DrmInitData[i10];
        }
    }

    public DrmInitData(List<SchemeData> list) {
        this(null, false, (SchemeData[]) list.toArray(new SchemeData[0]));
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(SchemeData schemeData, SchemeData schemeData2) {
        UUID uuid = o5.l.f63096a;
        if (uuid.equals(schemeData.f17559b)) {
            if (uuid.equals(schemeData2.f17559b)) {
                return 0;
            }
            return 1;
        }
        return schemeData.f17559b.compareTo(schemeData2.f17559b);
    }

    @CheckResult
    public DrmInitData b(@Nullable String str) {
        if (s0.c(this.f17556c, str)) {
            return this;
        }
        return new DrmInitData(str, false, this.f17554a);
    }

    public SchemeData c(int i10) {
        return this.f17554a[i10];
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DrmInitData.class != obj.getClass()) {
            return false;
        }
        DrmInitData drmInitData = (DrmInitData) obj;
        if (s0.c(this.f17556c, drmInitData.f17556c) && Arrays.equals(this.f17554a, drmInitData.f17554a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        if (this.f17555b == 0) {
            String str = this.f17556c;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            this.f17555b = (hashCode * 31) + Arrays.hashCode(this.f17554a);
        }
        return this.f17555b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f17556c);
        parcel.writeTypedArray(this.f17554a, 0);
    }

    public DrmInitData(SchemeData... schemeDataArr) {
        this(null, schemeDataArr);
    }

    public DrmInitData(@Nullable String str, SchemeData... schemeDataArr) {
        this(str, true, schemeDataArr);
    }

    private DrmInitData(@Nullable String str, boolean z10, SchemeData... schemeDataArr) {
        this.f17556c = str;
        schemeDataArr = z10 ? (SchemeData[]) schemeDataArr.clone() : schemeDataArr;
        this.f17554a = schemeDataArr;
        this.f17557d = schemeDataArr.length;
        Arrays.sort(schemeDataArr, this);
    }

    DrmInitData(Parcel parcel) {
        this.f17556c = parcel.readString();
        SchemeData[] schemeDataArr = (SchemeData[]) s0.j((SchemeData[]) parcel.createTypedArray(SchemeData.CREATOR));
        this.f17554a = schemeDataArr;
        this.f17557d = schemeDataArr.length;
    }
}
