package com.google.android.exoplayer2.metadata.emsg;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.v0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* loaded from: classes4.dex */
public final class EventMessage implements Metadata.Entry {

    /* renamed from: a  reason: collision with root package name */
    public final String f18007a;

    /* renamed from: b  reason: collision with root package name */
    public final String f18008b;

    /* renamed from: c  reason: collision with root package name */
    public final long f18009c;

    /* renamed from: d  reason: collision with root package name */
    public final long f18010d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f18011e;

    /* renamed from: f  reason: collision with root package name */
    private int f18012f;

    /* renamed from: g  reason: collision with root package name */
    private static final v0 f18005g = new v0.b().e0(MimeTypes.APPLICATION_ID3).E();

    /* renamed from: h  reason: collision with root package name */
    private static final v0 f18006h = new v0.b().e0(MimeTypes.APPLICATION_SCTE35).E();
    public static final Parcelable.Creator<EventMessage> CREATOR = new a();

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<EventMessage> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public EventMessage createFromParcel(Parcel parcel) {
            return new EventMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public EventMessage[] newArray(int i10) {
            return new EventMessage[i10];
        }
    }

    public EventMessage(String str, String str2, long j10, long j11, byte[] bArr) {
        this.f18007a = str;
        this.f18008b = str2;
        this.f18009c = j10;
        this.f18010d = j11;
        this.f18011e = bArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || EventMessage.class != obj.getClass()) {
            return false;
        }
        EventMessage eventMessage = (EventMessage) obj;
        if (this.f18009c == eventMessage.f18009c && this.f18010d == eventMessage.f18010d && s0.c(this.f18007a, eventMessage.f18007a) && s0.c(this.f18008b, eventMessage.f18008b) && Arrays.equals(this.f18011e, eventMessage.f18011e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        if (this.f18012f == 0) {
            String str = this.f18007a;
            int i11 = 0;
            if (str != null) {
                i10 = str.hashCode();
            } else {
                i10 = 0;
            }
            int i12 = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + i10) * 31;
            String str2 = this.f18008b;
            if (str2 != null) {
                i11 = str2.hashCode();
            }
            long j10 = this.f18009c;
            long j11 = this.f18010d;
            this.f18012f = ((((((i12 + i11) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + Arrays.hashCode(this.f18011e);
        }
        return this.f18012f;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    @Nullable
    public byte[] q() {
        if (r() != null) {
            return this.f18011e;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    @Nullable
    public v0 r() {
        String str = this.f18007a;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1468477611:
                if (str.equals("urn:scte:scte35:2014:bin")) {
                    c10 = 0;
                    break;
                }
                break;
            case -795945609:
                if (str.equals("https://aomedia.org/emsg/ID3")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1303648457:
                if (str.equals("https://developer.apple.com/streaming/emsg-id3")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return f18006h;
            case 1:
            case 2:
                return f18005g;
            default:
                return null;
        }
    }

    public String toString() {
        return "EMSG: scheme=" + this.f18007a + ", id=" + this.f18010d + ", durationMs=" + this.f18009c + ", value=" + this.f18008b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f18007a);
        parcel.writeString(this.f18008b);
        parcel.writeLong(this.f18009c);
        parcel.writeLong(this.f18010d);
        parcel.writeByteArray(this.f18011e);
    }

    EventMessage(Parcel parcel) {
        this.f18007a = (String) s0.j(parcel.readString());
        this.f18008b = (String) s0.j(parcel.readString());
        this.f18009c = parcel.readLong();
        this.f18010d = parcel.readLong();
        this.f18011e = (byte[]) s0.j(parcel.createByteArray());
    }
}
