package io.bidmachine.media3.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import cn.m0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import zm.f;
import zm.u;
/* loaded from: classes8.dex */
public final class DrmInitData implements Comparator<SchemeData>, Parcelable {
    public static final Parcelable.Creator<DrmInitData> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private final SchemeData[] f55102a;

    /* renamed from: b  reason: collision with root package name */
    private int f55103b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f55104c;

    /* renamed from: d  reason: collision with root package name */
    public final int f55105d;

    /* loaded from: classes8.dex */
    public static final class SchemeData implements Parcelable {
        public static final Parcelable.Creator<SchemeData> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        private int f55106a;

        /* renamed from: b  reason: collision with root package name */
        public final UUID f55107b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final String f55108c;

        /* renamed from: d  reason: collision with root package name */
        public final String f55109d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final byte[] f55110e;

        /* loaded from: classes8.dex */
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

        public boolean a(SchemeData schemeData) {
            if (c() && !schemeData.c() && d(schemeData.f55107b)) {
                return true;
            }
            return false;
        }

        @CheckResult
        public SchemeData b(@Nullable byte[] bArr) {
            return new SchemeData(this.f55107b, this.f55108c, this.f55109d, bArr);
        }

        public boolean c() {
            if (this.f55110e != null) {
                return true;
            }
            return false;
        }

        public boolean d(UUID uuid) {
            if (!f.f71928a.equals(this.f55107b) && !uuid.equals(this.f55107b)) {
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
            if (!Objects.equals(this.f55108c, schemeData.f55108c) || !Objects.equals(this.f55109d, schemeData.f55109d) || !Objects.equals(this.f55107b, schemeData.f55107b) || !Arrays.equals(this.f55110e, schemeData.f55110e)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            int hashCode;
            if (this.f55106a == 0) {
                int hashCode2 = this.f55107b.hashCode() * 31;
                String str = this.f55108c;
                if (str == null) {
                    hashCode = 0;
                } else {
                    hashCode = str.hashCode();
                }
                this.f55106a = ((((hashCode2 + hashCode) * 31) + this.f55109d.hashCode()) * 31) + Arrays.hashCode(this.f55110e);
            }
            return this.f55106a;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeLong(this.f55107b.getMostSignificantBits());
            parcel.writeLong(this.f55107b.getLeastSignificantBits());
            parcel.writeString(this.f55108c);
            parcel.writeString(this.f55109d);
            parcel.writeByteArray(this.f55110e);
        }

        public SchemeData(UUID uuid, @Nullable String str, String str2, @Nullable byte[] bArr) {
            this.f55107b = (UUID) cn.a.e(uuid);
            this.f55108c = str;
            this.f55109d = u.u((String) cn.a.e(str2));
            this.f55110e = bArr;
        }

        SchemeData(Parcel parcel) {
            this.f55107b = new UUID(parcel.readLong(), parcel.readLong());
            this.f55108c = parcel.readString();
            this.f55109d = (String) m0.i(parcel.readString());
            this.f55110e = parcel.createByteArray();
        }
    }

    /* loaded from: classes8.dex */
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

    private static boolean b(ArrayList<SchemeData> arrayList, int i10, UUID uuid) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (arrayList.get(i11).f55107b.equals(uuid)) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public static DrmInitData d(@Nullable DrmInitData drmInitData, @Nullable DrmInitData drmInitData2) {
        String str;
        SchemeData[] schemeDataArr;
        SchemeData[] schemeDataArr2;
        ArrayList arrayList = new ArrayList();
        if (drmInitData != null) {
            str = drmInitData.f55104c;
            for (SchemeData schemeData : drmInitData.f55102a) {
                if (schemeData.c()) {
                    arrayList.add(schemeData);
                }
            }
        } else {
            str = null;
        }
        if (drmInitData2 != null) {
            if (str == null) {
                str = drmInitData2.f55104c;
            }
            int size = arrayList.size();
            for (SchemeData schemeData2 : drmInitData2.f55102a) {
                if (schemeData2.c() && !b(arrayList, size, schemeData2.f55107b)) {
                    arrayList.add(schemeData2);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new DrmInitData(str, arrayList);
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(SchemeData schemeData, SchemeData schemeData2) {
        UUID uuid = f.f71928a;
        if (uuid.equals(schemeData.f55107b)) {
            if (uuid.equals(schemeData2.f55107b)) {
                return 0;
            }
            return 1;
        }
        return schemeData.f55107b.compareTo(schemeData2.f55107b);
    }

    @CheckResult
    public DrmInitData c(@Nullable String str) {
        if (Objects.equals(this.f55104c, str)) {
            return this;
        }
        return new DrmInitData(str, false, this.f55102a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SchemeData e(int i10) {
        return this.f55102a[i10];
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
        if (Objects.equals(this.f55104c, drmInitData.f55104c) && Arrays.equals(this.f55102a, drmInitData.f55102a)) {
            return true;
        }
        return false;
    }

    public DrmInitData f(DrmInitData drmInitData) {
        boolean z10;
        String str;
        String str2 = this.f55104c;
        if (str2 != null && (str = drmInitData.f55104c) != null && !TextUtils.equals(str2, str)) {
            z10 = false;
        } else {
            z10 = true;
        }
        cn.a.g(z10);
        String str3 = this.f55104c;
        if (str3 == null) {
            str3 = drmInitData.f55104c;
        }
        return new DrmInitData(str3, (SchemeData[]) m0.X0(this.f55102a, drmInitData.f55102a));
    }

    public int hashCode() {
        int hashCode;
        if (this.f55103b == 0) {
            String str = this.f55104c;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            this.f55103b = (hashCode * 31) + Arrays.hashCode(this.f55102a);
        }
        return this.f55103b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f55104c);
        parcel.writeTypedArray(this.f55102a, 0);
    }

    public DrmInitData(@Nullable String str, List<SchemeData> list) {
        this(str, false, (SchemeData[]) list.toArray(new SchemeData[0]));
    }

    public DrmInitData(SchemeData... schemeDataArr) {
        this((String) null, schemeDataArr);
    }

    public DrmInitData(@Nullable String str, SchemeData... schemeDataArr) {
        this(str, true, schemeDataArr);
    }

    private DrmInitData(@Nullable String str, boolean z10, SchemeData... schemeDataArr) {
        this.f55104c = str;
        schemeDataArr = z10 ? (SchemeData[]) schemeDataArr.clone() : schemeDataArr;
        this.f55102a = schemeDataArr;
        this.f55105d = schemeDataArr.length;
        Arrays.sort(schemeDataArr, this);
    }

    DrmInitData(Parcel parcel) {
        this.f55104c = parcel.readString();
        SchemeData[] schemeDataArr = (SchemeData[]) m0.i((SchemeData[]) parcel.createTypedArray(SchemeData.CREATOR));
        this.f55102a = schemeDataArr;
        this.f55105d = schemeDataArr.length;
    }
}
