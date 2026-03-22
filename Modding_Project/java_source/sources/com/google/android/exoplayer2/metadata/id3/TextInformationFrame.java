package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import b7.s0;
import com.google.android.exoplayer2.z0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public final class TextInformationFrame extends Id3Frame {
    public static final Parcelable.Creator<TextInformationFrame> CREATOR = new a();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f18066b;

    /* renamed from: c  reason: collision with root package name */
    public final String f18067c;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<TextInformationFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public TextInformationFrame createFromParcel(Parcel parcel) {
            return new TextInformationFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public TextInformationFrame[] newArray(int i10) {
            return new TextInformationFrame[i10];
        }
    }

    public TextInformationFrame(String str, @Nullable String str2, String str3) {
        super(str);
        this.f18066b = str2;
        this.f18067c = str3;
    }

    private static List<Integer> a(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
            } else if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
            } else if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TextInformationFrame.class != obj.getClass()) {
            return false;
        }
        TextInformationFrame textInformationFrame = (TextInformationFrame) obj;
        if (s0.c(this.f18055a, textInformationFrame.f18055a) && s0.c(this.f18066b, textInformationFrame.f18066b) && s0.c(this.f18067c, textInformationFrame.f18067c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f18055a.hashCode()) * 31;
        String str = this.f18066b;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (hashCode + i10) * 31;
        String str2 = this.f18067c;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return i12 + i11;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f18055a + ": description=" + this.f18066b + ": value=" + this.f18067c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public void u(z0.b bVar) {
        Integer num;
        String str = this.f18055a;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    c10 = 0;
                    break;
                }
                break;
            case 82878:
                if (str.equals("TCM")) {
                    c10 = 1;
                    break;
                }
                break;
            case 82897:
                if (str.equals("TDA")) {
                    c10 = 2;
                    break;
                }
                break;
            case 83253:
                if (str.equals("TP1")) {
                    c10 = 3;
                    break;
                }
                break;
            case 83254:
                if (str.equals("TP2")) {
                    c10 = 4;
                    break;
                }
                break;
            case 83255:
                if (str.equals("TP3")) {
                    c10 = 5;
                    break;
                }
                break;
            case 83341:
                if (str.equals("TRK")) {
                    c10 = 6;
                    break;
                }
                break;
            case 83378:
                if (str.equals("TT2")) {
                    c10 = 7;
                    break;
                }
                break;
            case 83536:
                if (str.equals("TXT")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 83552:
                if (str.equals("TYE")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    c10 = 11;
                    break;
                }
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    c10 = 14;
                    break;
                }
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    c10 = 15;
                    break;
                }
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    c10 = 16;
                    break;
                }
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    c10 = 17;
                    break;
                }
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    c10 = 18;
                    break;
                }
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    c10 = 19;
                    break;
                }
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    c10 = 20;
                    break;
                }
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    c10 = 21;
                    break;
                }
                break;
        }
        try {
            switch (c10) {
                case 0:
                case '\n':
                    bVar.L(this.f18067c);
                    return;
                case 1:
                case 11:
                    bVar.Q(this.f18067c);
                    return;
                case 2:
                case '\f':
                    bVar.b0(Integer.valueOf(Integer.parseInt(this.f18067c.substring(2, 4)))).a0(Integer.valueOf(Integer.parseInt(this.f18067c.substring(0, 2))));
                    return;
                case 3:
                case 17:
                    bVar.M(this.f18067c);
                    return;
                case 4:
                case 18:
                    bVar.K(this.f18067c);
                    return;
                case 5:
                case 19:
                    bVar.R(this.f18067c);
                    return;
                case 6:
                case 20:
                    String[] H0 = s0.H0(this.f18067c, DomExceptionUtils.SEPARATOR);
                    int parseInt = Integer.parseInt(H0[0]);
                    if (H0.length > 1) {
                        num = Integer.valueOf(Integer.parseInt(H0[1]));
                    } else {
                        num = null;
                    }
                    bVar.l0(Integer.valueOf(parseInt)).k0(num);
                    return;
                case 7:
                case 16:
                    bVar.i0(this.f18067c);
                    return;
                case '\b':
                case 15:
                    bVar.n0(this.f18067c);
                    return;
                case '\t':
                case 21:
                    bVar.c0(Integer.valueOf(Integer.parseInt(this.f18067c)));
                    return;
                case '\r':
                    List<Integer> a10 = a(this.f18067c);
                    int size = a10.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                bVar.a0(a10.get(2));
                            } else {
                                return;
                            }
                        }
                        bVar.b0(a10.get(1));
                    }
                    bVar.c0(a10.get(0));
                    return;
                case 14:
                    List<Integer> a11 = a(this.f18067c);
                    int size2 = a11.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                bVar.d0(a11.get(2));
                            } else {
                                return;
                            }
                        }
                        bVar.e0(a11.get(1));
                    }
                    bVar.f0(a11.get(0));
                    return;
                default:
                    return;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f18055a);
        parcel.writeString(this.f18066b);
        parcel.writeString(this.f18067c);
    }

    TextInformationFrame(Parcel parcel) {
        super((String) s0.j(parcel.readString()));
        this.f18066b = parcel.readString();
        this.f18067c = (String) s0.j(parcel.readString());
    }
}
