package no;

import androidx.annotation.Nullable;
import com.google.common.primitives.Ints;
import com.huawei.hms.framework.common.ContainerUtils;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import zm.s;
import zm.t;
/* compiled from: VorbisComment.java */
@Deprecated
/* loaded from: classes8.dex */
public class b implements t.a {

    /* renamed from: a  reason: collision with root package name */
    public final String f62995a;

    /* renamed from: b  reason: collision with root package name */
    public final String f62996b;

    public b(String str, String str2) {
        this.f62995a = h7.a.f(str);
        this.f62996b = str2;
    }

    @Override // zm.t.a
    public void a(s.b bVar) {
        String str = this.f62995a;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1935137620:
                if (str.equals("TOTALTRACKS")) {
                    c10 = 0;
                    break;
                }
                break;
            case -215998278:
                if (str.equals("TOTALDISCS")) {
                    c10 = 1;
                    break;
                }
                break;
            case -113312716:
                if (str.equals("TRACKNUMBER")) {
                    c10 = 2;
                    break;
                }
                break;
            case 62359119:
                if (str.equals("ALBUM")) {
                    c10 = 3;
                    break;
                }
                break;
            case 67703139:
                if (str.equals("GENRE")) {
                    c10 = 4;
                    break;
                }
                break;
            case 79833656:
                if (str.equals("TITLE")) {
                    c10 = 5;
                    break;
                }
                break;
            case 428414940:
                if (str.equals("DESCRIPTION")) {
                    c10 = 6;
                    break;
                }
                break;
            case 993300766:
                if (str.equals("DISCNUMBER")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    c10 = '\t';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                Integer n10 = Ints.n(this.f62996b);
                if (n10 != null) {
                    bVar.r0(n10);
                    return;
                }
                return;
            case 1:
                Integer n11 = Ints.n(this.f62996b);
                if (n11 != null) {
                    bVar.q0(n11);
                    return;
                }
                return;
            case 2:
                Integer n12 = Ints.n(this.f62996b);
                if (n12 != null) {
                    bVar.s0(n12);
                    return;
                }
                return;
            case 3:
                bVar.P(this.f62996b);
                return;
            case 4:
                bVar.c0(this.f62996b);
                return;
            case 5:
                bVar.p0(this.f62996b);
                return;
            case 6:
                bVar.W(this.f62996b);
                return;
            case 7:
                Integer n13 = Ints.n(this.f62996b);
                if (n13 != null) {
                    bVar.X(n13);
                    return;
                }
                return;
            case '\b':
                bVar.O(this.f62996b);
                return;
            case '\t':
                bVar.Q(this.f62996b);
                return;
            default:
                return;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f62995a.equals(bVar.f62995a) && this.f62996b.equals(bVar.f62996b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f62995a.hashCode()) * 31) + this.f62996b.hashCode();
    }

    public String toString() {
        return "VC: " + this.f62995a + ContainerUtils.KEY_VALUE_DELIMITER + this.f62996b;
    }
}
