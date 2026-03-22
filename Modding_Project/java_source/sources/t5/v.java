package t5;

import b7.s0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: GaplessInfoHolder.java */
/* loaded from: classes4.dex */
public final class v {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f67196c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a  reason: collision with root package name */
    public int f67197a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f67198b = -1;

    private boolean b(String str) {
        Matcher matcher = f67196c.matcher(str);
        if (matcher.find()) {
            try {
                int parseInt = Integer.parseInt((String) s0.j(matcher.group(1)), 16);
                int parseInt2 = Integer.parseInt((String) s0.j(matcher.group(2)), 16);
                if (parseInt > 0 || parseInt2 > 0) {
                    this.f67197a = parseInt;
                    this.f67198b = parseInt2;
                    return true;
                }
                return false;
            } catch (NumberFormatException unused) {
                return false;
            }
        }
        return false;
    }

    public boolean a() {
        if (this.f67197a != -1 && this.f67198b != -1) {
            return true;
        }
        return false;
    }

    public boolean c(Metadata metadata) {
        for (int i10 = 0; i10 < metadata.e(); i10++) {
            Metadata.Entry d10 = metadata.d(i10);
            if (d10 instanceof CommentFrame) {
                CommentFrame commentFrame = (CommentFrame) d10;
                if ("iTunSMPB".equals(commentFrame.f18049c) && b(commentFrame.f18050d)) {
                    return true;
                }
            } else if (d10 instanceof InternalFrame) {
                InternalFrame internalFrame = (InternalFrame) d10;
                if ("com.apple.iTunes".equals(internalFrame.f18056b) && "iTunSMPB".equals(internalFrame.f18057c) && b(internalFrame.f18058d)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public boolean d(int i10) {
        int i11 = i10 >> 12;
        int i12 = i10 & 4095;
        if (i11 <= 0 && i12 <= 0) {
            return false;
        }
        this.f67197a = i11;
        this.f67198b = i12;
        return true;
    }
}
