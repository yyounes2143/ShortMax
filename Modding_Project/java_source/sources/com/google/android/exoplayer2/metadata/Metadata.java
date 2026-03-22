package com.google.android.exoplayer2.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.v0;
import com.google.android.exoplayer2.z0;
import com.google.common.primitives.f;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4.dex */
public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private final Entry[] f17990a;

    /* renamed from: b  reason: collision with root package name */
    public final long f17991b;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<Metadata> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Metadata createFromParcel(Parcel parcel) {
            return new Metadata(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public Metadata[] newArray(int i10) {
            return new Metadata[i10];
        }
    }

    public Metadata(Entry... entryArr) {
        this(-9223372036854775807L, entryArr);
    }

    public Metadata a(Entry... entryArr) {
        if (entryArr.length == 0) {
            return this;
        }
        return new Metadata(this.f17991b, (Entry[]) s0.z0(this.f17990a, entryArr));
    }

    public Metadata b(@Nullable Metadata metadata) {
        if (metadata == null) {
            return this;
        }
        return a(metadata.f17990a);
    }

    public Metadata c(long j10) {
        if (this.f17991b == j10) {
            return this;
        }
        return new Metadata(j10, this.f17990a);
    }

    public Entry d(int i10) {
        return this.f17990a[i10];
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int e() {
        return this.f17990a.length;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Metadata.class != obj.getClass()) {
            return false;
        }
        Metadata metadata = (Metadata) obj;
        if (Arrays.equals(this.f17990a, metadata.f17990a) && this.f17991b == metadata.f17991b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (Arrays.hashCode(this.f17990a) * 31) + f.a(this.f17991b);
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("entries=");
        sb2.append(Arrays.toString(this.f17990a));
        if (this.f17991b == -9223372036854775807L) {
            str = "";
        } else {
            str = ", presentationTimeUs=" + this.f17991b;
        }
        sb2.append(str);
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f17990a.length);
        for (Entry entry : this.f17990a) {
            parcel.writeParcelable(entry, 0);
        }
        parcel.writeLong(this.f17991b);
    }

    public Metadata(long j10, Entry... entryArr) {
        this.f17991b = j10;
        this.f17990a = entryArr;
    }

    public Metadata(List<? extends Entry> list) {
        this((Entry[]) list.toArray(new Entry[0]));
    }

    public Metadata(long j10, List<? extends Entry> list) {
        this(j10, (Entry[]) list.toArray(new Entry[0]));
    }

    Metadata(Parcel parcel) {
        this.f17990a = new Entry[parcel.readInt()];
        int i10 = 0;
        while (true) {
            Entry[] entryArr = this.f17990a;
            if (i10 < entryArr.length) {
                entryArr[i10] = (Entry) parcel.readParcelable(Entry.class.getClassLoader());
                i10++;
            } else {
                this.f17991b = parcel.readLong();
                return;
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface Entry extends Parcelable {
        @Nullable
        default byte[] q() {
            return null;
        }

        @Nullable
        default v0 r() {
            return null;
        }

        default void u(z0.b bVar) {
        }
    }
}
