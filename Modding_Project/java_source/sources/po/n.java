package po;

import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import cn.m0;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import zm.s;
/* compiled from: TextInformationFrame.java */
/* loaded from: classes8.dex */
public final class n extends i {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f64963b;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public final String f64964c;

    /* renamed from: d  reason: collision with root package name */
    public final ImmutableList<String> f64965d;

    public n(String str, @Nullable String str2, List<String> list) {
        super(str);
        cn.a.a(!list.isEmpty());
        this.f64963b = str2;
        ImmutableList<String> u10 = ImmutableList.u(list);
        this.f64965d = u10;
        this.f64964c = u10.get(0);
    }

    private static List<Integer> b(String str) {
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // zm.t.a
    public void a(s.b bVar) {
        Integer num;
        String str = this.f64951a;
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
            case 2569358:
                if (str.equals("TCON")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    c10 = 14;
                    break;
                }
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    c10 = 15;
                    break;
                }
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    c10 = 16;
                    break;
                }
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    c10 = 17;
                    break;
                }
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    c10 = 18;
                    break;
                }
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    c10 = 19;
                    break;
                }
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    c10 = 20;
                    break;
                }
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    c10 = 21;
                    break;
                }
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    c10 = 22;
                    break;
                }
                break;
        }
        try {
            switch (c10) {
                case 0:
                case '\n':
                    bVar.P(this.f64965d.get(0));
                    return;
                case 1:
                case 11:
                    bVar.U(this.f64965d.get(0));
                    return;
                case 2:
                case '\r':
                    String str2 = this.f64965d.get(0);
                    bVar.h0(Integer.valueOf(Integer.parseInt(str2.substring(2, 4)))).g0(Integer.valueOf(Integer.parseInt(str2.substring(0, 2))));
                    return;
                case 3:
                case 18:
                    bVar.Q(this.f64965d.get(0));
                    return;
                case 4:
                case 19:
                    bVar.O(this.f64965d.get(0));
                    return;
                case 5:
                case 20:
                    bVar.V(this.f64965d.get(0));
                    return;
                case 6:
                case 21:
                    String[] m12 = m0.m1(this.f64965d.get(0), DomExceptionUtils.SEPARATOR);
                    int parseInt = Integer.parseInt(m12[0]);
                    if (m12.length > 1) {
                        num = Integer.valueOf(Integer.parseInt(m12[1]));
                    } else {
                        num = null;
                    }
                    bVar.s0(Integer.valueOf(parseInt)).r0(num);
                    return;
                case 7:
                case 17:
                    bVar.p0(this.f64965d.get(0));
                    return;
                case '\b':
                case 16:
                    bVar.t0(this.f64965d.get(0));
                    return;
                case '\t':
                case 22:
                    bVar.i0(Integer.valueOf(Integer.parseInt(this.f64965d.get(0))));
                    return;
                case '\f':
                    Integer n10 = Ints.n(this.f64965d.get(0));
                    if (n10 == null) {
                        bVar.c0(this.f64965d.get(0));
                        return;
                    }
                    String a10 = j.a(n10.intValue());
                    if (a10 != null) {
                        bVar.c0(a10);
                        return;
                    }
                    return;
                case 14:
                    List<Integer> b10 = b(this.f64965d.get(0));
                    int size = b10.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                bVar.g0(b10.get(2));
                            } else {
                                return;
                            }
                        }
                        bVar.h0(b10.get(1));
                    }
                    bVar.i0(b10.get(0));
                    return;
                case 15:
                    List<Integer> b11 = b(this.f64965d.get(0));
                    int size2 = b11.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                bVar.j0(b11.get(2));
                            } else {
                                return;
                            }
                        }
                        bVar.k0(b11.get(1));
                    }
                    bVar.l0(b11.get(0));
                    return;
                default:
                    return;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n.class != obj.getClass()) {
            return false;
        }
        n nVar = (n) obj;
        if (Objects.equals(this.f64951a, nVar.f64951a) && Objects.equals(this.f64963b, nVar.f64963b) && this.f64965d.equals(nVar.f64965d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f64951a.hashCode()) * 31;
        String str = this.f64963b;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return ((hashCode + i10) * 31) + this.f64965d.hashCode();
    }

    @Override // po.i
    public String toString() {
        return this.f64951a + ": description=" + this.f64963b + ": values=" + this.f64965d;
    }
}
