package y5;

import androidx.annotation.Nullable;
import b7.q;
import b7.t0;
import com.google.android.exoplayer2.ParserException;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import y5.b;
/* compiled from: XmpMotionPhotoDescriptionParser.java */
/* loaded from: classes4.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f70676a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f70677b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f70678c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    @Nullable
    public static b a(String str) throws IOException {
        try {
            return b(str);
        } catch (ParserException | NumberFormatException | XmlPullParserException unused) {
            q.i("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    @Nullable
    private static b b(String str) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
        newPullParser.setInput(new StringReader(str));
        newPullParser.next();
        if (t0.e(newPullParser, "x:xmpmeta")) {
            ImmutableList<b.a> A = ImmutableList.A();
            long j10 = -9223372036854775807L;
            do {
                newPullParser.next();
                if (t0.e(newPullParser, "rdf:Description")) {
                    if (!d(newPullParser)) {
                        return null;
                    }
                    j10 = e(newPullParser);
                    A = c(newPullParser);
                } else if (t0.e(newPullParser, "Container:Directory")) {
                    A = f(newPullParser, "Container", "Item");
                } else if (t0.e(newPullParser, "GContainer:Directory")) {
                    A = f(newPullParser, "GContainer", "GContainerItem");
                }
            } while (!t0.c(newPullParser, "x:xmpmeta"));
            if (A.isEmpty()) {
                return null;
            }
            return new b(j10, A);
        }
        throw ParserException.b("Couldn't find xmp metadata", null);
    }

    private static ImmutableList<b.a> c(XmlPullParser xmlPullParser) {
        for (String str : f70678c) {
            String a10 = t0.a(xmlPullParser, str);
            if (a10 != null) {
                return ImmutableList.C(new b.a("image/jpeg", "Primary", 0L, 0L), new b.a(MimeTypes.VIDEO_MP4, "MotionPhoto", Long.parseLong(a10), 0L));
            }
        }
        return ImmutableList.A();
    }

    private static boolean d(XmlPullParser xmlPullParser) {
        for (String str : f70676a) {
            String a10 = t0.a(xmlPullParser, str);
            if (a10 != null) {
                if (Integer.parseInt(a10) != 1) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    private static long e(XmlPullParser xmlPullParser) {
        for (String str : f70677b) {
            String a10 = t0.a(xmlPullParser, str);
            if (a10 != null) {
                long parseLong = Long.parseLong(a10);
                if (parseLong == -1) {
                    return -9223372036854775807L;
                }
                return parseLong;
            }
        }
        return -9223372036854775807L;
    }

    private static ImmutableList<b.a> f(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        long j10;
        long j11;
        ImmutableList.a r10 = ImmutableList.r();
        String str3 = str + ":Item";
        String str4 = str + ":Directory";
        do {
            xmlPullParser.next();
            if (t0.e(xmlPullParser, str3)) {
                String a10 = t0.a(xmlPullParser, str2 + ":Mime");
                String a11 = t0.a(xmlPullParser, str2 + ":Semantic");
                String a12 = t0.a(xmlPullParser, str2 + ":Length");
                String a13 = t0.a(xmlPullParser, str2 + ":Padding");
                if (a10 != null && a11 != null) {
                    if (a12 != null) {
                        j10 = Long.parseLong(a12);
                    } else {
                        j10 = 0;
                    }
                    if (a13 != null) {
                        j11 = Long.parseLong(a13);
                    } else {
                        j11 = 0;
                    }
                    r10.a(new b.a(a10, a11, j10, j11));
                } else {
                    return ImmutableList.A();
                }
            }
        } while (!t0.c(xmlPullParser, str4));
        return r10.k();
    }
}
