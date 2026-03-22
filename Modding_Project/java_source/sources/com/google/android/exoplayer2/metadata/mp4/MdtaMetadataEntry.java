package com.google.android.exoplayer2.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* loaded from: classes4.dex */
public final class MdtaMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<MdtaMetadataEntry> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final String f18070a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f18071b;

    /* renamed from: c  reason: collision with root package name */
    public final int f18072c;

    /* renamed from: d  reason: collision with root package name */
    public final int f18073d;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<MdtaMetadataEntry> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MdtaMetadataEntry createFromParcel(Parcel parcel) {
            return new MdtaMetadataEntry(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MdtaMetadataEntry[] newArray(int i10) {
            return new MdtaMetadataEntry[i10];
        }
    }

    /* synthetic */ MdtaMetadataEntry(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || MdtaMetadataEntry.class != obj.getClass()) {
            return false;
        }
        MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) obj;
        if (this.f18070a.equals(mdtaMetadataEntry.f18070a) && Arrays.equals(this.f18071b, mdtaMetadataEntry.f18071b) && this.f18072c == mdtaMetadataEntry.f18072c && this.f18073d == mdtaMetadataEntry.f18073d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f18070a.hashCode()) * 31) + Arrays.hashCode(this.f18071b)) * 31) + this.f18072c) * 31) + this.f18073d;
    }

    public String toString() {
        return "mdta: key=" + this.f18070a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f18070a);
        parcel.writeByteArray(this.f18071b);
        parcel.writeInt(this.f18072c);
        parcel.writeInt(this.f18073d);
    }

    public MdtaMetadataEntry(String str, byte[] bArr, int i10, int i11) {
        this.f18070a = str;
        this.f18071b = bArr;
        this.f18072c = i10;
        this.f18073d = i11;
    }

    private MdtaMetadataEntry(Parcel parcel) {
        this.f18070a = (String) s0.j(parcel.readString());
        this.f18071b = (byte[]) s0.j(parcel.createByteArray());
        this.f18072c = parcel.readInt();
        this.f18073d = parcel.readInt();
    }
}
