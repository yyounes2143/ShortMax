package com.google.android.exoplayer2.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.common.primitives.c;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* loaded from: classes4.dex */
public final class SmtaMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<SmtaMetadataEntry> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final float f18084a;

    /* renamed from: b  reason: collision with root package name */
    public final int f18085b;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<SmtaMetadataEntry> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SmtaMetadataEntry createFromParcel(Parcel parcel) {
            return new SmtaMetadataEntry(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public SmtaMetadataEntry[] newArray(int i10) {
            return new SmtaMetadataEntry[i10];
        }
    }

    /* synthetic */ SmtaMetadataEntry(Parcel parcel, a aVar) {
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
        if (obj == null || SmtaMetadataEntry.class != obj.getClass()) {
            return false;
        }
        SmtaMetadataEntry smtaMetadataEntry = (SmtaMetadataEntry) obj;
        if (this.f18084a == smtaMetadataEntry.f18084a && this.f18085b == smtaMetadataEntry.f18085b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + c.a(this.f18084a)) * 31) + this.f18085b;
    }

    public String toString() {
        return "smta: captureFrameRate=" + this.f18084a + ", svcTemporalLayerCount=" + this.f18085b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeFloat(this.f18084a);
        parcel.writeInt(this.f18085b);
    }

    public SmtaMetadataEntry(float f10, int i10) {
        this.f18084a = f10;
        this.f18085b = i10;
    }

    private SmtaMetadataEntry(Parcel parcel) {
        this.f18084a = parcel.readFloat();
        this.f18085b = parcel.readInt();
    }
}
