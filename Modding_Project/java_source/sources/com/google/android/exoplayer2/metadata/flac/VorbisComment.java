package com.google.android.exoplayer2.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.z0;
import com.huawei.hms.framework.common.ContainerUtils;
import com.ss.ttvideoengine.TTVideoEngineInterface;
@Deprecated
/* loaded from: classes4.dex */
public class VorbisComment implements Metadata.Entry {
    public static final Parcelable.Creator<VorbisComment> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final String f18021a;

    /* renamed from: b  reason: collision with root package name */
    public final String f18022b;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<VorbisComment> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public VorbisComment createFromParcel(Parcel parcel) {
            return new VorbisComment(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public VorbisComment[] newArray(int i10) {
            return new VorbisComment[i10];
        }
    }

    public VorbisComment(String str, String str2) {
        this.f18021a = str;
        this.f18022b = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VorbisComment vorbisComment = (VorbisComment) obj;
        if (this.f18021a.equals(vorbisComment.f18021a) && this.f18022b.equals(vorbisComment.f18022b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f18021a.hashCode()) * 31) + this.f18022b.hashCode();
    }

    public String toString() {
        return "VC: " + this.f18021a + ContainerUtils.KEY_VALUE_DELIMITER + this.f18022b;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public void u(z0.b bVar) {
        String str = this.f18021a;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 62359119:
                if (str.equals("ALBUM")) {
                    c10 = 0;
                    break;
                }
                break;
            case 79833656:
                if (str.equals("TITLE")) {
                    c10 = 1;
                    break;
                }
                break;
            case 428414940:
                if (str.equals("DESCRIPTION")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                bVar.L(this.f18022b);
                return;
            case 1:
                bVar.i0(this.f18022b);
                return;
            case 2:
                bVar.S(this.f18022b);
                return;
            case 3:
                bVar.K(this.f18022b);
                return;
            case 4:
                bVar.M(this.f18022b);
                return;
            default:
                return;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f18021a);
        parcel.writeString(this.f18022b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public VorbisComment(Parcel parcel) {
        this.f18021a = (String) s0.j(parcel.readString());
        this.f18022b = (String) s0.j(parcel.readString());
    }
}
