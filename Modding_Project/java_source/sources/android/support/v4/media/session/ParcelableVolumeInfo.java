package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public int f807a;

    /* renamed from: b  reason: collision with root package name */
    public int f808b;

    /* renamed from: c  reason: collision with root package name */
    public int f809c;

    /* renamed from: d  reason: collision with root package name */
    public int f810d;

    /* renamed from: e  reason: collision with root package name */
    public int f811e;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<ParcelableVolumeInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ParcelableVolumeInfo[] newArray(int i10) {
            return new ParcelableVolumeInfo[i10];
        }
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f807a = parcel.readInt();
        this.f809c = parcel.readInt();
        this.f810d = parcel.readInt();
        this.f811e = parcel.readInt();
        this.f808b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f807a);
        parcel.writeInt(this.f809c);
        parcel.writeInt(this.f810d);
        parcel.writeInt(this.f811e);
        parcel.writeInt(this.f808b);
    }
}
