package u6;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
/* compiled from: SsaDialogueFormat.java */
/* loaded from: classes4.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    public final int f67823a;

    /* renamed from: b  reason: collision with root package name */
    public final int f67824b;

    /* renamed from: c  reason: collision with root package name */
    public final int f67825c;

    /* renamed from: d  reason: collision with root package name */
    public final int f67826d;

    /* renamed from: e  reason: collision with root package name */
    public final int f67827e;

    private b(int i10, int i11, int i12, int i13, int i14) {
        this.f67823a = i10;
        this.f67824b = i11;
        this.f67825c = i12;
        this.f67826d = i13;
        this.f67827e = i14;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Nullable
    public static b a(String str) {
        char c10;
        b7.a.a(str.startsWith("Format:"));
        String[] split = TextUtils.split(str.substring(7), ",");
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        for (int i14 = 0; i14 < split.length; i14++) {
            String e10 = h7.a.e(split[i14].trim());
            e10.hashCode();
            switch (e10.hashCode()) {
                case 100571:
                    if (e10.equals("end")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3556653:
                    if (e10.equals(MimeTypes.BASE_TYPE_TEXT)) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 109757538:
                    if (e10.equals("start")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 109780401:
                    if (e10.equals(TtmlNode.TAG_STYLE)) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            switch (c10) {
                case 0:
                    i11 = i14;
                    break;
                case 1:
                    i13 = i14;
                    break;
                case 2:
                    i10 = i14;
                    break;
                case 3:
                    i12 = i14;
                    break;
            }
        }
        if (i10 != -1 && i11 != -1 && i13 != -1) {
            return new b(i10, i11, i12, i13, split.length);
        }
        return null;
    }
}
