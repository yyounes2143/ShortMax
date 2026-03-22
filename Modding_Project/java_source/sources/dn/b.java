package dn;

import androidx.annotation.Nullable;
import cn.b0;
import cn.m0;
import com.google.common.primitives.Ints;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import zm.t;
/* compiled from: MdtaMetadataEntry.java */
/* loaded from: classes8.dex */
public final class b implements t.a {

    /* renamed from: a  reason: collision with root package name */
    public final String f50447a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f50448b;

    /* renamed from: c  reason: collision with root package name */
    public final int f50449c;

    /* renamed from: d  reason: collision with root package name */
    public final int f50450d;

    public b(String str, byte[] bArr, int i10, int i11) {
        d(str, bArr, i11);
        this.f50447a = str;
        this.f50448b = bArr;
        this.f50449c = i10;
        this.f50450d = i11;
    }

    private static String c(List<Integer> list) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("track types = ");
        h7.f.f(',').b(sb2, list);
        return sb2.toString();
    }

    private static void d(String str, byte[] bArr, int i10) {
        byte b10;
        str.hashCode();
        boolean z10 = false;
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1949883051:
                if (str.equals("com.android.capture.fps")) {
                    c10 = 0;
                    break;
                }
                break;
            case -269399509:
                if (str.equals("auxiliary.tracks.interleaved")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1011693540:
                if (str.equals("auxiliary.tracks.length")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1098277265:
                if (str.equals("auxiliary.tracks.offset")) {
                    c10 = 3;
                    break;
                }
                break;
            case 2002123038:
                if (str.equals("auxiliary.tracks.map")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                if (i10 == 23 && bArr.length == 4) {
                    z10 = true;
                }
                cn.a.a(z10);
                return;
            case 1:
                if (i10 == 75 && bArr.length == 1 && ((b10 = bArr[0]) == 0 || b10 == 1)) {
                    z10 = true;
                }
                cn.a.a(z10);
                return;
            case 2:
            case 3:
                if (i10 == 78 && bArr.length == 8) {
                    z10 = true;
                }
                cn.a.a(z10);
                return;
            case 4:
                if (i10 == 0) {
                    z10 = true;
                }
                cn.a.a(z10);
                return;
            default:
                return;
        }
    }

    public List<Integer> b() {
        cn.a.h(this.f50447a.equals("auxiliary.tracks.map"), "Metadata is not an auxiliary tracks map");
        byte b10 = this.f50448b[1];
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < b10; i10++) {
            arrayList.add(Integer.valueOf(this.f50448b[i10 + 2]));
        }
        return arrayList;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f50447a.equals(bVar.f50447a) && Arrays.equals(this.f50448b, bVar.f50448b) && this.f50449c == bVar.f50449c && this.f50450d == bVar.f50450d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f50447a.hashCode()) * 31) + Arrays.hashCode(this.f50448b)) * 31) + this.f50449c) * 31) + this.f50450d;
    }

    public String toString() {
        String c10;
        int i10 = this.f50450d;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 23) {
                    if (i10 != 67) {
                        if (i10 != 75) {
                            if (i10 == 78) {
                                c10 = String.valueOf(new b0(this.f50448b).O());
                            }
                            c10 = m0.r1(this.f50448b);
                        } else {
                            c10 = String.valueOf(a.a(this.f50448b[0]));
                        }
                    } else {
                        c10 = String.valueOf(Ints.f(this.f50448b));
                    }
                } else {
                    c10 = String.valueOf(Float.intBitsToFloat(Ints.f(this.f50448b)));
                }
            } else {
                c10 = m0.H(this.f50448b);
            }
        } else {
            if (this.f50447a.equals("auxiliary.tracks.map")) {
                c10 = c(b());
            }
            c10 = m0.r1(this.f50448b);
        }
        return "mdta: key=" + this.f50447a + ", value=" + c10;
    }
}
